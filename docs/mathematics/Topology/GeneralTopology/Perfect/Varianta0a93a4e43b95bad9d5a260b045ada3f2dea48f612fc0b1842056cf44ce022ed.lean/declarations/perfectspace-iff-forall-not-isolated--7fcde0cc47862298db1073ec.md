# perfectSpace_iff_forall_not_isolated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd80db96-cdac-451e-d73b-04367edb968d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad1cee76-7c44-e5de-e99f-c179fa8fe306",
  "kind": "theorem",
  "lexical_name": "perfectSpace_iff_forall_not_isolated",
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
  "slug": "perfectspace-iff-forall-not-isolated--7fcde0cc47862298db1073ec",
  "source": {
    "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fcde0cc47862298db1073ec05eb9b36d8ff4efa1351dde29ad0550caf3302a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1cee76-7c44-e5de-e99f-c179fa8fe306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perfectSpace_iff_forall_not_isolated : PerfectSpace X ↔ ∀ x : X, Filter.NeBot (𝓝[≠] x) := by
  simp [perfectSpace_def, Preperfect, AccPt]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418558263984922713fc09516ef04cf7ad42b9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
