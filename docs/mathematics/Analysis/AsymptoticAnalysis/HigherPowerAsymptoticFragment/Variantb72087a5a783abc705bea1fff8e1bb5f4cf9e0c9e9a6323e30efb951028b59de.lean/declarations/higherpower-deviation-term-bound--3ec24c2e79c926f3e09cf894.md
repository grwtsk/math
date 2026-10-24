# higherPower_deviation_term_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8413f59a-6e74-f5dc-07bb-1e1c9a915e93",
  "kind": "theorem",
  "lexical_name": "higherPower_deviation_term_bound",
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
  "slug": "higherpower-deviation-term-bound--3ec24c2e79c926f3e09cf894",
  "source": {
    "blob": "28b8f6531473d17bfaf0f3c4b25f8df29cbacc76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec24c2e79c926f3e09cf8942ddb916616f55d9ccc9819ecdc4ebc0e85f4cb7f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8413f59a-6e74-f5dc-07bb-1e1c9a915e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPower_deviation_term_bound (A : ℝ) (p k : ℕ) (hA : 1 ≤ A) :
    |Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) *
      (sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log (p : ℝ)) - 1)| ≤
        (65 / (6 * A ^ 2)) * higherMoment p k := by
  have hw : 0 ≤ Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2) := by positivity
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (Real.log (p : ℝ) / (p : ℝ) ^ ((k : ℝ) / 2)) *
        (65 * ((k : ℝ) * Real.log (p : ℝ)) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A _ hA) hw
    _ = _ := by unfold higherMoment; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantb72087a5a783abc705bea1fff8e1bb5f4cf9e0c9e9a6323e30efb951028b59de.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b8f6531473d17bfaf0f3c4b25f8df29cbacc76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
