# multiple_source_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56185420-0e3b-b140-2bb3-df5c57d47e5f",
  "kind": "theorem",
  "lexical_name": "multiple_source_term",
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
  "slug": "multiple-source-term--2d8084e2ddd1eec24e525291",
  "source": {
    "blob": "50e7e23496dd259278a3df5e9cdff8cf57c1cba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8084e2ddd1eec24e5252916b15923e9670f1cd7d8fc9a05958c331159428a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56185420-0e3b-b140-2bb3-df5c57d47e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiple_source_term (A x : ℝ) {d j : ℕ} (hd : 0 < d) (hj : 0 < j) :
    (1 / Real.sqrt ((d * j : ℕ) : ℝ)) *
        normalizedTest explicitSecondDerivative A (x + Real.log ((d * j : ℕ) : ℝ)) =
      (1 / Real.sqrt (d : ℝ)) * ((1 / Real.sqrt (j : ℝ)) *
        normalizedTest explicitSecondDerivative A
          (x + Real.log (d : ℝ) + Real.log (j : ℝ))) := by
  have hdR : 0 < (d : ℝ) := by exact_mod_cast hd
  have hjR : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [Nat.cast_mul, Real.log_mul hdR.ne' hjR.ne', Real.sqrt_mul hdR.le]
  rw [show x + Real.log (d : ℝ) + Real.log (j : ℝ) =
    x + (Real.log (d : ℝ) + Real.log (j : ℝ)) by ring]
  ring

/-- Each divisor profile has the exact original long baseline and quotient block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorClassification/Variantdc17a214044d1b161fff90ba50cf63f202ee82441373f0837481a139f72f0ca7.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e7e23496dd259278a3df5e9cdff8cf57c1cba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
