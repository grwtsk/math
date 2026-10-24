# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e994696c7da066c0415790fff7b3af3974fc8e02d427d75692221c162cabd18a",
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
  "slug": "instance--791b5cf49501e9cbcd7d7c5e",
  "source": {
    "blob": "d48dcdf88ffc745339905992a361fb963571c79f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 617,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:791b5cf49501e9cbcd7d7c5e12bd629cf0698b24090b01ec1a28074f5f5fa055",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e994696c7da066c0415790fff7b3af3974fc8e02d427d75692221c162cabd18a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [T2Space A] {x : A} : CommSemiring (elemental R x) :=
  commSemiringTopologicalClosure _
    letI : CommSemiring (adjoin R {x}) :=
      adjoinCommSemiringOfComm R fun y hy z hz => by
        rw [mem_singleton_iff] at hy hz
        rw [hy, hz]
    fun _ _ => mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48dcdf88ffc745339905992a361fb963571c79f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
