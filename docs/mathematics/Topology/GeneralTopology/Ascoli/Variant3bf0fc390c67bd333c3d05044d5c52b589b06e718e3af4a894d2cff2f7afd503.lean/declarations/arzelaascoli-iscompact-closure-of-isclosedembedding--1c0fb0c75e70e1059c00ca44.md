# ArzelaAscoli.isCompact_closure_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 475,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79911536-bd9e-e857-f782-796f8db43bea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a3fd7d9-9499-5862-c6e9-8742e67ae23e",
  "kind": "theorem",
  "lexical_name": "ArzelaAscoli.isCompact_closure_of_isClosedEmbedding",
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
  "slug": "arzelaascoli-iscompact-closure-of-isclosedembedding--1c0fb0c75e70e1059c00ca44",
  "source": {
    "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 475,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0fb0c75e70e1059c00ca449d9000fdc275a53dc92d4b126bdf665049a8e788",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3fd7d9-9499-5862-c6e9-8742e67ae23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArzelaAscoli.isCompact_closure_of_isClosedEmbedding [TopologicalSpace ι] [T2Space α]
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_clemb : IsClosedEmbedding (UniformOnFun.ofFun 𝔖 ∘ F))
    {s : Set ι} (s_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn (F ∘ ((↑) : s → ι)) K)
    (s_pointwiseCompact : ∀ K ∈ 𝔖, ∀ x ∈ K, ∃ Q, IsCompact Q ∧ ∀ i ∈ s, F i x ∈ Q) :
    IsCompact (closure s) := by
  -- We apply `ArzelaAscoli.compactSpace_of_isClosedEmbedding` to the map
  -- `F ∘ (↑) : closure s → (X → α)`, for which all the hypotheses are easily verified.
  rw [isCompact_iff_compactSpace]
  have : ∀ K ∈ 𝔖, ∀ x ∈ K, Continuous (eval x ∘ F) := fun K hK x hx ↦
    UniformOnFun.uniformContinuous_eval_of_mem _ _ hx hK |>.continuous.comp F_clemb.continuous
  have cls_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn (F ∘ ((↑) : closure s → ι)) K :=
    fun K hK ↦ (s_eqcont K hK).closure' <| show Continuous (K.domRestrict ∘ F) from
      continuous_pi fun ⟨x, hx⟩ ↦ this K hK x hx
  have cls_pointwiseCompact : ∀ K ∈ 𝔖, ∀ x ∈ K, ∃ Q, IsCompact Q ∧ closure s ⊆ {i | F i x ∈ Q} :=
    fun K hK x hx ↦ (s_pointwiseCompact K hK x hx).imp fun Q hQ ↦ ⟨hQ.1, closure_minimal hQ.2 <|
      hQ.1.isClosed.preimage (this K hK x hx)⟩
  exact ArzelaAscoli.compactSpace_of_isClosedEmbedding 𝔖_compact
    (F_clemb.comp isClosed_closure.isClosedEmbedding_subtypeVal) cls_eqcont
    fun K hK x hx ↦ (cls_pointwiseCompact K hK x hx).imp fun Q hQ ↦ ⟨hQ.1, by simpa using! hQ.2⟩

/-- A version of the **Arzela-Ascoli theorem**.

If an equicontinuous family of continuous functions is compact in the pointwise topology, then it
is compact in the compact open topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f145894de7f09e3804d0e70c3bd402867e616593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
