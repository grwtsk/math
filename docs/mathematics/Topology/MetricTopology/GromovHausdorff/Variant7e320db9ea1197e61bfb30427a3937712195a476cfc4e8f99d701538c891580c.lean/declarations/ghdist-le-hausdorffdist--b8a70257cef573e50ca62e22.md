# ghDist_le_hausdorffDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f27316ea-b0cb-15e4-34eb-f82a5e1d6da7",
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
  "slug": "ghdist-le-hausdorffdist--b8a70257cef573e50ca62e22",
  "source": {
    "blob": "647a1da85db9bfb4dde10a068d6978427b3a9a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 193,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8a70257cef573e50ca62e22c9fafa791a989bb41156cb2f309e035a111e3158",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f27316ea-b0cb-15e4-34eb-f82a5e1d6da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–245.

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
  let s : Set γ := range Φ ∪ range Ψ
  let Φ' : X → s := fun y => ⟨Φ y, mem_union_left _ (mem_range_self _)⟩
  let Ψ' : Y → s := fun y => ⟨Ψ y, mem_union_right _ (mem_range_self _)⟩
  have IΦ' : Isometry Φ' := fun x y => ha x y
  have IΨ' : Isometry Ψ' := fun x y => hb x y
  have : IsCompact s := (isCompact_range ha.continuous).union (isCompact_range hb.continuous)
  have : CompactSpace s := ⟨isCompact_iff_isCompact_univ.1 ‹IsCompact s›⟩
  have ΦΦ' : Φ = Subtype.val ∘ Φ' := rfl
  have ΨΨ' : Ψ = Subtype.val ∘ Ψ' := rfl
  have : hausdorffDist (range Φ) (range Ψ) = hausdorffDist (range Φ') (range Ψ') := by
    rw [ΦΦ', ΨΨ', range_comp, range_comp]
    exact hausdorffDist_image isometry_subtype_coe
  rw [this]
  -- Embed `s` in `ℓ^∞(ℝ)` through its Kuratowski embedding
  let F := kuratowskiEmbedding s
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
  refine csInf_le ⟨0, ?_⟩ ?_
  · simp only [lowerBounds, mem_image, mem_prod, mem_ofPred_eq, Prod.exists, and_imp,
      forall_exists_index]
    intro t _ _ _ _ ht
    rw [← ht]
    exact hausdorffDist_nonneg
  apply (mem_image _ _ _).2
  exists (⟨A, B⟩ : NonemptyCompacts ℓ_infty_ℝ × NonemptyCompacts ℓ_infty_ℝ)

/-- The optimal coupling constructed above realizes exactly the Gromov-Hausdorff distance,
essentially by design. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `647a1da85db9bfb4dde10a068d6978427b3a9a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
