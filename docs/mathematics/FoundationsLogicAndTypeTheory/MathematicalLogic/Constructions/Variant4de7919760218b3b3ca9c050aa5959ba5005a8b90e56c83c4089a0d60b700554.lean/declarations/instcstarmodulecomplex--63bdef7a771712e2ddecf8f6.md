# instCStarModuleComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac23f7d9463a94b4741236d3f2e2ddd993bf046845dd56183015e966987924bc",
  "kind": "instance",
  "lexical_name": "instCStarModuleComplex",
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
  "slug": "instcstarmodulecomplex--63bdef7a771712e2ddecf8f6",
  "source": {
    "blob": "1d3db811b127fda58f0f3949c31bf93fa4ae6b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 352,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63bdef7a771712e2ddecf8f61c58254a3a2ad0dfc97c828ae3d081fd10cac9a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac23f7d9463a94b4741236d3f2e2ddd993bf046845dd56183015e966987924bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instCStarModuleComplex : CStarModule ℂ E where
  inner x y := ⟪x, y⟫_ℂ
  inner_add_right := by simp [_root_.inner_add_right]
  inner_self_nonneg {x} := by
    rw [← inner_self_ofReal_re, RCLike.ofReal_nonneg]
    exact inner_self_nonneg
  inner_self := by simp
  inner_op_smul_right := by simp [inner_smul_right]
  inner_smul_right_complex := by simp [inner_smul_right, smul_eq_mul]
  star_inner _ _ := by simp
  norm_eq_sqrt_norm_inner_self {x} := by
    simpa only [← inner_self_re_eq_norm] using norm_eq_sqrt_re_inner x

-- Ensures that the two ways to obtain `CStarModule ℂᵐᵒᵖ ℂ` are definitionally equal.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3db811b127fda58f0f3949c31bf93fa4ae6b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
