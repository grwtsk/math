# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TraceIdentity.Variantf74103c4c2be53985275ce14239fc3f240cc346a43aa6ce0b17d8150838447ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e38678c2ae34263aa17fa9299c549a7c990f7c66` · SHA-256 `ab64ca6e16506f61a8171eb3c725e5043de194cb5f903257f7ea9debabe5dbf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantProjection.Variant1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.InvariantProjection.Variant1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/TraceIdentity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.DiscrepancyTrace

/-!
# Exact unnormalized discrepancy trace

The trace equality itself is proof data and is indexed by the same arithmetic
source as its authority.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.InvariantProjection.Variant1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387

namespace Mathematics.MobiusOntology

open scoped BigOperators

universe u v w

abbrev InvariantProjection :=
  Mathematics.AbelReynolds.InvariantProjection

abbrev TraceCertificate
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] :=
  Mathematics.AbelReynolds.ExactDiscrepancyTrace
    Scale Spectrum Carrier

theorem centered_trace_identity
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : TraceCertificate Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale :=
  trace.centered_eq_spectral_sum_add_remainder scale

end Mathematics.MobiusOntology
```
