# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConeAudit.Variant748974ee43968593a56ca68e2d44113797f84806d7c7c0658d2e8062acee796b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c754f51019dd373d774b7ed7a7bf225687a2a1d3` · SHA-256 `748974ee43968593a56ca68e2d44113797f84806d7c7c0658d2e8062acee796b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConeAudit

/-!
# Folder.Theorem.RH.ConeAudit

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports narrow RH cone policy facts.
Ontology: proof.rh.cone_audit
Pivot role: verification
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace ConeAudit

theorem default_rh_cone_exact_target_first :
    Folder.RH.defaultRHConePolicy.exactTargetFirst = true :=
  Folder.RH.default_rh_cone_exact_target_first

theorem default_rh_cone_excludes_grand_challenge_sprawl :
    Folder.RH.defaultRHConePolicy.excludesGrandChallengeSprawl = true :=
  Folder.RH.default_rh_cone_excludes_grand_challenge_sprawl

theorem default_rh_cone_has_no_critical_line_conclusion_fields :
    Folder.RH.defaultRHConePolicy.noCriticalLineConclusionFields = true :=
  Folder.RH.default_rh_cone_has_no_critical_line_conclusion_fields

theorem default_rh_cone_requires_proof_status_audit :
    Folder.RH.defaultRHConePolicy.proofStatusAuditRequired = true :=
  Folder.RH.default_rh_cone_requires_proof_status_audit

theorem generated_rh_cone_audit_clean_has_no_preboundary_leak
    (A : Folder.RH.GeneratedRHConeAudit) :
    A.Clean → A.noPreBoundaryConfinementLeak = true :=
  Folder.RH.generated_rh_cone_audit_clean_has_no_preboundary_leak A

theorem generated_rh_cone_audit_clean_reports_assumption_budget
    (A : Folder.RH.GeneratedRHConeAudit) :
    A.Clean → A.assumptionBudgetReported = true :=
  Folder.RH.generated_rh_cone_audit_clean_reports_assumption_budget A

theorem generated_rh_cone_audit_clean_reports_theorem_targets
    (A : Folder.RH.GeneratedRHConeAudit) :
    A.Clean → A.theoremTargetDependenciesReported = true :=
  Folder.RH.generated_rh_cone_audit_clean_reports_theorem_targets A

theorem generated_rh_cone_audit_clean_reports_final_eligible_dependencies
    (A : Folder.RH.GeneratedRHConeAudit) :
    A.Clean → A.finalConeEligibleDependenciesReported = true :=
  Folder.RH.generated_rh_cone_audit_clean_reports_final_eligible_dependencies A

theorem generated_rh_cone_audit_clean_has_no_proof_gap_tokens
    (A : Folder.RH.GeneratedRHConeAudit) :
    A.Clean → A.noProofGapTokens = true :=
  Folder.RH.generated_rh_cone_audit_clean_has_no_proof_gap_tokens A

end ConeAudit
end RH
end Theorem
end Folder
```
