# twoArcBudget_one_percent_le_thirteen_thirtieths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b24f9d43-d9bc-213c-7d4e-9102f4aac27e",
  "kind": "theorem",
  "lexical_name": "twoArcBudget_one_percent_le_thirteen_thirtieths",
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
  "slug": "twoarcbudget-one-percent-le-thirteen-thirtieths--58965f2a52eb1e2610e4e8d3",
  "source": {
    "blob": "1f219c5154bbf2a0edbdd0a412837964105cef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58965f2a52eb1e2610e4e8d30941e91ef76b06f3ea19e9b4742ec81a45728629",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b24f9d43-d9bc-213c-7d4e-9102f4aac27e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoArcBudget_one_percent_le_thirteen_thirtieths
    {X : ℝ} (hX : 6000 ≤ X) :
    goldbachTwoArcRationalBudget X (X / 100) ≤ 13 * X / 30 := by
  have hXp : 0 < X := by linarith
  have hXX : 6000 * X ≤ X ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hX) (le_of_lt hXp)]
  unfold goldbachTwoArcRationalBudget
  apply (div_le_iff₀ hXp).2
  nlinarith

/-- The normalized allowance T=X leaves a definite linear margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTwoArcMinorCalibration.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f219c5154bbf2a0edbdd0a412837964105cef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
