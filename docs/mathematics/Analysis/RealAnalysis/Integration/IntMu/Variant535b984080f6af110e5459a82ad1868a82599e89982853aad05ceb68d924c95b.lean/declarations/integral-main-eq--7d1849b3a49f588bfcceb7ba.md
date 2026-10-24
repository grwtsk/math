# integral_main_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1e6d0e9-d7e8-950b-8c1f-6a824947eae2",
  "kind": "lemma",
  "lexical_name": "integral_main_eq",
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
  "slug": "integral-main-eq--7d1849b3a49f588bfcceb7ba",
  "source": {
    "blob": "45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d1849b3a49f588bfcceb7ba6d9b7725ede3f21b0024ba993e9ac9bad7f57534",
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

Occurrence: `result:e1e6d0e9-d7e8-950b-8c1f-6a824947eae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_main_eq {T : ℝ} (hT : 0 < T) :
    ∫ τ in T..(2 * T), (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))
      = T * ell1 T / (2 * Real.pi) := by
  have hπ : (0 : ℝ) < Real.pi := Real.pi_pos
  have hftc : ∀ τ ∈ Set.uIcc T (2 * T),
      HasDerivAt (fun x : ℝ => (1 / (2 * Real.pi)) * (x * Real.log (x / (2 * Real.pi)) - x))
        ((1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))) τ := by
    intro τ hτ
    rw [Set.uIcc_of_le (by linarith)] at hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT hτ.1
    have h1 : HasDerivAt (fun x : ℝ => x / (2 * Real.pi)) (1 / (2 * Real.pi)) τ :=
      (hasDerivAt_id τ).div_const _
    have h2 : HasDerivAt (fun x : ℝ => Real.log (x / (2 * Real.pi)))
        (1 / (2 * Real.pi) / (τ / (2 * Real.pi))) τ := by
      have h3 := (Real.hasDerivAt_log (by positivity : τ / (2 * Real.pi) ≠ 0)).comp τ h1
      have heq : 1 / (2 * Real.pi) / (τ / (2 * Real.pi))
          = (τ / (2 * Real.pi))⁻¹ * (1 / (2 * Real.pi)) := by ring
      rw [heq]
      exact h3
    have h4 : HasDerivAt (fun x : ℝ => x * Real.log (x / (2 * Real.pi)))
        (Real.log (τ / (2 * Real.pi)) + τ * (1 / (2 * Real.pi) / (τ / (2 * Real.pi)))) τ := by
      have h4a := (hasDerivAt_id τ).mul h2
      have heq : Real.log (τ / (2 * Real.pi)) + τ * (1 / (2 * Real.pi) / (τ / (2 * Real.pi)))
          = 1 * Real.log (τ / (2 * Real.pi))
            + τ * (1 / (2 * Real.pi) / (τ / (2 * Real.pi))) := by ring
      rw [heq]
      exact h4a
    have h5 := (h4.sub (hasDerivAt_id τ)).const_mul (1 / (2 * Real.pi))
    have hτne : τ ≠ 0 := hτ0.ne'
    have heq : (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))
        = 1 / (2 * Real.pi) * (Real.log (τ / (2 * Real.pi))
            + τ * (1 / (2 * Real.pi) / (τ / (2 * Real.pi))) - 1) := by
      have hmul : τ * (1 / (2 * Real.pi) / (τ / (2 * Real.pi))) = 1 := by
        field_simp
      rw [hmul]
      ring
    rw [heq]
    exact h5
  have hcont : IntervalIntegrable
      (fun τ : ℝ => (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))) volume T (2 * T) := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le (by linarith)]
    refine ContinuousOn.mul continuousOn_const ?_
    intro τ hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT hτ.1
    exact ((Real.continuousAt_log (by positivity)).comp
      (continuousAt_id.div_const _)).continuousWithinAt
  rw [integral_eq_sub_of_hasDerivAt hftc hcont]
  have h2T : Real.log (2 * T / (2 * Real.pi)) = Real.log 2 + Real.log (T / (2 * Real.pi)) := by
    rw [show 2 * T / (2 * Real.pi) = 2 * (T / (2 * Real.pi)) by ring,
      Real.log_mul (by norm_num) (by positivity)]
  rw [h2T]
  unfold ell1 l
  field_simp
  ring

/-- **[eq:muints].1 given Stirling**: ∫_T^{2T} μ = Tℓ₁/(2π) + O(1/T). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
