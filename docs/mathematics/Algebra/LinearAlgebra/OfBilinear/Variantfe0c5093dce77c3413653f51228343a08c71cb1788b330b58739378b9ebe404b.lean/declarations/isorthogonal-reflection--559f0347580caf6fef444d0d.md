# isOrthogonal_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2230bfd5-545c-214f-daa2-c423bb43de94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:328c6015-3c1a-eb65-4243-be1346b97045",
  "kind": "lemma",
  "lexical_name": "isOrthogonal_reflection",
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
  "slug": "isorthogonal-reflection--559f0347580caf6fef444d0d",
  "source": {
    "blob": "b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559f0347580caf6fef444d0d1231e422f980dec8f79f4570367fd900d017f787",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:328c6015-3c1a-eb65-4243-be1346b97045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOrthogonal_reflection (hSB : LinearMap.IsSymm B) :
    B.IsOrthogonal (Module.reflection (coroot_apply_self B hx)) := by
  intro y z
  simp only [LinearEquiv.coe_coe, reflection_apply, LinearMap.map_sub, map_smul, sub_apply,
    smul_apply, smul_eq_mul]
  refine hx.1.1 ?_
  simp only [mul_sub, ← mul_assoc, apply_self_mul_coroot_apply]
  rw [sub_eq_iff_eq_add, ← hSB x y, RingHom.id_apply, mul_assoc _ _ (B x x), mul_comm _ (B x x),
    apply_self_mul_coroot_apply]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
