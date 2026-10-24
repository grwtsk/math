# cutoffOnePrimeDiagonal_eq_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55b9ec8-54e1-10b8-7875-d20330cb7b44",
  "kind": "theorem",
  "lexical_name": "cutoffOnePrimeDiagonal_eq_window",
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
  "slug": "cutoffoneprimediagonal-eq-window--aca8c50a5188acb24af1df87",
  "source": {
    "blob": "d972258c3aaa17990f9a83b5855d7952550e7364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca8c50a5188acb24af1df874a80cfb21990bf037b0a08dc48e05d17eea4b50e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55b9ec8-54e1-10b8-7875-d20330cb7b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutoffOnePrimeDiagonal_eq_window (A : ℝ) (hA : 1 ≤ A) :
    cutoffOnePrimeDiagonal A = -primeLogWindow 0 A (diagonalCorrelation A) := by
  classical
  have hMN : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith : A ≤ 2 * A))
  have hsub : (Finset.Ioc 1 ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc 1 (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    have hp' := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
      ⟨(Finset.mem_Ioc.mp hp'.1).1, (Finset.mem_Ioc.mp hp'.1).2.trans hMN⟩, hp'.2⟩
  have hs := Finset.sum_subset hsub
    (f := fun p : ℕ ↦ Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p))
    (by
      intro p hp hpnot
      have hp' := Finset.mem_filter.mp hp
      have hpR : 0 < (p : ℝ) := by exact_mod_cast hp'.2.pos
      have hMp : ⌊Real.exp A⌋₊ < p := by
        by_contra h
        exact hpnot (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr
          ⟨(Finset.mem_Ioc.mp hp'.1).1, Nat.not_lt.mp h⟩, hp'.2⟩)
      have hlog : A < Real.log (p : ℝ) :=
        (Real.lt_log_iff_exp_lt hpR).mpr ((Nat.floor_lt (Real.exp_pos A).le).mp hMp)
      have hzero : diagonalCorrelation A (Real.log p) = 0 := by
        apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log p) (by linarith)
        rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]
        linarith
      rw [hzero, mul_zero])
  rw [primeLogWindow_eq_interval_sum 0 A (by linarith)]
  simp only [Real.exp_zero, Nat.floor_one]
  unfold cutoffOnePrimeDiagonal
  rw [← hs]

/-- Proper prime powers remain as a signed correlation sum; they are not discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46308a3b1b0a1e30dbe7bcf0ea20759f51997b0d2c2f160f69d81de40bece866SourceCutoffOneL/Variant51746a009bf3e3cb1c02388f3cca3ab5aa8ee5d701145069a861354e813cf781.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d972258c3aaa17990f9a83b5855d7952550e7364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
