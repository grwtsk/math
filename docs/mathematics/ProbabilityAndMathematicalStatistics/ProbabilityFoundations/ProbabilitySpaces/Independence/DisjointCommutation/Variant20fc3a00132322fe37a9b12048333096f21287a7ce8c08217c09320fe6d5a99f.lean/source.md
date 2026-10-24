# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.DisjointCommutation.Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d45d62ae6b2df5d11d53027dcbb1857423189dc` · SHA-256 `a97ff5878496c431015a7e60f1689b1bc585ad04111a3212cd780e9123f597f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.DisjointCoherenceStrictness.Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.DisjointCoherenceStrictness.Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5","mathematical_subject":"Probability.Independence","original_sha256":"90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/DisjointCommutation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.SmoothFramedSurgery.CollaredGluing

/-!
# Conditional transport and coherent commutation of disjoint surgeries

Pairwise disjoint embeddings in one manifold do not definitionally remain
embeddings after the ambient type changes under the first surgery.  The
missing operation is explicit transport of the surviving site.  This module
records that operation and a coherent adjacent-swap map.  For finite families,
an execution is a typed chain of manifolds in which every successor is
definitionally identified with surgery on a transported copy of the selected
site.  Thus an output cannot be supplied independently of the execution it is
supposed to represent.

These records are conditional smooth capabilities.  In particular,
`FiniteDisjointFramedFamily.pairwise_disjoint` alone does not construct either
record.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.DisjointCoherenceStrictness.Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5

namespace Surface.SmoothFramedSurgery

universe uD uI

/--
Strictness of finite-family coherence.  The present interface records
propositional equality of bundled comparison maps; it does not claim that
Coxeter reductions are definitional reductions in a concrete smooth model.
-/
inductive DisjointCoherenceStrictness
  | definitional
  | propositional
  deriving DecidableEq

/--
Transport of one framed site through surgery at a disjoint site, together with
the coherent two-site interchange diffeomorphism.
-/
structure DisjointTransportCapability
    (T : SmoothFramedSurgeryTheory)
    (G : RelativeBoundaryDiffeomorphismTheory T) where
  transportAfter : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M),
    T.Disjoint first surviving →
      T.FramedEmbedding p' q' (T.surgery first)
  /-- Independent fixed-exterior construction of the surviving site. -/
  transportByFixedExterior : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M)
      (h : T.Disjoint first surviving),
    T.FramedEmbedding p' q' (T.surgery first)
  /-- Naturality is an equality with fixed-exterior transport, not an opaque predicate. -/
  transport_natural : ∀ {p q p' q' M}
      (first : T.FramedEmbedding p q M)
      (surviving : T.FramedEmbedding p' q' M)
      (h : T.Disjoint first surviving),
    transportAfter first surviving h = transportByFixedExterior first surviving h
  swap : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.Hom
      (T.surgery (transportAfter left right hleft))
      (T.surgery (transportAfter right left hright))
  swapExterior : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.CommonExterior
      (T.surgery (transportAfter left right hleft))
      (T.surgery (transportAfter right left hright))
  swap_selects_exterior : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    G.selectedExterior (swap left right hleft hright) =
      swapExterior left right hleft hright
  swap_reverse : ∀ {p q p' q' M}
      (left : T.FramedEmbedding p q M)
      (right : T.FramedEmbedding p' q' M)
      (hleft : T.Disjoint left right)
      (hright : T.Disjoint right left),
    swap right left hright hleft = G.symm (swap left right hleft hright)

namespace DisjointTransportCapability

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    (D : DisjointTransportCapability T G)

/-- The two possible orders of two mutually disjoint surgeries are relatively diffeomorphic. -/
theorem two_site_commutes
    {p q p' q' : Nat} {M : T.Manifold}
    (left : T.FramedEmbedding p q M)
    (right : T.FramedEmbedding p' q' M)
    (hleft : T.Disjoint left right)
    (hright : T.Disjoint right left) :
    T.RelBoundaryDiffeomorphic
      (T.surgery (D.transportAfter left right hleft))
      (T.surgery (D.transportAfter right left hright)) :=
  G.sound (D.swap left right hleft hright)

