# subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af65c25b-7002-0073-6b41-785b553c4082",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform",
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
  "slug": "subpolynomialcoregrowingshiftbinaryprefixsquareenergy-of-uniform--def84a11eb66af7fe076c23a",
  "source": {
    "blob": "f45803f1a1068b8817771de233c80a7f0846283d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 472,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:def84a11eb66af7fe076c23a471c44a09f347fb0a3b36daf1c3db89b75e398c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af65c25b-7002-0073-6b41-785b553c4082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy_of_uniform
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  let U : ℝ := A * X ^ δ
  have hcoreEnv : CoreGrowingShiftPrefixEnvelope j U := by
    dsimp [U, X]
    exact coreGrowingShiftPrefixEnvelope_of_dyadic (henv j)
  have hE :=
    coreGrowingShiftBinaryPrefixSquareEnergy_le_of_envelope hcoreEnv
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ 2 * X := by
    have h := coreLongDeepDepths_card_le_rightScale j
    rw [Nat.pow_succ] at h
    exact_mod_cast h
  have hU : 0 ≤ U := by
    dsimp [U]
    positivity
  calc
    coreGrowingShiftBinaryPrefixSquareEnergy j ≤
      ((coreLongDeepDepths j).card : ℝ) * X * U ^ 2 := by
        simpa [X] using hE
    _ ≤ (2 * X) * X * U ^ 2 := by
      apply mul_le_mul_of_nonneg_right hcard
      exact mul_nonneg (by positivity) (sq_nonneg U)
    _ ≤ (2 * A * X * X ^ δ) ^ 2 := by
      dsimp [U]
      nlinarith [sq_nonneg (A * X * X ^ δ)]
    _ = ((2 * A) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 := by rfl

/-- Concrete source descriptor for the averaged prefix-square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftPrefixSquareEnergy.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f45803f1a1068b8817771de233c80a7f0846283d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
