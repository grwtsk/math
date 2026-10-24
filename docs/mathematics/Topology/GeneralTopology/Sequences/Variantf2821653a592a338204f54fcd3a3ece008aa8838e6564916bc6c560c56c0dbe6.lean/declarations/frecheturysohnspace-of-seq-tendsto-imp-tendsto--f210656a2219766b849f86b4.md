# FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7bfb128ee79f12a1eac64753c9a7a55ff3ed9f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c68c1913-dee0-1a77-063b-b8abb17156f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a50556eb-3dcc-2016-2c0a-bac74ebdea13",
  "kind": "theorem",
  "lexical_name": "FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto",
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
  "slug": "frecheturysohnspace-of-seq-tendsto-imp-tendsto--f210656a2219766b849f86b4",
  "source": {
    "blob": "f7bfb128ee79f12a1eac64753c9a7a55ff3ed9f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f210656a2219766b849f86b478f25b3e76098ee05c4e1c91805ef2aa4cba1133",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a50556eb-3dcc-2016-2c0a-bac74ebdea13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto
    (h : ∀ (f : X → Prop) (a : X),
      (∀ u : ℕ → X, Tendsto u atTop (𝓝 a) → Tendsto (f ∘ u) atTop (𝓝 (f a))) → ContinuousAt f a) :
    FrechetUrysohnSpace X := by
  refine ⟨fun s x hcx => ?_⟩
  by_cases hx : x ∈ s
  · exact subset_seqClosure hx
  · obtain ⟨u, hux, hus⟩ : ∃ u : ℕ → X, Tendsto u atTop (𝓝 x) ∧ ∃ᶠ x in atTop, u x ∈ s := by
      simpa only [ContinuousAt, hx, tendsto_nhds_true, (· ∘ ·), ← not_frequently, exists_prop,
        ← mem_closure_iff_frequently, hcx, imp_false, not_forall, not_not, not_false_eq_true,
        not_true_eq_false] using h (· ∉ s) x
    rcases extraction_of_frequently_atTop hus with ⟨φ, φ_mono, hφ⟩
    exact ⟨u ∘ φ, hφ, hux.comp φ_mono.tendsto_atTop⟩

-- see Note [lower instance priority]
/-- Every first-countable space is a Fréchet-Urysohn space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variantf2821653a592a338204f54fcd3a3ece008aa8838e6564916bc6c560c56c0dbe6.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bfb128ee79f12a1eac64753c9a7a55ff3ed9f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
