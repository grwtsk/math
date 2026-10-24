# logSqrtWeight_le_unitMajorant

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
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91ca2f3b-b415-bb0a-a716-822ad8bc4c31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37c1b38d-6844-4e64-392d-f7a6230e8136",
  "kind": "theorem",
  "lexical_name": "logSqrtWeight_le_unitMajorant",
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
  "slug": "logsqrtweight-le-unitmajorant--7557448b64f6cec255a3f32e",
  "source": {
    "blob": "2f27498d37f3ba13a8c549a5a744cae4a268a5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7557448b64f6cec255a3f32e9bdbfeb1700a765030218bea36870d43a4895c3c",
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

Occurrence: `result:37c1b38d-6844-4e64-392d-f7a6230e8136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logSqrtWeight_le_unitMajorant (k : ℕ) (x : ℝ)
    (hx : x ∈ Icc (k + 1 : ℝ) (k + 2 : ℝ)) : logSqrtWeight k ≤ unitMajorant x := by
  have hx1 : 1 ≤ x := by linarith [hx.1, Nat.cast_nonneg (α := ℝ) k]
  have hxp : 0 < x := lt_of_lt_of_le zero_lt_one hx1
  have hn : 0 < (k + 2 : ℝ) := by positivity
  have hlog : Real.log (k + 2 : ℝ) ≤ Real.log (2 * x) :=
    Real.log_le_log hn (by linarith [hx.1, Nat.cast_nonneg (α := ℝ) k])
  have hden : x * Real.sqrt x ≤ (k + 2 : ℝ) * Real.sqrt (k + 2 : ℝ) :=
    mul_le_mul hx.2 (Real.sqrt_le_sqrt hx.2) (Real.sqrt_nonneg _) (by positivity)
  calc
    logSqrtWeight k ≤ Real.log (2 * x) / ((k + 2 : ℝ) * Real.sqrt (k + 2 : ℝ)) :=
      div_le_div_of_nonneg_right hlog (by positivity)
    _ ≤ unitMajorant x := div_le_div_of_nonneg_left
      (Real.log_nonneg (by linarith)) (by positivity) hden

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfaf13582abbcc0f382505a54fb913edde016152c4adcc7aeb85093b9da2a6565.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f27498d37f3ba13a8c549a5a744cae4a268a5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
