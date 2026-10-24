# Topology.IsInducing.frechetUrysohnSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c13d4d1d-37bb-431f-dfe3-dfa81b5b7dbd",
  "kind": "theorem",
  "lexical_name": "Topology.IsInducing.frechetUrysohnSpace",
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
  "slug": "topology-isinducing-frecheturysohnspace--cc97ab1cae3fcbca8025d022",
  "source": {
    "blob": "ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc97ab1cae3fcbca8025d02264dfc55b86240a8514b1bd05414db0417570701b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13d4d1d-37bb-431f-dfe3-dfa81b5b7dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsInducing.frechetUrysohnSpace [FrechetUrysohnSpace Y] {f : X → Y}
    (hf : IsInducing f) : FrechetUrysohnSpace X := by
  refine ⟨fun s x hx ↦ ?_⟩
  rw [hf.closure_eq_preimage_closure_image, mem_preimage, mem_closure_iff_seq_limit] at hx
  rcases hx with ⟨u, hus, hu⟩
  choose v hv hvu using hus
  refine ⟨v, hv, ?_⟩
  simpa only [hf.tendsto_nhds_iff, Function.comp_def, hvu]

/-- Subtype of a Fréchet-Urysohn space is a Fréchet-Urysohn space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
