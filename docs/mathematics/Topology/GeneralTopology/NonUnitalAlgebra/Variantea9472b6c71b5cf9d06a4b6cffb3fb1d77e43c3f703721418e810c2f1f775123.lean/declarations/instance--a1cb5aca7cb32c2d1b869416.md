# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bab299a76989c9852b3b3f032fca817c7f49f7d94782bcda84c5c0eabe748b5b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a1cb5aca7cb32c2d1b869416",
  "source": {
    "blob": "d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1cb5aca7cb32c2d1b869416fd97924bfc68c863cfb00d7be1af7a5459211b38",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bab299a76989c9852b3b3f032fca817c7f49f7d94782bcda84c5c0eabe748b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {A : Type*} [UniformSpace A] [CompleteSpace A] [NonUnitalSemiring A]
    [IsTopologicalSemiring A] [Module R A] [IsScalarTower R A A]
    [SMulCommClass R A A] [ContinuousConstSMul R A] (x : A) :
    CompleteSpace (elemental R x) :=
  isClosed_closure.completeSpace_coe

/-- The coercion from an elemental algebra to the full algebra is a `IsClosedEmbedding`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
