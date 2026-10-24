# IsSmoothAt.of_formallySmooth_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27b24019-fa84-ef55-f579-e33845c3c8b1",
  "kind": "lemma",
  "lexical_name": "IsSmoothAt.of_formallySmooth_fiber",
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
  "slug": "issmoothat-of-formallysmooth-fiber--9da2a5bd5afea5c0088a1676",
  "source": {
    "blob": "2edecb8883baa04db330c02ec22027111bbeb65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 201,
    "path": "GRWTSK/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da2a5bd5afea5c0088a16769f07c6e1e897dc460df557803d9d0bff5cc4b2ab",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27b24019-fa84-ef55-f579-e33845c3c8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSmoothAt.of_formallySmooth_fiber
    [Algebra.FinitePresentation R S] (p : Ideal R) (q : Ideal S)
    [p.IsPrime] [q.IsPrime] [q.LiesOver p] [FormallySmooth p.ResidueField (p.Fiber S)] :
    Algebra.IsSmoothAt R q := by
  let Rp := Localization.AtPrime p
  let Sp := Localization (algebraMapSubmonoid S p.primeCompl)
  let Sq := Localization.AtPrime q
  let := Localization.AtPrime.algebraOfLiesOver p q
  let f : Sp →ₐ[S] Sq := IsLocalization.liftAlgHom (M := algebraMapSubmonoid S p.primeCompl)
        (f := Algebra.ofId _ _) (by
      rintro ⟨_, x, hx, rfl⟩
      simpa using! IsLocalization.map_units (M := q.primeCompl) Sq ⟨algebraMap _ _ x,
        by simp_all [q.over_def p]⟩)
  algebraize [f.toRingHom]
  have : IsScalarTower R Sp Sq := .to₁₃₄ _ S _ _
  have : IsScalarTower Rp Sp Sq := .of_algebraMap_eq' <| by
    apply IsLocalization.ringHom_ext p.primeCompl
    simp only [RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq]
  have : IsLocalization (algebraMapSubmonoid Sp q.primeCompl) Sq :=
    .isLocalization_of_submonoid_le _ _ (algebraMapSubmonoid S p.primeCompl) _
    (by rintro _ ⟨x, hx, rfl⟩; simp_all [q.over_def p])
  have : FinitePresentation Rp Sp := by
    have : Algebra.IsPushout R Rp S Sp :=
      .symm <| Algebra.isPushout_of_isLocalization p.primeCompl _ _ _
    exact .equiv (Algebra.IsPushout.equiv R Rp S Sp)
  have : FormallySmooth 𝓀[Rp] (𝓀[Rp] ⊗[Rp] Sq) := by
    let : Algebra S (𝓀[Rp] ⊗[R] S) := TensorProduct.rightAlgebra
    have : FormallySmooth 𝓀[Rp] ((𝓀[Rp] ⊗[R] S) ⊗[S] Sq) :=
      .comp _ (𝓀[Rp] ⊗[R] S) _
    let e : 𝓀[Rp] ⊗[R] S ≃ₐ[S] S ⊗[R] 𝓀[Rp] :=
      { __ := TensorProduct.comm _ _ _, commutes' _ := rfl }
    let e' : (𝓀[Rp] ⊗[R] S) ⊗[S] Sq ≃ₐ[R] 𝓀[Rp] ⊗[Rp] Sq :=
      ((TensorProduct.comm _ _ _).restrictScalars R).trans <|
      ((TensorProduct.congr (.refl (R := S)) e).restrictScalars R).trans <|
      ((TensorProduct.cancelBaseChange _ _ S _ _).restrictScalars R).trans <|
      (TensorProduct.comm _ _ _).trans (TensorProduct.equivOfCompatibleSMul ..)
    have : e'.toAlgHom.comp (IsScalarTower.toAlgHom R p.ResidueField _) =
        IsScalarTower.toAlgHom _ _ _ := by ext
    let e'' : (𝓀[Rp] ⊗[R] S) ⊗[S] Sq ≃ₐ[𝓀[Rp]] 𝓀[Rp] ⊗[Rp] Sq :=
      { __ := e', commutes' r := congr($this r) }
    exact .of_equiv e''
  have := FormallySmooth.of_formallySmooth_residueField_tensor
    (R := Rp) (S := Sq) (P := Sp) (algebraMapSubmonoid _ q.primeCompl)
  exact .comp R Rp Sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variant594109ea82dfa72e3a6df9048de53015f945abe3d721cb5f05ef4ef756cb4d0c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2edecb8883baa04db330c02ec22027111bbeb65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
