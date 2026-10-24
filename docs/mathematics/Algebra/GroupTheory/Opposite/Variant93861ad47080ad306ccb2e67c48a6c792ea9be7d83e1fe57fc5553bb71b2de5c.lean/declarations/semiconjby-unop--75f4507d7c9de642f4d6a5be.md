# semiconjBy_unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd8b638c-bfcf-4295-af55-491b36cc9f38",
  "kind": "theorem",
  "lexical_name": "semiconjBy_unop",
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
  "slug": "semiconjby-unop--75f4507d7c9de642f4d6a5be",
  "source": {
    "blob": "f48b161edb0ac970c2021812d8a8b8c8293c6e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 232,
    "path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant93861ad47080ad306ccb2e67c48a6c792ea9be7d83e1fe57fc5553bb71b2de5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f4507d7c9de642f4d6a5be3797b8db27de944e24276323c48b5994ce2dd2d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Opposite/Variant93861ad47080ad306ccb2e67c48a6c792ea9be7d83e1fe57fc5553bb71b2de5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8b638c-bfcf-4295-af55-491b36cc9f38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semiconjBy_unop [Mul α] {a x y : αᵐᵒᵖ} :
    SemiconjBy (unop a) (unop y) (unop x) ↔ SemiconjBy a x y := by
  conv_rhs => rw [← op_unop a, ← op_unop x, ← op_unop y, semiconjBy_op]
#align mul_opposite.semiconj_by_unop MulOpposite.semiconjBy_unop
#align add_opposite.semiconj_by_unop AddOpposite.semiconjBy_unop

attribute [nolint simpComm] AddOpposite.semiconjBy_unop

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Opposite/Variant93861ad47080ad306ccb2e67c48a6c792ea9be7d83e1fe57fc5553bb71b2de5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Opposite/Variant93861ad47080ad306ccb2e67c48a6c792ea9be7d83e1fe57fc5553bb71b2de5c.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48b161edb0ac970c2021812d8a8b8c8293c6e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
