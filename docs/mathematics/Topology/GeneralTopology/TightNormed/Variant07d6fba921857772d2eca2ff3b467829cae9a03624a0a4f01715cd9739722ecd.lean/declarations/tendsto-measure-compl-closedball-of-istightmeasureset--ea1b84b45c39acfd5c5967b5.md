# tendsto_measure_compl_closedBall_of_isTightMeasureSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e5f4b4604428c3b375f9784f22b954abfe81d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72b360d2-f8e4-58fe-c248-fa5fc942aee0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:919fa1b1-51f2-da08-8fd3-e86768a5535b",
  "kind": "lemma",
  "lexical_name": "tendsto_measure_compl_closedBall_of_isTightMeasureSet",
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
  "slug": "tendsto-measure-compl-closedball-of-istightmeasureset--ea1b84b45c39acfd5c5967b5",
  "source": {
    "blob": "85e5f4b4604428c3b375f9784f22b954abfe81d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea1b84b45c39acfd5c5967b55d33b88f45bd39d3791c5630184e656d4bead746",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919fa1b1-51f2-da08-8fd3-e86768a5535b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_measure_compl_closedBall_of_isTightMeasureSet (hS : IsTightMeasureSet S) (x : E) :
    Tendsto (fun r : ℝ ↦ ⨆ μ ∈ S, μ (Metric.closedBall x r)ᶜ) atTop (𝓝 0) := by
  suffices Tendsto ((⨆ μ ∈ S, μ) ∘ (fun r ↦ (Metric.closedBall x r)ᶜ)) atTop (𝓝 0) by
    convert this with r
    simp
  refine hS.comp <| .mono_right ?_ <| monotone_smallSets Metric.cobounded_le_cocompact
  exact (Metric.hasAntitoneBasis_cobounded_compl_closedBall _).tendsto_smallSets

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e5f4b4604428c3b375f9784f22b954abfe81d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
