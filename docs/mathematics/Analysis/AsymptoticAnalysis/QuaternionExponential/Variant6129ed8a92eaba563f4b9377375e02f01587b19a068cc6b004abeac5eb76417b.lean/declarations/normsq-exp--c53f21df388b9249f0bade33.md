# normSq_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dc379305b4b4f7d724001a61f538ff95bc24015",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:523bb09c-f0c7-9c9e-9dd5-b2039871ac65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42ba1d37-4563-2f7b-46d5-d2d8a50b1f48",
  "kind": "theorem",
  "lexical_name": "normSq_exp",
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
  "slug": "normsq-exp--c53f21df388b9249f0bade33",
  "source": {
    "blob": "3dc379305b4b4f7d724001a61f538ff95bc24015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 115,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c53f21df388b9249f0bade33620aa84a447deaeb05ee4584b56c56bf9157b4d7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42ba1d37-4563-2f7b-46d5-d2d8a50b1f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_exp (q : ℍ[ℝ]) : normSq (exp ℝ q) = exp ℝ q.re ^ 2 :=
  calc
    normSq (exp ℝ q) =
        normSq (exp ℝ q.re • (↑(Real.cos ‖q.im‖) + (Real.sin ‖q.im‖ / ‖q.im‖) • q.im)) :=
      by rw [exp_eq]
    _ = exp ℝ q.re ^ 2 * normSq (↑(Real.cos ‖q.im‖) + (Real.sin ‖q.im‖ / ‖q.im‖) • q.im) := by
      rw [normSq_smul]
    _ = exp ℝ q.re ^ 2 * (Real.cos ‖q.im‖ ^ 2 + Real.sin ‖q.im‖ ^ 2) := by
      congr 1
      obtain hv | hv := eq_or_ne ‖q.im‖ 0
      · simp [hv]
      rw [normSq_add, normSq_smul, star_smul, coe_mul_eq_smul, smul_re, smul_re, star_re, im_re,
        smul_zero, smul_zero, mul_zero, add_zero, div_pow, normSq_coe,
        normSq_eq_norm_mul_self, ← sq, div_mul_cancel _ (pow_ne_zero _ hv)]
    _ = exp ℝ q.re ^ 2 := by rw [Real.cos_sq_add_sin_sq, mul_one]

#align quaternion.norm_sq_exp Quaternion.normSq_exp

/-- Note that this implies that exponentials of pure imaginary quaternions are unit quaternions
since in that case the RHS is `1` via `exp_zero` and `norm_one`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant6129ed8a92eaba563f4b9377375e02f01587b19a068cc6b004abeac5eb76417b.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc379305b4b4f7d724001a61f538ff95bc24015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
