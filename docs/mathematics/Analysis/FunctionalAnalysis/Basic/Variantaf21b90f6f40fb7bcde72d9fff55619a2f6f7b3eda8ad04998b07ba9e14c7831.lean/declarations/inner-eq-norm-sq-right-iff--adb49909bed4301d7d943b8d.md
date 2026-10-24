# inner_eq_norm_sq_right_iff

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
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:911fc1cb-9c7b-2b01-3250-a86e7b98287e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72507d61-a265-95e8-59eb-7c24d394141b",
  "kind": "theorem",
  "lexical_name": "inner_eq_norm_sq_right_iff",
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
  "slug": "inner-eq-norm-sq-right-iff--adb49909bed4301d7d943b8d",
  "source": {
    "blob": "75fe58e04595f8cd9d46ff4b93f6c998b105064b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 277,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb49909bed4301d7d943b8d5d12e80ad894d20d8efe9ab1acd66370ca5f4686",
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

Occurrence: `result:72507d61-a265-95e8-59eb-7c24d394141b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_eq_norm_sq_right_iff {v w : F} : ⟪v, w⟫_ℝ = ‖w‖ ^ 2 ↔ ⟪v - w, w⟫_ℝ = 0 :=
  inner_eq_ofReal_norm_sq_right_iff

end BasicProperties_Seminormed

section BasicProperties

variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [NormedAddCommGroup F] [InnerProductSpace ℝ F]

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

export InnerProductSpace (norm_sq_eq_re_inner)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75fe58e04595f8cd9d46ff4b93f6c998b105064b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
