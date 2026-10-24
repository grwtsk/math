# homologySequence_exact₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0534fe6c0520105e14525a31d6668255452686b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8719dc6f-1d91-88db-d715-4a440529ccaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0c273da-b6d7-0b96-795f-280d36c57e36",
  "kind": "lemma",
  "lexical_name": "homologySequence_exact₁",
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
  "slug": "homologysequence-exact--948be3d3c6a01e16924fa8d1",
  "source": {
    "blob": "0534fe6c0520105e14525a31d6668255452686b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:948be3d3c6a01e16924fa8d1516b52acb13bbba219b810d16820a8cbb5e463e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0c273da-b6d7-0b96-795f-280d36c57e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologySequence_exact₁ :
    (ShortComplex.mk _ _ (F.homologySequenceδ_comp T hT _ _ h)).Exact := by
  refine ShortComplex.exact_of_iso ?_ (F.homologySequence_exact₂ _ (inv_rot_of_distTriang _ hT) n₁)
  refine ShortComplex.isoMk (-((F.shiftIso (-1) n₁ n₀ (by lia)).app _))
    (Iso.refl _) (Iso.refl _) ?_ (by simp)
  dsimp
  simp only [homologySequenceδ, neg_comp, map_neg, comp_id,
    F.shiftIso_hom_app_comp_shiftMap_of_add_eq_zero T.mor₃ (-1) (neg_add_cancel 1) n₀ n₁
      (by lia)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0534fe6c0520105e14525a31d6668255452686b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
