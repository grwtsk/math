# Complete source: GRWTSK.Analysis.Operator.UnboundedPortAnalytic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `909e3f7520f37d7c5742ec7db796b7a49c4ef31c` · SHA-256 `54c3cb8db6eb973dd9ed041afbfa64013949d63cffba7521ee71fa28a9273066`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Algebra.Module.Equiv
import GRWTSK.Analysis.Operator.UnboundedPortEquivalence

namespace GRWTSK.Analysis.Operator.UnboundedPort

universe u v w

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {E : Type v} {F : Type w}
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable [NormedAddCommGroup F] [NormedSpace 𝕜 F]

/-- Continuous framed equivalence of exact unbounded-operator domains. -/
structure ContinuousFramedEquivalence
    (A : UnboundedOperator 𝕜 E) (B : UnboundedOperator 𝕜 F) where
  frame : E ≃L[𝕜] F
  frame_maps_domain : ∀ x : A.domain, frame x ∈ B.domain
  symm_maps_domain : ∀ y : B.domain, frame.symm y ∈ A.domain
  intertwines :
    (Port.mk frame.toLinearEquiv.toLinearMap frame_maps_domain).Intertwines

namespace ContinuousFramedEquivalence

variable {A : UnboundedOperator 𝕜 E}
variable {B : UnboundedOperator 𝕜 F}

/-- Forget continuity while retaining the exact domain and operator equations. -/
def toAlgebraic (P : ContinuousFramedEquivalence A B) :
    FramedEquivalence A B where
  frame := P.frame.toLinearEquiv
  frame_maps_domain := P.frame_maps_domain
  symm_maps_domain := P.symm_maps_domain
  intertwines := P.intertwines

/-- Inverse continuous framed equivalence. -/
def symm (P : ContinuousFramedEquivalence A B) :
    ContinuousFramedEquivalence B A where
  frame := P.frame.symm
  frame_maps_domain := P.symm_maps_domain
  symm_maps_domain := P.frame_maps_domain
  intertwines := P.toAlgebraic.symm.intertwines

/-- The target domain is exactly the image of the source domain. -/
theorem image_domain (P : ContinuousFramedEquivalence A B) :
    P.frame '' (A.domain : Set E) = (B.domain : Set F) := by
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact P.frame_maps_domain ⟨x, hx⟩
  · intro hy
    refine ⟨P.frame.symm y, P.symm_maps_domain ⟨y, hy⟩, ?_⟩
    exact P.frame.apply_symm_apply y

/-- A dense source domain transports to a dense target domain. -/
theorem dense_domain
    (P : ContinuousFramedEquivalence A B)
    (hA : Dense (A.domain : Set E)) :
    Dense (B.domain : Set F) := by
  rw [← P.image_domain]
  apply dense_iff_closure_eq.mpr
  rw [← P.frame.image_closure, hA.closure_eq]
  simp

/-- Density of the two exact domains is equivalent under a continuous frame. -/
theorem dense_domain_iff (P : ContinuousFramedEquivalence A B) :
    Dense (A.domain : Set E) ↔ Dense (B.domain : Set F) := by
  constructor
  · exact P.dense_domain
  · exact P.symm.dense_domain

/-- Product continuous linear equivalence acting on operator graphs. -/
def pairFrame (P : ContinuousFramedEquivalence A B) :
    (E × E) ≃L[𝕜] (F × F) :=
  P.frame.prodCongr P.frame

/-- A continuous frame transports the exact graph in both coordinates. -/
theorem image_graphSet (P : ContinuousFramedEquivalence A B) :
    P.pairFrame '' graphSet A = graphSet B := by
  ext q
  constructor
  · rintro ⟨p, ⟨x, rfl⟩, rfl⟩
    refine ⟨P.toAlgebraic.domainEquiv x, ?_⟩
    apply Prod.ext
    · rfl
    · exact P.toAlgebraic.intertwines_apply x
  · rintro ⟨y, rfl⟩
    let x : A.domain := P.toAlgebraic.domainEquiv.symm y
    have hy : P.toAlgebraic.domainEquiv x = y :=
      P.toAlgebraic.domainEquiv.apply_symm_apply y
    refine ⟨(x.1, A.apply x), ⟨x, rfl⟩, ?_⟩
    apply Prod.ext
    · exact congrArg Subtype.val hy
    · change P.toAlgebraic.frame (A.apply x) = B.apply y
      simpa only [hy] using P.toAlgebraic.intertwines_apply x

/-- Closed-graph status is equivalent under a continuous framed operator equivalence. -/
theorem closed_graph_iff (P : ContinuousFramedEquivalence A B) :
    IsClosed (graphSet A) ↔ IsClosed (graphSet B) := by
  rw [← P.image_graphSet]
  exact P.pairFrame.isClosed_image.symm

/-- Analytic domain profile for an algebraic unbounded operator. -/
structure AnalyticProfile (A : UnboundedOperator 𝕜 E) : Prop where
  denseDomain : Dense (A.domain : Set E)
  closedGraph : IsClosed (graphSet A)

/-- Continuous framed equivalence transports density and closedness together. -/
theorem transportProfile
    (P : ContinuousFramedEquivalence A B)
    (hA : AnalyticProfile A) : AnalyticProfile B where
  denseDomain := P.dense_domain hA.denseDomain
  closedGraph := P.closed_graph_iff.mp hA.closedGraph

end ContinuousFramedEquivalence

end GRWTSK.Analysis.Operator.UnboundedPort
```
