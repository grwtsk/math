# Topology.IsClosedEmbedding.paracompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58def08d-6d76-e263-aa22-42f867b82210",
  "kind": "theorem",
  "lexical_name": "Topology.IsClosedEmbedding.paracompactSpace",
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
  "slug": "topology-isclosedembedding-paracompactspace--e6bf035a37dd879202751494",
  "source": {
    "blob": "8d4dcac49497f753f50b685b559543173cc1c4fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6bf035a37dd879202751494000685808acf62cf06cc32792bc927ac8fa4691d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58def08d-6d76-e263-aa22-42f867b82210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsClosedEmbedding.paracompactSpace [ParacompactSpace Y] {e : X → Y}
    (he : IsClosedEmbedding e) : ParacompactSpace X where
  locallyFinite_refinement α s ho hu := by
    choose U hUo hU using fun a ↦ he.isOpen_iff.1 (ho a)
    simp only [← hU] at hu ⊢
    have heU : range e ⊆ ⋃ i, U i := by
      simpa only [range_subset_iff, mem_iUnion, iUnion_eq_univ_iff] using hu
    rcases precise_refinement_set he.isClosed_range U hUo heU with ⟨V, hVo, heV, hVf, hVU⟩
    refine ⟨α, fun a ↦ e ⁻¹' (V a), fun a ↦ (hVo a).preimage he.continuous, ?_,
      hVf.preimage_continuous he.continuous, fun a ↦ ⟨a, preimage_mono (hVU a)⟩⟩
    simpa only [range_subset_iff, mem_iUnion, iUnion_eq_univ_iff] using heV

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4dcac49497f753f50b685b559543173cc1c4fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
