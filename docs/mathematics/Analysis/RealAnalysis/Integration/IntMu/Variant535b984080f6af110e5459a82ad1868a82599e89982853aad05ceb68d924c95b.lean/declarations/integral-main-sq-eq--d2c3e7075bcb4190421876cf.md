# integral_main_sq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90068552-4274-cf64-c1cb-0c1a8fc1a47d",
  "kind": "lemma",
  "lexical_name": "integral_main_sq_eq",
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
  "slug": "integral-main-sq-eq--d2c3e7075bcb4190421876cf",
  "source": {
    "blob": "45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2c3e7075bcb4190421876cfd143bd8c40dbf4148ce28b6a0b4dba8b3dfd9813",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90068552-4274-cf64-c1cb-0c1a8fc1a47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_main_sq_eq {T : ℝ} (hT : 0 < T) :
    ∫ τ in T..(2 * T), Real.log (τ / (2 * Real.pi)) ^ 2
      = T * (ell1 T ^ 2 + 1 - 2 * Real.log 2 ^ 2) := by
  have hπ : (0 : ℝ) < Real.pi := Real.pi_pos
  have hftc : ∀ τ ∈ Set.uIcc T (2 * T),
      HasDerivAt (fun x : ℝ =>
          x * (Real.log (x / (2 * Real.pi)) ^ 2 - 2 * Real.log (x / (2 * Real.pi)) + 2))
        (Real.log (τ / (2 * Real.pi)) ^ 2) τ := by
    intro τ hτ
    rw [Set.uIcc_of_le (by linarith)] at hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT hτ.1
    have h1 : HasDerivAt (fun x : ℝ => x / (2 * Real.pi)) (1 / (2 * Real.pi)) τ :=
      (hasDerivAt_id τ).div_const _
    have h2 : HasDerivAt (fun x : ℝ => Real.log (x / (2 * Real.pi))) (1 / τ) τ := by
      have h3 := (Real.hasDerivAt_log (by positivity : τ / (2 * Real.pi) ≠ 0)).comp τ h1
      have heq : 1 / τ = (τ / (2 * Real.pi))⁻¹ * (1 / (2 * Real.pi)) := by
        rw [inv_div]
        field_simp
      rw [heq]
      exact h3
    have h4 : HasDerivAt (fun x : ℝ => Real.log (x / (2 * Real.pi)) ^ 2)
        (2 * Real.log (τ / (2 * Real.pi)) * (1 / τ)) τ := by
      have h5 : HasDerivAt (fun x : ℝ => Real.log (x / (2 * Real.pi)) ^ 2)
          ((2 : ℕ) * Real.log (τ / (2 * Real.pi)) ^ (2 - 1) * (1 / τ)) τ := h2.pow 2
      convert h5 using 1
      norm_num
    have h6 : HasDerivAt (fun x : ℝ =>
        Real.log (x / (2 * Real.pi)) ^ 2 - 2 * Real.log (x / (2 * Real.pi)) + 2)
        (2 * Real.log (τ / (2 * Real.pi)) * (1 / τ) - 2 * (1 / τ)) τ := by
      have h7 := (h4.sub (h2.const_mul 2)).add_const 2
      exact h7
    have h8 := (hasDerivAt_id τ).mul h6
    have hτne : τ ≠ 0 := hτ0.ne'
    have heq : Real.log (τ / (2 * Real.pi)) ^ 2
        = 1 * (Real.log (τ / (2 * Real.pi)) ^ 2 - 2 * Real.log (τ / (2 * Real.pi)) + 2)
          + τ * (2 * Real.log (τ / (2 * Real.pi)) * (1 / τ) - 2 * (1 / τ)) := by
      field_simp
      ring
    rw [heq]
    exact h8
  have hcont : IntervalIntegrable
      (fun τ : ℝ => Real.log (τ / (2 * Real.pi)) ^ 2) volume T (2 * T) := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le (by linarith)]
    intro τ hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT hτ.1
    exact (((Real.continuousAt_log (by positivity)).comp
      (continuousAt_id.div_const _)).pow 2).continuousWithinAt
  rw [integral_eq_sub_of_hasDerivAt hftc hcont]
  have h2T : Real.log (2 * T / (2 * Real.pi)) = Real.log 2 + Real.log (T / (2 * Real.pi)) := by
    rw [show 2 * T / (2 * Real.pi) = 2 * (T / (2 * Real.pi)) by ring,
      Real.log_mul (by norm_num) (by positivity)]
  rw [h2T]
  unfold ell1 l
  ring

set_option maxHeartbeats 1600000 in
/-- **[eq:muints].2 given Stirling**: ∫_T^{2T} μ² = (Tℓ₁²/4π²)(1 + O(l⁻²)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
