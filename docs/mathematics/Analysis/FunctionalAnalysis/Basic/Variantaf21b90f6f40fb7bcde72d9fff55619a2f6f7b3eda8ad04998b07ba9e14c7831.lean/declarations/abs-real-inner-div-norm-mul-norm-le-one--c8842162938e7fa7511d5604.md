# abs_real_inner_div_norm_mul_norm_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75fe58e04595f8cd9d46ff4b93f6c998b105064b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 587,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ceabb7e0-3d26-a194-22ee-d07be2984408",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7b880ed-d738-a24f-eda9-82e6a8b9b164",
  "kind": "theorem",
  "lexical_name": "abs_real_inner_div_norm_mul_norm_le_one",
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
  "slug": "abs-real-inner-div-norm-mul-norm-le-one--c8842162938e7fa7511d5604",
  "source": {
    "blob": "75fe58e04595f8cd9d46ff4b93f6c998b105064b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 587,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8842162938e7fa7511d5604ff2399ecb8d1fc997474e9d3b48cbdfa4359bdb2",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b880ed-d738-a24f-eda9-82e6a8b9b164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_real_inner_div_norm_mul_norm_le_one (x y : F) : |⟪x, y⟫_ℝ / (‖x‖ * ‖y‖)| ≤ 1 := by
  rw [abs_div, abs_mul, abs_norm, abs_norm]
  exact div_le_one_of_le₀ (abs_real_inner_le_norm x y) (by positivity)

/-- The inner product of a vector with a multiple of itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75fe58e04595f8cd9d46ff4b93f6c998b105064b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
