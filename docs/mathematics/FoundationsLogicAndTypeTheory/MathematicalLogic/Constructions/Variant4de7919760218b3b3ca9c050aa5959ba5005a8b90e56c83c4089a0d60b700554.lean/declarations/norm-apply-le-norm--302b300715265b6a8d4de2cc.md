# norm_apply_le_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d3db811b127fda58f0f3949c31bf93fa4ae6b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a38db88-c317-4761-beaf-bffc69651cf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4c6e28b-ea7e-cad0-ea7a-387bbe049fe0",
  "kind": "lemma",
  "lexical_name": "norm_apply_le_norm",
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
  "slug": "norm-apply-le-norm--302b300715265b6a8d4de2cc",
  "source": {
    "blob": "1d3db811b127fda58f0f3949c31bf93fa4ae6b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:302b300715265b6a8d4de2ccc3d92fe715a94dfa6704d4b379a4452aa45821be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4c6e28b-ea7e-cad0-ea7a-387bbe049fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_apply_le_norm (x : C⋆ᵐᵒᵈ(A, Π i, E i)) (i : ι) : ‖x i‖ ≤ ‖x‖ := by
  let _ : NormedAddCommGroup C⋆ᵐᵒᵈ(A, Π i, E i) := normedAddCommGroup A
  refine abs_le_of_sq_le_sq' ?_ (by positivity) |>.2
  rw [pi_norm_sq, norm_sq_eq A]
  refine CStarAlgebra.norm_le_norm_of_le_of_nonneg ?_ inner_self_nonneg
  exact Finset.single_le_sum (fun j _ ↦ inner_self_nonneg (A := A) (x := x j)) (Finset.mem_univ i)

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3db811b127fda58f0f3949c31bf93fa4ae6b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
