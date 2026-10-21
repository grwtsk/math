/-
WholeDeterminantLineTransportTheory — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 16233d524f75fbe2533c207eb185e2d618b5ce2c8da1fb3c925f9dce96f477dd
Organized SHA-256: caf23cc8f3c513dab533cd4f8645fbad17b8cc6409ea9baaa0f61912104700e7
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The whole seven-field determinant-line transport theory preserves the selected perfect-complex model, coefficient context, both equivalence families and four exact coherence equations, with both application proofs. The complete rank-one finite-free model/theory/negation construction preserves every categorical law and embedded proof. It uses linear automorphisms and isQuasiIso=True in this small explicit model; it does not construct determinant transport for arbitrary state maps or all perfect complexes. -/

import DAF.Comparison.Coefficients
import DAF.PerfectComplex.Comparison
import Mathlib.LinearAlgebra.Determinant

/-!
# Composition-preserving determinant theories

A determinant theory is separate data over a selected perfect-complex model
and a selected coefficient context.  It can transport determinant lines only
along the model's supported isomorphisms and certified quasi-isomorphisms.
Nothing here assigns determinant transport to an arbitrary state map.

The concrete `FiniteFreeRankOne` model below is deliberately small: it models
the complex consisting of one rank-one finite free module in degree zero and
uses its linear automorphisms.  In rank one the top exterior power is the
module itself, so its determinant line is represented by the coefficient
carrier.  This witnesses that the abstract interface is nonempty without
claiming a determinant functor for all perfect complexes.
-/

namespace DAF.Determinant

open DAF.Comparison
open DAF.PerfectComplex

universe uObj uHom uIso uCoeff uLine

/--
A determinant-line transport theory for one supported perfect-complex model
over one coefficient context.
-/
structure Theory
    (M : PerfectComplex.Model.{uObj, uHom, uIso})
    (R : CoefficientContext.{uCoeff}) where
  Line : M.Object → Type uLine

  lineEquiv :
    {C D : M.Object} → M.Iso C D → Line C ≃ Line D
  lineEquiv_refl :
    ∀ (C : M.Object),
      lineEquiv (M.isoRefl C) = Equiv.refl (Line C)
  lineEquiv_trans :
    ∀ {C D E : M.Object} (e : M.Iso C D) (f : M.Iso D E),
      lineEquiv (M.isoTrans e f) =
        (lineEquiv e).trans (lineEquiv f)

  quasiIsoEquiv :
    {C D : M.Object} →
      CertifiedQuasiIso M C D → Line C ≃ Line D
  quasiIsoEquiv_id :
    ∀ (C : M.Object),
      quasiIsoEquiv (CertifiedQuasiIso.id M C) =
        Equiv.refl (Line C)
  quasiIsoEquiv_comp :
    ∀ {C D E : M.Object}
      (f : CertifiedQuasiIso M C D)
      (g : CertifiedQuasiIso M D E),
      quasiIsoEquiv (f.comp g) =
        (quasiIsoEquiv f).trans (quasiIsoEquiv g)

namespace Theory

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : CoefficientContext.{uCoeff}}
    (D : Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)

@[simp]
theorem lineEquiv_refl_apply
    (C : M.Object)
    (x : D.Line C) :
    D.lineEquiv (M.isoRefl C) x = x := by
  rw [D.lineEquiv_refl]
  rfl

@[simp]
theorem quasiIsoEquiv_id_apply
    (C : M.Object)
    (x : D.Line C) :
    D.quasiIsoEquiv (CertifiedQuasiIso.id M C) x = x := by
  rw [D.quasiIsoEquiv_id]
  rfl

end Theory

end DAF.Determinant
