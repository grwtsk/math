# Isometry.lipschitzWith_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d90ee182-c262-2263-cb9c-dc494a9fde8b",
  "kind": "lemma",
  "lexical_name": "Isometry.lipschitzWith_iff",
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
  "slug": "isometry-lipschitzwith-iff--9e6c4c48ee260218b909834a",
  "source": {
    "blob": "e405df521f75a815932509f90113a346d3008276",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 729,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e6c4c48ee260218b909834ae08af566ad10830807f35912bcd0b866bee79a08",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d90ee182-c262-2263-cb9c-dc494a9fde8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Isometry.lipschitzWith_iff {α β γ : Type*} [PseudoEMetricSpace α] [PseudoEMetricSpace β]
    [PseudoEMetricSpace γ] {f : α → β} {g : β → γ} (K : ℝ≥0) (h : Isometry g) :
    LipschitzWith K (g ∘ f) ↔ LipschitzWith K f := by
  simp [LipschitzWith, h.edist_eq]

/-- If `f` is locally Lipschitz on `s` after precomposition with an isometry `g`, then `f` is
locally Lipschitz on `g '' s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e405df521f75a815932509f90113a346d3008276` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
