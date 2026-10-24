# IsClosedMap.isEvenlyCovered_of_openPartialHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e0a2138-04f3-eacb-0484-16846341a8f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b8c8d2d-43a8-79da-5d4e-3ce9a3bd15e8",
  "kind": "theorem",
  "lexical_name": "IsClosedMap.isEvenlyCovered_of_openPartialHomeomorph",
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
  "slug": "isclosedmap-isevenlycovered-of-openpartialhomeomorph--370ccce6fc3355743f224a0d",
  "source": {
    "blob": "c19662de3e595c9ce71ed4980b9b5d7fe3c51648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 510,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370ccce6fc3355743f224a0d0ad6f1f7e3e15ae8083676ba6828400276125b99",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8c8d2d-43a8-79da-5d4e-3ce9a3bd15e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosedMap.isEvenlyCovered_of_openPartialHomeomorph [T2Space E] {x : X}
    (hf : IsClosedMap f) (fin : (f ⁻¹' {x}).Finite)
    (h : ∀ e ∈ f ⁻¹' {x}, ∃ φ : OpenPartialHomeomorph E X, e ∈ φ.source ∧ φ = f) :
    IsEvenlyCovered f x (f ⁻¹' {x}) := by
  have : DiscreteTopology (f ⁻¹' {x}) :=
    (IsDiscrete.of_openPartialHomeomorph f subset_rfl h).1
  /- for each preimage e of x, choose a homeomorphism φₑ
    from a neighborhood of e to its image -/
  choose φ hφ using fun e : f ⁻¹' {x} ↦ h e e.2
  -- separately, choose pairwise disjoint neighborhoods Vₑ by Hausdorff-ness
  have ⟨V, hV, disj⟩ := fin.t2_separation
  -- let Vₑ' be the intersection Vₑ ∩ dom(φₑ)
  let V' (e : f ⁻¹' {x}) := V e ∩ (φ e).source
  have hV' e : IsOpen (V' e) := (hV e).2.inter (φ e).open_source
  have : ⋃ e, V' e ∈ nhdsSet (f ⁻¹' {x}) :=
    (isOpen_iUnion hV').mem_nhdsSet.2 fun e he ↦ mem_iUnion_of_mem ⟨e, he⟩ ⟨(hV e).1, (hφ _).1⟩
  -- since f is a closed map, the union of the Vₑ' contains the preimage of a neighborhood U of x
  have ⟨W, hWx, hWV⟩ := isClosedMap_iff_comap_nhds_le.mp hf this
  cases isEmpty_or_nonempty (f ⁻¹' {x})
  · exact .of_preimage_eq_empty _ hWx (by simpa using hWV)
  have ⟨U, hUW, hU, hxU⟩ := mem_nhds_iff.mp hWx
  -- show that the intersection of U with the images of Vₑ' is evenly covered
  let U' := U ∩ ⋂ e : f ⁻¹' {x}, f '' (V' e)
  have : Finite (f ⁻¹' {x}) := fin
  have hU' : IsOpen U' := hU.inter <| isOpen_iInter_of_finite fun e ↦ by
    convert! ← (φ e).isOpen_image_of_subset_source (hV' _) inter_subset_right; exact (hφ e).2
  have hUV e : U' ⊆ f '' V' e := inter_subset_right.trans (iInter_subset ..)
  have : Nonempty E := ⟨Classical.arbitrary (f ⁻¹' {x})⟩
  refine .of_trivialization (t := hU'.trivializationDiscrete _ _
    (fun e s hs ↦ ⟨fun h ↦ ?_, fun h ↦ ?_⟩) (fun e ↦ ?_)
    (fun e ↦ .mono subset_rfl (hUV e) (surjOn_image f _))
    (pairwise_disjoint_mono disj.subtype fun e ↦ inter_subset_left)
    ((preimage_mono (inter_subset_left.trans hUW)).trans hWV))
    ⟨hxU, Set.mem_iInter.mpr fun e ↦ ⟨e, ⟨(hV e).1, (hφ e).1⟩, e.2⟩⟩
  · convert! ((φ e).isOpen_inter_preimage h).inter (hV e).2 using 1
    simp_rw [(hφ e).2, V']; ac_rfl
  · have : s ⊆ (φ e).target := hs.trans <| (hUV e).trans <| by
      rw [← (φ e).image_source_eq_target, (hφ e).2]; exact image_mono inter_subset_right
    rw [← (φ e).isOpen_symm_image_iff_of_subset_target this,
      (φ e).symm_image_eq_source_inter_preimage this, (hφ e).2, inter_comm]
    convert! h using 1
    refine inter_eq_inter_iff_left.mpr ⟨fun e' h ↦ h.2.2, fun e' h ↦ ⟨?_ , h.2⟩⟩
    have ⟨e'', ⟨_, mem⟩, eq⟩ := mem_iInter.mp (hs h.1).2 e
    rwa [← (φ e).injOn mem h.2 (by rwa [(hφ e).2])]
  · convert! ← (φ e).injOn.mono inter_subset_right; exact (hφ e).2

/-- If `f : E → X` is a closed map between topological spaces with `E` Hausdorff, and `s` is
a subset of `X` on which `f` has finite fibers, such that `f` restricts to a homeomorphism on
a neighborhood of every point of `f ⁻¹' s`, then `f` is a covering map on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant85517cbcabc90b4f0a79c8b9c38fc93ea2b1c2927db1d1a23e339bf7f3bfcb32.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c19662de3e595c9ce71ed4980b9b5d7fe3c51648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
