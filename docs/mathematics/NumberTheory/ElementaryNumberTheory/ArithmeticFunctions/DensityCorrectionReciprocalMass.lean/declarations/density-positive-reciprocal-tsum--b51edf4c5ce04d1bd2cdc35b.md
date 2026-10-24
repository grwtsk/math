# density_positive_reciprocal_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5675634-0613-0df0-d44a-385755ca2dc6",
  "kind": "theorem",
  "lexical_name": "density_positive_reciprocal_tsum",
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
  "slug": "density-positive-reciprocal-tsum--b51edf4c5ce04d1bd2cdc35b",
  "source": {
    "blob": "67e445104c082a7578b47f032723d6043f62a235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51edf4c5ce04d1bd2cdc35b6afe73d050bd0cd10f88628bbe96705da32fff10",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5675634-0613-0df0-d44a-385755ca2dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_positive_reciprocal_tsum :
    (∑' n : ℕ, densityMoebiusCorrection (n+1) / ((n+1 : ℕ) : ℝ)) =
      ∑' n : ℕ, 1 / (((n+1 : ℕ) : ℝ)^2) := by
  have hf := density_reciprocal_summable.sum_add_tsum_nat_add 1
  have hg := reciprocal_square_summable.sum_add_tsum_nat_add 1
  simp only [Finset.sum_range_one] at hf hg
  have hf0 : densityCorrectionReciprocal 0 = 0 := by simp [densityCorrectionReciprocal]
  have hg0 : reciprocalSquare 0 = 0 := by norm_num [reciprocalSquare]
  rw [hf0, zero_add] at hf
  rw [hg0, zero_add] at hg
  change (∑' n : ℕ, densityCorrectionReciprocal (n+1)) = ∑' n : ℕ, reciprocalSquare (n+1)
  rw [hf, hg]
  exact density_reciprocal_tsum

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityCorrectionReciprocalMass.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e445104c082a7578b47f032723d6043f62a235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
