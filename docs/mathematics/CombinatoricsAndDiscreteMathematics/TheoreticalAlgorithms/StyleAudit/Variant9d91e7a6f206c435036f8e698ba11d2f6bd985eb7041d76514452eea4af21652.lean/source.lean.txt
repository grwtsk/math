import Surface.AST.TheoremConeStyle

namespace Surface
namespace AST

/-!
# Theorem-cone style audit helpers

These helpers are intentionally string-level and non-blocking.  They support an
audit report for public theorem pages without becoming theorem authority or a
generated fixture source.
-/

/-- Phrases that should not appear in public theorem-page summaries. -/
def forbiddenGrandClaimPhrases : List String := [
  "proves BSD",
  "proves RH",
  "proves the Riemann Hypothesis",
  "proves Hilbert-Pólya",
  "proves Connes trace formula",
  "proves prismatic comparison",
  "proves Ricci surgery",
  "proves Poincare",
  "proves geometrization",
  "finite matrix proves spectral",
  "dashboard proves theorem"
]

/-- A lightweight style-audit entry for a declaration or rendered page summary. -/
structure StyleAuditEntry where
  cone : TheoremConeId
  declarationName : String
  summary : String
  isCheckedTheorem : Bool
  boundary : List String
deriving Repr

/-- Whether a summary contains one of the configured forbidden claim phrases. -/
def StyleAuditEntry.containsForbiddenGrandClaim
    (E : StyleAuditEntry) : Bool :=
  forbiddenGrandClaimPhrases.any (fun phrase => E.summary.contains phrase)

/--
Non-blocking style-audit status.

On this first pass, the audit emits a Boolean report flag rather than rejecting
normal development.
-/
def StyleAuditEntry.auditWarning
    (E : StyleAuditEntry) : Bool :=
  E.containsForbiddenGrandClaim && !E.isCheckedTheorem

end AST
end Surface
