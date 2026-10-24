# abs_signedAbelDepthSlice_le_two_of_depth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a1fda3-e4b8-1e3e-4383-bc1fed9ce08c",
  "kind": "theorem",
  "lexical_name": "abs_signedAbelDepthSlice_le_two_of_depth",
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
  "slug": "abs-signedabeldepthslice-le-two-of-depth--d8fefcabe761de2866a87060",
  "source": {
    "blob": "5b3556714a377d18f199d0c9c6360a863068f8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8fefcabe761de2866a87060c7bd63dc78f02a29392afdb188b5a41e39c1b6f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a1fda3-e4b8-1e3e-4383-bc1fed9ce08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_signedAbelDepthSlice_le_two_of_depth
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    |weightedMertensDyadicSignedAbelDepthSlice j t| ≤ 2 := by
  let Y : ℕ := 2 ^ (j + 1)
  have havg :
      |weightedMertensTwoPointChowlaAverage j t| ≤ (t + 1 : ℝ) := by
    apply abs_weightedMertensTwoPointChowlaAverage_le_of_abs_prefix_bound
      htY (by positivity)
    intro h hh
    simpa only [Nat.cast_add, Nat.cast_one] using abs_mertensTwoPointPrefix_le_length h (t + 1)
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage,
    abs_mul, abs_of_nonneg (by positivity :
      0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
  calc
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        |weightedMertensTwoPointChowlaAverage j t| ≤
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * (t + 1 : ℝ) := by
        exact mul_le_mul_of_nonneg_left havg (by positivity)
    _ ≤ 2 := by
      have htYR : (t + 1 : ℝ) ≤ (Y : ℝ) := by
        exact_mod_cast (by omega : t + 1 ≤ Y)
      have hYpos : (0 : ℝ) < Y := by
        dsimp [Y]
        positivity
      calc
        2 * (Y : ℝ)⁻¹ * (t + 1 : ℝ) ≤
            2 * (Y : ℝ)⁻¹ * (Y : ℝ) := by
          exact mul_le_mul_of_nonneg_left htYR (by positivity)
        _ = 2 := by field_simp [ne_of_gt hYpos]

/-- Shallow depths satisfy the general finite-depth bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShallowDepthPayment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShallowDepthPayment.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3556714a377d18f199d0c9c6360a863068f8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
