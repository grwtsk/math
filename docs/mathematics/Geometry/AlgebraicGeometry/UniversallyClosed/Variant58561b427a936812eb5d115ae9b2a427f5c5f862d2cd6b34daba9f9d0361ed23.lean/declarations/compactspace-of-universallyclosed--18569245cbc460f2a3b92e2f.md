# compactSpace_of_universallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4af7b29f-2fff-56f7-d5d0-73c6b6f07bea",
  "kind": "lemma",
  "lexical_name": "compactSpace_of_universallyClosed",
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
  "slug": "compactspace-of-universallyclosed--18569245cbc460f2a3b92e2f",
  "source": {
    "blob": "d69a347b2d8026170b4b4b555d9c2adedf8c67a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 121,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18569245cbc460f2a3b92e2fb0d0e562f90b748fb206f0df4118a49570c72705",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af7b29f-2fff-56f7-d5d0-73c6b6f07bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compactSpace_of_universallyClosed
    {K} [Field K] (f : X ⟶ Spec (.of K)) [UniversallyClosed f] : CompactSpace X := by
  classical
  let 𝒰 : X.OpenCover := X.affineCover
  let U (i : 𝒰.I₀) : X.Opens := (𝒰.f i).opensRange
  let T : Scheme := Spec (.of <| MvPolynomial 𝒰.I₀ K)
  let q : T ⟶ Spec (.of K) := Spec.map (CommRingCat.ofHom MvPolynomial.C)
  let Ti (i : 𝒰.I₀) : T.Opens := basicOpen (MvPolynomial.X i)
  let fT : pullback f q ⟶ T := pullback.snd f q
  let p : pullback f q ⟶ X := pullback.fst f q
  let Z : Set (pullback f q :) := (⨆ i, fT ⁻¹ᵁ (Ti i) ⊓ p ⁻¹ᵁ (U i) : (pullback f q).Opens)ᶜ
  have hZ : IsClosed Z := by
    simp only [Z, isClosed_compl_iff, Opens.coe_iSup, Opens.coe_inf, Opens.map_coe]
    exact isOpen_iUnion fun i ↦ (fT.continuous.1 _ (Ti i).2).inter (p.continuous.1 _ (U i).2)
  let Zc : T.Opens := ⟨(fT '' Z)ᶜ, (fT.isClosedMap _ hZ).isOpen_compl⟩
  let ψ : MvPolynomial 𝒰.I₀ K →ₐ[K] K := MvPolynomial.aeval (fun _ ↦ 1)
  let t : T := Spec.map (CommRingCat.ofHom ψ.toRingHom) default
  have ht (i : 𝒰.I₀) : t ∈ Ti i := show ψ (.X i) ≠ 0 by simp [ψ]
  have htZc : t ∈ Zc := by
    intro ⟨z, hz, hzt⟩
    suffices ∃ i, fT z ∈ Ti i ∧ p z ∈ U i from hz (by simpa)
    exact ⟨𝒰.idx (p z), hzt ▸ ht _, by simpa [U] using 𝒰.covers (p z)⟩
  obtain ⟨U', ⟨g, rfl⟩, htU', hU'le⟩ := Opens.isBasis_iff_nbhd.mp isBasis_basic_opens htZc
  let σ : Finset 𝒰.I₀ := MvPolynomial.vars g
  let φ : MvPolynomial 𝒰.I₀ K →+* MvPolynomial 𝒰.I₀ K :=
    (MvPolynomial.aeval fun i : 𝒰.I₀ ↦ if i ∈ σ then MvPolynomial.X i else 0).toRingHom
  let t' : T := Spec.map (CommRingCat.ofHom φ) t
  have ht'g : t' ∈ PrimeSpectrum.basicOpen g :=
    show φ g ∉ t.asIdeal from (show φ g = g from aeval_ite_mem_eq_self g subset_rfl).symm ▸ htU'
  have h : t' ∉ fT '' Z := hU'le ht'g
  suffices ⋃ i ∈ σ, (U i).1 = Set.univ from
    ⟨this ▸ Finset.isCompact_biUnion _ fun i _ ↦ isCompact_range (𝒰.f i).continuous⟩
  rw [Set.iUnion₂_eq_univ_iff]
  contrapose! h
  obtain ⟨x, hx⟩ := h
  obtain ⟨z, rfl, hzr⟩ := exists_preimage_pullback x t' (Subsingleton.elim (f x) (q t'))
  suffices ∀ i, t ∈ (Ti i).comap ⟨_, continuous_comap φ⟩ → p z ∉ U i from
    ⟨z, by simpa [Z, p, fT, hzr], hzr⟩
  intro i hi₁ hi₂
  rw [comap_basicOpen, show φ (.X i) = 0 by simpa [φ] using (hx i · hi₂), basicOpen_zero] at hi₁
  cases hi₁

set_option backward.isDefEq.respectTransparency false in
@[stacks 04XU]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d69a347b2d8026170b4b4b555d9c2adedf8c67a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
