# actual_first_diagonal_eq_retained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:578fdac2-92bb-6eed-f9ec-6a91e242a743",
  "kind": "theorem",
  "lexical_name": "actual_first_diagonal_eq_retained",
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
  "slug": "actual-first-diagonal-eq-retained--a24054b627f2fa7d5abca3ef",
  "source": {
    "blob": "eab43d02eed33041e538ff80892fa7bf865a93a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Source/Variantb35fcddaaf2633b505f335c5a7af55ad1d5496eab0bb02b1ccf0e02eadf3cfc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24054b627f2fa7d5abca3ef0322b2d7d86dbb99002cc9eacb7abe7673917757",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Source/Variantb35fcddaaf2633b505f335c5a7af55ad1d5496eab0bb02b1ccf0e02eadf3cfc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:578fdac2-92bb-6eed-f9ec-6a91e242a743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_diagonal_eq_retained (A : ℝ) (hA : 1 ≤ A) :
    actualLargePrimeFirstDiagonal A =
      -(alpha (vaughanCutoff A) - 1) * retainedPrimeDiagonal A := by
  classical
  have hA0 : 0 < A := by linarith
  have hupper : ⌊Real.exp A⌋₊ ≤ sourceKernelCutoff A := by
    unfold sourceKernelCutoff sourceUpper
    exact Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  have hsub : (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime ⊆
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    rcases Finset.mem_Ioc.mp hi with ⟨hlo, hhi⟩
    exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hlo, hhi.trans hupper⟩, hprime⟩
  have hz (p : ℕ)
      (hp : p ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime)
      (hn : p ∉ (Finset.Ioc (vaughanCutoff A) ⌊Real.exp A⌋₊).filter Nat.Prime) :
      Real.log (p : ℝ) / (p : ℝ) * sourceCorrelation explicitSecondDerivative A
        (2 * Real.log (p : ℝ)) = 0 := by
    rcases Finset.mem_filter.mp hp with ⟨hi, hprime⟩
    have hpgt : ⌊Real.exp A⌋₊ < p := by
      have hlo := (Finset.mem_Ioc.mp hi).1
      by_contra h
      exact hn (Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hlo, by omega⟩, hprime⟩)
    have hexp : Real.exp A < (p : ℝ) := (Nat.floor_lt (Real.exp_nonneg A)).mp hpgt
    have hplog : A < Real.log (p : ℝ) := by
      rw [← Real.log_exp A]
      exact Real.log_lt_log (Real.exp_pos A) hexp
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * Real.log (p : ℝ)) hA0
      (by rw [abs_of_pos (by linarith : 0 < 2 * Real.log (p : ℝ))]; linarith), mul_zero]
  have hs := Finset.sum_subset hsub hz
  unfold actualLargePrimeFirstDiagonal retainedPrimeDiagonal
  rw [← hs]
  unfold vaughanCutoff diagonalCorrelation
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Source/Variantb35fcddaaf2633b505f335c5a7af55ad1d5496eab0bb02b1ccf0e02eadf3cfc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Source/Variantb35fcddaaf2633b505f335c5a7af55ad1d5496eab0bb02b1ccf0e02eadf3cfc2.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab43d02eed33041e538ff80892fa7bf865a93a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
