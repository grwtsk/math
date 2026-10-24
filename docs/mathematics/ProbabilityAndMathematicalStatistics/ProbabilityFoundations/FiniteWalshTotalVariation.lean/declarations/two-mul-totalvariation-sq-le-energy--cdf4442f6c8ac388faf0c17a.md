# two_mul_totalVariation_sq_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee6186a3-25fc-1bff-f084-f195547e51dd",
  "kind": "theorem",
  "lexical_name": "two_mul_totalVariation_sq_le_energy",
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
  "slug": "two-mul-totalvariation-sq-le-energy--cdf4442f6c8ac388faf0c17a",
  "source": {
    "blob": "bbeaaf1fca22e3a5824d1ffe051907315ee43f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdf4442f6c8ac388faf0c17a2a4e190e741f8f008c620f7d0c7467d96d2ea0fa",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee6186a3-25fc-1bff-f084-f195547e51dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_mul_totalVariation_sq_le_energy (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (hroots : 0 < roots.card) :
    ((2 : ℚ) * totalVariationFromUniform roots x) ^ 2 ≤
      nonemptyCorrelationEnergy roots x := by
  let q : ℚ := Fintype.card (ι → Bool)
  have hq : 0 < q := boolCube_card_pos (ι := ι)
  have hq2 : 0 < q ^ 2 := pow_pos hq 2
  have hform :
      (2 : ℚ) * totalVariationFromUniform roots x =
        (∑ a : ι → Bool, |scaledPatternDeviation roots x a|) / q := by
    dsimp [totalVariationFromUniform, q]
    field_simp [ne_of_gt (boolCube_card_pos (ι := ι))]
  rw [hform, div_pow]
  apply (div_le_iff₀ hq2).2
  calc
    _ ≤ q ^ 2 * nonemptyCorrelationEnergy roots x := by
      simpa only [q] using scaledDeviation_l1_sq_le_energy roots x hroots
    _ = nonemptyCorrelationEnergy roots x * q ^ 2 := by ring

/-- The familiar square-root bound is stated over reals. The
energy is explicitly cast from the finite rational coefficient sum.
No real-valued arithmetic hypothesis is inserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbeaaf1fca22e3a5824d1ffe051907315ee43f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
