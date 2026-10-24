# chebyshev_prime_power_step_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4963666ae38854c5dd8311aa9356403ba9d4abc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57c6a0a7-8ae3-dd14-440e-55708d189a9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bc6b48a-a635-cc8e-39aa-b0803f114190",
  "kind": "theorem",
  "lexical_name": "chebyshev_prime_power_step_integral",
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
  "slug": "chebyshev-prime-power-step-integral--5818c9049117775bd96181e9",
  "source": {
    "blob": "f4963666ae38854c5dd8311aa9356403ba9d4abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5818c9049117775bd96181e94627d7af0697125649b589f74309ac968453544d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc6b48a-a635-cc8e-39aa-b0803f114190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_prime_power_step_integral (b : ℝ) (hb : lowerEndpoint ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in lowerEndpoint..b, chebyshevPrimePower (Real.exp t) * deriv F t) =
      chebyshevPrimePower (Real.exp b) * F b -
        ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n * F (Real.log n) := by
  calc
    _ = ∫ t in lowerEndpoint..b, ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (if Real.log n ≤ t then deriv F t else 0) := by
      apply intervalIntegral.integral_congr
      intro t ht
      exact chebyshev_mul_eq_steps b t (deriv F t) ((uIcc_of_le hb ▸ ht).2)
    _ = ∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n * (F b - F (Real.log n)) :=
      integral_finite_steps_deriv lowerEndpoint b (primePowerInventory b)
        (fun n ↦ Real.log n) ArithmeticFunction.vonMangoldt
        (fun n hn ↦ inventory_log_bounds b n hn) F hF
    _ = _ := by
      simp_rw [mul_sub]
      rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
      rfl

/-- Finite integration by parts for the source arithmetic error. Both interval
boundaries are retained, and the complete inventory includes the prime-two atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant611f86541d33c6ca183030e9d1cb83cffeff628077185742288de7c7302337ad.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4963666ae38854c5dd8311aa9356403ba9d4abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
