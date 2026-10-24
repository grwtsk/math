# toKaroubiNondegComplexIsoN₁_hom_inv_id_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe409de05b6c9367288315ce2c239d8ba39f5fb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d916ee5-f90c-d6f1-0bee-9df4f4528f94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e623c34-46fe-74f3-c4e3-089448dd3c52",
  "kind": "lemma",
  "lexical_name": "toKaroubiNondegComplexIsoN₁_hom_inv_id_f",
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
  "slug": "tokaroubinondegcomplexison-hom-inv-id-f--e19b3f9ee3b05562e3c26a19",
  "source": {
    "blob": "fe409de05b6c9367288315ce2c239d8ba39f5fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e19b3f9ee3b05562e3c26a19c4f2356e8a6683e161a96fa2d4e261d45de9f091",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e623c34-46fe-74f3-c4e3-089448dd3c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toKaroubiNondegComplexIsoN₁_hom_inv_id_f :
    dsimp% s.toKaroubiNondegComplexIsoN₁.hom.f ≫ s.toKaroubiNondegComplexIsoN₁.inv.f = 𝟙 _ := by
  rw [← dsimp% [-Karoubi.comp_f] Karoubi.comp_f s.toKaroubiNondegComplexIsoN₁.hom
    s.toKaroubiNondegComplexIsoN₁.inv, Iso.hom_inv_id]
  simp

set_option backward.defeqAttrib.useBackward true in
/-- Given a splitting `s` of a simplicial object `X` in a preadditive category,
this is the split epimorphism from the alternating face map complex of `X` to the chain
complex `s.nondegComplex`. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant1a0d34e597f77b79f1f40c5e8a2d65ddfc469f19ae2c274edefd935fb9bbaca1.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe409de05b6c9367288315ce2c239d8ba39f5fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
