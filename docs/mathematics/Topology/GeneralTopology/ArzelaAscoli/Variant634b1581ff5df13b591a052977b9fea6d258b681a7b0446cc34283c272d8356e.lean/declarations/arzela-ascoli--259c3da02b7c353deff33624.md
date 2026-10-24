# arzela_ascoli₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30e3c21fc5554c91e6c0a2e59b0452bdbf91ed35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/634b1581ff5df13b591a052977b9fea6d258b681a7b0446cc34283c272d8356e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8050a05-2176-e6c1-bfec-89a1593dcbb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:509043c3-8c08-5179-ec49-9b5de20e7913",
  "kind": "theorem",
  "lexical_name": "arzela_ascoli₁",
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
  "slug": "arzela-ascoli--259c3da02b7c353deff33624",
  "source": {
    "blob": "30e3c21fc5554c91e6c0a2e59b0452bdbf91ed35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/ArzelaAscoli/Variant634b1581ff5df13b591a052977b9fea6d258b681a7b0446cc34283c272d8356e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259c3da02b7c353deff33624888ad7dcab89daabb024dbde28d84a8d83418b65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArzelaAscoli/Variant634b1581ff5df13b591a052977b9fea6d258b681a7b0446cc34283c272d8356e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:509043c3-8c08-5179-ec49-9b5de20e7913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arzela_ascoli₁ [CompactSpace β] (A : Set (α →ᵇ β)) (closed : IsClosed A)
    (H : Equicontinuous ((↑) : A → α → β)) : IsCompact A := by
  simp_rw [Equicontinuous, Metric.equicontinuousAt_iff_pair] at H
  refine isCompact_of_totallyBounded_isClosed ?_ closed
  refine totallyBounded_of_finite_discretization fun ε ε0 => ?_
  rcases exists_between ε0 with ⟨ε₁, ε₁0, εε₁⟩
  let ε₂ := ε₁ / 2 / 2
  /- We have to find a finite discretization of `u`, i.e., finite information
    that is sufficient to reconstruct `u` up to `ε`. This information will be
    provided by the values of `u` on a sufficiently dense set `tα`,
    slightly translated to fit in a finite `ε₂`-dense set `tβ` in the image. Such
    sets exist by compactness of the source and range. Then, to check that these
    data determine the function up to `ε`, one uses the control on the modulus of
    continuity to extend the closeness on tα to closeness everywhere. -/
  have ε₂0 : ε₂ > 0 := half_pos (half_pos ε₁0)
  have : ∀ x : α, ∃ U, x ∈ U ∧ IsOpen U ∧
      ∀ y ∈ U, ∀ z ∈ U, ∀ {f : α →ᵇ β}, f ∈ A → dist (f y) (f z) < ε₂ := fun x =>
    let ⟨U, nhdsU, hU⟩ := H x _ ε₂0
    let ⟨V, VU, openV, xV⟩ := _root_.mem_nhds_iff.1 nhdsU
    ⟨V, xV, openV, fun y hy z hz f hf => hU y (VU hy) z (VU hz) ⟨f, hf⟩⟩
  choose U hU using this
  /- For all `x`, the set `hU x` is an open set containing `x` on which the elements of `A`
    fluctuate by at most `ε₂`.
    We extract finitely many of these sets that cover the whole space, by compactness. -/
  obtain ⟨tα : Set α, _, hfin, htα : univ ⊆ ⋃ x ∈ tα, U x⟩ :=
    isCompact_univ.elim_finite_subcover_image (fun x _ => (hU x).2.1) fun x _ =>
      mem_biUnion (mem_univ _) (hU x).1
  rcases hfin.nonempty_fintype with ⟨_⟩
  obtain ⟨tβ : Set β, _, hfin, htβ : univ ⊆ ⋃y ∈ tβ, ball y ε₂⟩ :=
    @finite_cover_balls_of_compact β _ _ isCompact_univ _ ε₂0
  rcases hfin.nonempty_fintype with ⟨_⟩
  -- Associate to every point `y` in the space a nearby point `F y` in `tβ`
  choose F hF using fun y => show ∃ z ∈ tβ, dist y z < ε₂ by simpa using htβ (mem_univ y)
  -- `F : β → β`, `hF : ∀ (y : β), F y ∈ tβ ∧ dist y (F y) < ε₂`
  /- Associate to every function a discrete approximation, mapping each point in `tα`
    to a point in `tβ` close to its true image by the function. -/
  classical
  refine ⟨tα → tβ, by infer_instance, fun f a => ⟨F (f.1 a), (hF (f.1 a)).1⟩, ?_⟩
  rintro ⟨f, hf⟩ ⟨g, hg⟩ f_eq_g
  -- If two functions have the same approximation, then they are within distance `ε`
  refine lt_of_le_of_lt ((dist_le <| le_of_lt ε₁0).2 fun x => ?_) εε₁
  obtain ⟨x', x'tα, hx'⟩ := mem_iUnion₂.1 (htα (mem_univ x))
  calc
    dist (f x) (g x) ≤ dist (f x) (f x') + dist (g x) (g x') + dist (f x') (g x') :=
      dist_triangle4_right _ _ _ _
    _ ≤ ε₂ + ε₂ + ε₁ / 2 := by
      refine le_of_lt (add_lt_add (add_lt_add ?_ ?_) ?_)
      · exact (hU x').2.2 _ hx' _ (hU x').1 hf
      · exact (hU x').2.2 _ hx' _ (hU x').1 hg
      · have F_f_g : F (f x') = F (g x') :=
          (congr_arg (fun f : tα → tβ => (f ⟨x', x'tα⟩ : β)) f_eq_g :)
        calc
          dist (f x') (g x') ≤ dist (f x') (F (f x')) + dist (g x') (F (f x')) :=
            dist_triangle_right _ _ _
          _ = dist (f x') (F (f x')) + dist (g x') (F (g x')) := by rw [F_f_g]
          _ < ε₂ + ε₂ := (add_lt_add (hF (f x')).2 (hF (g x')).2)
          _ = ε₁ / 2 := add_halves _
    _ = ε₁ := by rw [add_halves, add_halves]

/-- Second version, with pointwise equicontinuity and range in a compact subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArzelaAscoli/Variant634b1581ff5df13b591a052977b9fea6d258b681a7b0446cc34283c272d8356e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArzelaAscoli/Variant634b1581ff5df13b591a052977b9fea6d258b681a7b0446cc34283c272d8356e.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30e3c21fc5554c91e6c0a2e59b0452bdbf91ed35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
