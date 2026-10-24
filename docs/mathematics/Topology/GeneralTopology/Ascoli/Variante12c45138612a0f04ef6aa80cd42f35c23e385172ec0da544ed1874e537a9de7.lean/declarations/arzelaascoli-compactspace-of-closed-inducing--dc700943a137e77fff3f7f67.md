# ArzelaAscoli.compactSpace_of_closed_inducing'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5558009f-16ff-548e-50ea-8fa210aeb246",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e903c7cb-68cc-8a12-4a19-5527223d482b",
  "kind": "theorem",
  "lexical_name": "ArzelaAscoli.compactSpace_of_closed_inducing'",
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
  "slug": "arzelaascoli-compactspace-of-closed-inducing--dc700943a137e77fff3f7f67",
  "source": {
    "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 416,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc700943a137e77fff3f7f67046931770cbe5bdfcc700bb81786bf42176994b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e903c7cb-68cc-8a12-4a19-5527223d482b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArzelaAscoli.compactSpace_of_closed_inducing' [TopologicalSpace ι] {𝔖 : Set (Set X)}
    (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K) (F_ind : IsInducing (UniformOnFun.ofFun 𝔖 ∘ F))
    (F_cl : IsClosed <| range <| UniformOnFun.ofFun 𝔖 ∘ F)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K)
    (F_pointwiseCompact : ∀ K ∈ 𝔖, ∀ x ∈ K, ∃ Q, IsCompact Q ∧ ∀ i, F i x ∈ Q) :
    CompactSpace ι := by
  -- By equicontinuity, we know that the topology on `ι` is also the one induced by
  -- `restrict (⋃₀ 𝔖) ∘ F`.
  have : IsInducing (restrict (⋃₀ 𝔖) ∘ F) := by
    rwa [EquicontinuousOn.inducing_uniformOnFun_iff_pi' 𝔖_compact F_eqcont] at F_ind
  -- Thus, we just have to check that the range of this map is compact.
  rw [← isCompact_univ_iff, this.isCompact_iff, image_univ]
  -- But then we are working in a product space, where compactness can easily be proven using
  -- Tykhonov's theorem! More precisely, for each `x ∈ ⋃₀ 𝔖`, choose a compact set `Q x`
  -- containing all `F i x`s.
  rw [← forall_sUnion] at F_pointwiseCompact
  choose! Q Q_compact F_in_Q using F_pointwiseCompact
  -- Notice that, since the range of `F` is closed in `X →ᵤ[𝔖] α`, equicontinuity ensures that
  -- the range of `(⋃₀ 𝔖).restrict ∘ F` is still closed in the product topology.
  -- But it's contained in the product of the `Q x`s, which is compact by Tykhonov, hence
  -- it is compact as well.
  refine IsCompact.of_isClosed_subset (isCompact_univ_pi fun x ↦ Q_compact x x.2)
    (EquicontinuousOn.isClosed_range_pi_of_uniformOnFun' 𝔖_compact F_eqcont F_cl)
    (range_subset_iff.mpr fun i x _ ↦ F_in_Q x x.2 i)

/-- A version of the **Arzela-Ascoli theorem**.

Let `X, ι` be topological spaces, `𝔖` a covering of `X` by compact subsets, `α` a uniform space,
and `F : ι → (X → α)`. Assume that:
* `F`, viewed as a function `ι → (X →ᵤ[𝔖] α)`, is a closed embedding (in other words, `ι`
  identifies to a closed subset of `X →ᵤ[𝔖] α` through `F`)
* `F` is equicontinuous on each `K ∈ 𝔖`
* For all `x`, the range of `i ↦ F i x` is contained in some fixed compact subset.

Then `ι` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3069f071cbafced3f95c479d48b9d209b2213cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