/-- The selected transported copy satisfies the concrete model's naturality predicate. -/
theorem transported_site_natural
    {p q p' q' : Nat} {M : T.Manifold}
    (first : T.FramedEmbedding p q M)
    (surviving : T.FramedEmbedding p' q' M)
    (h : T.Disjoint first surviving) :
    D.transportAfter first surviving h =
      D.transportByFixedExterior first surviving h :=
  D.transport_natural first surviving h

/-- The interchange map is pointwise the identity on its selected common exterior. -/
theorem swap_fixed_on_exterior
    {p q p' q' : Nat} {M : T.Manifold}
    (left : T.FramedEmbedding p q M)
    (right : T.FramedEmbedding p' q' M)
    (hleft : T.Disjoint left right)
    (hright : T.Disjoint right left)
    (x : G.ExteriorPoint
      (G.selectedExterior (D.swap left right hleft hright))) :
    G.restrictExterior (D.swap left right hleft hright) x = x :=
  G.restrictExterior_eq_id _ _

/-- Swapping the two orders and swapping back gives the identity bundled map. -/
@[simp]
theorem swap_then_swap_back
    {p q p' q' : Nat} {M : T.Manifold}
    (left : T.FramedEmbedding p q M)
    (right : T.FramedEmbedding p' q' M)
    (hleft : T.Disjoint left right)
    (hright : T.Disjoint right left) :
    G.trans (D.swap left right hleft hright)
      (D.swap right left hright hleft) =
      G.refl (T.surgery (D.transportAfter left right hleft)) := by
  calc
    G.trans (D.swap left right hleft hright)
        (D.swap right left hright hleft) =
      G.trans (D.swap left right hleft hright)
        (G.symm (D.swap left right hleft hright)) := by
          rw [D.swap_reverse left right hleft hright]
    _ = G.refl (T.surgery (D.transportAfter left right hleft)) :=
      G.trans_symm (D.swap left right hleft hright)

end DisjointTransportCapability

/-- Data of one adjacent transposition, including its two concrete indices. -/
structure AdjacentSwapWitness
    {count : Nat}
    (left right : Equiv.Perm (Fin count)) where
  lower : Fin count
  upper : Fin count
  consecutive : upper.val = lower.val + 1
  right_eq : right = left * Equiv.swap lower upper

/-- Two orders differ by a witnessed adjacent transposition on the right. -/
def AdjacentOrder
    {count : Nat}
    (left right : Equiv.Perm (Fin count)) : Prop :=
  Nonempty (AdjacentSwapWitness left right)

namespace AdjacentSwapWitness

/-- The same transposition witnesses the reverse adjacent move. -/
def reverse
    {count : Nat} {left right : Equiv.Perm (Fin count)}
    (step : AdjacentSwapWitness left right) :
    AdjacentSwapWitness right left where
  lower := step.lower
  upper := step.upper
  consecutive := step.consecutive
  right_eq := by
    let swap := Equiv.swap step.lower step.upper
    change left = right * swap
    calc
      left = (left * swap) * swap := by simp [swap, mul_assoc]
      _ = right * swap := congrArg (fun order ↦ order * swap) step.right_eq.symm

end AdjacentSwapWitness

/--
A concrete Coxeter square for swaps at separated adjacent index pairs.
The index equations ensure the lower and upper routes perform the same two
generators in opposite orders; `separated` encodes distance greater than one.
-/
structure FarAdjacentSwapSquare
    {count : Nat}
    (start finish : Equiv.Perm (Fin count)) where
  afterFirst : Equiv.Perm (Fin count)
  afterSecond : Equiv.Perm (Fin count)
  first : AdjacentSwapWitness start afterFirst
  secondAfterFirst : AdjacentSwapWitness afterFirst finish
  second : AdjacentSwapWitness start afterSecond
  firstAfterSecond : AdjacentSwapWitness afterSecond finish
  first_index_agrees : first.lower = firstAfterSecond.lower
  second_index_agrees : second.lower = secondAfterFirst.lower
  separated : first.upper.val < second.lower.val ∨ second.upper.val < first.lower.val

