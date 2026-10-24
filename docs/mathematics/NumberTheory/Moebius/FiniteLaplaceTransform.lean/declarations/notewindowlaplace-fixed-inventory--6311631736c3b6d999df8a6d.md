# noteWindowLaplace_fixed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42397515-7a5a-1adb-a37d-38d6203e7012",
  "kind": "theorem",
  "lexical_name": "noteWindowLaplace_fixed_inventory",
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
  "slug": "notewindowlaplace-fixed-inventory--6311631736c3b6d999df8a6d",
  "source": {
    "blob": "99ec3cd35e67734ba05ca5b4a04a012e8950660f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 110,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6311631736c3b6d999df8a6d65a4b4477afff8586c34b9ee348fef1c9342938d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42397515-7a5a-1adb-a37d-38d6203e7012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noteWindowLaplace_fixed_inventory (z : ℂ) {T : ℝ} (hT : 0 ≤ T) :
    noteWindowLaplace wholePickup z T =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal n : ℂ) * noteWindowLaplace (pickupResponse n) z T := by
  unfold noteWindowLaplace
  rw [max_eq_right hT]
  calc
    _ = ∫ u in (0:ℝ)..T, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal n : ℂ) * (Complex.exp (-z*u)*(pickupResponse n u : ℂ)) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change Complex.exp (-z*u)*(wholePickup u : ℂ) =
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          (moebiusReal n : ℂ)*(Complex.exp (-z*u)*(pickupResponse n u : ℂ))
      rw [wholePickup_fixed_inventory hu.1 hu.2]
      simp only [Complex.ofReal_sum, Complex.ofReal_mul, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro n _
        exact intervalIntegral.integral_const_mul _ _
      · intro n hn
        have hc : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)*(pickupResponse n u : ℂ)) := by
          have he : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)) := by fun_prop
          exact he.mul (Complex.continuous_ofReal.comp
            (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
        exact (hc.const_mul _).intervalIntegrable _ _

/-- Exact cutoff transform with D_N(s), A_N and M_N, retaining both signed endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99ec3cd35e67734ba05ca5b4a04a012e8950660f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
