# finite_inverse_geom_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f27498d37f3ba13a8c549a5a744cae4a268a5ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af2cdf92-9761-9706-5ccb-2ab7c8711d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31085d14-1d66-2c03-0fec-86bdcf9043ff",
  "kind": "theorem",
  "lexical_name": "finite_inverse_geom_le_two",
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
  "slug": "finite-inverse-geom-le-two--1205b5d2c1418f545bdb4092",
  "source": {
    "blob": "2f27498d37f3ba13a8c549a5a744cae4a268a5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 156,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1205b5d2c1418f545bdb4092cfe295cb7772ba516d02c9218605d2b7a142fec6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31085d14-1d66-2c03-0fec-86bdcf9043ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_inverse_geom_le_two (p : ℕ) (hp : 2 ≤ p) (s : Finset ℕ) :
    (∑ k ∈ s, (1 / (p : ℝ)) ^ k) ≤ 2 := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp
  have hp0 : (0 : ℝ) < p := by linarith
  have hq : (1 / (p : ℝ)) ≤ 1 / 2 := by
    exact one_div_le_one_div_of_le (by norm_num) hp2
  have hq0 : (0 : ℝ) ≤ 1 / p := by positivity
  have hqa : |1 / (p : ℝ)| < 1 := by rw [abs_of_nonneg hq0]; linarith
  have hsum := (summable_geometric_of_abs_lt_one hqa).sum_le_tsum s (fun k _ => pow_nonneg hq0 k)
  rw [tsum_geometric_of_abs_lt_one hqa] at hsum
  apply hsum.trans
  rw [← one_div]
  exact (div_le_iff₀ (by linarith : (0 : ℝ) < 1 - 1 / p)).2 (by linarith)

/-- Every finite odd-exponent block at one prime is bounded by its complete
geometric series. The source remains the actual correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f27498d37f3ba13a8c549a5a744cae4a268a5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
