# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c93aed8c97048a00ceb1701f01eb2b90fc6e09377b5b2a6f4522f23171bd1c6",
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
  "slug": "instance--c0b605d76a6ebfc5e935e1d9",
  "source": {
    "blob": "d26f0b85e48330185959ff5cda4c4f48aaa750c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0b605d76a6ebfc5e935e1d9139ec5455886493a6b9c9aeef9e5c0bb9dcd577b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c93aed8c97048a00ceb1701f01eb2b90fc6e09377b5b2a6f4522f23171bd1c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [T2Space A] {x : A} : NonUnitalCommSemiring (elemental R x) :=
  nonUnitalCommSemiringTopologicalClosure _
    letI : NonUnitalCommSemiring (adjoin R {x}) :=
      NonUnitalAlgebra.adjoinNonUnitalCommSemiringOfComm R fun y hy z hz => by
        rw [Set.mem_singleton_iff] at hy hz
        rw [hy, hz]
    fun _ _ => mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variant7f14631a803b5131bc4da638b87c758a20a41c6ae6f653a709c23a9a8235bafc.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26f0b85e48330185959ff5cda4c4f48aaa750c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
