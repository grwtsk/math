# kernel_second_deriv_eventually_eq_label_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b33ffaf-a23f-1247-b7a1-11211d1e187f",
  "kind": "theorem",
  "lexical_name": "kernel_second_deriv_eventually_eq_label_two",
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
  "slug": "kernel-second-deriv-eventually-eq-label-two--3f6e87de3a33329074a9d900",
  "source": {
    "blob": "cfcf6ea846f715c762e06858836371ff8929902f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6e87de3a33329074a9d900993a9233d35706217498f0966d8cff32ee4a96bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b33ffaf-a23f-1247-b7a1-11211d1e187f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_second_deriv_eventually_eq_label_two {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (polarityKernel A)) =ᶠ[𝓝 (edgeReading A)]
      (fun t : ℝ ↦ Real.log 2 / Real.sqrt 2 *
        (deriv (deriv (deriv (deriv (correlation A)))) (t + Real.log 2) -
          (1 / 2 : ℝ) * deriv (deriv (deriv (correlation A))) (t + Real.log 2))) := by
  have positive : 0 < A := by linarith
  have gap : Real.log (2 : ℝ) < Real.log (3 : ℝ) :=
    Real.log_lt_log (by norm_num) (by norm_num)
  have neighborhood : ∀ᶠ t in 𝓝 (edgeReading A), 2 * A - Real.log 3 < t :=
    Ioi_mem_nhds (by dsimp [edgeReading]; linarith)
  rw [polarity_kernel_second_deriv_eq positive]
  filter_upwards [neighborhood] with t after
  rw [Finset.sum_eq_single 2]
  · simp only [Nat.cast_ofNat]
  · intro k retained different
    have lower := (Finset.mem_Icc.mp retained).1
    have three : 3 ≤ k := by omega
    have castBound : (3 : ℝ) ≤ k := by exact_mod_cast three
    have logBound : Real.log (3 : ℝ) ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) castBound
    have beyond : 2 * A < t + Real.log (k : ℝ) := by linarith
    rw [correlation_fourth_zero_of_two_mul_le positive beyond.le,
      correlation_third_zero_of_two_mul_lt positive beyond]
    ring
  · exact fun absent ↦ False.elim (absent (two_mem_inventory hA))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcf6ea846f715c762e06858836371ff8929902f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