/--
A concrete Coxeter braid hexagon.  The upper route has generator word
`i,(i+1),i`; the lower route has `(i+1),i,(i+1)`.
-/
structure AdjacentBraidHexagon
    {count : Nat}
    (start finish : Equiv.Perm (Fin count)) where
  upperOne : Equiv.Perm (Fin count)
  upperTwo : Equiv.Perm (Fin count)
  lowerOne : Equiv.Perm (Fin count)
  lowerTwo : Equiv.Perm (Fin count)
  upperLeft : AdjacentSwapWitness start upperOne
  upperMiddle : AdjacentSwapWitness upperOne upperTwo
  upperRight : AdjacentSwapWitness upperTwo finish
  lowerLeft : AdjacentSwapWitness start lowerOne
  lowerMiddle : AdjacentSwapWitness lowerOne lowerTwo
  lowerRight : AdjacentSwapWitness lowerTwo finish
  adjacent_indices : lowerLeft.lower.val = upperLeft.lower.val + 1
  upper_word_last : upperRight.lower = upperLeft.lower
  lower_word_middle : lowerMiddle.lower = upperLeft.lower
  upper_word_middle : upperMiddle.lower = lowerLeft.lower
  lower_word_last : lowerRight.lower = lowerLeft.lower

/--
The model-specific meaning of a copy of an original site after earlier
surgeries.  This relation makes transport observable without identifying
embeddings that live in different manifold types.
-/
structure DisjointExecutionSemantics
    (T : SmoothFramedSurgeryTheory)
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count) where
  TransportedCopy : (i : Fin count) → {X : T.Manifold} →
    T.FramedEmbedding (family.p i) (family.q i) M →
      T.FramedEmbedding (family.p i) (family.q i) X → Prop
  source_copy : ∀ i,
    TransportedCopy i (family.embedding i) (family.embedding i)

/-- Index of the state immediately before an execution step. -/
private def executionStateIndex
    {count : Nat} (step : Fin count) : Fin (count + 1) :=
  ⟨step.val, Nat.lt_trans step.isLt (Nat.lt_succ_self count)⟩

/-- Index of the state immediately after an execution step. -/
private def executionNextStateIndex
    {count : Nat} (step : Fin count) : Fin (count + 1) :=
  ⟨step.val + 1, Nat.succ_lt_succ step.isLt⟩

/--
A typed sequential execution of one order.

`embeddingAt step` lives in the manifold produced by the preceding steps,
represents the selected original site according to `semantics`, and the next
state is exactly its surgery.  The last state is consequently an execution
result, not arbitrary manifold-valued metadata.
-/
structure OrderedDisjointExecution
    {T : SmoothFramedSurgeryTheory}
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count)
    (semantics : DisjointExecutionSemantics T family)
    (order : Equiv.Perm (Fin count)) where
  manifoldAt : Fin (count + 1) → T.Manifold
  initial_eq : manifoldAt ⟨0, Nat.zero_lt_succ count⟩ = M
  embeddingAt : (step : Fin count) →
    T.FramedEmbedding
      (family.p (order step)) (family.q (order step))
      (manifoldAt (executionStateIndex step))
  transported_from_source : ∀ step,
    semantics.TransportedCopy (order step)
      (family.embedding (order step)) (embeddingAt step)
  next_eq : ∀ step,
    manifoldAt (executionNextStateIndex step) = T.surgery (embeddingAt step)

namespace OrderedDisjointExecution

/-- The final state of a typed sequential execution. -/
def result
    {T : SmoothFramedSurgeryTheory}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}
    {semantics : DisjointExecutionSemantics T family}
    {order : Equiv.Perm (Fin count)}
    (execution : OrderedDisjointExecution family semantics order) : T.Manifold :=
  execution.manifoldAt ⟨count, Nat.lt_succ_self count⟩

end OrderedDisjointExecution

