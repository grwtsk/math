# ghDist_le_hausdorffDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38b21bd6-5802-4b07-8790-636423fdcfda",
  "kind": "theorem",
  "lexical_name": "ghDist_le_hausdorffDist",
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
  "slug": "ghdist-le-hausdorffdist--ba4eeef7d46bd813173dac09",
  "source": {
    "blob": "b37c224e2b9f34b621e69661c2dab552b520bc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 204,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba4eeef7d46bd813173dac0982938aea6112b3b4ae57dae3d65c5b98a736bb16",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38b21bd6-5802-4b07-8790-636423fdcfda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ghDist_le_hausdorffDist {X : Type u} [MetricSpace X] [CompactSpace X] [Nonempty X]
    {Y : Type v} [MetricSpace Y] [CompactSpace Y] [Nonempty Y] {γ : Type w} [MetricSpace γ]
    {Φ : X → γ} {Ψ : Y → γ} (ha : Isometry Φ) (hb : Isometry Ψ) :
    ghDist X Y ≤ hausdorffDist (range Φ) (range Ψ) := by
  /- For the proof, we want to embed `γ` in `ℓ^∞(ℝ)`, to say that the Hausdorff distance is realized
    in `ℓ^∞(ℝ)` and therefore bounded below by the Gromov-Hausdorff-distance. However, `γ` is not
    separable in general. We restrict to the union of the images of `X` and `Y` in `γ`, which is
    separable and therefore embeddable in `ℓ^∞(ℝ)`. -/
  rcases exists_mem_of_nonempty X with ⟨xX, _⟩
  let s : Set γ := range Φ ∪ range Ψ
  let Φ' : X → Subtype s := fun y => ⟨Φ y, mem_union_left _ (mem_range_self _)⟩
  let Ψ' : Y → Subtype s := fun y => ⟨Ψ y, mem_union_right _ (mem_range_self _)⟩
  have IΦ' : Isometry Φ' := fun x y => ha x y
  have IΨ' : Isometry Ψ' := fun x y => hb x y
  have : IsCompact s := (isCompact_range ha.continuous).union (isCompact_range hb.continuous)
  letI : MetricSpace (Subtype s) := by infer_instance
  haveI : CompactSpace (Subtype s) := ⟨isCompact_iff_isCompact_univ.1 ‹IsCompact s›⟩
  haveI : Nonempty (Subtype s) := ⟨Φ' xX⟩
  have ΦΦ' : Φ = Subtype.val ∘ Φ' := by funext; rfl
  have ΨΨ' : Ψ = Subtype.val ∘ Ψ' := by funext; rfl
  have : hausdorffDist (range Φ) (range Ψ) = hausdorffDist (range Φ') (range Ψ') := by
    rw [ΦΦ', ΨΨ', range_comp, range_comp]
    exact hausdorffDist_image isometry_subtype_coe
  rw [this]
  -- Embed `s` in `ℓ^∞(ℝ)` through its Kuratowski embedding
  let F := kuratowskiEmbedding (Subtype s)
  have : hausdorffDist (F '' range Φ') (F '' range Ψ') = hausdorffDist (range Φ') (range Ψ') :=
    hausdorffDist_image (kuratowskiEmbedding.isometry _)
  rw [← this]
  -- Let `A` and `B` be the images of `X` and `Y` under this embedding. They are in `ℓ^∞(ℝ)`, and
  -- their Hausdorff distance is the same as in the original space.
  let A : NonemptyCompacts ℓ_infty_ℝ :=
    ⟨⟨F '' range Φ',
        (isCompact_range IΦ'.continuous).image (kuratowskiEmbedding.isometry _).continuous⟩,
      (range_nonempty _).image _⟩
  let B : NonemptyCompacts ℓ_infty_ℝ :=
    ⟨⟨F '' range Ψ',
        (isCompact_range IΨ'.continuous).image (kuratowskiEmbedding.isometry _).continuous⟩,
      (range_nonempty _).image _⟩
  have AX : ⟦A⟧ = toGHSpace X := by
    rw [eq_toGHSpace_iff]
    exact ⟨fun x => F (Φ' x), (kuratowskiEmbedding.isometry _).comp IΦ', range_comp _ _⟩
  have BY : ⟦B⟧ = toGHSpace Y := by
    rw [eq_toGHSpace_iff]
    exact ⟨fun x => F (Ψ' x), (kuratowskiEmbedding.isometry _).comp IΨ', range_comp _ _⟩
  refine' csInf_le ⟨0, _⟩ _
  · simp only [lowerBounds, mem_image, mem_prod, mem_setOf_eq, Prod.exists, and_imp,
      forall_exists_index]
    intro t _ _ _ _ ht
    rw [← ht]
    exact hausdorffDist_nonneg
  apply (mem_image _ _ _).2
  exists (⟨A, B⟩ : NonemptyCompacts ℓ_infty_ℝ × NonemptyCompacts ℓ_infty_ℝ)
#align Gromov_Hausdorff.GH_dist_le_Hausdorff_dist GromovHausdorff.ghDist_le_hausdorffDist

set_option maxHeartbeats 500000 in
/-- The optimal coupling constructed above realizes exactly the Gromov-Hausdorff distance,
essentially by design. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37c224e2b9f34b621e69661c2dab552b520bc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
