import DAF.Determinant.Transport
import DAF.Prismatic.Totalization

/-!
# Determinant transport for certified prismatic comparisons

A simplicial source map, a fabric reaction, or an equivalence of state types
does not produce a determinant-line map.  This module requires a selected
perfect-complex model and an explicit certificate family whose interpretation
is an existing `DAF.PerfectComplex.CertifiedQuasiIso`.  Determinant transport
then delegates entirely to `DAF.Determinant.CertifiedQuasiIso.detEquiv`.
-/

namespace DAF.Prismatic

open CategoryTheory
open DAF.Comparison
open DAF.PerfectComplex

universe uCert uObj uHom uIso uCoeff uLine

/--
A capability for representing certified totalized prismatic reactions by
chain-level quasi-isomorphisms.  The certificate family is explicit and is
closed under identity and composition.
-/
structure PerfectPrismaticTotalization
    (P : Theory)
    (T : TotalizationTheory P.Target) where
  model : DAF.PerfectComplex.Model.{uObj, uHom, uIso}
  encode : P.Target → model.Object

  ReactionCertificate :
    {X Y : SimplicialObject P.DerivedAlg} →
      (X ⟶ Y) → Type uCert

  identityCertificate :
    ∀ (X : SimplicialObject P.DerivedAlg),
      ReactionCertificate (𝟙 X)

  composeCertificate :
    ∀ {X Y Z : SimplicialObject P.DerivedAlg}
      {f : X ⟶ Y} {g : Y ⟶ Z},
      ReactionCertificate f →
        ReactionCertificate g →
        ReactionCertificate (f ≫ g)

  reactionQuasiIso :
    ∀ {X Y : SimplicialObject P.DerivedAlg}
      (f : X ⟶ Y),
      ReactionCertificate f →
        DAF.PerfectComplex.CertifiedQuasiIso model
          (encode (fabricPrismaticValue P T Y))
          (encode (fabricPrismaticValue P T X))

  reactionQuasiIso_id :
    ∀ (X : SimplicialObject P.DerivedAlg),
      reactionQuasiIso (𝟙 X) (identityCertificate X) =
        DAF.PerfectComplex.CertifiedQuasiIso.id model
          (encode (fabricPrismaticValue P T X))

  reactionQuasiIso_comp :
    ∀ {X Y Z : SimplicialObject P.DerivedAlg}
      {f : X ⟶ Y} {g : Y ⟶ Z}
      (hf : ReactionCertificate f)
      (hg : ReactionCertificate g),
      reactionQuasiIso (f ≫ g) (composeCertificate hf hg) =
        (reactionQuasiIso g hg).comp (reactionQuasiIso f hf)

/--
Determinant-line equivalence induced only through a certified chain-level
prismatic comparison.
-/
def certifiedPrismaticReactionDetEquiv
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    {X Y : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y)
    (certificate : Q.ReactionCertificate f) :
    D.Line (Q.encode (fabricPrismaticValue P T Y)) ≃
      D.Line (Q.encode (fabricPrismaticValue P T X)) :=
  DAF.Determinant.CertifiedQuasiIso.detEquiv D
    (Q.reactionQuasiIso f certificate)

@[simp]
theorem certifiedPrismaticReactionDetEquiv_id
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    (X : SimplicialObject P.DerivedAlg) :
    certifiedPrismaticReactionDetEquiv Q D (𝟙 X)
        (Q.identityCertificate X) =
      Equiv.refl (D.Line (Q.encode (fabricPrismaticValue P T X))) := by
  rw [certifiedPrismaticReactionDetEquiv, Q.reactionQuasiIso_id]
  exact DAF.Determinant.CertifiedQuasiIso.detEquiv_id D _

theorem certifiedPrismaticReactionDetEquiv_comp
    {P : Theory}
    {T : TotalizationTheory P.Target}
    (Q : PerfectPrismaticTotalization.{uCert, uObj, uHom, uIso} P T)
    {R : CoefficientContext.{uCoeff}}
    (D : DAF.Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine}
      Q.model R)
    {X Y Z : SimplicialObject P.DerivedAlg}
    {f : X ⟶ Y}
    {g : Y ⟶ Z}
    (hf : Q.ReactionCertificate f)
    (hg : Q.ReactionCertificate g) :
    certifiedPrismaticReactionDetEquiv Q D (f ≫ g)
        (Q.composeCertificate hf hg) =
      (certifiedPrismaticReactionDetEquiv Q D g hg).trans
        (certifiedPrismaticReactionDetEquiv Q D f hf) := by
  rw [certifiedPrismaticReactionDetEquiv, Q.reactionQuasiIso_comp]
  exact DAF.Determinant.CertifiedQuasiIso.detEquiv_comp D _ _

end DAF.Prismatic
