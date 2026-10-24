# Complete source: GRWTSK.Analysis.SpecialFunctions.ChoiceCoverage.Varianta26c382f1d89c0347ec2d41e68d2567218783faa39d71ad5a0aef31853087d22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17704dac4132ec061dad67eadf9fcce10a14ec37` · SHA-256 `a1fbce39f71e66593a9f9ccb690b91092342cf2f37fdc38f329bfd24a376e76e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.ChoiceCoverageRequiresFoundation.Variantd769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.ChoiceCoverageRequiresFoundation.Variantd769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Choice/ChoiceCoverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Choice.NonMeasurable
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying choice-dependent coverage follows from an
explicit choice foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not install choice as an ambient axiom and does not prove
choice-independent coverage for choice-dependent objects.
-/


namespace GRWTSK.Analysis.SpecialFunctions.ChoiceCoverageRequiresFoundation.Variantd769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a

namespace Surface
namespace Legacy

theorem choiceCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.choice ≤ Γ.logicalFoundation ->
      ∀ f : ChoiceDependentObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.choice f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.choice f) h

end Legacy
end Surface
```
