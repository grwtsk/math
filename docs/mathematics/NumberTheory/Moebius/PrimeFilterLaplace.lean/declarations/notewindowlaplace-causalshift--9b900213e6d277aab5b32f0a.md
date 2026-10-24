# noteWindowLaplace_causalShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e442a5ed-5381-1933-91bc-78aff998a35a",
  "kind": "theorem",
  "lexical_name": "noteWindowLaplace_causalShift",
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
  "slug": "notewindowlaplace-causalshift--9b900213e6d277aab5b32f0a",
  "source": {
    "blob": "cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b900213e6d277aab5b32f0a3257e66e79a89168ed206be5ea0e7404051a6f67",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e442a5ed-5381-1933-91bc-78aff998a35a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noteWindowLaplace_causalShift {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    (z : ℂ) {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace (causalShift a f) z T =
      Complex.exp (-z*a) * noteWindowLaplace f z (T-a) := by
  have hT : 0 ≤ T := ha.trans haT
  have hs := window_integrand_continuous (causalShift_continuous hf hf0 a) z
  have hz : (∫ u in (0:ℝ)..a, Complex.exp (-z*u) * (causalShift a f u : ℂ)) = 0 := by
    calc
      _ = ∫ u in (0:ℝ)..a, (0:ℂ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le ha] at hu
        by_cases h : a ≤ u
        · have he : u = a := le_antisymm hu.2 h
          simp [causalShift, he, hf0]
        · simp [causalShift, h]
      _ = 0 := intervalIntegral.integral_zero
  have he : (∫ u in a..T, Complex.exp (-z*u) * (causalShift a f u : ℂ)) =
      Complex.exp (-z*a) * ∫ u in (0:ℝ)..T-a, Complex.exp (-z*u) * (f u : ℂ) := by
    calc
      _ = ∫ u in a..T, Complex.exp (-z*a) *
          (Complex.exp (-z*(u-a)) * (f (u-a) : ℂ)) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le haT] at hu
        simp only [causalShift, if_pos hu.1]
        rw [← mul_assoc, ← Complex.exp_add]
        congr 2
        ring
      _ = Complex.exp (-z*a) * ∫ u in a..T,
          Complex.exp (-z*(u-a)) * (f (u-a) : ℂ) :=
        intervalIntegral.integral_const_mul _ _
      _ = _ := by
        congr 1
        simpa only [sub_self, Complex.ofReal_sub] using intervalIntegral.integral_comp_sub_right
          (fun u ↦ Complex.exp (-z*u) * (f u : ℂ)) a (a := a) (b := T)
  unfold noteWindowLaplace
  rw [max_eq_right hT, max_eq_right (sub_nonneg.mpr haT),
    ← intervalIntegral.integral_add_adjacent_intervals
      (hs.intervalIntegrable 0 a) (hs.intervalIntegrable a T), hz, zero_add, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
