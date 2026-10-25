# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalIndexNonzeroBoundary.Variant9086dcf54f662991cab5e903483f9f765c007649eba3d687ab2f2f536f84495b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `855f02c6fa7f749d4e1d8953506c57bfbf82bf89` · SHA-256 `a24bccb998b7509a065bbf4cc47d656723176df2328913557b24f9d4d6c21218`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointwiseGlobalIndexNonzeroTarget.Variantbbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PointwiseGlobalIndexNonzeroTarget.Variantbbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d","mathematical_subject":"Foundations.Unclassified","original_sha256":"bbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/GlobalIndexNonzeroBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.FamiliesIndexClass

/-!
# Folder.CanonicalPath.GlobalIndexNonzeroBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module marks pointwise global index nonzero as a boundary target.
Ontology: canonical.pointwise_global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointwiseGlobalIndexNonzeroTarget.Variantbbed1ff067db11f9c48e82170277d76c110cfc52b11b0f59be159b17457ec66d

namespace Folder
namespace CanonicalPath

/--
Pointwise global K-index nonvanishing is recorded as a strong theorem target.

The field `knownAsTheorem` defaults to false to keep the boundary honest.
-/
structure PointwiseGlobalIndexNonzeroTarget
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexFamily : FamiliesIndexClass M F
  pointwiseNonzero : Prop
  knownAsTheorem : Bool := false
  warning :
    String :=
      "Pointwise global nonvanishing is a theorem target, not a current theorem."

theorem pointwise_global_index_nonzero_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (T : PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  h

end CanonicalPath
end Folder
```
