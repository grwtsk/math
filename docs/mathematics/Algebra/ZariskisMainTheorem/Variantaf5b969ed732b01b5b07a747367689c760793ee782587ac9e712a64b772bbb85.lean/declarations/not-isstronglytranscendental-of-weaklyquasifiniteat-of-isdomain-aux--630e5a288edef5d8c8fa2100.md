# not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isDomain_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75c09015-240b-2f9a-dbfe-c261a7ca0abb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ddbc9bf-12e9-0033-8718-617b2607748a",
  "kind": "lemma",
  "lexical_name": "not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isDomain_aux",
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
  "slug": "not-isstronglytranscendental-of-weaklyquasifiniteat-of-isdomain-aux--630e5a288edef5d8c8fa2100",
  "source": {
    "blob": "98122731c6ffb3714ba0aa2e741c563b58befd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 347,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630e5a288edef5d8c8fa210061e9074f723bd414d3f2781ff250cc0aea9593a3",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ddbc9bf-12e9-0033-8718-617b2607748a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isDomain_aux
    (K L : Type*) [Field K] [Field L] [Algebra R K] [Algebra R L] [Algebra S L] [Algebra K L]
    [IsScalarTower R K L] [IsScalarTower R S L] [IsFractionRing R K] [IsFractionRing S L]
    {R' S' : Type*} [CommRing R'] [CommRing S'] [Algebra R R'] [Algebra R' S'] [Algebra R S']
    [Algebra S' L] [Algebra R' L] [IsScalarTower R' S' L] [Algebra R' K] [IsScalarTower R' K L]
    [IsScalarTower R R' S'] [FaithfulSMul S' L] [IsIntegralClosure R' R K]
    [IsScalarTower R R' K]
    (f : S →ₐ[R] S') (hf₁ : Function.Surjective
      (Algebra.TensorProduct.lift (Algebra.ofId R' S') f fun _ _ ↦ .all _ _))
    (hf₂ : (algebraMap S' L).comp f.toRingHom = algebraMap _ _)
    {x : S} (hx' : (aeval (R := R) x).Finite)
    (P : Ideal S) [P.IsPrime] [Algebra.WeaklyQuasiFiniteAt R P] :
    ¬ IsStronglyTranscendental R x := by
  intro hx
  have := (FaithfulSMul.algebraMap_injective S' L).isDomain
  have := (FaithfulSMul.algebraMap_injective R K).isDomain
  have : Algebra.IsIntegral R R' := IsIntegralClosure.isIntegral_algebra _ K
  have : FaithfulSMul R' K := (faithfulSMul_iff_algebraMap_injective _ _).mpr
    (IsIntegralClosure.algebraMap_injective R' R K)
  have : FaithfulSMul R R' := .tower_bot _ _ K
  have : FaithfulSMul R' L := .trans _ K _
  have : FaithfulSMul R' S' := .tower_bot _ _ L
  have : IsIntegrallyClosedIn R' K := .of_isIntegralClosure R
  have : IsIntegrallyClosed R' := .of_isIntegrallyClosed_of_isIntegrallyClosedIn _ K
  let g := Algebra.TensorProduct.lift (Algebra.ofId R' S') f fun _ _ ↦ .all _ _
  have hf₃ : Function.Injective f :=
    .of_comp (f := algebraMap S' L) (hf₂ ▸ FaithfulSMul.algebraMap_injective S L:)
  have hf₄ : f.IsIntegral := by
    have : f = (g.restrictScalars R).comp ((Algebra.TensorProduct.comm _ _ _).toAlgHom.comp
        (IsScalarTower.toAlgHom _ _ _)) := by ext; simp [g]
    simp only [this, AlgHom.toRingHom_eq_coe, AlgHom.comp_toRingHom, ← RingHom.comp_assoc]
    refine .trans _ _ (algebraMap_isIntegral_iff.mpr inferInstance) ?_
    exact RingHom.isIntegral_of_surjective _
      (hf₁.comp (Algebra.TensorProduct.comm _ _ _).surjective)
  have H₁ : IsStronglyTranscendental R' (f x) := by
    refine .of_map (f := IsScalarTower.toAlgHom R' S' L) (FaithfulSMul.algebraMap_injective S' L) ?_
    dsimp
    rw [show algebraMap S' L (f x) = algebraMap _ _ x from congr($hf₂ x)]
    exact ((hx.of_isLocalization S⁰).of_isLocalization_left R⁰).restrictScalars (S := K)
  have H₂ : (aeval (R := R') (f x)).toRingHom.Finite := by
    convert!
      ((RingHom.Finite.of_surjective g.toRingHom hf₁).comp
            (RingHom.Finite.tensorProductMap (f := AlgHom.id R R') (RingEquiv.refl _).finite
              hx')).comp
        (polyEquivTensor R R').toRingEquiv.finite using 1
    ext <;> simp [g]
  obtain ⟨⟨Q, _⟩, hQ⟩ := hf₄.comap_surjective hf₃ ⟨P, ‹_›⟩
  suffices WeaklyQuasiFiniteAt R' Q from
    not_isStronglyTranscendental_of_weaklyQuasiFiniteAt_of_isIntegrallyClosed H₂ Q H₁
  have : Algebra.WeaklyQuasiFiniteAt R' (Q.comap g.toRingHom) := .baseChange P _ <| by
    rw [Ideal.comap_comap]
    convert! congr(($hQ.symm).1)
    ext; simp [g]
  exact .of_surjectiveOnStalks (Q.comap g.toRingHom) _ g
    (RingHom.surjectiveOnStalks_of_surjective hf₁) rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantaf5b969ed732b01b5b07a747367689c760793ee782587ac9e712a64b772bbb85.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98122731c6ffb3714ba0aa2e741c563b58befd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
