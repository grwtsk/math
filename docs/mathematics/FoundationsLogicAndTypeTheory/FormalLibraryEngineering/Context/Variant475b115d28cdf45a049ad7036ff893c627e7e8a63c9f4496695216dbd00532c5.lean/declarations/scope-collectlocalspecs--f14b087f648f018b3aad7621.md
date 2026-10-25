# Scope.collectLocalSpecs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4437b73197b9eee840b0dbd7d484d2669fe05183514092f826c0cf016b2a4aad",
  "kind": "def",
  "lexical_name": "Scope.collectLocalSpecs",
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
  "slug": "scope-collectlocalspecs--f14b087f648f018b3aad7621",
  "source": {
    "blob": "ef9078ab07e611c6c8bc699766f58bc92a322f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f14b087f648f018b3aad76214aa527c057f9f30c062cf726bba47c1ec9818282",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4437b73197b9eee840b0dbd7d484d2669fe05183514092f826c0cf016b2a4aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Scope.collectLocalSpecs (scope : Scope) (goal : MVarId) : VCGenM Scope :=
  goal.withContext do
    let lctx ← getLCtx
    if scope.nextDeclIdx == lctx.decls.size then return scope
    let scope ← lctx.foldlM (init := scope) (start := scope.nextDeclIdx) fun scope decl => do
      if decl.isAuxDecl then return scope
      try
        if let some thm ← mkSpecTheoremFromLocal decl.fvarId (eval_prio low) then
          return scope.insertSpec thm
      catch _ => pure ()
      return scope
    return { scope with nextDeclIdx := lctx.decls.size }

/-- True iff fuel has been exhausted (`Fuel.limited 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9078ab07e611c6c8bc699766f58bc92a322f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
