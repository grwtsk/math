# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.ShellFiltration.Variant6caa860e34517c27ac9fd696518201a6dfb75f19ce1c20525129fdb9475092ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6a85d6f5cc3f01952ed11a1709b251aa0f0bcdd` · SHA-256 `fd3732591743584e56599a4d59ccfbe85a24de0f0b1561e42b6354f355529844`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.AllBoundaryLevelZero.Varianted2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.AllBoundaryLevelZero.Varianted2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"ed2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Cellular/ShellFiltration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.ShellFiltration
import Folder.Cellular.Adjacency

/-!
# Folder.Theorem.Cellular.ShellFiltration

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.cellular.shell_filtration
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.AllBoundaryLevelZero.Varianted2e9d767f907a927233ee01e2ef782231c568286298b0299e23af0177117d5c

namespace Folder
namespace Theorem
namespace Cellular
namespace ShellFiltration

theorem all_boundary_level_zero
    {d : Nat}
    (hd : 0 < d)
    (x : Folder.Cellular.CubeAddress d 0) :
    Folder.Cellular.IsBoundaryCell x :=
  Folder.Cellular.all_boundary_level_zero hd x

theorem cubeAdjacent_symm
    {d k : Nat}
    {x y : Folder.Cellular.CubeAddress d k} :
    Folder.Cellular.CubeAdjacent x y →
      Folder.Cellular.CubeAdjacent y x :=
  Folder.Cellular.cubeAdjacent_symm

theorem cubeAdjacent_irrefl
    {d k : Nat}
    (x : Folder.Cellular.CubeAddress d k) :
    ¬ Folder.Cellular.CubeAdjacent x x :=
  Folder.Cellular.cubeAdjacent_irrefl x

end ShellFiltration
end Cellular
end Theorem
end Folder
```
