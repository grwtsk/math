# visitModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70768e37b542ea3d18a1608dc029a0db662225a40de29935afebf1b6b40888f9",
  "kind": "def",
  "lexical_name": "visitModule",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "visitmodule--e92ae6a85768a5c2f7267168",
  "source": {
    "blob": "b83293af180ce45823c46310efb782862baeb4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 670,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e92ae6a85768a5c2f7267168ba40feec39943563e038baa0c0b6579a5b3b1efc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70768e37b542ea3d18a1608dc029a0db662225a40de29935afebf1b6b40888f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–670.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitModule (pkgs : Array Name) (srcSearchPath : SearchPath)
    (i : Nat) (needs : Needs) (headerStx : TSyntax ``Parser.Module.header) (args : Args)
    (addOnly := false) : StateT State IO Unit := do
  let modName := (← get).modNames[i]!
  if isExtraRevModUse (← get).env i then
    modify fun s => { s with preserve := s.preserve.union (if args.addPublic then .pub else .priv) {i} }
    if args.trace then
      IO.eprintln s!"Preserving `{modName}` because of recorded extra rev use"

  -- only process modules in the selected packages
  -- TODO: should be after `keep-downstream` but core headers are not found yet?
  if !pkgs.any (·.isPrefixOf modName) then
    return

  let (module?, prelude?, imports) := decodeHeader headerStx
  if module?.any (·.raw.getTrailing?.any (·.toString.contains "shake: keep-downstream")) then
    modify fun s => { s with preserve := s.preserve.union (if args.addPublic then .pub else .priv) {i} }

  let s ← get

  let addOnly := addOnly ||
    (!args.onlyMods.isEmpty && !args.onlyMods.contains modName) ||
    module?.any (·.raw.getTrailing?.any (·.toString.contains "shake: keep-all"))
  let mut deps := needs
  let mut reasons : Reasons := {}

  -- Add additional preserved imports
  for impStx in imports do
    let imp := decodeImport impStx
    let j : Nat := s.env.getModuleIdx? imp.module |>.get!
    let k := NeedsKind.ofImport imp
    let reason? :=
      if impStx.raw.getTrailing?.any (·.toString.contains "shake: keep") then
        some "`shake: keep`"
      else if args.keepPublic && imp.isExported && !(`Init).isPrefixOf modName then
        -- TODO: allow per-library configuration instead of hardcoding `Init`
        some "`--keep-public`"
      else if addOnly then
        some "`--add-only` / `--only` / `shake: keep-all`"
      else none
    if let some msg := reason? then
      deps := deps.union k {j}
      reasons := reasons.insert (j, k) msg
      if args.trace then
        IO.eprintln s!"Adding `{imp}` as additional dependency"
  for j in [0:s.mods.size] do
    for k in NeedsKind.all do
      -- Remove `meta` while preserving, no use-case for preserving `meta` so far.
      -- Downgrade to private unless `--add-public` is used.
      if s.transDepsOrig[i]!.has k j &&
          (s.preserve.has { k with isMeta := false, isExported := false } j ||
           s.preserve.has { k with isMeta := false, isExported := true } j) then
        let k' := { k with isMeta := false, isExported := k.isExported && args.addPublic }
        deps := deps.union k' {j}
        reasons := reasons.insert (j, k') s!"`--keep-downstream`/extra rev use in `{s.modNames[j]!}`"

  -- Do transitive reduction of `needs` in `deps`.
  if !addOnly then
    for j in [0:s.mods.size] do
      let transDeps := s.transDeps[j]!
      for k in NeedsKind.all do
        if deps.has k j then
          let transDeps := addTransitiveImps .empty { k with module := .anonymous } j transDeps
          for k' in NeedsKind.all do
            deps := deps.sub k' (transDeps.sub k' {j} |>.get k')

  if prelude?.isNone then
    let j : Nat := s.env.getModuleIdx? `Init |>.get!
    deps := deps.union .pub {j}
    deps := deps.union .metaPub {j}

  -- Accumulate `transDeps` which is the non-reflexive transitive closure of the still-live imports
  let mut transDeps := Needs.empty
  let mut alwaysAdd : Array Import := #[]  -- to be added even if implied by other imports
  for imp in s.mods[i]!.imports do
    let j : Nat := s.env.getModuleIdx? imp.module |>.get!
    let k := NeedsKind.ofImport imp
    if deps.has k j || imp.importAll then
      let wasInDeps := deps.has k j
      transDeps := addTransitiveImps transDeps imp j s.transDeps[j]!
      deps := deps.union k {j}
      if !wasInDeps && imp.importAll then
        reasons := reasons.insert (j, k) "`import all` always being preserved"
    -- skip folder-nested `public (meta)? import`s but remove `meta`
    else if modName.isPrefixOf imp.module then
      let imp := { imp with isMeta := false }
      let k := { k with isMeta := false }
      if args.trace then
        IO.eprintln s!"`{imp}` is preserved as folder-nested import"
      transDeps := addTransitiveImps transDeps imp j s.transDeps[j]!
      deps := deps.union k {j}
      reasons := reasons.insert (j, k) "folder-nested import"
      if !s.mods[i]!.imports.contains imp then
        alwaysAdd := alwaysAdd.push imp

  -- If `transDeps` does not cover `deps`, then we have to add back some imports until it does.
  -- To minimize new imports we pick only new imports which are not transitively implied by
  -- another new import, so we visit module indices in descending order.
  let mut keptPrefix := false
  let mut newTransDeps := transDeps
  let mut toAdd : Array Import := #[]
  for j in (0...s.mods.size).toArray.reverse do
    for k in NeedsKind.all do
      if deps.has k j && !newTransDeps.has k j && !newTransDeps.has { k with isExported := true } j then
        -- `add-public/keep-prefix` may change the import and even module we're considering
        let mut k := k
        let mut imp : Import := { k with module := s.modNames[j]! }
        let mut j := j
        if args.trace then
          IO.eprintln s!"`{imp}` is needed{if needs.has k j then " (calculated)" else ""}"
        if args.addPublic && !k.isExported &&
            -- also add as public if previously `public meta`, which could be from automatic porting
            (s.transDepsOrig[i]!.has { k with isExported := true } j || s.transDepsOrig[i]!.has { k with isExported := true, isMeta := true } j) then
          k := { k with isExported := true }
          imp := { imp with isExported := true }
          if args.trace then
            IO.eprintln s!"* upgrading to `{imp}` because of `--add-public`"
          reasons := reasons.insert (j, k) "`--add-public`"
        if args.keepPrefix then
          let rec tryPrefix : Name → Option ModuleIdx
            | .str p _ => tryPrefix p <|> (do
              let j' ← s.env.getModuleIdx? p
              -- `j'` must be reachable from `i` (allow downgrading from `meta`)
              guard <| s.transDepsOrig[i]!.has k j' || s.transDepsOrig[i]!.has { k with isMeta := true } j'
              let j'transDeps := addTransitiveImps .empty p j' s.transDeps[j']!
              -- `j` must be publicly reachable from `j'` (now downgrading must be done in the other direction)
              guard <| j'transDeps.has { k with isExported := true } j || j'transDeps.has { k with isExported := true, isMeta := false } j
              return j')
            | _ => none
          if let some j' := tryPrefix imp.module then
            let origModule := imp.module
            imp := { imp with module := s.modNames[j']! }
            j := j'
            keptPrefix := true
            if args.trace then
              IO.eprintln s!"* upgrading to `{imp}` because of `--keep-prefix`"
            reasons := reasons.insert (j, k) s!"`--keep-prefix` upgrade from `{origModule}`"
        if !s.mods[i]!.imports.contains imp then
          toAdd := toAdd.push imp
        deps := deps.union k {j}
        newTransDeps := addTransitiveImps newTransDeps imp j s.transDeps[j]!

  if keptPrefix then
    -- if an import was replaced by `--keep-prefix`, we did not necessarily visit the modules in
    -- dependency order anymore and so we have to redo the transitive closure checking
    newTransDeps := transDeps
    for j in (0...s.mods.size).toArray.reverse do
      for k in NeedsKind.all do
        if deps.has k j then
          let mut imp : Import := { k with module := s.modNames[j]! }
          if toAdd.contains imp && (newTransDeps.has k j || newTransDeps.has { k with isExported := true } j) then
            if args.trace then
              IO.eprintln s!"Removing `{imp}` from imports to be added because it is now implied"
            toAdd := toAdd.erase imp
            deps := deps.sub k {j}
          else
            newTransDeps := addTransitiveImps newTransDeps imp j s.transDeps[j]!

  -- now that `toAdd` filtering is done, add `alwaysAdd`
  toAdd := alwaysAdd ++ toAdd

  -- Any import which is still not in `deps` was unused
  let mut toRemove : Array Import := #[]
  for imp in s.mods[i]!.imports do
    let j := s.env.getModuleIdx? imp.module |>.get!
    let k := NeedsKind.ofImport imp
    if args.keepImplied && newTransDeps.has k j then
      if args.trace && !deps.has k j then
        IO.eprintln s!"`{imp}` is implied by other imports"
    else if !deps.has k j then
      if args.trace then
        IO.eprintln s!"`{imp}` is now unused"
      toRemove := toRemove.push imp
    -- A private import should also be removed if the public version has been added
    else if !k.isExported && !imp.importAll && newTransDeps.has { k with isExported := true } j then
      if args.trace then
        IO.eprintln s!"`{imp}` is already covered by `{ { imp with isExported := true } }`"
      toRemove := toRemove.push imp

  -- mark and report the removals
  modify fun s => { s with
    edits := toRemove.foldl (init := s.edits) fun edits imp =>
      edits.remove modName imp }

  if !toAdd.isEmpty || !toRemove.isEmpty || args.explain then
    if let some path ← srcSearchPath.findModuleWithExt "lean" s.modNames[i]! then
      println! "{path}:"
    else
      println! "{s.modNames[i]!}:"

  if !toRemove.isEmpty then
    println! "  remove {toRemove}"

  if args.githubStyle then
    try
      let ⟨path, inputCtx, stx, endHeader⟩ ← parseHeader srcSearchPath s.modNames[i]!
      let (_, _, imports) := decodeHeader stx
      for stx in imports do
        if toRemove.any fun imp => imp == decodeImport stx then
          let pos := inputCtx.fileMap.toPosition stx.raw.getPos?.get!
          println! "{path}:{pos.line}:{pos.column+1}: warning: unused import \
            (use `lake shake --fix` to fix this, or `lake shake --update` to ignore)"
      if !toAdd.isEmpty then
        -- we put the insert message on the beginning of the last import line
        let pos := inputCtx.fileMap.toPosition endHeader.offset
        println! "{path}:{pos.line-1}:1: warning: \
          add {toAdd} instead"
    catch _ => pure ()

  -- mark and report the additions
  modify fun s => { s with
    edits := toAdd.foldl (init := s.edits) fun edits imp =>
      edits.add s.modNames[i]! imp }

  if !toAdd.isEmpty then
    println! "  add {toAdd}"

  -- recalculate transitive dependencies of downstream modules
  let mut newTransDepsI := Needs.empty
  for imp in s.mods[i]!.imports do
    if !toRemove.contains imp then
      let j := s.env.getModuleIdx? imp.module |>.get!
      newTransDepsI := addTransitiveImps newTransDepsI imp j s.transDeps[j]!
  for imp in toAdd do
    let j := s.env.getModuleIdx? imp.module |>.get!
    newTransDepsI := addTransitiveImps newTransDepsI imp j s.transDeps[j]!

  modify fun s => { s with transDeps := s.transDeps.set! i newTransDepsI }

  if args.explain then
    let explanation := getExplanations s i
    let sanitize n := if n.hasMacroScopes then (sanitizeName n).run' { options := {} } else n
    let run (imp : Import) := do
      let j := s.env.getModuleIdx? imp.module |>.get!
      let k := NeedsKind.ofImport imp
      println! "  note: `{imp}` required"
      match explanation[(j, k)]? <|> guard args.addPublic *> explanation[(j, { k with isExported := false})]? with
      | some (some (n, c)) =>
        println! "    because `{sanitize n}` refers to `{sanitize c}`"
      | some none =>
        println! "    because of additional compile-time dependencies"
      | none =>
        if let some msg := reasons[(j, k)]? then
          println! "    because of {msg}"
        else
          println! "    (no traced reason)"
    for j in s.mods[i]!.imports do
      if !toRemove.contains j then
        run j
    for i in toAdd do run i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83293af180ce45823c46310efb782862baeb4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
