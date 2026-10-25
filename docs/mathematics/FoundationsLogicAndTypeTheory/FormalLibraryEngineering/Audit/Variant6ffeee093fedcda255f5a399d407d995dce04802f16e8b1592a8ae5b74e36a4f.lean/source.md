# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variant6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c8b433f6726f064e38dd6fa19c3599dba2e3a0` · SHA-256 `6ffeee093fedcda255f5a399d407d995dce04802f16e8b1592a8ae5b74e36a4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Presentation.Realization

/-!
What is formalized:
Small audit predicates for keeping raw Presentation records in interface or
certificate authority classes unless they are explicitly whitelisted.

What is certificate-gated:
Integration with generated AST export or broader CI audits remains an external
tooling step.

What is not claimed:
These Boolean audit predicates are not mathematical proofs and cannot establish
BSD, RH, analytic continuation, or spectral correspondence.

Primary mathematical source:
Surface claim-boundary and readiness-gate discipline.
-/

namespace Surface.Presentation.Audit

/-- Raw Presentation records are normally interface or certificate artifacts. -/
def authorityAllowedByDefault : AuthorityClass → Bool
  | .interface => true
  | .certificate => true
  | .implementationTheorem => false
  | .mathematicalTheorem => false

/-- A raw presentation is compliant only under the declared authority boundary. -/
def isCompliantPresentation {α : Type u} (pres : Presentation α) : Bool :=
  pres.boundary.legacyFree &&
    (authorityAllowedByDefault pres.boundary.authority ||
      pres.boundary.theoremFacingAllowed)

theorem compliantPresentation_legacyFree
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true) :
    pres.boundary.legacyFree = true := by
  simp [isCompliantPresentation] at h
  exact h.1

theorem compliantMathematicalPresentation_is_whitelisted
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true)
    (hmath : pres.boundary.authority = AuthorityClass.mathematicalTheorem) :
    pres.boundary.theoremFacingAllowed = true := by
  simp [isCompliantPresentation, authorityAllowedByDefault, hmath] at h
  exact h.2

end Surface.Presentation.Audit
```
