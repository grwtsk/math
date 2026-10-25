# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTracePackage.Variantff9dd023525a49817ed767fa212482d5b2c741451ef82d3cefd934bbf35144ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1543cb6fe15fe315241c0df2be0b001ddf5b67fa` · SHA-256 `a3b284aef49ba7e20d00a63868ef5dc29b5107b05fb242054959e1d1c54f0f48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTracePackage.Variant5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CategoricalTracePackage.Variant5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6","mathematical_subject":"Foundations.Unclassified","original_sha256":"5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/CategoricalTracePackage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Folder.CanonicalPath.CategoricalTracePackage

Radiation role: research-boundary
BinaryMatrix spine: This module records categorical trace packages.
Ontology: canonical.trace_realization
Pivot role: dual
Zero typology: trace
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTracePackage.Variant5327917ac147a6d1389d6125acc0b7d9653b333f54a541bb5734791a520cf3f6

namespace Folder
namespace CanonicalPath

structure CategoricalTracePackage where
  CategoryData : Type
  EndomorphismData : Type
  TraceValue : Type
  traceFormula : Prop
  traceFormula_certified : traceFormula
  hrrOrLefschetzCompatible : Prop
  hrrOrLefschetzCompatible_certified : hrrOrLefschetzCompatible
  sourceLabel : String

theorem categorical_trace_formula_if_supplied
    (C : CategoricalTracePackage) :
    C.traceFormula :=
  C.traceFormula_certified

theorem categorical_trace_hrr_compatible
    (C : CategoricalTracePackage) :
    C.hrrOrLefschetzCompatible :=
  C.hrrOrLefschetzCompatible_certified

end CanonicalPath
end Folder
```
