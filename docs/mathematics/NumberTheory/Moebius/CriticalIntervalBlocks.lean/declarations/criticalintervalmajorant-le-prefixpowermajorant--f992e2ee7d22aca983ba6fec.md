# criticalIntervalMajorant_le_prefixPowerMajorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8525e8c3-3e12-c5ff-c392-2b126f7eeefc",
  "kind": "theorem",
  "lexical_name": "criticalIntervalMajorant_le_prefixPowerMajorant",
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
  "slug": "criticalintervalmajorant-le-prefixpowermajorant--f992e2ee7d22aca983ba6fec",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 421,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f992e2ee7d22aca983ba6fec7a3afb8c926fd5373d7013c1e28afad4f7af8091",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8525e8c3-3e12-c5ff-c392-2b126f7eeefc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalIntervalMajorant_le_prefixPowerMajorant {n : ℕ}
    (hn : 1 ≤ n) :
    criticalIntervalMajorant n ≤ criticalPrefixPowerMajorant n := by
  have h1 : exponentialLogDrop 1 n ≤ (n : ℝ) ^ (-(2 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (1 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have h32 : exponentialLogDrop (3 / 2) n ≤
      (3 / 2 : ℝ) * (n : ℝ) ^ (-(5 / 2 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (3 / 2 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have h2 : exponentialLogDrop 2 n ≤
      2 * (n : ℝ) ^ (-(3 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (2 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have hA : 4 * pickupWeightedPrefix n ^ 2 * exponentialLogDrop 1 n ≤
      4 * pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) :=
    mul_le_mul_of_nonneg_left h1
      (mul_nonneg (by norm_num) (sq_nonneg (pickupWeightedPrefix n)))
  have hAM : (16 / 3) * |pickupWeightedPrefix n * pickupMertensPrefix n| *
        exponentialLogDrop (3 / 2) n ≤
      (16 / 3) * |pickupWeightedPrefix n * pickupMertensPrefix n| *
        ((3 / 2 : ℝ) * (n : ℝ) ^ (-(5 / 2 : ℝ))) :=
    mul_le_mul_of_nonneg_left h32
      (mul_nonneg (by norm_num) (abs_nonneg _))
  have hM : 2 * pickupMertensPrefix n ^ 2 * exponentialLogDrop 2 n ≤
      2 * pickupMertensPrefix n ^ 2 *
        (2 * (n : ℝ) ^ (-(3 : ℝ))) :=
    mul_le_mul_of_nonneg_left h2
      (mul_nonneg (by norm_num) (sq_nonneg (pickupMertensPrefix n)))
  unfold criticalIntervalMajorant criticalPrefixPowerMajorant
  linear_combination hA + hAM + hM

/-- A source-readable sufficient condition at the natural power scales of the
two Möbius prefixes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
