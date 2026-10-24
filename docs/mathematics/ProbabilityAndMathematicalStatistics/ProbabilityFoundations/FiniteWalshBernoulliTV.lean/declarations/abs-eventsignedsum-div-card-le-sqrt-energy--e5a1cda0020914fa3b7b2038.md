# abs_eventSignedSum_div_card_le_sqrt_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8016cd1-7d8e-7a31-7592-3eaadf6e6e6a",
  "kind": "theorem",
  "lexical_name": "abs_eventSignedSum_div_card_le_sqrt_energy",
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
  "slug": "abs-eventsignedsum-div-card-le-sqrt-energy--e5a1cda0020914fa3b7b2038",
  "source": {
    "blob": "24be06dc955cfb5f510992f3ec6db28c44807c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 119,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a1cda0020914fa3b7b2038797d63c774e84442b32238dceb303f841dac0381",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8016cd1-7d8e-7a31-7592-3eaadf6e6e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_eventSignedSum_div_card_le_sqrt_energy
    (delta : α → ℝ) (E : ℝ) (event : α → Bool)
    (hzero : (∑ a : α, delta a) = 0)
    (henergy : (∑ a : α, (delta a) ^ 2) =
      (Fintype.card α : ℝ) * E)
    (hE : 0 ≤ E) :
    |eventSignedSum delta event / (Fintype.card α : ℝ)| ≤
      Real.sqrt E / 2 := by
  classical
  have hcard : 0 < (Fintype.card α : ℝ) := by
    exact_mod_cast (Fintype.card_pos : 0 < Fintype.card α)
  have hcs := double_eventSignedSum_sq_le delta event hzero
  have hsq :
      (2 * |eventSignedSum delta event|) ^ 2 ≤
        ((Fintype.card α : ℝ) * Real.sqrt E) ^ 2 := by
    calc
      (2 * |eventSignedSum delta event|) ^ 2 =
          (2 * eventSignedSum delta event) ^ 2 := by
        simp [mul_pow, sq_abs]
      _ ≤ (Fintype.card α : ℝ) *
          (∑ a : α, (delta a) ^ 2) := hcs
      _ = ((Fintype.card α : ℝ) * Real.sqrt E) ^ 2 := by
        rw [henergy, mul_pow, Real.sq_sqrt hE]
        ring
  have hnonneg :
      0 ≤ (Fintype.card α : ℝ) * Real.sqrt E :=
    mul_nonneg hcard.le (Real.sqrt_nonneg E)
  have hhalf :
      2 * |eventSignedSum delta event| ≤
        (Fintype.card α : ℝ) * Real.sqrt E :=
    (sq_le_sq₀ (by positivity) hnonneg).mp hsq
  have hdivision :
      |eventSignedSum delta event| / (Fintype.card α : ℝ) ≤
        Real.sqrt E / 2 := by
    apply (div_le_iff₀ hcard).2
    nlinarith
  calc
    |eventSignedSum delta event / (Fintype.card α : ℝ)| =
        |eventSignedSum delta event| / (Fintype.card α : ℝ) := by
      rw [abs_div, abs_of_pos hcard]
    _ ≤ Real.sqrt E / 2 := hdivision

end FiniteSignedMeasures

section ActualBooleanPatterns

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- The actual scaled REAL empirical pattern defect; source coefficients
come exclusively from the inherited rational empiricalPattern function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24be06dc955cfb5f510992f3ec6db28c44807c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
