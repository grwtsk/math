# generatedTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76f75b7dfcc978a82a7ef44913d233e4af9beaea9e2def8ee9d1fc2d12625f77",
  "kind": "def",
  "lexical_name": "generatedTopology",
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
  "slug": "generatedtopology--b7bf331af5c0e66016742420",
  "source": {
    "blob": "586741e287de6bce2794d8e55309ee59652e88ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7bf331af5c0e66016742420ba07615c82a4019ea82afca02c5b9580ee7ccf4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76f75b7dfcc978a82a7ef44913d233e4af9beaea9e2def8ee9d1fc2d12625f77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def generatedTopology {X : Type u}
    (generators : Set (Set X)) : TopologicalSpaceLike X where
  IsOpen := fun U =>
    ∀ T : TopologicalSpaceLike X,
      (∀ G, G ∈ generators → T.IsOpen G) →
      T.IsOpen U
  isOpen_univ := by
    intro T _
    exact T.isOpen_univ
  isOpen_inter := by
    intro U V hU hV T hgen
    exact T.isOpen_inter U V (hU T hgen) (hV T hgen)
  isOpen_sUnion := by
    intro 𝒰 h𝒰 T hgen
    exact T.isOpen_sUnion 𝒰 (fun U hU => h𝒰 U hU T hgen)

/-- Every declared generator is open in the generated topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variantff52815b0beec4fbb10024e06fff2a6a71be9ede8593f79098c5cb5790f92fd9.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586741e287de6bce2794d8e55309ee59652e88ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
