# primeContribution_eq_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d69717-ab44-b311-c9ca-a81a38710c79",
  "kind": "theorem",
  "lexical_name": "primeContribution_eq_closed",
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
  "slug": "primecontribution-eq-closed--6074abe1651b6fc5a773550f",
  "source": {
    "blob": "63e555df0f22c9de6bbc1a457712f7da87f4fab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6074abe1651b6fc5a773550f0c37dcd7d5fcab083c7e7719b3a62ae94faf7f21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d69717-ab44-b311-c9ca-a81a38710c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeContribution_eq_closed (A : ℝ) (hA : 1 ≤ A) :
    primeContribution A =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime
  have hsub : (Cutoff.primeIndices A).filter Nat.Prime ⊆ H := by
    intro p hp
    obtain ⟨hp, hprime⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨(Finset.mem_filter.mp hp).1, hprime⟩
  calc
    _ = ∑ p ∈ (Cutoff.primeIndices A).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ) * firstPrimeWeight A (Real.log (p : ℝ)) := by
      unfold primeContribution
      apply Finset.sum_congr rfl
      intro p hp
      exact first_prime_summand A p (Finset.mem_filter.mp hp).2
    _ = _ := by
      apply Finset.sum_subset hsub
      intro p hp hout
      obtain ⟨hpi, hprime⟩ := Finset.mem_filter.mp hp
      have hp2 := (Finset.mem_Icc.mp hpi).1
      have hcut : Real.exp (2 * A) ≤ (p : ℝ) := by
        by_contra h
        exact hout (Finset.mem_filter.mpr
          ⟨(Cutoff.mem_primeIndices_iff A p).mpr ⟨hp2, lt_of_not_ge h⟩, hprime⟩)
      have hlog : 2 * A ≤ Real.log (p : ℝ) := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      unfold firstPrimeWeight
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log p) (by linarith)
        (hlog.trans (le_abs_self _)), mul_zero, mul_zero]

/-- Genuine integrability of the actual growing weight on the finite source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstPrimeAbelStatements/Varianta3e3f5c13694092ce16861b54ffdf34149d46d96da099ee521b0a8780cf6cbf0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e555df0f22c9de6bbc1a457712f7da87f4fab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
