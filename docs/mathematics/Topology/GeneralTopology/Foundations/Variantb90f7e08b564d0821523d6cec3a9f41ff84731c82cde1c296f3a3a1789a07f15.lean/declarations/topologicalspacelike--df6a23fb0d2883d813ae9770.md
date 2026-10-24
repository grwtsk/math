# TopologicalSpaceLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c3882505b0742c21feaa8e7046b6f1679fc782f5b795816a0c0bda602abab53",
  "kind": "structure",
  "lexical_name": "TopologicalSpaceLike",
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
  "slug": "topologicalspacelike--df6a23fb0d2883d813ae9770",
  "source": {
    "blob": "d0b220f8ce10e5792df44657ae94d8c8e013fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df6a23fb0d2883d813ae9770fc2ccdb8755bb48e151c989612c4cf02e225b019",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c3882505b0742c21feaa8e7046b6f1679fc782f5b795816a0c0bda602abab53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TopologicalSpaceLike (X : Type u) where
  IsOpen : Set X → Prop
  isOpen_univ : IsOpen Set.univ
  isOpen_inter :
    ∀ U V, IsOpen U → IsOpen V → IsOpen (Set.inter U V)
  isOpen_sUnion :
    ∀ 𝒰 : Set (Set X),
      (∀ U, U ∈ 𝒰 → IsOpen U) →
      IsOpen (Set.sUnion 𝒰)

/-- The empty set is open in every topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variantb90f7e08b564d0821523d6cec3a9f41ff84731c82cde1c296f3a3a1789a07f15.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b220f8ce10e5792df44657ae94d8c8e013fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