/-- A finite chain of adjacent transpositions between two execution orders. -/
inductive AdjacentSwapPath {count : Nat} :
    Equiv.Perm (Fin count) → Equiv.Perm (Fin count) → Type
  | nil (order) : AdjacentSwapPath order order
  | cons {left middle right}
      (head : AdjacentOrder left middle)
      (tail : AdjacentSwapPath middle right) :
      AdjacentSwapPath left right

namespace AdjacentSwapPath

/-- Compose the primary adjacent-swap maps along a finite swap path. -/
noncomputable def toHom
    {T : SmoothFramedSurgeryTheory}
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {count : Nat}
    {result : Equiv.Perm (Fin count) → T.Manifold}
    (adjacent : ∀ left right, AdjacentOrder left right →
      G.Hom (result left) (result right))
    {left right : Equiv.Perm (Fin count)}
    (path : AdjacentSwapPath left right) :
    G.Hom (result left) (result right) := by
  induction path with
  | nil order => exact G.refl (result order)
  | @cons left middle right head tail ih =>
      exact G.trans (adjacent left middle head) ih

end AdjacentSwapPath

/--
A coherent execution of every ordering of a finite disjoint family.

The explicit two-site transport must satisfy the same `TransportedCopy`
semantics used by every typed execution.  Adjacent swaps receive primary
comparison maps, all comparisons agree with those generators, and the cocycle
law supplies the required higher path coherence.  A concrete
collar-and-transport construction must supply the complete record.
-/
structure CoherentDisjointFamilyExecution
    {T : SmoothFramedSurgeryTheory}
    (G : RelativeBoundaryDiffeomorphismTheory T)
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count) where
  coherenceStrictness : DisjointCoherenceStrictness
  coherence_is_propositional : coherenceStrictness = .propositional
  semantics : DisjointExecutionSemantics T family
  transport : DisjointTransportCapability T G
  transportAfter_represents : ∀ {i j : Fin count} (hij : i ≠ j),
    semantics.TransportedCopy j (family.embedding j)
      (transport.transportAfter (family.embedding i) (family.embedding j)
        (family.disjoint hij))
  execution : (order : Equiv.Perm (Fin count)) →
    OrderedDisjointExecution family semantics order
  comparison : ∀ left right,
    G.Hom (execution left).result (execution right).result
  adjacentComparison : ∀ left right,
    AdjacentOrder left right →
      G.Hom (execution left).result (execution right).result
  comparisonPath : ∀ left right, AdjacentSwapPath left right
  comparison_of_adjacent : ∀ left right (h : AdjacentOrder left right),
    comparison left right = adjacentComparison left right h
  comparison_generated : ∀ left right,
    comparison left right =
      (comparisonPath left right).toHom G adjacentComparison
  comparison_path_independent : ∀ left right
      (first second : AdjacentSwapPath left right),
    first.toHom G adjacentComparison = second.toHom G adjacentComparison
  comparison_refl : ∀ order,
    comparison order order = G.refl (execution order).result
  comparison_trans : ∀ left middle right,
    G.trans (comparison left middle) (comparison middle right) =
      comparison left right

namespace CoherentDisjointFamilyExecution

variable
    {T : SmoothFramedSurgeryTheory}
    {G : RelativeBoundaryDiffeomorphismTheory T}
    {M : T.Manifold} {count : Nat}
    {family : FiniteDisjointFramedFamily T M count}
    (E : CoherentDisjointFamilyExecution G family)

/-- The result is derived from the final state of the typed execution. -/
def result (order : Equiv.Perm (Fin count)) : T.Manifold :=
  (E.execution order).result

/-- The zeroth state of each execution is the original ambient manifold. -/
theorem execution_initial
    (order : Equiv.Perm (Fin count)) :
    (E.execution order).manifoldAt ⟨0, Nat.zero_lt_succ count⟩ = M :=
  (E.execution order).initial_eq

/-- Every successor state is surgery on the transported selected site. -/
theorem execution_step
    (order : Equiv.Perm (Fin count))
    (step : Fin count) :
    (E.execution order).manifoldAt (executionNextStateIndex step) =
      T.surgery ((E.execution order).embeddingAt step) :=
  (E.execution order).next_eq step

