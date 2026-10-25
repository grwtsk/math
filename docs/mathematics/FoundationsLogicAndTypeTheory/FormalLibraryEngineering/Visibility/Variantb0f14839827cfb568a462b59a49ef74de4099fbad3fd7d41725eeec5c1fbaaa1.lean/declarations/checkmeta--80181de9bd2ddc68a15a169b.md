# checkMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8864da2233e948873e2254540741452153c23a7f57b05df24c5e837e405cb600",
  "kind": "def",
  "lexical_name": "checkMeta",
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
  "slug": "checkmeta--80181de9bd2ddc68a15a169b",
  "source": {
    "blob": "432a453b96f6688ec0314fb478ed18bb8502b7b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80181de9bd2ddc68a15a169bc252f430461acabfe63688b6f42b4790308a7a84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8864da2233e948873e2254540741452153c23a7f57b05df24c5e837e405cb600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def checkMeta (origDecl : Decl pu) : CompilerM Unit := do
  if !(← getEnv).header.isModule || (← compiler.inLeanIR.getM) || !(← compiler.checkMeta.getM) then
    return
  let irPhases := getIRPhases (← getEnv) origDecl.name
  if irPhases == .all then
    return
  -- If the meta decl is public, we want to ensure it can only refer to public meta imports so that
  -- references to private imports cannot escape the current module. In particular, we check that
  -- decls with relevant global attrs are public (`Lean.ensureAttrDeclIsMeta`).
  let isPublic := !isPrivateName origDecl.name
  go (irPhases == .comptime) isPublic origDecl |>.run' {}
where go (isMeta isPublic : Bool) (decl : Decl pu) : StateT NameSet CompilerM Unit := do
  decl.value.forCodeM fun code =>
    for ref in collectUsedDecls code do
      if (← get).contains ref then
        continue
      modify (·.insert ref)
      let env ← getEnv
      if isMeta && isPublic then
        if let some modIdx := env.getModuleIdxFor? ref then
          if isMarkedMeta env ref then
            if env.header.modules[modIdx]?.any (!·.isExported) then
              throwError "Invalid public `meta` definition `{.ofConstName origDecl.name}`, \
                `{.ofConstName ref}` is not accessible here; consider adding \
                `public import {env.header.moduleNames[modIdx]!}`"
          else
            -- TODO: does not account for `public import` + `meta import`, which is not the same
            if env.header.modules[modIdx]?.any (!·.isExported) then
              throwError "Invalid public `meta` definition `{.ofConstName origDecl.name}`, \
                `{.ofConstName ref}` is not accessible here; consider adding \
                `public meta import {env.header.moduleNames[modIdx]!}`"
      let relaxedCheck := compiler.relaxedMetaCheck.get (← getOptions) && !env.isImportedConst ref
      let irPhases := getIRPhases env ref
      if !relaxedCheck && irPhases == .runtime && isMeta then
        if let some modIdx := env.getModuleIdxFor? ref then
          -- We use `public` here as a conservative default (and most common case) as necessary
          -- visibility is only clear at the end of the file.
          throwError "Invalid `meta` definition `{.ofConstName origDecl.name}`, \
        `{.ofConstName ref}` is not accessible here; consider adding \
        `public meta import {env.header.moduleNames[modIdx]!}`"
        else
          throwError "Invalid `meta` definition `{.ofConstName origDecl.name}`, \
        `{.ofConstName ref}` not marked `meta`"
      if !relaxedCheck && irPhases == .comptime && !isMeta then
        if let some modIdx := env.getModuleIdxFor? ref then
          if !isMarkedMeta env ref then
            throwError "Invalid definition `{.ofConstName origDecl.name}`, may not access \
              declaration `{.ofConstName ref}` imported as `meta`; consider adding \
              `import {env.header.moduleNames[modIdx]!}`"
        throwError "Invalid definition `{.ofConstName origDecl.name}`, may not access \
          declaration `{.ofConstName ref}` marked as `meta`"

      -- We allow auxiliary defs to be used in either phase but we need to recursively check
      -- *their* references in this case. We also need to do this for non-auxiliary defs in case a
      -- public meta def tries to use a private meta import via a local private meta def :/ .
      if irPhases == .all || isPublic && isPrivateName ref then
        if let some ⟨_, refDecl⟩ ← getLocalDecl? ref then
          go isMeta isPublic (refDecl.castPurity! pu)

/--
Checks that imports necessary for inlining/specialization are public as otherwise we may run into
unknown declarations at the point of inlining/specializing. This is a limitation that we want to
lift in the future by moving main compilation into a different process that can use a different
import/incremental system.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Visibility/Variantb0f14839827cfb568a462b59a49ef74de4099fbad3fd7d41725eeec5c1fbaaa1.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `432a453b96f6688ec0314fb478ed18bb8502b7b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
