# Complete source: GRWTSK.Algebra.KTheory.FormalKKEquivalences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32da59672cf044de37c06a724035625ce5536b21` · SHA-256 `c4cda1397805243a5a368d77c5db11e2cbac7ea869e6c96d077a3d05fc6e7a81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.KTheory.FormalKK

namespace GRWTSK.Algebra.KTheory.FormalKK

universe u v w

namespace KKEquivalence

variable {Obj : Type u}
variable {T : BivariantTheory Obj}
variable {A B C : Obj}

/-- Formal bivariant equivalences are determined by their forward and backward classes. -/
@[ext]
theorem ext (E F : KKEquivalence T A B)
    (hforward : E.forward = F.forward)
    (hbackward : E.backward = F.backward) : E = F := by
  cases E
  cases F
  cases hforward
  cases hbackward
  rfl

/-- The identity correspondence is a formal bivariant equivalence. -/
def refl (T : BivariantTheory Obj) (A : Obj) : KKEquivalence T A A where
  forward := T.identity A
  backward := T.identity A
  forward_backward := T.identity_product (T.identity A)
  backward_forward := T.identity_product (T.identity A)

/-- Reverse a two-sided bivariant equivalence. -/
def symm (E : KKEquivalence T A B) : KKEquivalence T B A where
  forward := E.backward
  backward := E.forward
  forward_backward := E.backward_forward
  backward_forward := E.forward_backward

/-- Compose two genuine bivariant equivalences through their exact middle object. -/
def trans (E : KKEquivalence T A B) (F : KKEquivalence T B C) :
    KKEquivalence T A C where
  forward := T.product E.forward F.forward
  backward := T.product F.backward E.backward
  forward_backward := by
    calc
      T.product (T.product E.forward F.forward)
          (T.product F.backward E.backward) =
          T.product E.forward
            (T.product F.forward (T.product F.backward E.backward)) := by
              rw [T.product_assoc]
      _ = T.product E.forward
            (T.product (T.product F.forward F.backward) E.backward) := by
              exact congrArg (T.product E.forward)
                (T.product_assoc F.forward F.backward E.backward).symm
      _ = T.product E.forward
            (T.product (T.identity B) E.backward) := by
              rw [F.forward_backward]
      _ = T.product E.forward E.backward := by
              rw [T.identity_product]
      _ = T.identity A := E.forward_backward
  backward_forward := by
    calc
      T.product (T.product F.backward E.backward)
          (T.product E.forward F.forward) =
          T.product F.backward
            (T.product E.backward (T.product E.forward F.forward)) := by
              rw [T.product_assoc]
      _ = T.product F.backward
            (T.product (T.product E.backward E.forward) F.forward) := by
              exact congrArg (T.product F.backward)
                (T.product_assoc E.backward E.forward F.forward).symm
      _ = T.product F.backward
            (T.product (T.identity B) F.forward) := by
              rw [E.backward_forward]
      _ = T.product F.backward F.forward := by
              rw [T.identity_product]
      _ = T.identity C := F.backward_forward

variable {K : Obj → Type w}

/-- The invariant equivalence induced by a composite bivariant equivalence acts by the
composite invariant maps. -/
theorem actionEquiv_trans_apply
    (E : KKEquivalence T A B) (F : KKEquivalence T B C)
    (ρ : BivariantAction T K) (x : K A) :
    actionEquiv (trans E F) ρ x =
      actionEquiv F ρ (actionEquiv E ρ x) := by
  exact ρ.act_product E.forward F.forward x

end KKEquivalence

namespace ProductPath

variable {Obj : Type u} {T : BivariantTheory Obj}
variable {K : Obj → Type w}

/-- Act on an invariant by the correspondence evaluated from a typed product path. -/
def act (ρ : BivariantAction T K) {A B : Obj}
    (p : ProductPath T A B) : K A → K B :=
  fun x => ρ.act (evaluate p) x

/-- Appending bivariant paths acts by composition on every admitted invariant. -/
theorem act_append (ρ : BivariantAction T K)
    {A B C : Obj} (p : ProductPath T A B) (q : ProductPath T B C)
    (x : K A) :
    act ρ (append p q) x = act ρ q (act ρ p x) := by
  simp only [act, evaluate_append]
  exact ρ.act_product (evaluate p) (evaluate q) x

end ProductPath

end GRWTSK.Algebra.KTheory.FormalKK
```
