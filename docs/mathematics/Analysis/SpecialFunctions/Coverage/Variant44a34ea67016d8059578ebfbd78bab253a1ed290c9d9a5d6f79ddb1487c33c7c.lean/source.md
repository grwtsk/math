# Complete source: GRWTSK.Analysis.SpecialFunctions.Coverage.Variant44a34ea67016d8059578ebfbd78bab253a1ed290c9d9a5d6f79ddb1487c33c7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `543ae203c78ad8c0268ed5c409f93ccba035536e` · SHA-256 `cf3deb4e12729abd19f04e7453c332edf3fb3b66f0689388a84398302eaa3aaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.InfiniteTimeCoverageRequiresFoundation.Variantc105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.InfiniteTimeCoverageRequiresFoundation.Variantc105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"c105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/InfiniteTime/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.InfiniteTime.TopologicalStability
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying infinite-time coverage follows from an explicit
infinite-time foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not prove infinite-time computation, limiting topology, or
stability as canonical Surface mathematics.
-/


namespace GRWTSK.Analysis.SpecialFunctions.InfiniteTimeCoverageRequiresFoundation.Variantc105c9ef2418eb80693b9d88b27c18e25ac77bfc070b67c98dd86db977af4e53

namespace Surface
namespace Legacy

theorem infiniteTimeCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.infiniteTime ≤ Γ.logicalFoundation ->
      ∀ f : InfiniteTimeRepresentableFunction,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.infiniteTime f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.infiniteTime f) h

end Legacy
end Surface
```
