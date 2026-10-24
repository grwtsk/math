# _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.Set.PairwiseDisjoint.countable_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc532782-6caf-784d-3aa1-6653ecfaf943",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.Set.PairwiseDisjoint.countable_of_isOpen",
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
  "slug": "root-grwtsk-topology-generaltopology-istopologicalbasis-variant8248c2afb--53d22f5dad2c23ab1f97fb2f",
  "source": {
    "blob": "39a4410f544346fbdcd3249f762842e98be612ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53d22f5dad2c23ab1f97fb2fbabb5d8841a3b74051fe51d4a68ef14c678a6168",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc532782-6caf-784d-3aa1-6653ecfaf943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsTopologicalBasis.Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.Set.PairwiseDisjoint.countable_of_isOpen [SeparableSpace α] {ι : Type*}
    {s : ι → Set α} {a : Set ι} (h : a.PairwiseDisjoint s) (ho : ∀ i ∈ a, IsOpen (s i))
    (hne : ∀ i ∈ a, (s i).Nonempty) : a.Countable :=
  (h.subtype _ _).countable_of_isOpen_disjoint (Subtype.forall.2 ho) (Subtype.forall.2 hne)

/-- In a separable space, a family of disjoint sets with nonempty interiors is countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantc898eb2d3184543f0c64e6195bfff274f57a973769831068a1d5aef4bf2fa9b5.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39a4410f544346fbdcd3249f762842e98be612ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
