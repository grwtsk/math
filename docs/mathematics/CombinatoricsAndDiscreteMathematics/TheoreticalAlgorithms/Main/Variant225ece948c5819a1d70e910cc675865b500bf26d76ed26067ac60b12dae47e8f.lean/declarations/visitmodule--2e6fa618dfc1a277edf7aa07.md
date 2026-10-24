# visitModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d521ab5b63dbee2c84c363bc638901ab2b59621a00659b92853ff5a54545cf4c",
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
  "slug": "visitmodule--2e6fa618dfc1a277edf7aa07",
  "source": {
    "blob": "11f8ede4fcc5fea2ac28089bbeed87d0fc872127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e6fa618dfc1a277edf7aa07c251fcee539ab6062c18f913c573cc356c90930c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d521ab5b63dbee2c84c363bc638901ab2b59621a00659b92853ff5a54545cf4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitModule (s : State) (srcSearchPath : SearchPath) (ignoreImps : Bitset)
    (i : Nat) (needs : Bitset) (edits : Edits)
    (downstream := true) (githubStyle := false) (explain := false) : IO Edits := do
  -- Do transitive reduction of `needs` in `deps` and transitive closure in `transDeps`.
  -- Include the `ignoreImps` in `transDeps`
  let mut deps := needs
  let mut transDeps := needs ||| ignoreImps
  for j in [0:s.mods.size] do
    if deps &&& (1 <<< j) != 0 then
      let deps2 := s.transDeps[j]!
      deps := deps ^^^ (deps &&& deps2) ^^^ (1 <<< j)
      transDeps := transDeps ||| deps2

  -- Any import which is not in `transDeps` was unused.
  -- Also accumulate `newDeps` which is the transitive closure of the remaining imports
  let mut toRemove := #[]
  let mut newDeps := 0
  for imp in s.mods[i]!.imports do
    let j := s.toIdx[imp.module]!
    if transDeps &&& (1 <<< j.toNat) == 0 then
      toRemove := toRemove.push j
    else
      newDeps := newDeps ||| s.transDeps[j]!

  if toRemove.isEmpty then return edits -- nothing to do

  -- If `newDeps` does not cover `needs`, then we have to add back some imports until it does.
  -- To minimize new imports we pick only new imports which are not transitively implied by
  -- another new import
  let mut toAdd := #[]
  for j in [0:s.mods.size] do
    if deps &&& (1 <<< j) != 0 && newDeps &&& (1 <<< j) == 0 then
      toAdd := toAdd.push j
      newDeps := newDeps ||| s.transDeps[j]!

  -- mark and report the removals
  let mut edits := toRemove.foldl (init := edits) fun edits n =>
    edits.remove s.modNames[i]! s.modNames[n]!
  if githubStyle then
    try
      let (path, inputCtx, imports, endHeader) ← parseHeader srcSearchPath s.modNames[i]!
      for stx in imports do
        if toRemove.any fun i => s.modNames[i]! == importId stx then
          let pos := inputCtx.fileMap.toPosition stx.raw.getPos?.get!
          println! "{path}:{pos.line}:{pos.column+1}: warning: unused import \
            (use `lake exe shake --fix` to fix this, or `lake exe shake --update` to ignore)"
      if !toAdd.isEmpty then
        -- we put the insert message on the beginning of the last import line
        let pos := inputCtx.fileMap.toPosition endHeader
        println! "{path}:{pos.line-1}:1: warning: \
          import {toAdd.map (s.modNames[·]!)} instead"
    catch _ => pure ()
  if let some path ← srcSearchPath.findModuleWithExt "lean" s.modNames[i]! then
    println! "{path}:"
  else
    println! "{s.modNames[i]!}:"
  println! "  remove {toRemove.map (s.modNames[·]!)}"

  -- mark and report the additions
  if !toAdd.isEmpty then
    edits := toAdd.foldl (init := edits) fun edits n =>
      edits.add s.modNames[i]! n
    println! "  add {toAdd.map (s.modNames[·]!)}"

  if downstream && !toRemove.isEmpty then
    -- In `downstream` mode, we should also check all the other modules to find out if
    -- we have a situation like `A -> B -/> C -> D`, where we are removing the `B -> C` import
    -- but `D` depends on `A` and only directly imports `C`.
    -- This situation occurs when `A ∈ needs[D]`, `C ∈ transDeps[D]`, and `A ∉ newTransDeps[D]`,
    -- where `newTransDeps` is the result of recalculating `transDeps` after breaking the `B -> C`
    -- link.

    -- calculate `newTransDeps[C]`, removing all `B -> C` links from `toRemove` and adding `toAdd`
    let mut newTransDepsI := 1 <<< i
    for j in s.deps[i]! do
      if !toRemove.contains j then
        newTransDepsI := newTransDepsI ||| s.transDeps[j]!
    for j in toAdd do
      newTransDepsI := newTransDepsI ||| s.transDeps[j]!

    let mut newTransDeps := s.transDeps.set! i newTransDepsI -- deep copy
    let mut reAdded := #[]
    for j in [i+1:s.mods.size] do -- for each module `D`
      if s.transDeps[j]! &&& (1 <<< i) != 0 then -- which imports `C`
        -- calculate `newTransDeps[D]` assuming no change to the imports of `D`
        let mut newTransDepsJ := s.deps[j]!.foldl (init := 1 <<< j) fun d k =>
          d ||| newTransDeps[k]!
        let diff := s.transDeps[j]! ^^^ newTransDepsJ
        if diff != 0 then -- if the dependency closure of `D` changed
          let mut reAdd := diff &&& s.needs[j]!
          if reAdd != 0 then -- and there are things from `needs[D]` which were lost:
            -- Add them back.
            -- `reAdd` is the set of all files `A` which have to be added back
            -- to the closure of `D`, but some of them might be importing others,
            -- so we take the transitive reduction of `reAdd`.
            let mut reAddArr := []
            let mut k := j
            while reAdd != 0 do -- note: this loop terminates because `reAdd ⊆ [0:k]`
              k := k - 1
              if reAdd &&& (1 <<< k) != 0 then
                reAddArr := k :: reAddArr
                reAdd := reAdd ^^^ (reAdd &&& newTransDeps[k]!)
                -- add these to `newTransDeps[D]` so that files downstream of `D`
                -- (later in the `for j` loop) will take this into account
                newTransDepsJ := newTransDepsJ ||| newTransDeps[k]!
            edits := reAddArr.foldl (init := edits) (·.add s.modNames[j]! ·)
            reAdded := reAdded.push (j, reAddArr)
          newTransDeps := newTransDeps.set! j newTransDepsJ
    if !reAdded.isEmpty then
      println! "  instead"
      for (j, reAddArr) in reAdded do
        println! "    import {reAddArr.map (s.modNames[·]!)} in {s.modNames[j]!}"

  if explain then
    let explanation := getExplanations s.constToIdx s.mods[i]!
    let sanitize n := if n.hasMacroScopes then (sanitizeName n).run' { options := {} } else n
    let run (j : USize) := do
      if let some (n, c) := explanation[j]? then
        println! "  note: {s.modNames[i]!} requires {s.modNames[j]!}\
          \n    because {sanitize n} refers to {sanitize c}"
    for imp in s.mods[i]!.imports do run <| s.toIdx[imp.module]!
    for i in toAdd do run i.toUSize

  return edits

/-- Convert a list of module names to a bitset of module indexes -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant225ece948c5819a1d70e910cc675865b500bf26d76ed26067ac60b12dae47e8f.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f8ede4fcc5fea2ac28089bbeed87d0fc872127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
