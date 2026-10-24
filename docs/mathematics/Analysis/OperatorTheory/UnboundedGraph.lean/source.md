# Complete source: GRWTSK.Analysis.Operator.UnboundedGraph

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af02f0a037a14e7c444e52debe14202d4e0428eb` · SHA-256 `b5d0f1dde50a2a1f16b3eb5a1c9df79dc1875e7b3254be971cd784016e453bad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.UnboundedPort

namespace GRWTSK.Analysis.Operator.UnboundedPort

universe u v w x

namespace UnboundedOperator

variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]

/-- The graph of an algebraic unbounded operator, retaining the exact domain witness. -/
def graph (A : UnboundedOperator R E) : Set (E × E) :=
  { z | ∃ x : A.domain, z = ((x : E), A.apply x) }

/-- Every domain vector determines a point of the operator graph. -/
theorem mem_graph (A : UnboundedOperator R E) (x : A.domain) :
    ((x : E), A.apply x) ∈ A.graph :=
  ⟨x, rfl⟩

end UnboundedOperator

namespace Port

variable {R : Type u} [Ring R]
variable {E : Type v} {F : Type w} {G : Type x}
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]
variable [AddCommGroup G] [Module R G]
variable {A : UnboundedOperator R E}
variable {B : UnboundedOperator R F}
variable {C : UnboundedOperator R G}

/-- The ambient product map induced on operator graphs by a port. -/
def graphMap (P : Port A B) : (E × E) →ₗ[R] (F × F) where
  toFun z := (P.map z.1, P.map z.2)
  map_add' z w := by
    ext <;> simp
  map_smul' r z := by
    ext <;> simp

@[simp]
theorem graphMap_apply (P : Port A B) (z : E × E) :
    P.graphMap z = (P.map z.1, P.map z.2) := rfl

/-- Graph maps compose through the exact middle ambient space. -/
theorem graphMap_comp (Q : Port B C) (P : Port A B) :
    (comp Q P).graphMap = Q.graphMap.comp P.graphMap := by
  ext z <;> rfl

/-- The identity port induces the identity graph map. -/
theorem graphMap_identity (A : UnboundedOperator R E) :
    (identity A).graphMap = LinearMap.id := by
  ext z <;> rfl

/-- An exact domain-aware intertwiner sends the source operator graph into the target graph. -/
theorem maps_graph_of_intertwines
    (P : Port A B) (hP : P.Intertwines)
    {z : E × E} (hz : z ∈ A.graph) :
    P.graphMap z ∈ B.graph := by
  rcases hz with ⟨x, rfl⟩
  refine ⟨P.domainMap x, ?_⟩
  apply Prod.ext
  · rfl
  · unfold Intertwines at hP
    have hx := congrArg (fun L : A.domain →ₗ[R] F => L x) hP
    simpa [UnboundedOperator.apply, LinearMap.comp_apply] using hx

namespace ExactLift

/-- A proof-carrying exact lift maps every source graph point to a target graph point. -/
theorem maps_graph
    (L : ExactLift A B) {z : E × E} (hz : z ∈ A.graph) :
    L.port.graphMap z ∈ B.graph :=
  maps_graph_of_intertwines L.port L.isExact hz

end ExactLift

end Port

end GRWTSK.Analysis.Operator.UnboundedPort
```
