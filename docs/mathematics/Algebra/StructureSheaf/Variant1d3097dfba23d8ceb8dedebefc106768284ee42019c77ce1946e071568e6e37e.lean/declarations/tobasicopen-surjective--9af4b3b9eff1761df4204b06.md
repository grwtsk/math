# toBasicOpen_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1113274d-8a4f-e7d8-3f96-765f5857d254",
  "kind": "theorem",
  "lexical_name": "toBasicOpen_surjective",
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
  "slug": "tobasicopen-surjective--9af4b3b9eff1761df4204b06",
  "source": {
    "blob": "77c38c8ba20bb8be112e47215887715d2f05b8a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 831,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af4b3b9eff1761df4204b063a50aa0740ccd42b56c77a0a6e1a0fa45448bf0c",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1113274d-8a4f-e7d8-3f96-765f5857d254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 831–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBasicOpen_surjective (f : R) : Function.Surjective (toBasicOpen R f) := by
  intro s
  -- In this proof, `basicOpen f` will play two distinct roles: Firstly, it is an open set in the
  -- prime spectrum. Secondly, it is used as an indexing type for various families of objects
  -- (open sets, ring elements, ...). In order to make the distinction clear, we introduce a type
  -- alias `ι` that is used whenever we want think of it as an indexing type.
  let ι : Type u := PrimeSpectrum.basicOpen f
  -- First, we pick some cover of basic opens, on which we can represent `s` as a fraction
  choose a' h' iDh' hxDh' s_eq' using locally_const_basicOpen R (PrimeSpectrum.basicOpen f) s
  -- Since basic opens are compact, we can pass to a finite subcover
  obtain ⟨t, ht_cover'⟩ :=
    (PrimeSpectrum.isCompact_basicOpen f).elim_finite_subcover
      (fun i : ι => PrimeSpectrum.basicOpen (h' i)) (fun i => PrimeSpectrum.isOpen_basicOpen)
      -- Here, we need to show that our basic opens actually form a cover of `basicOpen f`
      fun x hx => by rw [Set.mem_iUnion]; exact ⟨⟨x, hx⟩, hxDh' ⟨x, hx⟩⟩
  simp only [← Opens.coe_iSup, SetLike.coe_subset_coe] at ht_cover'
  -- We use the normalization lemma from above to obtain the relation `a i * h j = h i * a j`
  obtain ⟨a, h, iDh, ht_cover, ah_ha, s_eq⟩ :=
    normalize_finite_fraction_representation R (PrimeSpectrum.basicOpen f)
      s t a' h' iDh' ht_cover' s_eq'
  clear s_eq' iDh' hxDh' ht_cover' a' h'
  -- Porting note : simp with `[← SetLike.coe_subset_coe, Opens.coe_iSup]` does not result in
  -- desired form
  rw [← SetLike.coe_subset_coe, Opens.coe_iSup] at ht_cover
  replace ht_cover : (PrimeSpectrum.basicOpen f : Set <| PrimeSpectrum R) ⊆
    ⋃ (i : ι) (x : i ∈ t), (PrimeSpectrum.basicOpen (h i) : Set _)
  · convert ht_cover using 2
    exact funext fun j => by rw [Opens.coe_iSup]
  -- Next we show that some power of `f` is a linear combination of the `h i`
  obtain ⟨n, hn⟩ : f ∈ (Ideal.span (h '' ↑t)).radical := by
    rw [← PrimeSpectrum.vanishingIdeal_zeroLocus_eq_radical, PrimeSpectrum.zeroLocus_span]
    -- Porting note : simp with `PrimeSpectrum.basicOpen_eq_zeroLocus_compl` does not work
    replace ht_cover : (PrimeSpectrum.zeroLocus {f})ᶜ ⊆
      ⋃ (i : ι) (x : i ∈ t), (PrimeSpectrum.zeroLocus {h i})ᶜ
    · convert ht_cover
      · rw [PrimeSpectrum.basicOpen_eq_zeroLocus_compl]
      · simp only [Opens.iSup_mk, Opens.carrier_eq_coe, PrimeSpectrum.basicOpen_eq_zeroLocus_compl]
    rw [Set.compl_subset_comm] at ht_cover
    -- Why doesn't `simp_rw` do this?
    simp_rw [Set.compl_iUnion, compl_compl, ← PrimeSpectrum.zeroLocus_iUnion,
      ← Finset.set_biUnion_coe, ← Set.image_eq_iUnion] at ht_cover
    apply PrimeSpectrum.vanishingIdeal_anti_mono ht_cover
    exact PrimeSpectrum.subset_vanishingIdeal_zeroLocus {f} (Set.mem_singleton f)
  replace hn := Ideal.mul_mem_left _ f hn
  erw [← pow_succ, Finsupp.mem_span_image_iff_total] at hn
  rcases hn with ⟨b, b_supp, hb⟩
  rw [Finsupp.total_apply_of_mem_supported R b_supp] at hb
  dsimp at hb
  -- Finally, we have all the ingredients.
  -- We claim that our preimage is given by `(∑ (i : ι) in t, b i * a i) / f ^ (n+1)`
  use
    IsLocalization.mk' (Localization.Away f) (∑ i : ι in t, b i * a i)
      (⟨f ^ (n + 1), n + 1, rfl⟩ : Submonoid.powers _)
  rw [toBasicOpen_mk']
  -- Since the structure sheaf is a sheaf, we can show the desired equality locally.
  -- Annoyingly, `Sheaf.eq_of_locally_eq'` requires an open cover indexed by a *type*, so we need to
  -- coerce our finset `t` to a type first.
  let tt := ((t : Set (PrimeSpectrum.basicOpen f)) : Type u)
  apply
    (structureSheaf R).eq_of_locally_eq' (fun i : tt => PrimeSpectrum.basicOpen (h i))
      (PrimeSpectrum.basicOpen f) fun i : tt => iDh i
  · -- This feels a little redundant, since already have `ht_cover` as a hypothesis
    -- Unfortunately, `ht_cover` uses a bounded union over the set `t`, while here we have the
    -- Union indexed by the type `tt`, so we need some boilerplate to translate one to the other
    intro x hx
    erw [TopologicalSpace.Opens.mem_iSup]
    have := ht_cover hx
    rw [← Finset.set_biUnion_coe, Set.mem_iUnion₂] at this
    rcases this with ⟨i, i_mem, x_mem⟩
    refine ⟨⟨i, i_mem⟩, x_mem⟩
  rintro ⟨i, hi⟩
  dsimp
  change (structureSheaf R).1.map _ _ = (structureSheaf R).1.map _ _
  rw [s_eq i hi, res_const]
  -- Again, `res_const` spits out an additional goal
  swap
  · intro y hy
    change y ∈ PrimeSpectrum.basicOpen (f ^ (n + 1))
    rw [PrimeSpectrum.basicOpen_pow f (n + 1) (by linarith)]
    exact (leOfHom (iDh i) : _) hy
  -- The rest of the proof is just computation
  apply const_ext
  rw [← hb, Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  rw [mul_assoc, ah_ha j hj i hi]
  ring
#align algebraic_geometry.structure_sheaf.to_basic_open_surjective AlgebraicGeometry.StructureSheaf.toBasicOpen_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean#L831).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c38c8ba20bb8be112e47215887715d2f05b8a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
