import Presentation.Semantics

/-!
What is formalized:
Polymorphic Presentation records and specialized complex-like realization
certificates.

What is certificate-gated:
The target-specific realization relation must be provided separately.  The
Presentation tree is syntax, not the mathematical object itself.

What is not claimed:
Presentations are not theorem authority and do not establish analytic,
arithmetic, spectral, or external comparison claims.

Primary mathematical source:
Proof-boundary discipline for descriptor syntax versus checked theorem
objects.
-/

namespace Presentation

/-- Authority class attached to a Presentation boundary. -/
inductive AuthorityClass where
  | interface
  | certificate
  | implementationTheorem
  | mathematicalTheorem
deriving Repr, DecidableEq

/-- Mode by which a presentation is intended to be realized. -/
inductive RealizationMode where
  | finite
  | quotient
  | completion
  | measurableLimit
  | operatorLimit
  | sheafified
  | oracle
deriving Repr, DecidableEq

/-- Claim-boundary metadata for Presentation artifacts. -/
structure ClaimBoundary where
  authority : AuthorityClass
  mode : RealizationMode
  legacyFree : Bool
  theoremFacingAllowed : Bool
  claimBoundary : List String
deriving Repr

/-- A Presentation is syntax plus a target value, not a theorem. -/
structure Presentation (α : Type u) where
  boundary : ClaimBoundary
  expr : Expr
  target : α

/--
A generic realization certificate shell.

The field `realizes` is intentionally explicit: downstream domains must state
the actual realization predicate they prove.
-/
structure RealizationCertificate {α : Type u} (pres : Presentation α) where
  realizes : Prop
  proof : realizes
  boundary : ClaimBoundary

/-- Specialized equality-based realization for complex-like Presentation evaluation. -/
structure ComplexRealizes
    (S : ComplexLikeSemantics)
    (pres : Presentation S.carrier) where
  env : Nat → S.carrier
  sound : evaluate S env pres.expr = pres.target

theorem complexRealizes_sound
    {S : ComplexLikeSemantics}
    {pres : Presentation S.carrier}
    (cert : ComplexRealizes S pres) :
    evaluate S cert.env pres.expr = pres.target :=
  cert.sound

end Presentation
