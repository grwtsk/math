# sourceCorrelation_upper_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43ba870d8c981430d77cc302b53942adde471534",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24d872a8-c244-6577-0c75-5313816f1d87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a85a627-60ec-b5c6-35b9-625f726d96c9",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_upper_edge_abs_le",
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
  "slug": "sourcecorrelation-upper-edge-abs-le--58ca3f2fdb06ae572ea105e7",
  "source": {
    "blob": "43ba870d8c981430d77cc302b53942adde471534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ca3f2fdb06ae572ea105e79b18cd646135275f66ecdd93b535c28509aabb7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a85a627-60ec-b5c6-35b9-625f726d96c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_upper_edge_abs_le (A z : ℝ) (hA : 1 ≤ A)
    (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    |sourceCorrelation explicitSecondDerivative A (2 * A-z)| ≤ edgePolynomial z / A^9 := by
  have hA0 : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hi : |∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r)| ≤
      (192*z^2+4*z^4)^2 * z := by
    have h := intervalIntegral.norm_integral_le_of_norm_le_const
      (a := (0 : ℝ)) (b := z) (f := fun r ↦ endpointPolynomial A r * endpointPolynomial A (z-r))
      (C := (192*z^2+4*z^4)^2) ?_
    · simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hz] using h
    · intro r hr
      have hrI : r ∈ Ioc (0 : ℝ) z := uIoc_of_le hz ▸ hr
      have hr' : r ∈ Icc (0 : ℝ) z := ⟨hrI.1.le, hrI.2⟩
      have hb (s : ℝ) (hs0 : 0 ≤ s) (hsz : s ≤ z) :
          |endpointPolynomial A s| ≤ 192*z^2+4*z^4 := by
        refine (endpointPolynomial_abs_le A s hA hs0 (hsz.trans hzA)).trans ?_
        have h2 : s^2 ≤ z^2 := (sq_le_sq₀ hs0 hz).2 hsz
        have h4 : s^4 ≤ z^4 := by nlinarith [sq_nonneg (z^2-s^2)]
        nlinarith
      rw [Real.norm_eq_abs, abs_mul]
      have hm := mul_le_mul (hb r hr'.1 hr'.2)
        (hb (z-r) (by linarith [hr'.2]) (by linarith [hr'.1]))
        (abs_nonneg _) (by positivity)
      simpa only [pow_two] using hm
  rw [sourceCorrelation_upper_edge A z hA hz hzA, abs_mul,
    abs_of_nonneg (by positivity : 0 ≤ 1 / (A^9 * sourceNormalization A))]
  calc
    _ ≤ 1 / (A^9 * sourceNormalization A) * ((192*z^2+4*z^4)^2 * z) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ edgePolynomial z / A^9 := by
      apply (le_div_iff₀ (pow_pos hA0 9)).2
      have hn := sourceNormalization_ge_one_div_32 A hA
      have hb : 1 / sourceNormalization A ≤ 32 := by
        apply (div_le_iff₀ hZ).2
        linarith
      calc
        _ = (1 / sourceNormalization A) * ((192*z^2+4*z^4)^2 * z) := by
          field_simp
        _ ≤ 32 * ((192*z^2+4*z^4)^2 * z) := mul_le_mul_of_nonneg_right hb (by positivity)
        _ = _ := by unfold edgePolynomial; ring

end
end EstimateSourceEdgeCorrelation
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0eba1181b914950a1a5dEstimateSourceEdgeCorrelation/Variant0eba1181b914950a1a5dce37249d58aa4d984445833d8f9aca4e7d3248c851c7.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ba870d8c981430d77cc302b53942adde471534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
