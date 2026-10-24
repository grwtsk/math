# LipschitzWith.properSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:828327d7-37ba-430e-75e3-0e2e30a605f4",
  "kind": "lemma",
  "lexical_name": "LipschitzWith.properSpace",
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
  "slug": "lipschitzwith-properspace--5cd87e7da47c6b48086ac841",
  "source": {
    "blob": "1068dde9909b6c61147ae0cef8c7cb96c4ce2327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cd87e7da47c6b48086ac84197d9f6be82d7fbba15497f65e064c72395334227",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:828327d7-37ba-430e-75e3-0e2e30a605f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LipschitzWith.properSpace {X Y : Type*} [PseudoMetricSpace X]
    [PseudoMetricSpace Y] [ProperSpace Y] {f : X → Y} (hf : IsProperMap f)
    {K : ℝ≥0} (hf' : LipschitzWith K f) : ProperSpace X :=
  ⟨fun x r ↦ (hf.isCompact_preimage (isCompact_closedBall (f x) (K * r))).of_isClosed_subset
    Metric.isClosed_closedBall (hf'.mapsTo_closedBall x r).subset_preimage⟩

namespace LipschitzOnWith

section Metric

variable [PseudoMetricSpace α] [PseudoMetricSpace β] [PseudoMetricSpace γ]
variable {K : ℝ≥0} {s : Set α} {f : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1068dde9909b6c61147ae0cef8c7cb96c4ce2327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
