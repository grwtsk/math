# subpolynomialCumulative_of_dyadicPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbde81d8-314b-fb36-2cae-05a535e64edd",
  "kind": "theorem",
  "lexical_name": "subpolynomialCumulative_of_dyadicPrefix",
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
  "slug": "subpolynomialcumulative-of-dyadicprefix--987a38ef8b34485ba9725617",
  "source": {
    "blob": "895c31aca4f7d1a06fa351144081328a3e0f3447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:987a38ef8b34485ba9725617e94689d5944ea91e9aef3c5137ecf2f2ca7da173",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbde81d8-314b-fb36-2cae-05a535e64edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCumulative_of_dyadicPrefix
    (hdy : SubpolynomialDyadicPrefixWeightedMertensSquare) :
    SubpolynomialCumulativeWeightedMertensSquare := by
  intro δ hδ
  let η : ℝ := δ / 2
  have hη : 0 < η := by
    dsimp [η]
    linarith
  obtain ⟨C, hC, hbound⟩ := hdy η hη
  let K : ℝ := C * (2 : ℝ) ^ η
  have hK : 0 ≤ K := by
    dsimp [K]
    exact mul_nonneg hC (Real.rpow_nonneg (by norm_num) _)
  refine ⟨K, hK, ?_⟩
  intro N hN
  let J : ℕ := weightedMertensDyadicCover N
  have hcover : N ≤ 2 ^ J := by
    exact (lt_pow_weightedMertensDyadicCover N).le
  have htwo : 2 ^ J ≤ 2 * N := by
    exact pow_weightedMertensDyadicCover_le_two_mul hN
  have htwoReal : (((2 ^ J : ℕ) : ℝ)) ≤ 2 * (N : ℝ) := by
    exact_mod_cast htwo
  have hNreal : (1 : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hN
  calc
    weightedMertensCumulative N ≤
        weightedMertensCumulative (2 ^ J) :=
      weightedMertensCumulative_mono hcover
    _ = weightedMertensDyadicPrefix J :=
      (weightedMertensDyadicPrefix_eq_cumulative_pow J).symm
    _ ≤ C * (((2 ^ J : ℕ) : ℝ) ^ η) := hbound J
    _ ≤ C * ((2 * (N : ℝ)) ^ η) := by
      exact mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow (Nat.cast_nonneg _) htwoReal hη.le) hC
    _ = C * ((2 : ℝ) ^ η * (N : ℝ) ^ η) := by
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
        (Nat.cast_nonneg N)]
    _ ≤ C * ((2 : ℝ) ^ η * (N : ℝ) ^ δ) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_exponent_le hNreal
            (by dsimp [η]; linarith))
          (Real.rpow_nonneg (by norm_num) _)
      · exact hC
    _ = K * (N : ℝ) ^ δ := by
      dsimp [K]
      ring

/-- The all-horizon and completed-dyadic-prefix formulations are exactly
equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `895c31aca4f7d1a06fa351144081328a3e0f3447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
