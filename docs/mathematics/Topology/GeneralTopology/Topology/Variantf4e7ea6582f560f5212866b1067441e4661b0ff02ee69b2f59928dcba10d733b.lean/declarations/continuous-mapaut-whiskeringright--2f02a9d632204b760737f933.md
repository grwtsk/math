# continuous_mapAut_whiskeringRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02244ecb-19a5-95cb-00f8-aede29dcfe24",
  "kind": "lemma",
  "lexical_name": "continuous_mapAut_whiskeringRight",
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
  "slug": "continuous-mapaut-whiskeringright--2f02a9d632204b760737f933",
  "source": {
    "blob": "38c24f4c7a4f786b2b59494d1f694ce0a06a022c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f02a9d632204b760737f933cf7d87342308d2e576a826eb960e1dfdaaa5aac2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02244ecb-19a5-95cb-00f8-aede29dcfe24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_mapAut_whiskeringRight (G : FintypeCat.{w} ⥤ FintypeCat.{v}) :
    Continuous (((whiskeringRight _ _ _).obj G).mapAut F) := by
  rw [Topology.IsInducing.continuous_iff (autEmbedding_isClosedEmbedding _).isInducing,
    continuous_pi_iff]
  intro X
  change Continuous fun a ↦ G.mapAut (F.obj X) (autEmbedding F a X)
  fun_prop

/-- If `G` is a fully faithful functor of categories finite types, this is the automorphism of
topological groups `Aut F ≃ Aut (F ⋙ G)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf4e7ea6582f560f5212866b1067441e4661b0ff02ee69b2f59928dcba10d733b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c24f4c7a4f786b2b59494d1f694ce0a06a022c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
