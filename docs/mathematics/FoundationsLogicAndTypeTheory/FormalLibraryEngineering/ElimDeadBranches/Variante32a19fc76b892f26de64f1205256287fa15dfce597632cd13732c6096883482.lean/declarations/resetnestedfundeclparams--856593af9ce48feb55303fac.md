# resetNestedFunDeclParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64b3218e92369ae46c58a8a3e544c510a72f09d7ace02c658b493bbd85811df4",
  "kind": "def",
  "lexical_name": "resetNestedFunDeclParams",
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
  "slug": "resetnestedfundeclparams--856593af9ce48feb55303fac",
  "source": {
    "blob": "4be868cbe0236016461d8cdc4b65ca875fee967e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 454,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:856593af9ce48feb55303fac62a9f8de5da0f6ed76df44b749529844c71c5962",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64b3218e92369ae46c58a8a3e544c510a72f09d7ace02c658b493bbd85811df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def resetNestedFunDeclParams : Code .pure → InterpM Unit
| .let _ k => resetNestedFunDeclParams k
| .jp decl k | .fun decl k => do
  decl.params.forM (resetVarAssignment ·.fvarId)
  /- We don't need to reset the parameters of decls
    nested in this one since they will be reset if this decl is used. -/
  resetNestedFunDeclParams k
| .cases cs =>
  cs.alts.forM (resetNestedFunDeclParams ·.getCode)
| .return .. | .unreach .. | .jmp .. => return ()

/--
The actual abstract interpreter on a block of `Code`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be868cbe0236016461d8cdc4b65ca875fee967e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
