# mangoldtLogSum_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be2f422e-eb4d-4cbc-a6d6-a0248538ed11",
  "kind": "theorem",
  "lexical_name": "mangoldtLogSum_abel",
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
  "slug": "mangoldtlogsum-abel--b6a9aacec5411661eb40b413",
  "source": {
    "blob": "14077489b9154e42a7f31e5941a2f4b03c005db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 137,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6a9aacec5411661eb40b413a36356bae3a77190e65bb8c4f037548beb448f6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be2f422e-eb4d-4cbc-a6d6-a0248538ed11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogSum_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    mangoldtLogSum b F = F b * mangoldtLogPrefix b -
      ∫ t in 0..b, mangoldtLogPrefix t * deriv F t := by
  have hi := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun p => Real.log p) (fun p => ArithmeticFunction.vonMangoldt p / (p : ℝ))
    (fun p hp => mangoldtInventory_log_bounds b p hp) F hF
  have hint : (∫ t in 0..b, ∑ p ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0)) =
      ∫ t in 0..b, mangoldtLogPrefix t * deriv F t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [mangoldtLogPrefix_eq_steps b t ((uIcc_of_le hb ▸ ht).2), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hint] at hi
  simp_rw [mul_sub] at hi
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, ← mangoldtLogPrefix_eq_sum] at hi
  unfold mangoldtLogSum
  linarith

/-- Both endpoints in the logarithmic window are explicit; the lower Mangoldt atom is excluded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV3Source/Variant64606fa85d2b13223e1557678131a1d0b5863fc3a3dce8456582435a9680c22d.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14077489b9154e42a7f31e5941a2f4b03c005db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
