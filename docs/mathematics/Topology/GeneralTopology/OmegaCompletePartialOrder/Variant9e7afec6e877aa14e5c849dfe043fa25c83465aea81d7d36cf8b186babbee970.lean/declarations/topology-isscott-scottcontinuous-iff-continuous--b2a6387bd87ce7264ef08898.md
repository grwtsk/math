# Topology.IsScott.ωscottContinuous_iff_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c01a2335-ecd1-9dab-2961-b759ede60f85",
  "kind": "lemma",
  "lexical_name": "Topology.IsScott.ωscottContinuous_iff_continuous",
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
  "slug": "topology-isscott-scottcontinuous-iff-continuous--b2a6387bd87ce7264ef08898",
  "source": {
    "blob": "95199ebb6d38f26e3f8c2069275d03a02caa7989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a6387bd87ce7264ef08898f87990a090be9198013988dcaa5ef77dd9a3c7db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c01a2335-ecd1-9dab-2961-b759ede60f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Topology.IsScott.ωscottContinuous_iff_continuous {α : Type*}
    [OmegaCompletePartialOrder α] [TopologicalSpace α]
    [Topology.IsScott α (Set.range fun c : Chain α => Set.range c)] {f : α → Prop} :
    ωScottContinuous f ↔ Continuous f := by
  rw [ωScottContinuous, scottContinuous_iff_continuous (fun a b hab => by
    use Chain.pair a b hab; exact OmegaCompletePartialOrder.Chain.range_pair a b hab)]

-- "Scott", "ωSup"
namespace Scott

/-- `x` is an `ω`-Sup of a chain `c` if it is the least upper bound of the range of `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant9e7afec6e877aa14e5c849dfe043fa25c83465aea81d7d36cf8b186babbee970.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95199ebb6d38f26e3f8c2069275d03a02caa7989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
