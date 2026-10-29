import DAF.Comparison.LogicalStatus
import DAF.Determinant.Core

/-!
# Determinant-oriented special-value claims

A zeta- or L-value statement is represented here as a claim about a
distinguished element of a determinant line.  It is not modeled as an
unsupported same-degree group isomorphism.  Applications may place regulator
terms, torsion orders, leading terms, or local Euler factors inside
`SpecialValueClaim.statement` and its scalar target.

Merely constructing a `SpecialValueClaim` records a conjectural statement and
does not prove it.  Proved and conditional forms use the generic comparison
certificate structures through the distinguished-element map.  There is no
operation that extracts a certificate from an arbitrary claim.
-/

namespace DAF.Arithmetic

universe uObj uHom uIso uCoeff uLine uScalar

/--
A determinant-line formulation of an arithmetic special-value statement.

The selected determinant theory and perfect-complex object occur in the type,
so an arbitrary state equivalence cannot be substituted for the required
chain-level data.
-/
structure SpecialValueClaim
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : Comparison.CoefficientContext.{uCoeff}}
    (D : Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (C : M.Object) where
  ScalarTarget : Type uScalar
  distinguishedElement : D.Line C → ScalarTarget
  statement : Prop

namespace SpecialValueClaim

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : Comparison.CoefficientContext.{uCoeff}}
    {D : Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine} M R}
    {C : M.Object}

/-- The distinguished-element map, without any claim about its properties. -/
def spec
    (S : SpecialValueClaim D C) :
    Comparison.Spec (D.Line C) S.ScalarTarget :=
  ⟨S.distinguishedElement⟩

@[simp]
theorem spec_apply
    (S : SpecialValueClaim D C)
    (x : D.Line C) :
    S.spec.map x = S.distinguishedElement x :=
  rfl

/-- Attach the arithmetic proposition to its distinguished-element map. -/
def claim
    (S : SpecialValueClaim D C) :
    Comparison.Claim S.spec where
  statement := S.statement

/-- A supplied proof creates a generic proof certificate. -/
theorem certificate
    (S : SpecialValueClaim D C)
    (proof : S.statement) :
    Comparison.Certificate S.spec S.claim :=
  ⟨proof⟩

/-- A supplied implication creates a certificate retaining its hypothesis. -/
def conditionalCertificate
    (S : SpecialValueClaim D C)
    (Hypothesis : Prop)
    (proof : Hypothesis → S.statement) :
    Comparison.ConditionalCertificate S.spec S.claim where
  Hypothesis := Hypothesis
  proof := proof

end SpecialValueClaim

end DAF.Arithmetic
