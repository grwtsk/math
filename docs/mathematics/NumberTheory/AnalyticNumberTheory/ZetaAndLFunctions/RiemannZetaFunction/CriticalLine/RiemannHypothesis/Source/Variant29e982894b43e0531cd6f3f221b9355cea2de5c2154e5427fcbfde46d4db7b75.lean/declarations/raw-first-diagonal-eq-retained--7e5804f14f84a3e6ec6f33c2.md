# raw_first_diagonal_eq_retained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfad2cf7-9f57-fefb-8376-17c0ddc9637d",
  "kind": "theorem",
  "lexical_name": "raw_first_diagonal_eq_retained",
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
  "slug": "raw-first-diagonal-eq-retained--7e5804f14f84a3e6ec6f33c2",
  "source": {
    "blob": "1264b91cc6486750a3b91a82e232135ee43629f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e5804f14f84a3e6ec6f33c20297b7f5df7aa8f7298fc12761150b3242e2d895",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfad2cf7-9f57-fefb-8376-17c0ddc9637d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_first_diagonal_eq_retained (A : ℝ) (hA : 1 ≤ A) :
    rawPrimeFirstDiagonal A = retainedPrimeDiagonal A := by
  classical
  have hA0 : 0 < A := by linarith
  have hupper : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hi).1, (Finset.mem_Ioc.mp hi).2.trans hupper⟩, hprime⟩
  have hz (p : ℕ)
      (hp : p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime)
      (hn : p ∉ (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime) :
      Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
        (2 * Real.log (p : ℝ)) = 0 := by
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    have hpgt : ⌊Real.exp A⌋₊ < p := by
      by_contra h
      exact hn (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
        ⟨(Finset.mem_Ioc.mp hi).1, by omega⟩, hprime⟩)
    have hexp : Real.exp A < (p : ℝ) := (Nat.floor_lt (Real.exp_nonneg A)).mp hpgt
    have hplog : A < Real.log (p : ℝ) := by
      rw [← Real.log_exp A]
      exact Real.log_lt_log (Real.exp_pos A) hexp
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log (p : ℝ)) hA0
      (by rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]; linarith), mul_zero]
  have hs := Finset.sum_subset hsub hz
  unfold rawPrimeFirstDiagonal retainedPrimeDiagonal
  rw [← hs]
  unfold vaughanCutoff diagonalCorrelation
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Source/Variant29e982894b43e0531cd6f3f221b9355cea2de5c2154e5427fcbfde46d4db7b75.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1264b91cc6486750a3b91a82e232135ee43629f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
