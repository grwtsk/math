# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootAddActionIsPreprimitive.Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.AddAction.IsQuasiPreprimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b64d9c7a654e0033a8c645f463bf622632792c1fb7708c96132910e722712c2",
  "kind": "class",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootAddActionIsPreprimitive.Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.AddAction.IsQuasiPreprimitive",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-rootaddactio--457b72a0f031a73bbdae5812",
  "source": {
    "blob": "eccbdca641932e923e82e97b525acbf631b2c282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457b72a0f031a73bbdae5812f96ed39835d94f568b214a10158b414b6edd7192",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b64d9c7a654e0033a8c645f463bf622632792c1fb7708c96132910e722712c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RootAddActionIsPreprimitive.Varianta08e9e45a1ecc5b8338fcd1f5acd3a986ae76b3e515ebac6dc45f40cbf3bfce8.AddAction.IsQuasiPreprimitive
    [AddGroup G] [AddAction G X] : Prop extends AddAction.IsPretransitive G X where
  isPretransitive_of_normal :
    ∀ {N : AddSubgroup G} [N.Normal], AddAction.fixedPoints N X ≠ .univ →
      AddAction.IsPretransitive N X

/-- An action of a group is quasipreprimitive if any normal subgroup
that has no fixed point acts pretransitively -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primitive/Varianta107b606f142682a45b7c434a8ca4321f1be43f1b1eb856f276b81db970a17a5.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccbdca641932e923e82e97b525acbf631b2c282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
