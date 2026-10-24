# liftPropWithinAt_indep_chart'

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
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58041a77-0cb4-a89a-9b45-5a46c580af58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea205ae2-2b48-13fc-290f-4547745fa3e7",
  "kind": "theorem",
  "lexical_name": "liftPropWithinAt_indep_chart'",
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
  "slug": "liftpropwithinat-indep-chart--c67035d1b7870adc83a3e48a",
  "source": {
    "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c67035d1b7870adc83a3e48a664ccb7f1d6af1e62783f26a5e6bbcb86b550e31",
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

Occurrence: `result:ea205ae2-2b48-13fc-290f-4547745fa3e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropWithinAt_indep_chart' [HasGroupoid M G] [HasGroupoid M' G']
    (he : e ∈ G.maximalAtlas M) (xe : x ∈ e.source) (hf : f ∈ G'.maximalAtlas M')
    (xf : g x ∈ f.source) :
    LiftPropWithinAt P g s x ↔
      ContinuousWithinAt g s x ∧ LiftPropWithinAt P (f ∘ g ∘ e.symm) (e.symm ⁻¹' s) (e x) := by
  rw [hG.liftPropWithinAt_indep_chart he xe hf xf, liftPropWithinAt_self, and_left_comm,
    Iff.comm, and_iff_right_iff_imp]
  intro h
  have h1 := (e.symm.continuousWithinAt_iff_continuousWithinAt_comp_right xe).mp h.1
  have : ContinuousAt f ((g ∘ e.symm) (e x)) := by
    simp_rw [Function.comp, e.left_inv xe, f.continuousAt xf]
  exact this.comp_continuousWithinAt h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
