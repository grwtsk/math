# single_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4593edd4-88bb-0655-5ffd-b9731e1306e6",
  "kind": "lemma",
  "lexical_name": "single_sub",
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
  "slug": "single-sub--d3ce6571fef928e65e547b07",
  "source": {
    "blob": "d42dadc5111b1ba499ffed8b1946d5ec64cf1994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 200,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ce6571fef928e65e547b075aa60f2786caa4fc698e9d9a7744dc7bd740385e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4593edd4-88bb-0655-5ffd-b9731e1306e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma single_sub (p : ℝ≥0∞) (i : ι) {a b : β i} :
    single p i (a - b) = single p i a - single p i b := by
  simp_rw [← toLp_single, Pi.single_sub, toLp_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant9e523ec07be9def14c889b01f0846b6a927f0151fd15a6644ee7b48d96d5b1c4.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42dadc5111b1ba499ffed8b1946d5ec64cf1994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
