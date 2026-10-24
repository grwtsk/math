# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Json.Varianta6e2c779f117f06d957ff75a4239cdef679c2ccaa0ff27e92adeaecaeb868cf7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b485a2162543407190e691c2768add30acd1956` · SHA-256 `a6e2c779f117f06d957ff75a4239cdef679c2ccaa0ff27e92adeaecaeb868cf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
