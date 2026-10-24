# pickup_reset_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e9c611e-2174-907e-a870-941f58f805d6",
  "kind": "theorem",
  "lexical_name": "pickup_reset_bound",
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
  "slug": "pickup-reset-bound--4e797a0cbf4c826ce7125ab3",
  "source": {
    "blob": "e040f3c1acddb5544af6ae9d58c7636f765b8158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e797a0cbf4c826ce7125ab3e5504a5e0a2784b94cd498bb5b2d1cea0b4738a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e9c611e-2174-907e-a870-941f58f805d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_reset_bound {C p A t : ℝ} (hC : 0 ≤ C) (hp : 0 ≤ p)
    (bound : ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p)
    (hA : 1 ≤ A) (hlower : 2 * Real.log A ≤ t) (hupper : t ≤ 2 * A) :
    |pickup t - pickup (2 * Real.log A)| ≤ (2 * C * 3 ^ p) * A ^ p := by
  have hreset : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have ht : 0 ≤ t := hreset.trans hlower
  have hA0 : 0 ≤ A := by linarith
  have common : 0 ≤ (1 + 2 * A : ℝ) := by linarith
  have htime : (1 + t) ^ p ≤ (1 + 2 * A) ^ p :=
    Real.rpow_le_rpow (by linarith) (by linarith) hp
  have hresetTime : (1 + 2 * Real.log A) ^ p ≤ (1 + 2 * A) ^ p :=
    Real.rpow_le_rpow (by linarith) (by linarith) hp
  have hscale : (1 + 2 * A) ^ p ≤ (3 * A) ^ p :=
    Real.rpow_le_rpow common (by linarith) hp
  calc
    |pickup t - pickup (2 * Real.log A)| ≤
        |pickup t| + |pickup (2 * Real.log A)| := by
      simpa only [sub_zero, zero_sub, abs_neg] using
        abs_sub_le (pickup t) 0 (pickup (2 * Real.log A))
    _ ≤ C * (1 + t) ^ p + C * (1 + 2 * Real.log A) ^ p :=
      add_le_add (bound t ht) (bound _ hreset)
    _ ≤ C * (1 + 2 * A) ^ p + C * (1 + 2 * A) ^ p :=
      add_le_add (mul_le_mul_of_nonneg_left htime hC)
        (mul_le_mul_of_nonneg_left hresetTime hC)
    _ = 2 * C * (1 + 2 * A) ^ p := by ring
    _ ≤ 2 * C * (3 * A) ^ p :=
      mul_le_mul_of_nonneg_left hscale (mul_nonneg (by norm_num) hC)
    _ = (2 * C * 3 ^ p) * A ^ p := by
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 3) hA0]
      ring

/-- Both signs are controlled at every reading, before restricting to a strict sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedIntegralGrowth.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e040f3c1acddb5544af6ae9d58c7636f765b8158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
