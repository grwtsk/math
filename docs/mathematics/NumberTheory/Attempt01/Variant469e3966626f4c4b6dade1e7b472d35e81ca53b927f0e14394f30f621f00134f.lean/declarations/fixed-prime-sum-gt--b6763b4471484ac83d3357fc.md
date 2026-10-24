# fixed_prime_sum_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f9a1745-27c3-5297-0945-dd2d3968a301",
  "kind": "theorem",
  "lexical_name": "fixed_prime_sum_gt",
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
  "slug": "fixed-prime-sum-gt--b6763b4471484ac83d3357fc",
  "source": {
    "blob": "9a08eca9f241541ff9afa308462f1c0beac1acad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6763b4471484ac83d3357fc835582e4043d3b9d564b78620dcfbf0599016c3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f9a1745-27c3-5297-0945-dd2d3968a301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_prime_sum_gt : (11/10:ℝ) < primeConstant 2 + primeConstant 3 := by
  unfold primeConstant
  norm_num only [Nat.cast_ofNat]
  have h2 : (69/100:ℝ) ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (109/100:ℝ) ≤ Real.log 3 := by linarith [Real.log_three_gt_d9]
  have hs2 : 0 < Real.sqrt 2 := by positivity
  have hs3 : 0 < Real.sqrt 3 := by positivity
  have hd2 : (69/143:ℝ) ≤ Real.log 2 / Real.sqrt 2 := by
    apply (le_div_iff₀ hs2).mpr
    nlinarith only [sqrt_two_bounds.2, h2]
  have hd3 : (109/174:ℝ) ≤ Real.log 3 / Real.sqrt 3 := by
    apply (le_div_iff₀ hs3).mpr
    nlinarith only [sqrt_three_bounds.2, h3]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Attempt01/Variant469e3966626f4c4b6dade1e7b472d35e81ca53b927f0e14394f30f621f00134f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a08eca9f241541ff9afa308462f1c0beac1acad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
