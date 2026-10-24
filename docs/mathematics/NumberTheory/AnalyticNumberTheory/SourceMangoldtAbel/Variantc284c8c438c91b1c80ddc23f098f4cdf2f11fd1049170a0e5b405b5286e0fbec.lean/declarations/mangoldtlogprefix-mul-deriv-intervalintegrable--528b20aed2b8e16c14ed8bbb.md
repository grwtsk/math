# mangoldtLogPrefix_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eded9469-3c6b-2ffc-998a-e85e9912451f",
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
  "slug": "mangoldtlogprefix-mul-deriv-intervalintegrable--528b20aed2b8e16c14ed8bbb",
  "source": {
    "blob": "a7ced8635e8ea6247ee7c358f39d56c7e762b14e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variantc284c8c438c91b1c80ddc23f098f4cdf2f11fd1049170a0e5b405b5286e0fbec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:528b20aed2b8e16c14ed8bbb67851502df9a9bcc61c437bec7f7528978916077",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variantc284c8c438c91b1c80ddc23f098f4cdf2f11fd1049170a0e5b405b5286e0fbec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eded9469-3c6b-2ffc-998a-e85e9912451f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–136.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variantc284c8c438c91b1c80ddc23f098f4cdf2f11fd1049170a0e5b405b5286e0fbec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtAbel/Variantc284c8c438c91b1c80ddc23f098f4cdf2f11fd1049170a0e5b405b5286e0fbec.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ced8635e8ea6247ee7c358f39d56c7e762b14e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
