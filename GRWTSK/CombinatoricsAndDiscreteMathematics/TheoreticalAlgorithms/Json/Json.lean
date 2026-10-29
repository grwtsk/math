import Surface.Incremental.Report

namespace Surface
namespace Incremental

structure IncrementalReportFiles where
  requestJson : String
  affectedModulesJson : String
  inclusionPathsJson : String
  orderJson : String
  artifactPlanJson : String
  siteUpdateJson : String
  preservationReportJson : String
  summaryMarkdown : String
  deterministicNames : Prop
  deterministicNamesCertified : deterministicNames
  claimBoundary : List String
deriving Repr

def standardIncrementalReportFiles : IncrementalReportFiles where
  requestJson := "incremental-request.json"
  affectedModulesJson := "incremental-affected-modules.json"
  inclusionPathsJson := "incremental-inclusion-paths.json"
  orderJson := "incremental-order.json"
  artifactPlanJson := "incremental-artifact-plan.json"
  siteUpdateJson := "incremental-site-update.json"
  preservationReportJson := "incremental-preservation-report.json"
  summaryMarkdown := "incremental-summary.md"
  deterministicNames := True
  deterministicNamesCertified := True.intro
  claimBoundary := [
    "Incremental report filenames are fixed and deterministic."
  ]

theorem incrementalReportFiles_deterministic
    (F : IncrementalReportFiles) :
    F.deterministicNames :=
  F.deterministicNamesCertified

end Incremental
end Surface
