# IsPicardLindelof.norm_le₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6501c0c2-1533-bc04-c45a-0f34664ee84e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec0c8d0f-d0c5-45a8-954c-e4e37a704c20",
  "kind": "theorem",
  "lexical_name": "IsPicardLindelof.norm_le₀",
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
  "slug": "ispicardlindelof-norm-le--09b4d819ac1c7b28840ba6e2",
  "source": {
    "blob": "57187c188cb8d0269da55fb0ac05a6e8e581dcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 376,
    "path": "GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09b4d819ac1c7b28840ba6e2a210c7f6ceb7c5edacdd2c95d7ebb76532ca5095",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0c8d0f-d0c5-45a8-954c-e4e37a704c20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPicardLindelof.norm_le₀ {E : Type*} [NormedAddCommGroup E] {v : ℝ → E → E}
    {tMin t₀ tMax : ℝ} {x₀ : E} {C R : ℝ} {L : ℝ≥0}
    (hpl : IsPicardLindelof v tMin t₀ tMax x₀ L R C) : ‖v t₀ x₀‖ ≤ C :=
  hpl.norm_le t₀ hpl.ht₀ x₀ <| mem_closedBall_self hpl.hR
#align is_picard_lindelof.norm_le₀ IsPicardLindelof.norm_le₀

/-- Picard-Lindelöf (Cauchy-Lipschitz) theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PicardLindelof/Variant6f25a9b7040769849f120529eb0595c78e0b1d384bcbdf73174560f2f23da2b0.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57187c188cb8d0269da55fb0ac05a6e8e581dcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
