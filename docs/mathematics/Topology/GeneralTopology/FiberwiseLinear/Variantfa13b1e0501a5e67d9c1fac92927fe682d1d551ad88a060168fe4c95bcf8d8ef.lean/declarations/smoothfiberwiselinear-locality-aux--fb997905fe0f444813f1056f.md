# SmoothFiberwiseLinear.locality_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "809580bde548bbb432f34084fe214a1b745c4c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18e2b255-9951-c624-9076-b0076a79b383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0b30450-b319-1bb7-76d2-b337ffafc858",
  "kind": "theorem",
  "lexical_name": "SmoothFiberwiseLinear.locality_aux₂",
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
  "slug": "smoothfiberwiselinear-locality-aux--fb997905fe0f444813f1056f",
  "source": {
    "blob": "809580bde548bbb432f34084fe214a1b745c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb997905fe0f444813f1056f9d1d5a9b857c4f9e135b31f5af8a09a1ca1a90e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b30450-b319-1bb7-76d2-b337ffafc858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SmoothFiberwiseLinear.locality_aux₂ (e : LocalHomeomorph (B × F) (B × F)) (U : Set B)
    (hU : e.source = U ×ˢ univ)
    (h : ∀ x ∈ U,
      ∃ (φ : B → F ≃L[𝕜] F) (u : Set B) (hu : IsOpen u) (_hUu : u ⊆ U) (_hux : x ∈ u)
        (hφ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => (φ x : F →L[𝕜] F)) u)
        (h2φ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => ((φ x).symm : F →L[𝕜] F)) u),
          (e.restr (u ×ˢ univ)).EqOnSource
            (FiberwiseLinear.localHomeomorph φ hu hφ.continuousOn h2φ.continuousOn)) :
    ∃ (Φ : B → F ≃L[𝕜] F) (U : Set B) (hU₀ : IsOpen U) (hΦ :
      SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => (Φ x : F →L[𝕜] F)) U) (h2Φ :
      SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => ((Φ x).symm : F →L[𝕜] F)) U),
      e.EqOnSource (FiberwiseLinear.localHomeomorph Φ hU₀ hΦ.continuousOn h2Φ.continuousOn) := by
  classical
  rw [SetCoe.forall'] at h
  choose! φ u hu hUu hux hφ h2φ heφ using h
  have heuφ : ∀ x : U, EqOn e (fun q => (q.1, φ x q.1 q.2)) (u x ×ˢ univ) := fun x p hp ↦ by
    refine' (heφ x).2 _
    rw [(heφ x).1]
    exact hp
  have huφ : ∀ (x x' : U) (y : B), y ∈ u x → y ∈ u x' → φ x y = φ x' y := fun p p' y hyp hyp' ↦ by
    ext v
    have h1 : e (y, v) = (y, φ p y v) := heuφ _ ⟨(id hyp : (y, v).fst ∈ u p), trivial⟩
    have h2 : e (y, v) = (y, φ p' y v) := heuφ _ ⟨(id hyp' : (y, v).fst ∈ u p'), trivial⟩
    exact congr_arg Prod.snd (h1.symm.trans h2)
  have hUu' : U = ⋃ i, u i := by
    ext x
    rw [mem_iUnion]
    refine' ⟨fun h => ⟨⟨x, h⟩, hux _⟩, _⟩
    rintro ⟨x, hx⟩
    exact hUu x hx
  have hU' : IsOpen U := by
    rw [hUu']
    apply isOpen_iUnion hu
  let Φ₀ : U → F ≃L[𝕜] F := iUnionLift u (fun x => φ x ∘ (↑)) huφ U hUu'.le
  let Φ : B → F ≃L[𝕜] F := fun y =>
    if hy : y ∈ U then Φ₀ ⟨y, hy⟩ else ContinuousLinearEquiv.refl 𝕜 F
  have hΦ : ∀ (y) (hy : y ∈ U), Φ y = Φ₀ ⟨y, hy⟩ := fun y hy => dif_pos hy
  have hΦφ : ∀ x : U, ∀ y ∈ u x, Φ y = φ x y := by
    intro x y hyu
    refine' (hΦ y (hUu x hyu)).trans _
    exact iUnionLift_mk ⟨y, hyu⟩ _
  have hΦ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun y => (Φ y : F →L[𝕜] F)) U := by
    apply contMDiffOn_of_locally_contMDiffOn
    intro x hx
    refine' ⟨u ⟨x, hx⟩, hu ⟨x, hx⟩, hux _, _⟩
    refine' (ContMDiffOn.congr (hφ ⟨x, hx⟩) _).mono (inter_subset_right _ _)
    intro y hy
    rw [hΦφ ⟨x, hx⟩ y hy]
  have h2Φ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun y => ((Φ y).symm : F →L[𝕜] F)) U := by
    apply contMDiffOn_of_locally_contMDiffOn
    intro x hx
    refine' ⟨u ⟨x, hx⟩, hu ⟨x, hx⟩, hux _, _⟩
    refine' (ContMDiffOn.congr (h2φ ⟨x, hx⟩) _).mono (inter_subset_right _ _)
    intro y hy
    rw [hΦφ ⟨x, hx⟩ y hy]
  refine' ⟨Φ, U, hU', hΦ, h2Φ, hU, fun p hp => _⟩
  rw [hU] at hp
  rw [heuφ ⟨p.fst, hp.1⟩ ⟨hux _, hp.2⟩]
  congrm (_, ?_)
  rw [hΦφ]
  apply hux
#align smooth_fiberwise_linear.locality_aux₂ SmoothFiberwiseLinear.locality_aux₂

/- Porting note: `simp only [mem_iUnion]` fails in the next definition. This aux lemma is a
workaround. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809580bde548bbb432f34084fe214a1b745c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
