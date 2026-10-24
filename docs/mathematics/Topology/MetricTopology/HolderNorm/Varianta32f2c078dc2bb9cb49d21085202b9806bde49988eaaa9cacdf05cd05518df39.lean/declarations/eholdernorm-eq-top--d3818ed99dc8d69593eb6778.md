# eHolderNorm_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb1bac47-a4a5-aa55-c3de-f398b3979995",
  "kind": "lemma",
  "lexical_name": "eHolderNorm_eq_top",
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
  "slug": "eholdernorm-eq-top--d3818ed99dc8d69593eb6778",
  "source": {
    "blob": "bccd7b34ab8ad5c635391a39e37be13e98ec42fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3818ed99dc8d69593eb677851a2565b9affc1aa440b4da979a626eb22faac4f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb1bac47-a4a5-aa55-c3de-f398b3979995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma eHolderNorm_eq_top : eHolderNorm r f = ∞ ↔ ¬ MemHolder r f := by
  rw [← eHolderNorm_ne_top, not_not]

protected alias ⟨_, MemHolder.eHolderNorm_lt_top⟩ := eHolderNorm_lt_top
protected alias ⟨_, MemHolder.eHolderNorm_ne_top⟩ := eHolderNorm_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccd7b34ab8ad5c635391a39e37be13e98ec42fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
