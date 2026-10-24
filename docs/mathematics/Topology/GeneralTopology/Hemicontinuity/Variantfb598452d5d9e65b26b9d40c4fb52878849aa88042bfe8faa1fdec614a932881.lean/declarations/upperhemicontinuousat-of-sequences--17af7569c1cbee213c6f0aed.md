# UpperHemicontinuousAt.of_sequences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f924faad-7dc4-56ba-2c07-4f5fa381805f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66de81c8-d11b-e9c8-a144-ecc07deee3f8",
  "kind": "lemma",
  "lexical_name": "UpperHemicontinuousAt.of_sequences",
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
  "slug": "upperhemicontinuousat-of-sequences--17af7569c1cbee213c6f0aed",
  "source": {
    "blob": "5fe97eff17b1a588d9038f861ba586f978f9626c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17af7569c1cbee213c6f0aed0de350551d030996b2cc6839e92e0d052cdef1bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66de81c8-d11b-e9c8-a144-ecc07deee3f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UpperHemicontinuousAt.of_sequences {x₀ : α} [(𝓝 x₀).IsCountablyGenerated]
    {K : Set β} (hK : IsSeqCompact K) (hf : ∀ᶠ x in 𝓝 x₀, f x ⊆ K)
    (h : ∀ x : ℕ → α, Tendsto x atTop (𝓝 x₀) →
      ∀ y : ℕ → β, (∀ n, y n ∈ f (x n)) → ∀ y₀, Tendsto y atTop (𝓝 y₀) → y₀ ∈ f x₀) :
    UpperHemicontinuousAt f x₀ := by
  refine .of_frequently fun t ht hft ↦ ?_
  obtain ⟨x, hx, hfx⟩ := exists_seq_forall_of_frequently hft
  choose y hy using hfx
  obtain ⟨y₀, hy₀, φ, hφ, hyφ⟩ := hK.subseq_of_frequently_in (x := y) <| by
    refine Eventually.frequently ?_
    filter_upwards [hx hf] with n hn
    exact hn (hy n).1
  specialize h (x ∘ φ) (hx.comp hφ.tendsto_atTop) (y ∘ φ) (fun n ↦ (hy _).1) _ hyφ
  exact ⟨y₀, h, ht.closure_eq ▸ mem_closure_of_tendsto hyφ <| .of_forall fun n ↦ (hy _).2⟩

/-- **Sequential characterization of upper hemicontinuity**:
If `β` is a regular space and `f : α → Set β` is upper hemicontinuous at `x₀` and `f x₀` is
closed, then for any sequences `x` and `y` (in `α` and `β`, respectively) tending to `x₀` and `y₀`,
respectively, if `y n ∈ f (x n)` frequently, then `y₀ ∈ f x₀`.

This is a partial converse of `UpperHemicontinuousAt.of_sequences`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Variantfb598452d5d9e65b26b9d40c4fb52878849aa88042bfe8faa1fdec614a932881.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fe97eff17b1a588d9038f861ba586f978f9626c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
