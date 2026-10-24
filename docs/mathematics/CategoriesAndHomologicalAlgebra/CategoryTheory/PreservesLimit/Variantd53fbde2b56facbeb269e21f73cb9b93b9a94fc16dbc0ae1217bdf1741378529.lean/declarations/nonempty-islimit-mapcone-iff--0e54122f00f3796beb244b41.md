# nonempty_isLimit_mapCone_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d030842-af8a-6b75-d542-6a18604a094e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb59e1cb-620d-fad6-6b2a-18ea194b2965",
  "kind": "lemma",
  "lexical_name": "nonempty_isLimit_mapCone_iff",
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
  "slug": "nonempty-islimit-mapcone-iff--0e54122f00f3796beb244b41",
  "source": {
    "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e54122f00f3796beb244b410a6cf6313d24e2506663c3bf39f67b9c2bf6fae0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb59e1cb-620d-fad6-6b2a-18ea194b2965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_isLimit_mapCone_iff :
    Nonempty (IsLimit (P.mapCone c)) ↔
      (MorphismProperty.single (coconePtToShrinkYoneda c hc')).isLocal P := by
  rw [Types.isLimit_iff_bijective_sectionOfCone,
    MorphismProperty.isLocal_single_iff_bijective,
    ← Function.Bijective.of_comp_iff' (coconeCompShrinkYonedaHomEquiv hc').symm.bijective,
    ← Function.Bijective.of_comp_iff _ shrinkYonedaEquiv.bijective]
  convert Iff.rfl using 2
  ext : 1
  simp [← coconePtToShrinkYoneda_comp]

variable {c}

include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28cb4c9e10b26ead02a7a0158687e71b31666e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
