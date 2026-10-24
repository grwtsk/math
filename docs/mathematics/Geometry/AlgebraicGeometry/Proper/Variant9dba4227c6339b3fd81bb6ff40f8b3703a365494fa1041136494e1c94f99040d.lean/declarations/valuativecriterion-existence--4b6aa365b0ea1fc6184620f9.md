# valuativeCriterion_existence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d938f12d-004a-8ca1-61db-4741875bdfde",
  "kind": "lemma",
  "lexical_name": "valuativeCriterion_existence",
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
  "slug": "valuativecriterion-existence--4b6aa365b0ea1fc6184620f9",
  "source": {
    "blob": "22a24576b956c6d844dfe8958730d2701dadeff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 313,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b6aa365b0ea1fc6184620f9731cb9ab0681d77eeed974ec43b2b9975417289f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d938f12d-004a-8ca1-61db-4741875bdfde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuativeCriterion_existence [Algebra.FiniteType (𝒜 0) A] :
    ValuativeCriterion.Existence (Proj.toSpecZero 𝒜) := by
  rintro ⟨O, K, i₁, i₂, w⟩
  obtain ⟨x, hx, hx'⟩ := GradedAlgebra.exists_finset_adjoin_eq_top_and_homogeneous_ne_zero 𝒜
  choose d hd hxd using hx'
  have : i₁.base (IsLocalRing.closedPoint K) ∈ (⊤ : (Proj 𝒜).Opens) := trivial
  rw [← Proj.iSup_basicOpen_eq_top' 𝒜 (ι := x) (↑) (fun i ↦ ⟨_, hxd _ i.2⟩) (by simpa using hx),
    TopologicalSpace.Opens.mem_iSup] at this
  obtain ⟨i, hi⟩ := this
  have : Set.range i₁.base ⊆ (Proj.awayι 𝒜 _ (hxd i i.2) (hd i i.2).bot_lt).opensRange := by
    rw [Proj.opensRange_awayι]
    rintro _ ⟨x, rfl⟩
    obtain rfl := Subsingleton.elim x (IsLocalRing.closedPoint K)
    exact hi
  let φ : Spec (.of K) ⟶ _ := IsOpenImmersion.lift _ _ this
  have H : Spec.preimage i₂ ≫ CommRingCat.ofHom (algebraMap O K) =
      CommRingCat.ofHom (fromZeroRingHom 𝒜 _) ≫ Spec.preimage φ := by
    apply Spec.map_injective
    simp only [Spec.map_comp, Spec.map_preimage, ← w.w]
    rw [← Proj.awayι_toSpecZero, IsOpenImmersion.lift_fac_assoc]
  obtain ⟨i₀, φ', hφ, hφ'⟩ :=
    valuativeCriterion_existence_aux 𝒜 (Spec.preimage i₂).hom x (↑) (by simpa using hx) i
      (O := O) (K := K) (Spec.preimage φ).hom congr(($H).hom)
      (fun i ↦ d _ i.2) (fun i ↦ (hd _ i.2).bot_lt) (fun i ↦ hxd _ i.2)
  let e : O ≃+* (algebraMap O K).range :=
    (AlgEquiv.ofInjective (Algebra.ofId O K) (IsFractionRing.injective _ _)).toRingEquiv
  let φ'' := e.symm.toRingHom.comp ((Subring.inclusion hφ').comp (RingHom.rangeRestrict _))
  have hφ'' : (algebraMap O K).comp φ'' = φ'.comp (awayMap 𝒜 (hxd _ i.2) (mul_comm _ _)) := by
    ext x
    exact congr_arg Subtype.val (e.apply_symm_apply _)
  refine ⟨⟨Spec.map (CommRingCat.ofHom φ'') ≫ Proj.awayι 𝒜 _ (hxd _ i₀.2) (hd _ _).bot_lt, ?_, ?_⟩⟩
  · rw [← Spec.map_comp_assoc]
    convert IsOpenImmersion.lift_fac _ _ this using 1
    show _ = φ ≫ _
    rw [← Spec.map_preimage φ, ← CommRingCat.ofHom_hom (Spec.preimage φ), ← hφ,
      ← CommRingCat.ofHom_comp]
    simp [hφ'', SpecMap_awayMap_awayι, add_comm]
  · simp only [Category.assoc, Proj.awayι_toSpecZero, ← Spec.map_comp]
    conv_rhs => rw [← Spec.map_preimage i₂]
    congr 1
    ext x
    apply IsFractionRing.injective O K
    refine (DFunLike.congr_fun hφ'' (fromZeroRingHom 𝒜 _ _)).trans ?_
    simp only [RingHom.coe_comp, Function.comp_apply]
    rw [awayMap_fromZeroRingHom, ← awayMap_fromZeroRingHom 𝒜 _ rfl, ← RingHom.comp_apply, hφ]
    exact congr($(H.symm) x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant9dba4227c6339b3fd81bb6ff40f8b3703a365494fa1041136494e1c94f99040d.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22a24576b956c6d844dfe8958730d2701dadeff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
