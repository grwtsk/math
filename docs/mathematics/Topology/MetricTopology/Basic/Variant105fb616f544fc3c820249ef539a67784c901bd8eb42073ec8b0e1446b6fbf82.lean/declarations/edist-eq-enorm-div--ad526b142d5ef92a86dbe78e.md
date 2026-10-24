# edist_eq_enorm_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01b75c51d9315887c05c04824e0a4e47aec3985d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 776,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/105fb616f544fc3c820249ef539a67784c901bd8eb42073ec8b0e1446b6fbf82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97cbb374-6105-1f5c-42d2-baf4f6d832a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30330d55-7561-0639-9dc6-34197faf90e5",
  "kind": "theorem",
  "lexical_name": "edist_eq_enorm_div",
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
  "slug": "edist-eq-enorm-div--ad526b142d5ef92a86dbe78e",
  "source": {
    "blob": "01b75c51d9315887c05c04824e0a4e47aec3985d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 776,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant105fb616f544fc3c820249ef539a67784c901bd8eb42073ec8b0e1446b6fbf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad526b142d5ef92a86dbe78e340d48fb8bb3fb74d6ba6384e5d45a469d0b7d06",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant105fb616f544fc3c820249ef539a67784c901bd8eb42073ec8b0e1446b6fbf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30330d55-7561-0639-9dc6-34197faf90e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_eq_enorm_div (a b : E) : edist a b = ‖a / b‖ₑ := by
  rw [edist_dist, dist_eq_norm_div, ofReal_norm']

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant105fb616f544fc3c820249ef539a67784c901bd8eb42073ec8b0e1446b6fbf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant105fb616f544fc3c820249ef539a67784c901bd8eb42073ec8b0e1446b6fbf82.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01b75c51d9315887c05c04824e0a4e47aec3985d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
