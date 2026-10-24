# volume_pi_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9faf376e19ecd46825d0a28d6b48596f21c5433d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 609,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6e55dad-e2c7-2ab7-a02a-3fdd7ed4831e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:657329d8-485d-f20f-b2dc-6d9f61e44f19",
  "kind": "theorem",
  "lexical_name": "volume_pi_ball",
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
  "slug": "volume-pi-ball--a3c736c65a2ff636912e7d21",
  "source": {
    "blob": "9faf376e19ecd46825d0a28d6b48596f21c5433d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 609,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3c736c65a2ff636912e7d210dce7a71fde7b739a9a81a18106d4c8ca39aac52",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:657329d8-485d-f20f-b2dc-6d9f61e44f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 609–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_pi_ball [∀ i, MeasureSpace (α i)] [∀ i, SigmaFinite (volume : Measure (α i))]
    [∀ i, MetricSpace (α i)] (x : ∀ i, α i) {r : ℝ} (hr : 0 < r) :
    volume (Metric.ball x r) = ∏ i, volume (Metric.ball (x i) r) :=
  Measure.pi_ball _ _ hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean#L609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faf376e19ecd46825d0a28d6b48596f21c5433d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
