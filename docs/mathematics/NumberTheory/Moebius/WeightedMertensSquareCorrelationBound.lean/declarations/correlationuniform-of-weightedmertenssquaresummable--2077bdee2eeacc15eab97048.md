# correlationUniform_of_weightedMertensSquareSummable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58fb7ede-9804-985d-22a1-e3542657e179",
  "kind": "theorem",
  "lexical_name": "correlationUniform_of_weightedMertensSquareSummable",
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
  "slug": "correlationuniform-of-weightedmertenssquaresummable--2077bdee2eeacc15eab97048",
  "source": {
    "blob": "d3c6eb93645865d05abe185faac1937215d8237c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2077bdee2eeacc15eab97048d35ecbada4432dc45fd4a668bcaa6238a6028f49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58fb7ede-9804-985d-22a1-e3542657e179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationUniform_of_weightedMertensSquareSummable {ε : ℝ}
    (hs : CriticalWeightedMertensSquareSummable ε) :
    WeightedMertensCorrelationUniform ε := by
  unfold CriticalWeightedMertensSquareSummable at hs
  let S : ℝ := ∑' n : ℕ,
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε))
  have hS0 : 0 ≤ S := by
    dsimp [S]
    exact tsum_nonneg (weightedMertensSquareTerm_nonneg ε)
  refine ⟨S, hS0, ?_⟩
  intro N
  have hcorr : weightedMertensCorrelation ε N ≤
      weightedMertensSquarePartial ε N := by
    rw [weightedMertensSquarePartial_eq_correlation_add_diagonal]
    linarith [weightedMertensDiagonal_nonneg ε N]
  calc
    weightedMertensCorrelation ε N ≤ weightedMertensSquarePartial ε N := hcorr
    _ = ∑ n ∈ Finset.range (N + 1),
        pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
          ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) :=
      (sum_range_succ_weightedMertensSquareTerm ε N).symm
    _ ≤ S := hs.sum_le_tsum _ (fun n _hn => weightedMertensSquareTerm_nonneg ε n)

/-- For positive `ε`, the signed-correlation criterion is exactly equivalent
to the improved weighted Mertens-square target: the squarefree diagonal is
nonnegative and has finite total cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedMertensSquareCorrelationBound.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c6eb93645865d05abe185faac1937215d8237c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
