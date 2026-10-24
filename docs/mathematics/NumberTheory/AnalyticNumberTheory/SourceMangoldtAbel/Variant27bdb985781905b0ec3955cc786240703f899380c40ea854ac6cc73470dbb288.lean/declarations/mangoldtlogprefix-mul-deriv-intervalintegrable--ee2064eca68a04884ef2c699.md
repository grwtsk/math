# mangoldtLogPrefix_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23d70624-ccd1-1be4-6069-55db7cb0ddfa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8f6fd86-dee2-6f4b-55eb-aea2b2a2ccaa",
  "kind": "theorem",
  "lexical_name": "mangoldtLogPrefix_mul_deriv_intervalIntegrable",
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
  "slug": "mangoldtlogprefix-mul-deriv-intervalintegrable--ee2064eca68a04884ef2c699",
  "source": {
    "blob": "500519b52a22d8540a5314963a4d95c2373e62b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee2064eca68a04884ef2c6993204e80646cead7cfd281ef7fca38143391fb30f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8f6fd86-dee2-6f4b-55eb-aea2b2a2ccaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogPrefix_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => mangoldtLogPrefix t * deriv F t) volume a b := by
  have hi : IntervalIntegrable (fun t => ∑ p ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * (if Real.log p ≤ t then deriv F t else 0))
      volume a b := by
    have hi' : IntervalIntegrable (∑ p ∈ primePowerInventory b,
        fun t : ℝ => ArithmeticFunction.vonMangoldt p / p *
          (if Real.log p ≤ t then deriv F t else 0)) volume a b :=
      IntervalIntegrable.sum (primePowerInventory b) (fun p _ =>
      (intervalIntegrable_closed_step a b (Real.log p) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable a b)).const_mul
          (ArithmeticFunction.vonMangoldt p / p))
    have heq : (∑ p ∈ primePowerInventory b,
        fun t : ℝ => ArithmeticFunction.vonMangoldt p / p *
          (if Real.log p ≤ t then deriv F t else 0)) =
        (fun t : ℝ => ∑ p ∈ primePowerInventory b,
          ArithmeticFunction.vonMangoldt p / p * (if Real.log p ≤ t then deriv F t else 0)) := by
      ext t
      simp
    rw [heq] at hi'
    exact hi'
  apply hi.congr
  intro t ht
  dsimp only
  rw [mangoldtLogPrefix_eq_steps b t ((uIoc_of_le hab ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p hp
  split_ifs <;> simp

/-- Exact finite Abel identity anchored below the first Mangoldt atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variant27bdb985781905b0ec3955cc786240703f899380c40ea854ac6cc73470dbb288.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500519b52a22d8540a5314963a4d95c2373e62b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
