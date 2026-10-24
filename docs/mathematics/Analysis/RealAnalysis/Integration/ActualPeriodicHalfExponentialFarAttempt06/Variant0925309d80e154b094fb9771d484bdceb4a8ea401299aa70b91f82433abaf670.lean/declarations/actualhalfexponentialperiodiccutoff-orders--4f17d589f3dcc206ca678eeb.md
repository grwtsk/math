# actualHalfExponentialPeriodicCutoff_orders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1299e67-76b8-a76f-ada0-133d459a07bc",
  "kind": "theorem",
  "lexical_name": "actualHalfExponentialPeriodicCutoff_orders",
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
  "slug": "actualhalfexponentialperiodiccutoff-orders--4f17d589f3dcc206ca678eeb",
  "source": {
    "blob": "4faba31a0149b80929bbf8a0de063fd67d055f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f17d589f3dcc206ca678eeb2dd031dd3d2d2f28a6929b039f9e3bd427c9ae44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1299e67-76b8-a76f-ada0-133d459a07bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfExponentialPeriodicCutoff_orders {A : ℝ} (hA : 25600 ≤ A) :
    2 ≤ actualHalfExponentialPeriodicCutoff A ∧
      (vaughanCutoff A : ℝ) ≤ actualHalfExponentialPeriodicCutoff A ∧
        actualHalfExponentialPeriodicCutoff A ≤
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A hA1
  have hUp : 0 < (vaughanCutoff A : ℝ) := by linarith
  have hL := (actual_cutoff_logs_le_scale hA).1
  have hLs : Real.log (vaughanCutoff A : ℝ) ≤ Real.sqrt A :=
    Real.le_sqrt_of_sq_le hL
  have hs : Real.sqrt A ≤ A / 2 := by
    apply (Real.sqrt_le_iff).2
    constructor
    · linarith
    · nlinarith
  have hLh := hLs.trans hs
  have hcut2 : 2 ≤ Real.exp (A / 2) := by
    have h := Real.add_one_le_exp (A / 2)
    linarith
  have hUcut : (vaughanCutoff A : ℝ) ≤ Real.exp (A / 2) :=
    (Real.log_le_iff_le_exp hUp).1 hLh
  let K : ℝ := ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)
  have hKp : 0 < K := by
    have hK := actual_column_window_nonempty hA1
    have hh : 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) := by omega
    exact_mod_cast hh
  have hw := actualUpperColumn_time_width_le hA1
  change 2 * A - Real.log K - Real.log (vaughanCutoff A : ℝ) ≤
    3 / (vaughanCutoff A : ℝ) at hw
  have hf : 3 / (vaughanCutoff A : ℝ) ≤ 3 := by
    apply (div_le_iff₀ hUp).2
    nlinarith
  have hKh : A / 2 ≤ Real.log K := by linarith
  exact ⟨hcut2, hUcut, (Real.exp_le_iff_le_log hKp).2 hKh⟩

/-- Genuine edge integration gives a uniform actual far-periodic budget from exp(A/2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faba31a0149b80929bbf8a0de063fd67d055f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
