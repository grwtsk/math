/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeSymmetry
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The canonical rectangle edge obstruction as an explicit witness

The maintained finite-height Riemann-hypothesis path has reached one exact
analytic certificate. At a fixed stage `N`, the missing object is not an
unspecified assertion of positivity or regularity. It is a half-unit rectangle
edge report whose induced rational count interval isolates one natural number.

This file names that object `CanonicalRectangleEdgeWitness N`. A witness stores:

* the isolated natural count;
* a complete bottom-edge real enclosure on `[0,1]`;
* right- and left-edge real enclosures on `[0,1/2]`, extended by the proved
  conjugation symmetry;
* every complex and real-part interval-integrability premise; and
* the successful exact count-isolation Boolean for the resulting semantic
  rectangle-edge enclosure.

Several major open conjectural programs meet this boundary, but none is imported
as a theorem here.

* Lindelof and the Keating--Snaith/shifted-moment conjectures concern the size
  distribution of zeta. They do not by themselves give lower separation from
  zero or a deterministic rational enclosure for `zeta'/zeta` on this contour.
* Montgomery pair correlation, GUE spacing and simplicity conjectures concern
  zero spacing and collisions. They are statistical or asymptotic and do not
  identify this fixed contour's distance from every zero.
* Gonek--Hejhal negative-moment conjectures for `zeta'` at zeros measure the
  frequency of reciprocal instability near simple zeros. Average moment data do
  not supply the three universal pointwise bounds stored below.
* The Conrey--Farmer--Zirnbauer ratios conjecture predicts averaged ratios and
  logarithmic-derivative statistics. Averaged identities do not imply a
  source-aligned enclosure at one selected height.
* The de Bruijn--Newman equality `Lambda = 0` concerns collision stability under
  heat flow. It supplies no quantitative transfer to these three edge densities
  without an additional comparison theorem.
* Hilbert--Polya and Berry--Keating spectral proposals would become relevant
  only after an exact operator, domain, self-adjointness theorem, zeta-zero
  correspondence and effective resolvent bounds are supplied. Spectral analogy
  alone is not an edge certificate.

Accordingly, the witness below is the lawful meeting point: any conjectural
route must construct this exact data, or prove a separate theorem that bypasses
it and enters a named downstream consumer. No conjecture label, numerical
sample, average estimate or asymptotic law is accepted in place of the witness.

References for the surrounding conjectural programs include Montgomery's pair
correlation program; Keating--Snaith on zeta moments; Gonek and Hejhal on
negative derivative moments; Conrey--Farmer--Zirnbauer, arXiv:0711.0718;
Rodgers--Tao, arXiv:1801.05914; and Berry--Keating, SIAM Review 41 (1999).
These references are provenance only and are outside the formal dependency path.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleEdgeObstructionWitness

open AdmissibleRectangles
open PositiveHeightCountDeficit
open CanonicalPositiveTuringBridge
open RationalRectangleRealEdgeEnclosure
open CanonicalRectangleUnitEdgeSymmetry
open GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight

noncomputable section

/-- The exact deterministic analytic certificate currently missing from the
canonical rectangle route.

The witness does not assert global RH. Its `accepted` field says only that this
particular source-correct half-unit report isolates `count` after the exact
pole, trivial-zero and two-height-sign correction. -/
structure CanonicalRectangleEdgeWitness (N : ℕ) where
  count : ℕ
  report : HalfUnitRectangleEdgeBounds N
  accepted : report.toRealRectangleEdgeEnclosure.accepts count = true

namespace CanonicalRectangleEdgeWitness

/-- Every obstruction witness fixes the maintained positive-height count at the
selected noncomputable contour height. -/
theorem exact_positive_count {N : ℕ}
    (witness : CanonicalRectangleEdgeWitness N) :
    positiveHeightCount (contourHeight N) = witness.count :=
  witness.report.exact_positive_count_of_accepts
    witness.count witness.accepted

/-- Two valid witnesses at the same stage cannot isolate different counts. -/
theorem count_unique {N : ℕ}
    (left right : CanonicalRectangleEdgeWitness N) :
    left.count = right.count := by
  rw [← left.exact_positive_count, ← right.exact_positive_count]

variable {Index Source Jet Transport Residual : Type*} [Fintype Index]
variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}

/-- The witness enters the existing bounded-RH consumer only after a separately
source-aligned critical-line family supplies a strict deficit below two omitted
positive-height multiplicity units. -/
theorem rhThrough
    {N : ℕ}
    (witness : CanonicalRectangleEdgeWitness N)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (strict : witness.count < family.certifiedCount + 2) :
    RHThrough N :=
  HalfUnitRectangleEdgeBounds.rhThrough_of_half_unit_edge_count_margin
    N alignment witness.report witness.count witness.accepted strict

end CanonicalRectangleEdgeWitness

/-- Proposition recording existence of the exact isolating edge certificate at
stage `N`. No source theorem presently constructs an inhabitant. -/
def HasCanonicalRectangleEdgeWitness (N : ℕ) : Prop :=
  Nonempty (CanonicalRectangleEdgeWitness N)

/-- Existence of the witness supplies some exact bounded positive-height count,
but does not by itself locate those zeros on the critical line. -/
theorem exists_exact_positive_count {N : ℕ}
    (existsWitness : HasCanonicalRectangleEdgeWitness N) :
    ∃ count : ℕ, positiveHeightCount (contourHeight N) = count := by
  rcases existsWitness with ⟨witness⟩
  exact ⟨witness.count, witness.exact_positive_count⟩

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleEdgeObstructionWitness
