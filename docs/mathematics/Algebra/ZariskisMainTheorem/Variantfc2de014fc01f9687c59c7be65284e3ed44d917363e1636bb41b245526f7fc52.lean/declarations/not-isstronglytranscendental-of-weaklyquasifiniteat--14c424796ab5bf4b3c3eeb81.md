# not_isStronglyTranscendental_of_weaklyQuasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc03738c-aa97-1add-cd6c-b20909fe0d72",
  "kind": "lemma",
  "lexical_name": "not_isStronglyTranscendental_of_weaklyQuasiFiniteAt",
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
  "slug": "not-isstronglytranscendental-of-weaklyquasifiniteat--14c424796ab5bf4b3c3eeb81",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 412,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c424796ab5bf4b3c3eeb8106f3cd3b76afd2203d00ff67c27750dc70291842",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc03738c-aa97-1add-cd6c-b20909fe0d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma not_isStronglyTranscendental_of_weaklyQuasiFiniteAt [IsReduced S]
    {x : S} (hx' : (aeval (R := R) x).toRingHom.Finite)
    (P : Ideal S) [P.IsPrime] [Algebra.WeaklyQuasiFiniteAt R P] :
    ¬ IsStronglyTranscendental R x := by
  wlog hS : IsDomain S ∧ FaithfulSMul R S
  · intro hx
    obtain ⟨p, hp, hpP⟩ := Ideal.exists_minimalPrimes_le (J := P) bot_le
    have inst := hp.1.1
    have inst : (P.map (Ideal.Quotient.mk p)).IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective (by simpa)
    have inst : WeaklyQuasiFiniteAt (R ⧸ Ideal.under R p) (Ideal.map (Ideal.Quotient.mk p) P) := by
      suffices Algebra.WeaklyQuasiFiniteAt R (P.map (Ideal.Quotient.mk p)) from
        .of_restrictScalars R _ _
      refine .of_surjectiveOnStalks P _ (Ideal.Quotient.mkₐ _ _)
        (RingHom.surjectiveOnStalks_of_surjective Ideal.Quotient.mk_surjective) ?_
      refine .trans ?_ (Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective _).symm
      simpa [← RingHom.ker_eq_comap_bot]
    refine this (R := R ⧸ p.under R) ?_ (P.map (Ideal.Quotient.mk p)) ⟨inferInstance, inferInstance⟩
      ((isStronglyTranscendental_mk_of_mem_minimalPrimes hx p hp).of_surjective_left
        Ideal.Quotient.mk_surjective)
    refine RingHom.Finite.of_comp_finite (f := mapRingHom (Ideal.Quotient.mk _)) ?_
    convert! (RingHom.Finite.of_surjective _ (Ideal.Quotient.mk_surjective (I := p))).comp hx'
    ext <;> simp
  cases hS
  have : IsDomain R := (FaithfulSMul.algebraMap_injective R S).isDomain
  let K := FractionRing R
  let L := FractionRing S
  let : Algebra K L := FractionRing.liftAlgebra _ _
  let R' := integralClosure R K
  let S' : Subalgebra R' L := Algebra.adjoin R' (algebraMap S L).range
  let f : S →ₐ[R] S' := (IsScalarTower.toAlgHom R S L).codRestrict (S'.restrictScalars R) fun x ↦ by
    simpa using show algebraMap S L x ∈ S' from Algebra.subset_adjoin ⟨x, rfl⟩
  let g := Algebra.TensorProduct.lift (Algebra.ofId R' S') f fun _ _ ↦ .all _ _
  have hf : Function.Surjective g := by
    rw [← AlgHom.range_eq_top,
      ← (Subalgebra.map_injective (f := S'.val) Subtype.val_injective).eq_iff, Algebra.map_top]
    refine le_antisymm (Set.image_subset_range S'.val g.range) ?_
    simp only [RingHom.coe_range, Subalgebra.range_val, Algebra.adjoin_le_iff, Subalgebra.coe_map,
      Subalgebra.coe_val, AlgHom.coe_range, Set.range_subset_iff, Set.mem_image, Set.mem_range,
      exists_exists_eq_and, S']
    exact fun y ↦ ⟨1 ⊗ₜ y, by simp [g, S']; rfl⟩
  exact not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isDomain_aux K L f hf rfl hx' P

@[stacks 00Q2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
