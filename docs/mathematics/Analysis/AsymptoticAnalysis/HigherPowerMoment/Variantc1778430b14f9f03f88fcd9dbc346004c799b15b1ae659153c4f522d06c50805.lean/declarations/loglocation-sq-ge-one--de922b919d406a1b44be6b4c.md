# logLocation_sq_ge_one

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
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dece9248-7896-a14d-0a49-f7a961031eba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7067569a-1024-8f24-e2ac-5399f2209768",
  "kind": "theorem",
  "lexical_name": "logLocation_sq_ge_one",
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
  "slug": "loglocation-sq-ge-one--de922b919d406a1b44be6b4c",
  "source": {
    "blob": "0cff6b1c353e0c01211caebf7c37a3dff1e70d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de922b919d406a1b44be6b4c949d3c3be2ad2e2cfc1fbc4ac58f0a0b42cc36ac",
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

Occurrence: `result:7067569a-1024-8f24-e2ac-5399f2209768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logLocation_sq_ge_one (p k : ℕ) (hp : 2 ≤ p) (hk : 3 ≤ k) :
    1 ≤ ((k : ℝ) * Real.log (p : ℝ)) ^ 2 := by
  have hlog2 := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlogp := Real.log_le_log (by norm_num : (0 : ℝ) < 2)
    (by exact_mod_cast hp : (2 : ℝ) ≤ p)
  have hlog : (1 / 2 : ℝ) ≤ Real.log (p : ℝ) := by norm_num at hlog2; linarith
  have hm := mul_le_mul (by exact_mod_cast hk : (3 : ℝ) ≤ k) hlog
    (by norm_num : (0 : ℝ) ≤ 1 / 2) (Nat.cast_nonneg k)
  nlinarith

/-- The unweighted higher-power coefficient is bounded by its second logarithmic moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variantc1778430b14f9f03f88fcd9dbc346004c799b15b1ae659153c4f522d06c50805.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cff6b1c353e0c01211caebf7c37a3dff1e70d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
