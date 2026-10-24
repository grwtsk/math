# actual_half_log_sum_eq_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67ddcea8-b090-2197-86b6-ad50b4f7593d",
  "kind": "theorem",
  "lexical_name": "actual_half_log_sum_eq_closed",
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
  "slug": "actual-half-log-sum-eq-closed--128819e35e877b758bd8c80c",
  "source": {
    "blob": "8e97f3d4ce38a12fc9816a6d6ac0459cb9ddd4b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:128819e35e877b758bd8c80cd41792a3b8594c737bce63b24d167185187d018f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ddcea8-b090-2197-86b6-ad50b4f7593d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_half_log_sum_eq_closed (b : ℝ) :
    mangoldtLogSum b (fun t => Real.exp (t / 2)) =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp b⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
  unfold mangoldtLogSum
  calc
    _ = ∑ n ∈ primePowerInventory b, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn2 := (Finset.mem_Icc.mp hn).1
      have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have he : Real.exp (Real.log (n : ℝ) / 2) = (n : ℝ) ^ (1 / 2 : ℝ) := by
        rw [Real.rpow_def_of_pos hp]
        congr 1
        ring
      have hr : (n : ℝ) ^ (-1 / 2 : ℝ) = (n : ℝ) ^ (1 / 2 : ℝ) / n := by
        rw [show (-1 / 2 : ℝ) = 1 / 2 - 1 by ring, Real.rpow_sub hp, Real.rpow_one]
      rw [he, hr]
      ring
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn' := Finset.mem_Icc.mp hn
        have hsmall : n < 2 := by
          simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
          omega
        have hcases : n = 0 ∨ n = 1 := by omega
        rcases hcases with rfl | rfl <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant0d14c9a0bcad7ba658ca6141959eba04d68ad4b48cf04c96977e3688cea8de09.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e97f3d4ce38a12fc9816a6d6ac0459cb9ddd4b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
