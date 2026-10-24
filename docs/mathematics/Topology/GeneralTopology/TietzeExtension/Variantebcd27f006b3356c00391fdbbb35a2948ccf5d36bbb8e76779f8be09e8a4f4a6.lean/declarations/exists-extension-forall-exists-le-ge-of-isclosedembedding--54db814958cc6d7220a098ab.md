# exists_extension_forall_exists_le_ge_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91d86d23-b5e8-22b0-9e47-b8ef7f942671",
  "kind": "theorem",
  "lexical_name": "exists_extension_forall_exists_le_ge_of_isClosedEmbedding",
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
  "slug": "exists-extension-forall-exists-le-ge-of-isclosedembedding--54db814958cc6d7220a098ab",
  "source": {
    "blob": "0d6a245ba8d83c8009f6122661fa19c696a89a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 319,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54db814958cc6d7220a098ab0fc7095203a60148e9f49d36e993edc490e34ef5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d86d23-b5e8-22b0-9e47-b8ef7f942671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_forall_exists_le_ge_of_isClosedEmbedding [Nonempty X] (f : X →ᵇ ℝ)
    {e : X → Y} (he : IsClosedEmbedding e) :
    ∃ g : Y →ᵇ ℝ, (∀ y, ∃ x₁ x₂, g y ∈ Icc (f x₁) (f x₂)) ∧ g ∘ e = f := by
  inhabit X
  -- Put `a = ⨅ x, f x` and `b = ⨆ x, f x`
  obtain ⟨a, ha⟩ : ∃ a, IsGLB (range f) a := ⟨_, isGLB_ciInf f.isBounded_range.bddBelow⟩
  obtain ⟨b, hb⟩ : ∃ b, IsLUB (range f) b := ⟨_, isLUB_ciSup f.isBounded_range.bddAbove⟩
  -- Then `f x ∈ [a, b]` for all `x`
  have hmem : ∀ x, f x ∈ Icc a b := fun x => ⟨ha.1 ⟨x, rfl⟩, hb.1 ⟨x, rfl⟩⟩
  -- Rule out the trivial case `a = b`
  have hle : a ≤ b := (hmem default).1.trans (hmem default).2
  rcases hle.eq_or_lt with (rfl | hlt)
  · have : ∀ x, f x = a := by simpa using hmem
    use const Y a
    simp [this, funext_iff]
  -- Put `c = (a + b) / 2`. Then `a < c < b` and `c - a = b - c`.
  set c := (a + b) / 2
  have hac : a < c := left_lt_add_div_two.2 hlt
  have hcb : c < b := add_div_two_lt_right.2 hlt
  have hsub : c - a = b - c := by
    field_simp [c]
    ring
  /- Due to `exists_extension_forall_mem_Icc_of_isClosedEmbedding`, there exists an extension `g`
    such that `g y ∈ [a, b]` for all `y`. However, if `a` and/or `b` do not belong to the range of
    `f`, then we need to ensure that these points do not belong to the range of `g`. This is done
    in two almost identical steps. First we deal with the case `∀ x, f x ≠ a`. -/
  obtain ⟨g, hg_mem, hgf⟩ : ∃ g : Y →ᵇ ℝ, (∀ y, ∃ x, g y ∈ Icc (f x) b) ∧ g ∘ e = f := by
    rcases exists_extension_forall_mem_Icc_of_isClosedEmbedding f hmem hle he with ⟨g, hg_mem, hgf⟩
    -- If `a ∈ range f`, then we are done.
    rcases em (∃ x, f x = a) with (⟨x, rfl⟩ | ha')
    · exact ⟨g, fun y => ⟨x, hg_mem _⟩, hgf⟩
    /- Otherwise, `g ⁻¹' {a}` is disjoint with `range e ∪ g ⁻¹' (Ici c)`, hence there exists a
        function `dg : Y → ℝ` such that `dg ∘ e = 0`, `dg y = 0` whenever `c ≤ g y`, `dg y = c - a`
        whenever `g y = a`, and `0 ≤ dg y ≤ c - a` for all `y`. -/
    have hd : Disjoint (range e ∪ g ⁻¹' Ici c) (g ⁻¹' {a}) := by
      refine disjoint_union_left.2 ⟨?_, Disjoint.preimage _ ?_⟩
      · rw [Set.disjoint_left]
        rintro _ ⟨x, rfl⟩ (rfl : g (e x) = a)
        exact ha' ⟨x, (congr_fun hgf x).symm⟩
      · exact Set.disjoint_singleton_right.2 hac.not_le
    rcases exists_bounded_mem_Icc_of_closed_of_le
        (he.isClosed_range.union <| isClosed_Ici.preimage g.continuous)
        (isClosed_singleton.preimage g.continuous) hd (sub_nonneg.2 hac.le) with
      ⟨dg, dg0, dga, dgmem⟩
    replace hgf : ∀ x, (g + dg) (e x) = f x := by
      intro x
      simp [dg0 (Or.inl <| mem_range_self _), ← hgf]
    refine ⟨g + dg, fun y => ?_, funext hgf⟩
    have hay : a < (g + dg) y := by
      rcases (hg_mem y).1.eq_or_lt with (rfl | hlt)
      · refine (lt_add_iff_pos_right _).2 ?_
        calc
          0 < c - g y := sub_pos.2 hac
          _ = dg y := (dga rfl).symm
      · exact hlt.trans_le (le_add_of_nonneg_right (dgmem y).1)
    rcases ha.exists_between hay with ⟨_, ⟨x, rfl⟩, _, hxy⟩
    refine ⟨x, hxy.le, ?_⟩
    rcases le_total c (g y) with hc | hc
    · simp [dg0 (Or.inr hc), (hg_mem y).2]
    · calc
        g y + dg y ≤ c + (c - a) := add_le_add hc (dgmem _).2
        _ = b := by rw [hsub, add_sub_cancel]
  /- Now we deal with the case `∀ x, f x ≠ b`. The proof is the same as in the first case, with
    minor modifications that make it hard to deduplicate code. -/
  choose xl hxl hgb using hg_mem
  rcases em (∃ x, f x = b) with (⟨x, rfl⟩ | hb')
  · exact ⟨g, fun y => ⟨xl y, x, hxl y, hgb y⟩, hgf⟩
  have hd : Disjoint (range e ∪ g ⁻¹' Iic c) (g ⁻¹' {b}) := by
    refine disjoint_union_left.2 ⟨?_, Disjoint.preimage _ ?_⟩
    · rw [Set.disjoint_left]
      rintro _ ⟨x, rfl⟩ (rfl : g (e x) = b)
      exact hb' ⟨x, (congr_fun hgf x).symm⟩
    · exact Set.disjoint_singleton_right.2 hcb.not_le
  rcases exists_bounded_mem_Icc_of_closed_of_le
      (he.isClosed_range.union <| isClosed_Iic.preimage g.continuous)
      (isClosed_singleton.preimage g.continuous) hd (sub_nonneg.2 hcb.le) with
    ⟨dg, dg0, dgb, dgmem⟩
  replace hgf : ∀ x, (g - dg) (e x) = f x := by
    intro x
    simp [dg0 (Or.inl <| mem_range_self _), ← hgf]
  refine ⟨g - dg, fun y => ?_, funext hgf⟩
  have hyb : (g - dg) y < b := by
    rcases (hgb y).eq_or_lt with (rfl | hlt)
    · refine (sub_lt_self_iff _).2 ?_
      calc
        0 < g y - c := sub_pos.2 hcb
        _ = dg y := (dgb rfl).symm
    · exact ((sub_le_self_iff _).2 (dgmem _).1).trans_lt hlt
  rcases hb.exists_between hyb with ⟨_, ⟨xu, rfl⟩, hyxu, _⟩
  rcases lt_or_le c (g y) with hc | hc
  · rcases em (a ∈ range f) with (⟨x, rfl⟩ | _)
    · refine ⟨x, xu, ?_, hyxu.le⟩
      calc
        f x = c - (b - c) := by rw [← hsub, sub_sub_cancel]
        _ ≤ g y - dg y := sub_le_sub hc.le (dgmem _).2
    · have hay : a < (g - dg) y := by
        calc
          a = c - (b - c) := by rw [← hsub, sub_sub_cancel]
          _ < g y - (b - c) := sub_lt_sub_right hc _
          _ ≤ g y - dg y := sub_le_sub_left (dgmem _).2 _
      rcases ha.exists_between hay with ⟨_, ⟨x, rfl⟩, _, hxy⟩
      exact ⟨x, xu, hxy.le, hyxu.le⟩
  · refine ⟨xl y, xu, ?_, hyxu.le⟩
    simp [dg0 (Or.inr hc), hxl]

/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version for a closed
embedding. Let `e` be a closed embedding of a nonempty topological space `X` into a normal
topological space `Y`. Let `f` be a bounded continuous real-valued function on `X`. Let `t` be
a nonempty convex set of real numbers (we use `OrdConnected` instead of `Convex` to automatically
deduce this argument by typeclass search) such that `f x ∈ t` for all `x`. Then there exists
a bounded continuous real-valued function `g : Y →ᵇ ℝ` such that `g y ∈ t` for all `y` and
`g ∘ e = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d6a245ba8d83c8009f6122661fa19c696a89a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
