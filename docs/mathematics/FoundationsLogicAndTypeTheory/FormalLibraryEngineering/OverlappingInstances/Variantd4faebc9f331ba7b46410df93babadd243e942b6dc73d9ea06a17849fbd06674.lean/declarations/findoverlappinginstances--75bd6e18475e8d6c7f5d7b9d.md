# findOverlappingInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d0e07522e47e20957922c2412f9f7470c56df195439f9cab3a71d7a1f2e2e58",
  "kind": "def",
  "lexical_name": "findOverlappingInstances",
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
  "slug": "findoverlappinginstances--75bd6e18475e8d6c7f5d7b9d",
  "source": {
    "blob": "6996c342822a6715f14c5f3db575c9b76c02e205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75bd6e18475e8d6c7f5d7b9dee40309b2fa98b0fbd77e39b21a923c27396186a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d0e07522e47e20957922c2412f9f7470c56df195439f9cab3a71d7a1f2e2e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findOverlappingInstances : MetaM (ExprMap (Array FVarId)) := do
  -- Maps a class to the collection of local instances that overlap on it.
  -- This only includes overlaps of at least 2 local instances.
  let mut overlaps : ExprMap (Array FVarId) := {}
  -- Maps a class to the first local instance that produces an instance of it.
  let mut encountered : ExprMap FVarId := {}
  for decl in ← getLCtx do
    if decl.binderInfo.isInstImplicit then
      let type ← instantiateMVars decl.type
      let projClasses ← forallTelescopeReducing (whnfType := true) type fun xs type ↦ do
        type.withApp fun f args ↦ do
        let .const cls us := f |
          return #[] -- This can happen when using `set_option checkBinderAnnotations false`
        let levelParams := (← getConstInfo cls).levelParams
        let projs ← getAbstractProjectionsCached cls
        projs.mapM fun proj ↦
          mkForallFVars xs <| (proj.instantiateLevelParams levelParams us).instantiateRev args
      for projCls in projClasses do
        if let some fvarId' := encountered[projCls]? then
          overlaps := overlaps.alter projCls (·.getD #[fvarId'] |>.push decl.fvarId)
        else
          encountered := encountered.insert projCls decl.fvarId
  return overlaps

/-- Lints against overlaps between instances in the local contexts of declarations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6996c342822a6715f14c5f3db575c9b76c02e205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
