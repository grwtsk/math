# ZeroHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fce46149c037e3340a937d44a3b62640aef12010d6a5835bf418d21c6ae1b30b",
  "kind": "class",
  "lexical_name": "ZeroHomClass",
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
  "slug": "zerohomclass--f08d8887c1d9b1aec2ead9cd",
  "source": {
    "blob": "52c49b8b81a338bc3faa867a4119e74986f0f8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 104,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f08d8887c1d9b1aec2ead9cd2cd4895eb3f6b2be550360af77acf3bad81eb782",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fce46149c037e3340a937d44a3b62640aef12010d6a5835bf418d21c6ae1b30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ZeroHomClass (F : Type*) (M N : outParam (Type*)) [Zero M] [Zero N]
  extends FunLike F M fun _ => N where
  /-- The proposition that the function preserves 0 -/
  map_zero : ∀ f : F, f 0 = 0
#align zero_hom_class ZeroHomClass
#align zero_hom_class.map_zero ZeroHomClass.map_zero

-- Instances and lemmas are defined below through `@[to_additive]`.
end Zero

namespace NeZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c49b8b81a338bc3faa867a4119e74986f0f8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