/-- The global comparison agrees with its supplied adjacent-swap generator. -/
theorem comparison_eq_adjacent
    (left right : Equiv.Perm (Fin count))
    (h : AdjacentOrder left right) :
    E.comparison left right = E.adjacentComparison left right h :=
  E.comparison_of_adjacent left right h

/-- Every global comparison is generated by a finite path of adjacent swaps. -/
theorem comparison_eq_swap_path
    (left right : Equiv.Perm (Fin count)) :
    E.comparison left right =
      (E.comparisonPath left right).toHom G E.adjacentComparison :=
  E.comparison_generated left right

/-- Any two adjacent-swap paths have the same bundled comparison map. -/
theorem swap_path_independent
    {left right : Equiv.Perm (Fin count)}
    (first second : AdjacentSwapPath left right) :
    first.toHom G E.adjacentComparison =
      second.toHom G E.adjacentComparison :=
  E.comparison_path_independent left right first second

/-- The supplied coherence is explicitly propositional. -/
theorem coherence_strictness :
    E.coherenceStrictness = .propositional :=
  E.coherence_is_propositional

/-- Every two execution orders have a bundled comparison map. -/
theorem ordered_results_commute
    (left right : Equiv.Perm (Fin count)) :
    T.RelBoundaryDiffeomorphic (E.result left) (E.result right) :=
  G.sound (E.comparison left right)

/-- Every coherent comparison is pointwise fixed on its selected exterior. -/
theorem comparison_fixed_on_exterior
    (left right : Equiv.Perm (Fin count))
    (x : G.ExteriorPoint (G.selectedExterior (E.comparison left right))) :
    G.restrictExterior (E.comparison left right) x = x :=
  G.restrictExterior_eq_id _ _

/-- Comparison through any intermediate order is independent of that choice. -/
theorem comparison_via
    (left middle right : Equiv.Perm (Fin count)) :
    G.trans (E.comparison left middle) (E.comparison middle right) =
      E.comparison left right :=
  E.comparison_trans left middle right

/-- The reverse coherent comparison is the inverse of the forward comparison. -/
theorem comparison_reverse
    (left right : Equiv.Perm (Fin count)) :
    E.comparison right left = G.symm (E.comparison left right) := by
  let f := E.comparison left right
  let g := E.comparison right left
  have hfg : G.trans f g = G.refl (E.execution left).result := by
    change G.trans (E.comparison left right) (E.comparison right left) = _
    rw [E.comparison_trans, E.comparison_refl]
  calc
    E.comparison right left =
        G.trans (G.refl (E.execution right).result)
          (E.comparison right left) :=
      (G.refl_trans _).symm
    _ = G.trans (G.trans (G.symm f) f) g := by
      rw [G.symm_trans]
    _ = G.trans (G.symm f) (G.trans f g) :=
      G.trans_assoc _ _ _
    _ = G.trans (G.symm f) (G.refl (E.execution left).result) := by rw [hfg]
    _ = G.symm f := G.trans_refl _
    _ = G.symm (E.comparison left right) := rfl

/--
The adjacent swap is an involution at the level of bundled comparisons.  Both
directions are supplied as adjacent generators; the conclusion follows from
the coherent groupoid comparison rather than from untyped permutation data.
-/
theorem adjacent_swap_involutive
    {left right : Equiv.Perm (Fin count)}
    (step : AdjacentSwapWitness left right) :
    G.trans (E.adjacentComparison left right ⟨step⟩)
      (E.adjacentComparison right left ⟨step.reverse⟩) =
      G.refl (E.execution left).result := by
  rw [← E.comparison_of_adjacent left right ⟨step⟩,
    ← E.comparison_of_adjacent right left ⟨step.reverse⟩,
    E.comparison_trans, E.comparison_refl]

