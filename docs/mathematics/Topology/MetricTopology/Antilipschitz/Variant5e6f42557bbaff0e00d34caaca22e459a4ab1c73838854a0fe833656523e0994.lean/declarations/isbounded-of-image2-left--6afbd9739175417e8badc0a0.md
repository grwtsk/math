# isBounded_of_image2_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e226475bce0d82916e3848f9cc4d89ea2572bce1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aee19a1-b437-fe9a-4fe8-847c0a48aec3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:808845a6-995a-1d92-9e94-277d56abee95",
  "kind": "theorem",
  "lexical_name": "isBounded_of_image2_left",
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
  "slug": "isbounded-of-image2-left--6afbd9739175417e8badc0a0",
  "source": {
    "blob": "e226475bce0d82916e3848f9cc4d89ea2572bce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 208,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6afbd9739175417e8badc0a093eb752909467c37eabdd92db1f68c12c34c975f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808845a6-995a-1d92-9e94-277d56abee95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_of_image2_left (f : α → β → γ) {K₁ : ℝ≥0}
    (hf : ∀ b, AntilipschitzWith K₁ fun a => f a b) {s : Set α} {t : Set β}
    (hst : IsBounded (Set.image2 f s t)) : IsBounded s ∨ IsBounded t := by
  contrapose! hst
  obtain ⟨b, hb⟩ : t.Nonempty := nonempty_of_not_isBounded hst.2
  have : ¬IsBounded (Set.image2 f s {b}) := by
    intro h
    apply hst.1
    rw [Set.image2_singleton_right] at h
    replace h := (hf b).isBounded_preimage h
    exact h.subset (subset_preimage_image _ _)
  exact mt (IsBounded.subset · (image2_subset subset_rfl (singleton_subset_iff.mpr hb))) this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variant5e6f42557bbaff0e00d34caaca22e459a4ab1c73838854a0fe833656523e0994.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e226475bce0d82916e3848f9cc4d89ea2572bce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
