# IsPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:107a9955ea5406140d0dccbf0dc60ebd1218fb2d0200f0cfee8b2f5f4e39ea7c",
  "kind": "structure",
  "lexical_name": "IsPushout",
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
  "slug": "ispushout--c312626fbcac6004608c8fba",
  "source": {
    "blob": "06ecb1ec3f0f9bab7bcfb4df75ded1ea5953e275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c312626fbcac6004608c8fba8a2c2011c2539a01203fc921b2a3a9816f5813b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:107a9955ea5406140d0dccbf0dc60ebd1218fb2d0200f0cfee8b2f5f4e39ea7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsPushout {Z X Y P : C} (f : Z ⟶ X) (g : Z ⟶ Y) (inl : X ⟶ P) (inr : Y ⟶ P) : Prop
    extends CommSq f g inl inr where
  /-- the pushout cocone is a colimit -/
  isColimit' : Nonempty (IsColimit (PushoutCocone.mk _ _ w))

namespace IsPullback
variable {P X Y Z : C} {fst : P ⟶ X} {snd : P ⟶ Y} {f : X ⟶ Z} {g : Y ⟶ Z}

/-- The (limiting) `PullbackCone f g` implicit in the statement
that we have an `IsPullback fst snd f g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06ecb1ec3f0f9bab7bcfb4df75ded1ea5953e275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
