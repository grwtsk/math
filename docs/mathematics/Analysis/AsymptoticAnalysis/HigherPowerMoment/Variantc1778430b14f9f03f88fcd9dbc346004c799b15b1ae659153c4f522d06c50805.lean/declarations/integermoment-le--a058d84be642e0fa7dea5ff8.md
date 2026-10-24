# integerMoment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cff6b1c353e0c01211caebf7c37a3dff1e70d9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7745343-7978-8925-b82d-8102c8edff00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5cb039d-6878-9d3c-ccb5-c554116d3101",
  "kind": "theorem",
  "lexical_name": "integerMoment_le",
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
  "slug": "integermoment-le--a058d84be642e0fa7dea5ff8",
  "source": {
    "blob": "0cff6b1c353e0c01211caebf7c37a3dff1e70d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a058d84be642e0fa7dea5ff874287e928f14ed9f630377f7bf7341507aeb35b9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5cb039d-6878-9d3c-ccb5-c554116d3101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerMoment_le (n : ℕ) :
    integerMoment n ≤ 1728 * (n : ℝ) ^ (-(5 / 4 : ℝ)) := by
  by_cases hn : n = 0
  · subst n
    norm_num [integerMoment]
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hlog := Real.log_natCast_le_rpow_div n (by norm_num : (0 : ℝ) < 1 / 12)
  have hcub : Real.log (n : ℝ) ^ 3 ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 :=
    pow_le_pow_left₀ (Real.log_natCast_nonneg n) hlog 3
  unfold integerMoment
  calc
    _ ≤ ((n : ℝ) ^ (1 / 12 : ℝ) / (1 / 12 : ℝ)) ^ 3 *
        (n : ℝ) ^ (-(3 / 2 : ℝ)) :=
      mul_le_mul_of_nonneg_right hcub (Real.rpow_nonneg hn0.le _)
    _ = 1728 * ((n : ℝ) ^ (1 / 12 : ℝ)) ^ 3 * (n : ℝ) ^ (-(3 / 2 : ℝ)) := by ring
    _ = _ := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hn0.le, mul_assoc, ← Real.rpow_add hn0]
      norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cff6b1c353e0c01211caebf7c37a3dff1e70d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
