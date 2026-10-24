# integral_rpowIntegrand₀₁_eq_rpow_mul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfb5d261991388600339b7871a14fd954559d6cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5d4c8d6-26fa-185d-fcee-ad1c5bbfcfcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5599088f-27c6-06d5-c751-b5d5f05d34cb",
  "kind": "lemma",
  "lexical_name": "integral_rpowIntegrand₀₁_eq_rpow_mul_const",
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
  "slug": "integral-rpowintegrand-eq-rpow-mul-const--604a2bc42649269a60478839",
  "source": {
    "blob": "cfb5d261991388600339b7871a14fd954559d6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:604a2bc42649269a60478839af21a7d48f4723bf59aa8eeb8c34b60b2e1f378b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5599088f-27c6-06d5-c751-b5d5f05d34cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_rpowIntegrand₀₁_eq_rpow_mul_const (hp : p ∈ Ioo 0 1) (hx : 0 ≤ x) :
    (∫ t in Ioi 0, rpowIntegrand₀₁ p t x) = x ^ p * (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1) := by
  -- We use the change of variables formula with `f t = x * t`. Here `g = rpowIntegrand₀₁ p · x`.
  obtain (rfl | hx) := hx.eq_or_lt
  · simp [rpowIntegrand₀₁, Real.zero_rpow hp.1.ne']
  suffices ∫ t in Ioi 0, ((rpowIntegrand₀₁ p · x) ∘ (x * ·)) t * x =
      x ^ p * (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1) by
    rwa [integral_comp_mul_deriv_Ioi (by fun_prop), mul_zero] at this
    · exact tendsto_id.const_mul_atTop hx
    · simpa using fun t _ ↦ hasDerivWithinAt_id t (Ioi t) |>.const_mul x
    · simpa [Set.image_mul_left_Ioi hx] using continuousOn_rpowIntegrand₀₁ hp hx.le
    · simpa [Set.image_mul_left_Ici hx] using integrableOn_rpowIntegrand₀₁_Ici hp hx.le
    · simp only [Function.comp, rpowIntegrand₀₁_apply_mul' hp hx.le]
      rw [integrableOn_congr_fun (rpowIntegrand₀₁_apply_mul_eqOn_Ici hp hx.le) measurableSet_Ici]
      exact Integrable.mul_const (integrableOn_rpowIntegrand₀₁_Ici hp zero_le_one) _
  have heqOn : EqOn (fun t => rpowIntegrand₀₁ p (x * t) x * x)
      (fun t => (rpowIntegrand₀₁ p t 1) * x ^ p) (Ioi 0) :=
    EqOn.mono Ioi_subset_Ici_self (rpowIntegrand₀₁_apply_mul_eqOn_Ici hp hx.le)
  simp only [Function.comp, setIntegral_congr_fun measurableSet_Ioi heqOn,
    ← smul_eq_mul (b := x ^ p), integral_smul_const]
  rw [smul_eq_mul, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfb5d261991388600339b7871a14fd954559d6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
