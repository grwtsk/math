# exists_lt_iInf_of_lt_iInf_of_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6f27fdf-21a6-4de3-4360-5f811200c6b4",
  "kind": "theorem",
  "lexical_name": "exists_lt_iInf_of_lt_iInf_of_sup",
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
  "slug": "exists-lt-iinf-of-lt-iinf-of-sup--26161746011912554d402bf7",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26161746011912554d402bf787f24d28c24e4680ec3143a15a6ccc3c1d6ae37c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6f27fdf-21a6-4de3-4360-5f811200c6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_lt_iInf_of_lt_iInf_of_sup
    {y1 : F} (hy1 : y1 ∈ Y) {y2 : F} (hy2 : y2 ∈ Y) {t : β}
    (ht : ∀ x ∈ X, t < f x y1 ⊔ f x y2) :
    ∃ y0 ∈ Y, ∀ x ∈ X, t < f x y0 := by
  by_contra! hinfi_le
  obtain ⟨a, ha, ha'⟩ := (hfy y1 hy1).sup (hfy y2 hy2) |>.exists_isMinOn ne_X kX
  obtain ⟨t', htt', ht'⟩ := exists_between (ht a ha)
  lift y1 to Y using hy1
  lift y2 to Y using hy2
  let J1 := setOfPred_sublevelLeft_subset X Y f t t' y1 y2
  have mem_J1_iff (z : segment ℝ (y1 : F) y2) :
      z ∈ J1 ↔ sublevelLeft X f t z ⊆ sublevelLeft X f t' y1 := by
    simp [J1, setOfPred_sublevelLeft_subset]
  let φ : segment ℝ (y1 : F) y2 ≃ₜ segment ℝ (y2 : F) y1 := .setCongr (segment_symm ℝ (y1 : F) y2)
  let J2 := φ ⁻¹' (setOfPred_sublevelLeft_subset X Y f t t' y2 y1)
  have mem_J2_iff (z : segment ℝ (y1 : F) y2) :
      z ∈ J2 ↔ sublevelLeft X f t z ⊆ sublevelLeft X f t' y2 := by
    simp [J2, setOfPred_sublevelLeft_subset, φ, Homeomorph.setCongr]
  have h_mem_Y (z : segment ℝ (y1 : F) y2) : (z : F) ∈ Y := cY.segment_subset y1.2 y2.2 z.prop
  have hJ1J2 : J1 ∩ J2 = ∅ := by
    rw [Set.eq_empty_iff_forall_notMem]
    simp only [mem_inter_iff, mem_J1_iff, mem_J2_iff]
    intro z ⟨hz1, hz2⟩
    apply (nonempty_sublevelLeft ne_X kX hfy ⟨z, h_mem_Y z⟩ hinfi_le).not_subset_empty
    simpa using Set.disjoint_of_subset hz1 hz2 (disjoint_sublevelLeft ha' ht')
  have hJ1_union_J2 : J1 ∪ J2 = segment ℝ (y1 : F) y2 := by
    refine subset_antisymm (by simp) fun z hz ↦ ?_
    lift z to segment ℝ (y1 : F) y2 using hz
    refine ⟨z, ?_, rfl⟩
    apply sublevelLeft_subset_or hfx' hfy hfy' cY a t' y1 y2 ha' ht' z |>.imp
      (fun h1 ↦ ?_) (fun h2 ↦ ?_)
    · grw [mem_J1_iff, (monotone_sublevelLeft ⟨(z : F), h_mem_Y z⟩ htt'.le), h1]
    · grw [mem_J2_iff, (monotone_sublevelLeft ⟨(z : F), h_mem_Y z⟩ htt'.le), h2]
  have : IsPreconnected (Set.univ : Set (segment ℝ (y1 : F) y2)) := by
    simpa [← Topology.IsInducing.subtypeVal.isPreconnected_image] using
      (convex_segment (y1 : F) y2).isPreconnected
  have hJ1 : IsClosed J1 := isClosed_setOfPred_sublevelLeft_subset ne_X kX hfy hfy'
    cY hfx hfx' a t t' y1 y2 ha' hinfi_le ht' htt'
  have hJ2 : IsClosed J2 := by
    simp only [sup_comm (f _ y1)] at ha' ht'
    simpa [J2, sup_comm] using isClosed_setOfPred_sublevelLeft_subset ne_X kX hfy hfy'
      cY hfx hfx' a t t' y2 y1 ha' hinfi_le ht' htt'
  have h_univ : univ ⊆ J1 ∪ J2 :=
    image_subset_image_iff Subtype.val_injective |>.mp <| by simp [hJ1_union_J2]
  have h_inter : univ ∩ (J1 ∩ J2) = ∅ := by simp [hJ1J2]
  rw [isPreconnected_iff_subset_of_disjoint_closed] at this
  rw [eq_empty_iff_forall_notMem] at hJ1J2
  obtain (h1 | h2) := this J1 J2 hJ1 hJ2 h_univ h_inter
  · refine hJ1J2 ⟨y2, right_mem_segment ℝ (y1 : F) y2⟩ ⟨h1 (Set.mem_univ _), ?_⟩
    grw [mem_J2_iff, monotone_sublevelLeft y2 htt'.le]
  · refine hJ1J2 ⟨y1, left_mem_segment ℝ (y1 : F) y2⟩ ⟨?_, h2 (Set.mem_univ _)⟩
    grw [mem_J1_iff, monotone_sublevelLeft y1 htt'.le]

variable (cX : Convex ℝ X)

include ne_X cX cY kX hfx hfx' hfy hfy' in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
