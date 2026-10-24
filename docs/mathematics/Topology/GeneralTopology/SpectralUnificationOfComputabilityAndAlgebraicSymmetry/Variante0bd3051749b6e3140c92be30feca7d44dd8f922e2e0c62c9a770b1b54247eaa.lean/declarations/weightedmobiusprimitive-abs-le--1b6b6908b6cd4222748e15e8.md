# weightedMobiusPrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43aabdb3-d4ff-9371-9f44-d4570bf9a390",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8f1da87-503a-bfb3-4a7e-45fefc13e001",
  "kind": "theorem",
  "lexical_name": "weightedMobiusPrimitive_abs_le",
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
  "slug": "weightedmobiusprimitive-abs-le--1b6b6908b6cd4222748e15e8",
  "source": {
    "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b6b6908b6cd4222748e15e8c6990878dc2958cb412f23f8efa693dc471b6745",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8f1da87-503a-bfb3-4a7e-45fefc13e001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMobiusPrimitive_abs_le {s : ℝ} (_hs : 0 ≤ s) :
    |weightedMobiusPrimitive s| ≤ 2 * Real.exp (s / 2) := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, |weightedMoebius n| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp s⌋₊, 1 / Real.sqrt (n : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      rw [weightedMoebius, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact div_le_div_of_nonneg_right (realMoebius_abs_le_one n) (Real.sqrt_nonneg _)
    _ ≤ 2 * Real.sqrt (⌊Real.exp s⌋₊ : ℝ) := sum_reciprocal_sqrt_le _
    _ ≤ 2 * Real.exp (s / 2) := by
      rw [Real.exp_half]
      exact mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt (Nat.floor_le (by positivity)))
        (by norm_num)

/-- Exact integral of the elementary majorant for the anchored derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaad9990003b638d717db8c0db2108e6cf46bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
