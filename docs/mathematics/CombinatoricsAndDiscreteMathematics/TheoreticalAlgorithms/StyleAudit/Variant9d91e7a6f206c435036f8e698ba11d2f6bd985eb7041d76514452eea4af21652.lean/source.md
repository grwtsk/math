# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StyleAudit.Variant9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cf9ede1fff137201b2ac4194308538d9d678c4e` · SHA-256 `9d91e7a6f206c435036f8e698ba11d2f6bd985eb7041d76514452eea4af21652`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
