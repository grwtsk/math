# liftPropWithinAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22580149-92ea-afa3-46c2-cede4a627d5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f917ac45-4388-19f2-a2df-84be665fe479",
  "kind": "theorem",
  "lexical_name": "liftPropWithinAt_iff",
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
  "slug": "liftpropwithinat-iff--a0a36e515185e1b5a43b32bd",
  "source": {
    "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0a36e515185e1b5a43b32bd285a8bba2d64e416a233940c5faca4c46e84fe1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f917ac45-4388-19f2-a2df-84be665fe479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropWithinAt_iff {f : M → M'} :
    LiftPropWithinAt P f s x ↔
      ContinuousWithinAt f s x ∧
        P (chartAt H' (f x) ∘ f ∘ (chartAt H x).symm)
          ((chartAt H x).target ∩ (chartAt H x).symm ⁻¹' (s ∩ f ⁻¹' (chartAt H' (f x)).source))
          (chartAt H x x) := by
  rw [liftPropWithinAt_iff']
  refine and_congr_right fun hf ↦ hG.congr_set ?_
  exact PartialHomeomorph.preimage_eventuallyEq_target_inter_preimage_inter hf
    (mem_chart_source H x) (chart_source_mem_nhds H' (f x))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
