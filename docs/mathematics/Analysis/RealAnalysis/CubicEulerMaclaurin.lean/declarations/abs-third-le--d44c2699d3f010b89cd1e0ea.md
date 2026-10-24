# abs_third_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac835657-016b-1cd5-1030-fb6d464ad8cf",
  "kind": "theorem",
  "lexical_name": "abs_third_le",
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
  "slug": "abs-third-le--d44c2699d3f010b89cd1e0ea",
  "source": {
    "blob": "47883a7af5b108dddc7303c6a48db4c51b7fde32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44c2699d3f010b89cd1e0eae779d38c8157391b262fb398f77abc16befb3ae2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac835657-016b-1cd5-1030-fb6d464ad8cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_third_le (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : |third u| ≤ 1 / 48 := by
  have hp : 0 ≤ u * (1 - u) := mul_nonneg hu.1 (sub_nonneg.mpr hu.2)
  have hp' : u * (1 - u) ≤ 1 / 4 := by nlinarith [sq_nonneg (u - 1 / 2)]
  have hm : |u - 1 / 2| ≤ 1 / 2 := abs_le.mpr ⟨by linarith [hu.1], by linarith [hu.2]⟩
  have he : third u = -(u * (1 - u)) * (u - 1 / 2) / 6 := by unfold third; ring
  rw [he, abs_div, abs_mul, abs_neg, abs_of_nonneg hp]
  rw [show |(6 : ℝ)| = 6 by norm_num]
  have hb := mul_le_mul hp' hm (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1 / 4)
  linarith

/-- The cubic is antisymmetric around the midpoint; its absolute value is not discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/CubicEulerMaclaurin.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47883a7af5b108dddc7303c6a48db4c51b7fde32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
