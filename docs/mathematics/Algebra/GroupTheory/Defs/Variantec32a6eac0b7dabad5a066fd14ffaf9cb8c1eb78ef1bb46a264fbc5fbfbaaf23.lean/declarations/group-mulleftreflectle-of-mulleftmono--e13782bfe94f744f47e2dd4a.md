# Group.mulLeftReflectLE_of_mulLeftMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:935b4b3ec32caa74a39f7d1673157e3488b44159d2e15ed4a88683ca2c9736d3",
  "kind": "instance",
  "lexical_name": "Group.mulLeftReflectLE_of_mulLeftMono",
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
  "slug": "group-mulleftreflectle-of-mulleftmono--e13782bfe94f744f47e2dd4a",
  "source": {
    "blob": "6d69b93b3f548d8bc70a8fc6b280cf74354becb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 310,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e13782bfe94f744f47e2dd4af4af31a0173f2568c4db8cb4b423fbea96f491d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:935b4b3ec32caa74a39f7d1673157e3488b44159d2e15ed4a88683ca2c9736d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Group.mulLeftReflectLE_of_mulLeftMono [Group N] [LE N] [MulLeftMono N] :
    MulLeftReflectLE N where
  le_of_mul_le_mul_left' := Group.covariant_iff_contravariant.mp CovariantClass.elim _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantec32a6eac0b7dabad5a066fd14ffaf9cb8c1eb78ef1bb46a264fbc5fbfbaaf23.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d69b93b3f548d8bc70a8fc6b280cf74354becb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
