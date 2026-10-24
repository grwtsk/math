# tendsto_dist_right_cobounded_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed55036e-5831-527c-e5cd-5b57b129a762",
  "kind": "theorem",
  "lexical_name": "tendsto_dist_right_cobounded_atTop",
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
  "slug": "tendsto-dist-right-cobounded-attop--5e52066ded318cec5355eeb8",
  "source": {
    "blob": "48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e52066ded318cec5355eeb80c3d1c79f14aae461763b3819a59866c5700782b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed55036e-5831-527c-e5cd-5b57b129a762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_dist_right_cobounded_atTop (c : α) : Tendsto (dist · c) (cobounded α) atTop :=
  tendsto_iff_comap.2 (comap_dist_right_atTop c).ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant3981ef048315a9c0f192ae8ace201fa3dfeae13fe7aceda74c33b61b9b6a2ce4.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48ee0f5f4c034d3d1bb51ad350b86cc4fcc2a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
