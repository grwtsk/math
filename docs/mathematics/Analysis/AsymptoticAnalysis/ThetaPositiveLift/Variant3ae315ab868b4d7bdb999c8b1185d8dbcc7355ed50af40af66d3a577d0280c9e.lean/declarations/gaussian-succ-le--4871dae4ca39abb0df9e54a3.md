# gaussian_succ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86c00c564de1e868a202b9b27327578861e932bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fb8c3f7-8eb1-d6e1-d938-4d18555e717d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81dc505e-2a48-2b81-6f25-f7ad80b81e4a",
  "kind": "theorem",
  "lexical_name": "gaussian_succ_le",
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
  "slug": "gaussian-succ-le--4871dae4ca39abb0df9e54a3",
  "source": {
    "blob": "86c00c564de1e868a202b9b27327578861e932bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 52,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4871dae4ca39abb0df9e54a3ebdff728c0565c21ea2032f34ae5c66bd263d50d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81dc505e-2a48-2b81-6f25-f7ad80b81e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_succ_le (m : ℕ) :
    gaussianMode 3 (m + 1) ≤ (1 / 16) * gaussianMode 3 m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp : ((m : ℝ) + 3) ^ 8 ≤ (2 * ((m : ℝ) + 2)) ^ 8 :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have he : Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) ≤
      Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  unfold gaussianMode
  push_cast
  calc
    _ = ((m : ℝ) + 3) ^ 8 * Real.exp (-3 * (((m : ℝ) + 3) ^ 2 - 1)) := by ring_nf
    _ ≤ (2 * ((m : ℝ) + 2)) ^ 8 *
        Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1) - 15) :=
      mul_le_mul hp he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 8 * Real.exp (-15)) *
        (((m : ℝ) + 2) ^ 8 * Real.exp (-3 * (((m : ℝ) + 2) ^ 2 - 1))) := by
      rw [Real.exp_sub, Real.exp_neg, mul_pow]
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right gaussian_ratio_small (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant3ae315ab868b4d7bdb999c8b1185d8dbcc7355ed50af40af66d3a577d0280c9e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86c00c564de1e868a202b9b27327578861e932bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
