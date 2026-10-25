# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5Certification.Variant4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6360a1ada095605c3d6fe1d5208763975a78c2ec` · SHA-256 `4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Positive atlas certification core

This module formalizes the certificate-relative compression interface used by the
positive atlas program. It deliberately does not assert the existence of a
minimal sufficient quotient for any particular mathematical system. Instead it
defines the exact structure that later atlas cells must construct and prove
minimal.

A structural Quine in this module reconstructs only certificate-relevant
structure. Verification authority is not represented by these definitions and
is not enlarged by them.

The state, observable index, observable value, compressed carrier, and competitor
carrier universes are independent. Minimality at an explicit competitor universe
is retained by `StructuralQuine`; no competitor universe is inferred as zero.
-/

namespace FormalResearch.PositiveAtlas

universe u v w a b

/-- A heterogeneous family of observables whose values constitute the admitted
certificate-relevant distinctions on a state space. The index type is an explicit
parameter so its universe remains independent of the observable-value universe. -/
structure CertificateFamily (State : Type u) (Index : Type v) where
  value : Index → Type w
  observe : (i : Index) → State → value i

namespace CertificateFamily

variable {State : Type u} {Index : Type v} (C : CertificateFamily.{u, v, w} State Index)

/-- Compatibility accessor for the now-explicit observable index type. -/
abbrev index (_C : CertificateFamily.{u, v, w} State Index) : Type v := Index

/-- Two states are certificate-equivalent when every admitted observable has the
same value on both states. -/
def Equivalent (x y : State) : Prop :=
  ∀ i, C.observe i x = C.observe i y

theorem equivalent_refl (x : State) : C.Equivalent x x := by
  intro i
  rfl

theorem equivalent_symm {x y : State} (h : C.Equivalent x y) :
    C.Equivalent y x := by
  intro i
  exact (h i).symm

theorem equivalent_trans {x y z : State} (hxy : C.Equivalent x y)
    (hyz : C.Equivalent y z) : C.Equivalent x z := by
  intro i
  exact (hxy i).trans (hyz i)

end CertificateFamily

/-- An exact sufficient representation factors every admitted observable through
one compressed carrier. No existence or minimality claim is built into this
structure. -/
structure SufficientRepresentation {State : Type u} {Index : Type v}
    (C : CertificateFamily.{u, v, w} State Index) where
  carrier : Type a
  compress : State → carrier
  recover : (i : Index) → carrier → C.value i
  recover_compress : ∀ i s, recover i (compress s) = C.observe i s

namespace SufficientRepresentation

variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}

/-- q factors through r when the compression carried by r still contains enough
information to reconstruct the compression carried by q. -/
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

/-- A sufficient representation is minimal when it factors through every other
exact sufficient representation whose carrier lies in the independent universe `b`.
The declaration is universe-polymorphic in `b`; it does not quantify over all
universe levels inside a single proposition. -/
def IsMinimal (q : SufficientRepresentation.{u, v, w, a} C) : Prop :=
  ∀ r : SufficientRepresentation.{u, v, w, b} C, q.FactorsThrough r

theorem equivalent_of_compress_eq (q : SufficientRepresentation.{u, v, w, a} C) {x y : State}
    (h : q.compress x = q.compress y) : C.Equivalent x y := by
  intro i
  calc
    C.observe i x = q.recover i (q.compress x) := (q.recover_compress i x).symm
    _ = q.recover i (q.compress y) := by rw [h]
    _ = C.observe i y := q.recover_compress i y

theorem factor_of_minimal {q : SufficientRepresentation.{u, v, w, a} C}
    (hq : IsMinimal.{u, v, w, a, b} q)
    (r : SufficientRepresentation.{u, v, w, b} C) : q.FactorsThrough r :=
  hq r

end SufficientRepresentation

/-- A certificate-relative structural Quine consists of an exact minimal
sufficient representation together with an internal reconstruction section.
The reconstruction is required to preserve the admitted certificate family, not
to certify the soundness of an ambient verifier. -/
structure StructuralQuine {State : Type u} {Index : Type v}
    (C : CertificateFamily.{u, v, w} State Index) where
  quotient : SufficientRepresentation.{u, v, w, a} C
  reconstruct : quotient.carrier → State
  «section» : ∀ q, quotient.compress (reconstruct q) = q
  reconstruct_equivalent : ∀ s, C.Equivalent (reconstruct (quotient.compress s)) s
  minimal : SufficientRepresentation.IsMinimal.{u, v, w, a, b} quotient

namespace StructuralQuine

variable {State : Type u} {Index : Type v} {C : CertificateFamily.{u, v, w} State Index}

/-- Project a state to the internally reconstructed representative of its
minimal sufficient certificate class. -/
def project (Q : StructuralQuine.{u, v, w, a, b} C) (s : State) : State :=
  Q.reconstruct (Q.quotient.compress s)

theorem project_idempotent (Q : StructuralQuine.{u, v, w, a, b} C) :
    ∀ s, Q.project (Q.project s) = Q.project s := by
  intro s
  unfold project
  rw [Q.«section»]

theorem project_certificate_equivalent (Q : StructuralQuine.{u, v, w, a, b} C) (s : State) :
    C.Equivalent (Q.project s) s :=
  Q.reconstruct_equivalent s

theorem quotient_factors_through (Q : StructuralQuine.{u, v, w, a, b} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Q.quotient.FactorsThrough r :=
  Q.minimal r

end StructuralQuine

end FormalResearch.PositiveAtlas
```
