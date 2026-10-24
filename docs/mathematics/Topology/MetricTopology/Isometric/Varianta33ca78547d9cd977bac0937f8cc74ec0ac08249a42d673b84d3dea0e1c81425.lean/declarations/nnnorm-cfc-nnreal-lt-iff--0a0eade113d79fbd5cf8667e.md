# nnnorm_cfc_nnreal_lt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 529,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a76138de-7ad7-7958-1068-fa6274a9747c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cf20d82-0b57-0c26-04bc-b9c30428106a",
  "kind": "lemma",
  "lexical_name": "nnnorm_cfc_nnreal_lt_iff",
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
  "slug": "nnnorm-cfc-nnreal-lt-iff--0a0eade113d79fbd5cf8667e",
  "source": {
    "blob": "4cb60573d3567a07b7f8aaec96fede8298b1157b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 529,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0eade113d79fbd5cf8667e348ea1c62bba0e1228e45911f5efb9d79bb7dc6b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cf20d82-0b57-0c26-04bc-b9c30428106a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_cfc_nnreal_lt_iff (f : ℝ≥0 → ℝ≥0) (a : A) {c : ℝ≥0} (hc : 0 < c)
    (hf : ContinuousOn f (σ ℝ≥0 a) := by cfc_cont_tac)
    (ha : 0 ≤ a := by cfc_tac) : ‖cfc f a‖₊ < c ↔ ∀ x ∈ σ ℝ≥0 a, f x < c :=
  ⟨fun h _ hx ↦ apply_le_nnnorm_cfc_nnreal f a hx hf ha |>.trans_lt h, nnnorm_cfc_nnreal_lt hc⟩

namespace IsometricContinuousFunctionalCalculus

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Varianta33ca78547d9cd977bac0937f8cc74ec0ac08249a42d673b84d3dea0e1c81425.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb60573d3567a07b7f8aaec96fede8298b1157b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
