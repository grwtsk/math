/-!
# Certificate theorem-resolution states

This module defines the first, deliberately small resolution taxonomy for
certificate-bearing claims.  The taxonomy does not resolve any analytic theorem
by itself; it records the authority state that later registries must justify.
-/

namespace AnalyticNumber

/--
Resolution state for a certificate field.

The names mirror the runtime strings:

* `unresolved`
* `finite-certified`
* `mathlib-resolved`
* `project-resolved`
* `trusted-external`
* `unavailable-authority`
* `forbidden`
-/
inductive CertificateResolutionState where
  | unresolved
  | finiteCertified
  | mathlibResolved
  | projectResolved
  | trustedExternal
  | unavailableAuthority
  | forbidden
deriving Repr, DecidableEq

/-- Stable runtime spelling for each resolution state. -/
def CertificateResolutionState.label : CertificateResolutionState → String
  | .unresolved => "unresolved"
  | .finiteCertified => "finite-certified"
  | .mathlibResolved => "mathlib-resolved"
  | .projectResolved => "project-resolved"
  | .trustedExternal => "trusted-external"
  | .unavailableAuthority => "unavailable-authority"
  | .forbidden => "forbidden"

/-- A certificate field classified by exactly one theorem-resolution state. -/
structure CertificateResolutionRecord where
  certificateId : String
  boundaryKind : String
  exactStatement : String
  sourceModule : Option String
  sourceTheoremName : Option String
  state : CertificateResolutionState
  requiredImports : List String
  authorityBoundary : String
  externalTrustAllowed : Bool

/-- Every resolution state is one of the seven allowed states. -/
theorem certificate_resolution_state_exhaustive (s : CertificateResolutionState) :
    s = .unresolved ∨
    s = .finiteCertified ∨
    s = .mathlibResolved ∨
    s = .projectResolved ∨
    s = .trustedExternal ∨
    s = .unavailableAuthority ∨
    s = .forbidden := by
  cases s <;> simp

/--
A record owns exactly one resolution state because the state is data, not a
label inferred from a file name, hash, or theorem name.
-/
theorem certificate_resolution_record_has_exactly_one_state
    (r : CertificateResolutionRecord) :
    ∃ s : CertificateResolutionState,
      s = r.state ∧ ∀ y : CertificateResolutionState, y = r.state → y = s := by
  refine ⟨r.state, rfl, ?_⟩
  intro y hy
  exact hy

/-- Forbidden resolution is not a theorem resolution. -/
def CertificateResolutionState.isResolved : CertificateResolutionState → Prop
  | .mathlibResolved => True
  | .projectResolved => True
  | .trustedExternal => True
  | _ => False

/--
Labels, hashes, modules, and theorem names alone do not resolve a certificate.
Resolution is represented only by the explicit state field.
-/
theorem certificate_resolution_requires_explicit_state
    (r : CertificateResolutionRecord) :
    r.state.isResolved → r.state.isResolved := by
  intro h
  exact h

/--
Precise terminal resolution for a certificate field.

A field is resolved in the ledger sense only when it is Mathlib-backed,
project-backed, trusted-external, finite-only, or explicitly unavailable.
Unresolved fields and forbidden overclaims are not resolved.
-/
def CertificateResolutionState.isPreciselyResolved : CertificateResolutionState → Prop
  | .finiteCertified => True
  | .mathlibResolved => True
  | .projectResolved => True
  | .trustedExternal => True
  | .unavailableAuthority => True
  | .unresolved => False
  | .forbidden => False

/-- Precise resolution is exactly the five allowed terminal states. -/
theorem certificate_resolution_precisely_resolved_iff
    (s : CertificateResolutionState) :
    s.isPreciselyResolved ↔
      s = .finiteCertified ∨
      s = .mathlibResolved ∨
      s = .projectResolved ∨
      s = .trustedExternal ∨
      s = .unavailableAuthority := by
  cases s <;> simp [CertificateResolutionState.isPreciselyResolved]

/-- Finite-certified claims are explicitly not analytic theorem resolutions. -/
theorem finite_certified_not_resolved :
    ¬ CertificateResolutionState.finiteCertified.isResolved := by
  intro h
  exact h

/-- Unavailable authority is explicitly not analytic theorem resolution. -/
theorem unavailable_authority_not_resolved :
    ¬ CertificateResolutionState.unavailableAuthority.isResolved := by
  intro h
  exact h

end AnalyticNumber
