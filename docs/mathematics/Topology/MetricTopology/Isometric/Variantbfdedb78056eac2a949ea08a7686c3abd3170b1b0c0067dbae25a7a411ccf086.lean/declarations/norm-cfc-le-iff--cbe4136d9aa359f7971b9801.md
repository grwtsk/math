# norm_cfc_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3333584-68f0-f37c-57e5-03f663d1b88e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f9e83cf-adb5-d440-f108-7175501bddfa",
  "kind": "lemma",
  "lexical_name": "norm_cfc_le_iff",
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
  "slug": "norm-cfc-le-iff--cbe4136d9aa359f7971b9801",
  "source": {
    "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbe4136d9aa359f7971b9801f6c6f5fc95891ce7b341085c50bfb7c9c888b6af",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f9e83cf-adb5-d440-f108-7175501bddfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_cfc_le_iff (f : 𝕜 → 𝕜) (a : A) {c : ℝ} (hc : 0 ≤ c)
    (hf : ContinuousOn f (σ 𝕜 a) := by cfc_cont_tac)
    (ha : p a := by cfc_tac) : ‖cfc f a‖ ≤ c ↔ ∀ x ∈ σ 𝕜 a, ‖f x‖ ≤ c :=
  ⟨fun h _ hx ↦ norm_apply_le_norm_cfc f a hx hf ha |>.trans h, norm_cfc_le hc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5427b2de0b0c3ddce77c7088d6c074be4f65b8dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
