# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConeAudit.Variant0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d42075b84907862ef7c359a19693076c59abf7c` · SHA-256 `0d908ff97c8f054bb4c9998bcd00f6c4a75448bf8c528d5bc73d5f2d1e187c9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.RH.ConeAudit

Radiation role: proof-governance
BinaryMatrix spine: This module records the narrow RH dependency-cone policy.
Ontology: rh.cone_audit
Pivot role: verification
Zero typology: zeta
Contract boundary: final-cone-policy
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Policy for the narrow RH dependency cone.

The cone is intentionally smaller than `Folder.CanonicalPath`: it is limited to
the exact zeta target, H0/xi translation, zero data, spectral realization,
trace/positivity, and a noncircular boundary criterion.
-/
structure RHConePolicy where
  exactTargetFirst : Bool
  h0TranslationTrackedAsAnalyticInput : Bool
  excludesGrandChallengeSprawl : Bool
  noCriticalLineConclusionFields : Bool
  proofStatusAuditRequired : Bool
  sourceLabel : String

/--
Default policy label for the current RH hardening loop.
-/
def defaultRHConePolicy : RHConePolicy where
  exactTargetFirst := true
  h0TranslationTrackedAsAnalyticInput := true
  excludesGrandChallengeSprawl := true
  noCriticalLineConclusionFields := true
  proofStatusAuditRequired := true
  sourceLabel :=
    "narrow RH cone: target -> H0 translation -> zero data -> spectral/trace/positivity -> boundary criterion"

/--
Machine-generated transitive audit report for the narrow RH cone.

The repository script `scripts/rh-dependency-report.py` is the executable source
for this data. This Lean record only documents that a future final-cone input
must be backed by a generated report rather than hand-supplied status fields.
-/
structure GeneratedRHConeAudit where
  reportPath : String
  reportGenerated : Bool
  noForbiddenBroadImports : Bool
  noPreBoundaryConfinementLeak : Bool
  assumptionBudgetReported : Bool
  theoremTargetDependenciesReported : Bool
  finalConeEligibleDependenciesReported : Bool
  noProofGapTokens : Bool
  sourceLabel : String

/--
Fail-closed clean-audit predicate for a reflected generated report.

This predicate is not a structure field and has no default inhabitant. A future
acceptance theorem must receive a certificate whose fields have been generated
from the declaration graph.
-/
def GeneratedRHConeAudit.Clean
    (A : GeneratedRHConeAudit) : Prop :=
  A.reportGenerated = true ∧
    A.noForbiddenBroadImports = true ∧
    A.noPreBoundaryConfinementLeak = true ∧
    A.assumptionBudgetReported = true ∧
    A.theoremTargetDependenciesReported = true ∧
    A.finalConeEligibleDependenciesReported = true ∧
    A.noProofGapTokens = true

/-- Current final-cone cleanliness is deliberately uninhabited until reflected. -/
def RHConeAuditClean (_declarationName : String) : Prop :=
  False

theorem default_rh_cone_exact_target_first :
    defaultRHConePolicy.exactTargetFirst = true :=
  rfl

theorem default_rh_cone_excludes_grand_challenge_sprawl :
    defaultRHConePolicy.excludesGrandChallengeSprawl = true :=
  rfl

theorem default_rh_cone_has_no_critical_line_conclusion_fields :
    defaultRHConePolicy.noCriticalLineConclusionFields = true :=
  rfl

theorem default_rh_cone_requires_proof_status_audit :
    defaultRHConePolicy.proofStatusAuditRequired = true :=
  rfl

theorem generated_rh_cone_audit_clean_has_no_preboundary_leak
    (A : GeneratedRHConeAudit) :
    A.Clean → A.noPreBoundaryConfinementLeak = true := by
  intro h
  exact h.2.2.1

theorem generated_rh_cone_audit_clean_reports_assumption_budget
    (A : GeneratedRHConeAudit) :
    A.Clean → A.assumptionBudgetReported = true := by
  intro h
  exact h.2.2.2.1

theorem generated_rh_cone_audit_clean_reports_theorem_targets
    (A : GeneratedRHConeAudit) :
    A.Clean → A.theoremTargetDependenciesReported = true := by
  intro h
  exact h.2.2.2.2.1

theorem generated_rh_cone_audit_clean_reports_final_eligible_dependencies
    (A : GeneratedRHConeAudit) :
    A.Clean → A.finalConeEligibleDependenciesReported = true := by
  intro h
  exact h.2.2.2.2.2.1

theorem generated_rh_cone_audit_clean_has_no_proof_gap_tokens
    (A : GeneratedRHConeAudit) :
    A.Clean → A.noProofGapTokens = true := by
  intro h
  exact h.2.2.2.2.2.2

end RH
end Folder
```
