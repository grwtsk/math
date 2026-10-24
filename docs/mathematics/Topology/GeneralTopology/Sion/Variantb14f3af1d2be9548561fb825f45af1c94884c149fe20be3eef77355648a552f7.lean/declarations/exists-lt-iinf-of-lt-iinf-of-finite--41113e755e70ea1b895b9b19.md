# exists_lt_iInf_of_lt_iInf_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75d7801d-0499-5774-be4a-148482148186",
  "kind": "theorem",
  "lexical_name": "exists_lt_iInf_of_lt_iInf_of_finite",
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
  "slug": "exists-lt-iinf-of-lt-iinf-of-finite--41113e755e70ea1b895b9b19",
  "source": {
    "blob": "c1e59fce02ffe0c685abcee01076e906967b0007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41113e755e70ea1b895b9b19589057b6fdac14c743dd5fb8e0daf4e2638e8987",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d7801d-0499-5774-be4a-148482148186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem exists_lt_iInf_of_lt_iInf_of_finite
    {s : Set F} (hs : s.Finite) (hsY : s ⊆ Y)
    {t : β} (ht : ∀ x ∈ X, ∃ y ∈ s, t < f x y) :
    ∃ y0 ∈ Y, ∀ x ∈ X, t < f x y0 := by
  induction s, hs using Set.Finite.induction_on
    generalizing X with
  | empty => simpa using ht _ ne_X.choose_spec
  | @insert b s _ hs hrec =>  -- insert case
    have hb : (b ∈ Y) := hsY (mem_insert b s)
    let X' := X ∩ (fun x ↦ f x b) ⁻¹' Iic t
    rcases Set.eq_empty_or_nonempty X' with X'_e | X'_ne
    · -- When `X'` is empty, we may set `y0 := b`
      use b, hb
      simpa [X', Set.eq_empty_iff_forall_notMem] using X'_e
    -- the nonempty case
    have hX'X : X' ⊆ X := inter_subset_left
    have kX' : IsCompact X' := (hfy b hb).isCompact_inter_preimage_Iic kX t
    have cX' : Convex ℝ X' := hfy' b hb t
    specialize hrec X'_ne kX'
      (fun y hy ↦ LowerSemicontinuousOn.mono (hfy y hy) hX'X)
      (fun y hy ↦ cX'.quasiconvexOn_restrict (hfy' y hy) hX'X)
      (fun x hx' ↦ hfx x (hX'X hx'))
      (fun x hx' ↦ hfx' x (hX'X hx'))
      cX'
    have ht_lt : ∀ x ∈ X', ∃ y ∈ s, t < f x y := by
        /- otherwise, if  infi x ∈ X', supr y ∈ s f x y ≤ t
          then for every t' > t, there is x ∈ X' such that supr y ∈ s f x y ≤ t',
          since x ∈ X' and t ≤ t', we have supr y ∈ insert b s f x y  ≤ t',
          hence infi x ∈ X, supr y ∈ insert b s, f x y ≤ t',
          so that infi x ∈ X, supr y ∈ insert b s, f x y ≤ t. -/
      intro x hx
      obtain ⟨y, hy, h⟩ := ht x hx.1
      rcases hy with rfl | hy
      · simp [h.not_ge hx.2]
      · exact ⟨y, hy, h⟩
    obtain ⟨y1, hy1, hty1⟩ := hrec (by grw [subset_insert b s, hsY]) ht_lt
    refine exists_lt_iInf_of_lt_iInf_of_sup ne_X kX hfy hfy' cY hfx hfx' hb hy1 fun x hx ↦ ?_
    by_cases hx' : x ∈ X'
    · exact (hty1 x hx').trans_le (le_sup_right)
    · apply lt_of_lt_of_le _ (le_sup_left)
      rw [← not_le]
      exact fun h ↦ hx' ⟨hx, h⟩

include ne_X cX cY kX hfx hfx' hfy hfy' in
/-- A minimax theorem without completeness, using `IsGLB` and `IsLUB`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variantb14f3af1d2be9548561fb825f45af1c94884c149fe20be3eef77355648a552f7.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e59fce02ffe0c685abcee01076e906967b0007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
