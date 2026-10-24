# fibres_compl_eq_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6198ecf4cfe62253135d270015027baac93a152e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eee59680-9aab-524f-4ae0-32440ef2ef77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed68858c-551a-ecd4-a70c-2de1b1977701",
  "kind": "lemma",
  "lexical_name": "fibres_compl_eq_iUnion",
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
  "slug": "fibres-compl-eq-iunion--2c3d352469e19a5054abdb92",
  "source": {
    "blob": "6198ecf4cfe62253135d270015027baac93a152e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c3d352469e19a5054abdb92b76eb09ca7ece183645623d0b45e2ad1ba145b86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed68858c-551a-ecd4-a70c-2de1b1977701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fibres_compl_eq_iUnion (π : T → S × Option X) (σ : Option X → S → T)
    (hσ' : ∀ (x : Option X) (s : S), (π (σ x s)).2 = x) :
    (fibres π σ)ᶜ =
      ⋃ i, (Set.range (σ (Option.some i)))ᶜ ∩ (Prod.snd ∘ π) ⁻¹' {(i : OnePoint X)} := by
  ext x
  -- simp? says:
  simp only [Set.mem_compl_iff, mem_fibres_iff, not_or, not_exists, Set.mem_iUnion,
    Set.mem_inter_iff, Set.mem_range, Set.mem_preimage, Function.comp_apply,
    Set.mem_singleton_iff]
  refine ⟨fun ⟨h₁, h₂⟩ ↦ ?_, fun ⟨n, hn, hn'⟩ ↦ ?_⟩
  · obtain ⟨n, hn⟩ := Option.ne_none_iff_exists'.mp h₁
    exact ⟨n, h₂ n, hn⟩
  · refine ⟨by simpa [hn'] using Option.isSome_iff_ne_none.mp rfl, fun i s h ↦ hn s ?_⟩
    rw [← h, hσ'] at hn'
    rw [← h, Option.some_injective _ hn'.symm]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6198ecf4cfe62253135d270015027baac93a152e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
