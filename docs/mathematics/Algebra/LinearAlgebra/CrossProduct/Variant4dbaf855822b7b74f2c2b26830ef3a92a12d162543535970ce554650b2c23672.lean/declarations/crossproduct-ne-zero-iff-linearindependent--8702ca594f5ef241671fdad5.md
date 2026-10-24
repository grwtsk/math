# crossProduct_ne_zero_iff_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cb33ab05dd06448d34c37d777e69c80761f47a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3726d081-61bc-df65-8243-21d30e87fa3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42abdca2-eeab-8e22-5882-e031bb524115",
  "kind": "lemma",
  "lexical_name": "crossProduct_ne_zero_iff_linearIndependent",
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
  "slug": "crossproduct-ne-zero-iff-linearindependent--8702ca594f5ef241671fdad5",
  "source": {
    "blob": "5cb33ab05dd06448d34c37d777e69c80761f47a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8702ca594f5ef241671fdad57ef751946781be002fa3b2dc4f4b7d0f11c882fa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42abdca2-eeab-8e22-5882-e031bb524115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma crossProduct_ne_zero_iff_linearIndependent {F : Type*} [Field F] {v w : Fin 3 → F} :
    crossProduct v w ≠ 0 ↔ LinearIndependent F ![v, w] := by
  rw [not_iff_comm]
  by_cases hv : v = 0
  · rw [hv, map_zero, LinearMap.zero_apply, eq_self, iff_true]
    exact fun h ↦ h.ne_zero 0 rfl
  constructor
  · rw [LinearIndependent.pair_iff' hv, not_forall_not]
    rintro ⟨a, rfl⟩
    rw [LinearMap.map_smul, cross_self, smul_zero]
  have hv' : v = ![v 0, v 1, v 2] := by simp [← List.ofFn_inj]
  have hw' : w = ![w 0, w 1, w 2] := by simp [← List.ofFn_inj]
  intro h1 h2
  simp_rw [cross_apply, cons_eq_zero_iff, zero_empty, and_true, sub_eq_zero] at h1
  have h20 := LinearIndependent.pair_iff.mp h2 (- w 0) (v 0)
  have h21 := LinearIndependent.pair_iff.mp h2 (- w 1) (v 1)
  have h22 := LinearIndependent.pair_iff.mp h2 (- w 2) (v 2)
  rw [neg_smul, neg_add_eq_zero, hv', hw', smul_vec3, smul_vec3, ← hv', ← hw'] at h20 h21 h22
  simp only [smul_eq_mul, mul_comm (w 0), mul_comm (w 1), mul_comm (w 2), h1] at h20 h21 h22
  rw [hv', cons_eq_zero_iff, cons_eq_zero_iff, cons_eq_zero_iff, zero_empty] at hv
  exact hv ⟨(h20 trivial).2, (h21 trivial).2, (h22 trivial).2, rfl⟩

/-- The scalar triple product expansion of the vector triple product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb33ab05dd06448d34c37d777e69c80761f47a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
