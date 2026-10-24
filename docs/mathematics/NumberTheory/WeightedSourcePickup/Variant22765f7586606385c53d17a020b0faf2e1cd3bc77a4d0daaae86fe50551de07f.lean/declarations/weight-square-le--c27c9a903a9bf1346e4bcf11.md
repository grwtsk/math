# weight_square_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aa9bab6-cedd-bfe7-ece5-282e54d7f0a8",
  "kind": "theorem",
  "lexical_name": "weight_square_le",
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
  "slug": "weight-square-le--c27c9a903a9bf1346e4bcf11",
  "source": {
    "blob": "1ab73c625f9e1dea26e4dec58cb10cc0614d0758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c27c9a903a9bf1346e4bcf11efb7e867a7329ddf2d75c400eee7577166f6e1b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aa9bab6-cedd-bfe7-ece5-282e54d7f0a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weight_square_le {A t : ℝ} {n : ℕ} (hA : 1 ≤ A)
    (ht : 2 * Real.log A ≤ t) (hn : 1 ≤ n) :
    pickupWeight A t n ^ 2 ≤ 4 / (n : ℝ) := by
  have h0 := weight_nonneg hA ht hn
  have hu := weight_le_inverse_sqrt hA ht hn
  have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hsq := Real.sq_sqrt hp.le
  have he : (2 * (Real.sqrt n)⁻¹) ^ 2 = 4 / (n : ℝ) := by
    rw [mul_pow, inv_pow, hsq]
    ring
  rw [← he]
  exact pow_le_pow_left₀ h0 hu 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/WeightedSourcePickup/Variant22765f7586606385c53d17a020b0faf2e1cd3bc77a4d0daaae86fe50551de07f.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab73c625f9e1dea26e4dec58cb10cc0614d0758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
