# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Transport.Variantb70c3e0a1fe0356991f0bf10336ad25174f98b9eb11bf4639a10ad6314eebb8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dbbc2b5f248cfc047d0974ea74a133879f843a9` · SHA-256 `b70c3e0a1fe0356991f0bf10336ad25174f98b9eb11bf4639a10ad6314eebb8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Determinant.Core

/-!
# Certified determinant transport

Determinant transport is available only from a selected `Theory` and an
actual `PerfectComplex.CertifiedQuasiIso`.  A comparison-map claim, metadata
tag, or equivalence of unrelated state types is insufficient.

For a finite chain, transport is composed in chain order.  The theorem
`QuasiIsoChain.detEquiv_eq_composite` proves that this iterated transport is
the transport assigned to the certified chain composite.
-/

namespace DAF.Determinant

open DAF.Comparison
open DAF.PerfectComplex

universe uObj uHom uIso uCoeff uLine

namespace CertifiedQuasiIso

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uCoeff}}
    {C D E : M.Object}

/-- Determinant-line transport supplied by a supported determinant theory. -/
def detEquiv
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (f : PerfectComplex.CertifiedQuasiIso M C D) :
    Dₒ.Line C ≃ Dₒ.Line D :=
  Dₒ.quasiIsoEquiv f

@[simp]
theorem detEquiv_id
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (C : M.Object) :
    detEquiv Dₒ (PerfectComplex.CertifiedQuasiIso.id M C) =
      Equiv.refl (Dₒ.Line C) :=
  Dₒ.quasiIsoEquiv_id C

theorem detEquiv_comp
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (f : PerfectComplex.CertifiedQuasiIso M C D)
    (g : PerfectComplex.CertifiedQuasiIso M D E) :
    detEquiv Dₒ (f.comp g) =
      (detEquiv Dₒ f).trans (detEquiv Dₒ g) :=
  Dₒ.quasiIsoEquiv_comp f g

end CertifiedQuasiIso

namespace QuasiIsoChain

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uCoeff}}
    {B C D E : M.Object}

/-- Compose determinant transports arrow by arrow along a certified chain. -/
def detEquiv
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    {C D : M.Object} :
    (chain : PerfectComplex.QuasiIsoChain M C D) →
      Dₒ.Line C ≃ Dₒ.Line D
  | .nil _ => Equiv.refl _
  | .cons f rest =>
      (CertifiedQuasiIso.detEquiv Dₒ f).trans
        (detEquiv Dₒ rest)

@[simp]
theorem detEquiv_nil
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (C : M.Object) :
    detEquiv Dₒ (PerfectComplex.QuasiIsoChain.nil C) =
      Equiv.refl (Dₒ.Line C) :=
  rfl

@[simp]
theorem detEquiv_cons
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (f : PerfectComplex.CertifiedQuasiIso M B C)
    (rest : PerfectComplex.QuasiIsoChain M C D) :
    detEquiv Dₒ (PerfectComplex.QuasiIsoChain.cons f rest) =
      (CertifiedQuasiIso.detEquiv Dₒ f).trans
        (detEquiv Dₒ rest) :=
  rfl

/-- Iterated transport agrees with transport along the certified composite. -/
theorem detEquiv_eq_composite
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (chain : PerfectComplex.QuasiIsoChain M C D) :
    detEquiv Dₒ chain =
      CertifiedQuasiIso.detEquiv Dₒ chain.composite := by
  induction chain with
  | nil C =>
      exact (CertifiedQuasiIso.detEquiv_id Dₒ C).symm
  | cons f rest ih =>
      rw [detEquiv_cons, ih]
      exact (CertifiedQuasiIso.detEquiv_comp Dₒ f rest.composite).symm

/-- Determinant transport respects concatenation of typed chains. -/
theorem detEquiv_append
    (Dₒ : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (xs : PerfectComplex.QuasiIsoChain M B C)
    (ys : PerfectComplex.QuasiIsoChain M C D) :
    detEquiv Dₒ (xs.append ys) =
      (detEquiv Dₒ xs).trans (detEquiv Dₒ ys) := by
  induction xs with
  | nil => rfl
  | cons f rest ih =>
      simp only [PerfectComplex.QuasiIsoChain.cons_append, detEquiv_cons, ih]
      rfl

end QuasiIsoChain

end DAF.Determinant
```
