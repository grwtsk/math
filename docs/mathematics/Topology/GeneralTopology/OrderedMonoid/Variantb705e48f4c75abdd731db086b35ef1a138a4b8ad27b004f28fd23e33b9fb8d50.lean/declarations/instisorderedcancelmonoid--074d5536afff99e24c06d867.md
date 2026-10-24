# instIsOrderedCancelMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e1c0edf7a2d74cba16833140d2fbc6eb918b21110d5d68ccea756cced4a518e",
  "kind": "instance",
  "lexical_name": "instIsOrderedCancelMonoid",
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
  "slug": "instisorderedcancelmonoid--074d5536afff99e24c06d867",
  "source": {
    "blob": "b17b7b186bcc21f9816012c276feb1d8b382666e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:074d5536afff99e24c06d8673c848379993b71575f9c3d13dc0844b0504c41c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e1c0edf7a2d74cba16833140d2fbc6eb918b21110d5d68ccea756cced4a518e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsOrderedCancelMonoid [CommMonoid β] [PartialOrder β] [IsOrderedCancelMonoid β] :
    IsOrderedCancelMonoid (Germ l β) where
  le_of_mul_le_mul_left f g h := inductionOn₃ f g h fun _ _ _ H ↦ H.mono
    fun _ ↦ le_of_mul_le_mul_left'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17b7b186bcc21f9816012c276feb1d8b382666e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
