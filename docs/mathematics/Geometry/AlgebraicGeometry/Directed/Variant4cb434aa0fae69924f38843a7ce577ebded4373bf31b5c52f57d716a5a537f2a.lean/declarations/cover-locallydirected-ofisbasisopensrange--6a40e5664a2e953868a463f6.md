# Cover.LocallyDirected.ofIsBasisOpensRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5aabff9f52a6e0ceb9bff799cf52b76819c9486de7d6c1e6efd1ab19afc2a6ee",
  "kind": "def",
  "lexical_name": "Cover.LocallyDirected.ofIsBasisOpensRange",
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
  "slug": "cover-locallydirected-ofisbasisopensrange--6a40e5664a2e953868a463f6",
  "source": {
    "blob": "bd4cfb063daa86c8271de6f6d6cff27ea478211b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 266,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a40e5664a2e953868a463f679fa0c097def0e0ba4a823255c48ebf5b601fbd2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5aabff9f52a6e0ceb9bff799cf52b76819c9486de7d6c1e6efd1ab19afc2a6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.LocallyDirected.ofIsBasisOpensRange {𝒰 : X.OpenCover} [Preorder 𝒰.I₀]
    (hle : ∀ {i j : 𝒰.I₀}, i ≤ j ↔ (𝒰.f i).opensRange ≤ (𝒰.f j).opensRange)
    (H : TopologicalSpace.Opens.IsBasis (Set.range <| fun i ↦ (𝒰.f i).opensRange)) :
    𝒰.LocallyDirected where
  trans {i j} hij := IsOpenImmersion.lift (𝒰.f j) (𝒰.f i) (hle.mp (leOfHom hij))
  trans_id i := by rw [← cancel_mono (𝒰.f i)]; simp
  trans_comp hij hjk := by rw [← cancel_mono (𝒰.f _)]; simp
  directed {i j} x := by
    have : (pullback.fst (𝒰.f i) (𝒰.f j) ≫ 𝒰.f i) x ∈
      (pullback.fst (𝒰.f i) (𝒰.f j) ≫ 𝒰.f i).opensRange := ⟨x, rfl⟩
    obtain ⟨k, ⟨k, rfl⟩, ⟨y, hy⟩, h⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.mp H this
    refine ⟨k, homOfLE <| hle.mpr <| le_trans h ?_, homOfLE <| hle.mpr <| le_trans h ?_, y, ?_⟩
    · rw [Scheme.Hom.opensRange_comp]
      exact Set.image_subset_range _ _
    · simp_rw [pullback.condition, Scheme.Hom.opensRange_comp]
      exact Set.image_subset_range _ _
    · apply (pullback.fst (𝒰.f i) (𝒰.f j) ≫ 𝒰.f i).isOpenEmbedding.injective
      rw [← Scheme.Hom.comp_apply, pullback.lift_fst_assoc, IsOpenImmersion.lift_fac, hy]

section Constructions

section

variable {𝒰 : X.OpenCover} [Preorder 𝒰.I₀]
  (hle : ∀ {i j : 𝒰.I₀}, i ≤ j ↔ (𝒰.f i).opensRange ≤ (𝒰.f j).opensRange)
  (H : TopologicalSpace.Opens.IsBasis (Set.range <| fun i ↦ (𝒰.f i).opensRange))

include hle in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4cfb063daa86c8271de6f6d6cff27ea478211b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
