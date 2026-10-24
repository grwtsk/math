# profile_endpoint_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f48a275-69a6-81f5-7eef-b8d04fec2bef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d5c0818-cd2e-9e39-6b41-dd4c574a00e7",
  "kind": "theorem",
  "lexical_name": "profile_endpoint_integral_bound",
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
  "slug": "profile-endpoint-integral-bound--ff9fa195020ec3c6810c9d52",
  "source": {
    "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 84,
    "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff9fa195020ec3c6810c9d528fabec5aead2853583d263ea1ce7058cbf4e93d2",
  "verification": {
    "reference": "docs/verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d5c0818-cd2e-9e39-6b41-dd4c574a00e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_endpoint_integral_bound {u : ℝ} (hu : 0 ≤ u) :
    profile u 1 + (∫ t in (1 : ℝ)..Real.exp u, profile u t) ≤ u := by
  let a := Real.exp (-u / 2)
  have ha : a ≤ 1 := by
    dsimp [a]
    simpa using Real.exp_le_exp.mpr (show -u / 2 ≤ 0 by linarith)
  have hmul : a * Real.sqrt (Real.exp u) = 1 := by
    dsimp [a]
    rw [sqrt_exp_half, ← Real.exp_add]
    rw [show -u / 2 + u / 2 = 0 by ring, Real.exp_zero]
  have hmul2 : a ^ 2 * Real.exp u = 1 := by
    calc
      _ = a ^ 2 * Real.sqrt (Real.exp u) ^ 2 := by rw [Real.sq_sqrt (Real.exp_pos u).le]
      _ = (a * Real.sqrt (Real.exp u)) ^ 2 := by ring
      _ = 1 := by rw [hmul]; norm_num
  rw [profile_integral hu]
  simp only [profile, profilePrimitive, Real.sqrt_one, inv_one, Real.log_one,
    Real.log_exp]
  change (1 - a) ^ 2 +
    (u - 4 * a * Real.sqrt (Real.exp u) + a ^ 2 * Real.exp u -
      (0 - 4 * a * 1 + a ^ 2 * 1)) ≤ u
  nlinarith [hmul, hmul2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