/--
Far-supported adjacent swaps commute.  `FarSeparated` is the concrete
support-disjointness certificate; coherence identifies the two typed routes.
-/
theorem far_adjacent_swaps_commute
    {a d : Equiv.Perm (Fin count)}
    (square : FarAdjacentSwapSquare a d) :
    G.trans (E.adjacentComparison a square.afterFirst ⟨square.first⟩)
        (E.adjacentComparison square.afterFirst d ⟨square.secondAfterFirst⟩) =
      G.trans (E.adjacentComparison a square.afterSecond ⟨square.second⟩)
        (E.adjacentComparison square.afterSecond d ⟨square.firstAfterSecond⟩) := by
  rcases square.separated with _hfar | _hfar
  · let upper : AdjacentSwapPath a d :=
      .cons ⟨square.first⟩ (.cons ⟨square.secondAfterFirst⟩ (.nil d))
    let lower : AdjacentSwapPath a d :=
      .cons ⟨square.second⟩ (.cons ⟨square.firstAfterSecond⟩ (.nil d))
    have h := E.swap_path_independent upper lower
    simp only [upper, lower, AdjacentSwapPath.toHom] at h
    rw [G.trans_refl, G.trans_refl] at h
    exact h
  · let upper : AdjacentSwapPath a d :=
      .cons ⟨square.first⟩ (.cons ⟨square.secondAfterFirst⟩ (.nil d))
    let lower : AdjacentSwapPath a d :=
      .cons ⟨square.second⟩ (.cons ⟨square.firstAfterSecond⟩ (.nil d))
    have h := E.swap_path_independent upper lower
    simp only [upper, lower, AdjacentSwapPath.toHom] at h
    rw [G.trans_refl, G.trans_refl] at h
    exact h

/--
The two typed length-three routes in a Coxeter braid have the same map.  The
relation is propositional, matching `coherence_strictness`.
-/
theorem adjacent_swap_braid
    {a d : Equiv.Perm (Fin count)}
    (hexagon : AdjacentBraidHexagon a d) :
    G.trans (E.adjacentComparison a hexagon.upperOne ⟨hexagon.upperLeft⟩)
        (G.trans (E.adjacentComparison hexagon.upperOne hexagon.upperTwo
            ⟨hexagon.upperMiddle⟩)
          (E.adjacentComparison hexagon.upperTwo d ⟨hexagon.upperRight⟩)) =
      G.trans (E.adjacentComparison a hexagon.lowerOne ⟨hexagon.lowerLeft⟩)
        (G.trans (E.adjacentComparison hexagon.lowerOne hexagon.lowerTwo
            ⟨hexagon.lowerMiddle⟩)
          (E.adjacentComparison hexagon.lowerTwo d ⟨hexagon.lowerRight⟩)) := by
  let upper : AdjacentSwapPath a d :=
    .cons ⟨hexagon.upperLeft⟩
      (.cons ⟨hexagon.upperMiddle⟩
        (.cons ⟨hexagon.upperRight⟩ (.nil d)))
  let lower : AdjacentSwapPath a d :=
    .cons ⟨hexagon.lowerLeft⟩
      (.cons ⟨hexagon.lowerMiddle⟩
        (.cons ⟨hexagon.lowerRight⟩ (.nil d)))
  have h := E.swap_path_independent upper lower
  simp only [upper, lower, AdjacentSwapPath.toHom] at h
  rw [G.trans_refl, G.trans_refl] at h
  exact h

/--
Forget coherent maps to the older simultaneous-result certificate, choosing
the identity ordering as the common reference result.
-/
def toCommutationCertificate :
    DisjointFamilyCommutationCertificate T family :=
  { simultaneousResult := E.result 1
    sequentialResult := E.result
    sequential_rel_simultaneous := fun order =>
      G.sound (E.comparison order 1) }

/-- Any invariant respecting the bundled comparisons is independent of execution order. -/
theorem invariant_order_independent
    (left right : Equiv.Perm (Fin count))
    {Invariant : Type uI}
    (value : T.Manifold → Invariant)
    (respects : ∀ {X Y}, G.Hom X Y → value X = value Y) :
    value (E.result left) = value (E.result right) :=
  respects (E.comparison left right)

end CoherentDisjointFamilyExecution

end Surface.SmoothFramedSurgery
```
