import DAF.PerfectComplex.Core

/-!
# Composable chains of certified quasi-isomorphisms

The endpoints of `QuasiIsoChain` occur in its type, so adjacent arrows cannot
be mismatched.  A chain contains the certificates supplied by the selected
perfect-complex model; it does not infer chain-level data from state maps.
-/

namespace DAF.PerfectComplex

universe uObj uHom uIso

variable {M : Model.{uObj, uHom, uIso}}

/-- A typed finite chain of certified quasi-isomorphisms. -/
inductive QuasiIsoChain (M : Model) : M.Object → M.Object → Type _
  | nil (C : M.Object) : QuasiIsoChain M C C
  | cons {C D E : M.Object} :
      CertifiedQuasiIso M C D →
      QuasiIsoChain M D E →
      QuasiIsoChain M C E

namespace QuasiIsoChain

variable {B C D E : M.Object}

/-- The certified composite of every arrow in a typed chain. -/
def composite {C D : M.Object} :
    QuasiIsoChain M C D → CertifiedQuasiIso M C D
  | .nil C => CertifiedQuasiIso.id M C
  | .cons f rest => f.comp (composite rest)

@[simp]
theorem composite_nil (C : M.Object) :
    (QuasiIsoChain.nil C).composite = CertifiedQuasiIso.id M C :=
  rfl

@[simp]
theorem composite_cons
    (f : CertifiedQuasiIso M B C)
    (rest : QuasiIsoChain M C D) :
    (QuasiIsoChain.cons f rest).composite =
      f.comp rest.composite :=
  rfl

/-- Append two composable certified chains. -/
def append {B C D : M.Object} :
    QuasiIsoChain M B C →
      QuasiIsoChain M C D →
      QuasiIsoChain M B D
  | .nil _, ys => ys
  | .cons f xs, ys => .cons f (append xs ys)

@[simp]
theorem nil_append (ys : QuasiIsoChain M C D) :
    (QuasiIsoChain.nil C).append ys = ys :=
  rfl

@[simp]
theorem cons_append
    (f : CertifiedQuasiIso M B C)
    (xs : QuasiIsoChain M C D)
    (ys : QuasiIsoChain M D E) :
    (QuasiIsoChain.cons f xs).append ys =
      QuasiIsoChain.cons f (xs.append ys) :=
  rfl

theorem composite_append
    (xs : QuasiIsoChain M B C)
    (ys : QuasiIsoChain M C D) :
    (xs.append ys).composite = xs.composite.comp ys.composite := by
  induction xs with
  | nil => simp
  | cons f rest ih =>
      simp only [append, composite_cons, ih]
      exact (CertifiedQuasiIso.comp_assoc f rest.composite ys.composite).symm

end QuasiIsoChain

end DAF.PerfectComplex
