# sqrt_reciprocal_step_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b33461db8ed0e94763546a954f13ecc9dd10d0a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d81c990-4597-e3bc-ac19-3ea28208a57b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6f7dddf-42e0-e9da-2dfa-86d622766598",
  "kind": "theorem",
  "lexical_name": "sqrt_reciprocal_step_le",
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
  "slug": "sqrt-reciprocal-step-le--1d24a8063ced1e3b99a213d4",
  "source": {
    "blob": "b33461db8ed0e94763546a954f13ecc9dd10d0a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d24a8063ced1e3b99a213d44d6c00fa94960aee99d16f37a69d6b7725ad5be3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6f7dddf-42e0-e9da-2dfa-86d622766598`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_reciprocal_step_le (j : ℕ) (hj : 1 ≤ j) :
    Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) ≤
      2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) := by
  have hj0 : (0 : ℝ) < j := by exact_mod_cast (show 0 < j by omega)
  have hj1 : (0 : ℝ) < (j : ℝ) + 1 := by positivity
  have hs0 := Real.sqrt_pos.mpr hj0
  have hs1 := Real.sqrt_pos.mpr hj1
  have hsq0 := Real.sq_sqrt hj0.le
  have hsq1 := Real.sq_sqrt hj1.le
  have hmono := Real.sqrt_le_sqrt (show (j : ℝ) ≤ (j : ℝ) + 1 by linarith)
  have hfactor : Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ) > 0 := by positivity
  have hl : Real.sqrt (j : ℝ) * (1 / (j : ℝ) - 1 / ((j : ℝ) + 1)) =
      1 / (Real.sqrt (j : ℝ) * ((j : ℝ) + 1)) := by
    field_simp
    nlinarith
  have hr : 2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) =
      2 / (Real.sqrt (j : ℝ) * Real.sqrt ((j : ℝ) + 1) *
        (Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ))) := by
    field_simp
    nlinarith
  rw [hl, hr]
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  have hm := mul_le_mul_of_nonneg_left hmono hs1.le
  have hsmall : Real.sqrt ((j : ℝ) + 1) *
      (Real.sqrt ((j : ℝ) + 1) + Real.sqrt (j : ℝ)) ≤ 2 * ((j : ℝ) + 1) := by
    nlinarith
  nlinarith [mul_le_mul_of_nonneg_left hsmall hs0.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant0309fedbc74b9246096b81a1fa8c1c5dd7e2d37939cf64e5d88cb5ae1813319a.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b33461db8ed0e94763546a954f13ecc9dd10d0a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
