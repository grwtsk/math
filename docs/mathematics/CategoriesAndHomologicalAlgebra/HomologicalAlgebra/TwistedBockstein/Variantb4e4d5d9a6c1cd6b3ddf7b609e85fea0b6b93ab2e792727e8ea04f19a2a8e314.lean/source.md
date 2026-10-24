# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TwistedBockstein.Variantb4e4d5d9a6c1cd6b3ddf7b609e85fea0b6b93ab2e792727e8ea04f19a2a8e314

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d661ced6577772792c2c2aab26369b9b9bf3c8b` · SHA-256 `5e242cb59280dadf8d4f389f94da75884f4a04b81f50c1735dfbfea13443cfb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TwistedBocksteinPhase.Variantc5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TwistedBocksteinPhase.Variantc5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f","mathematical_subject":"Foundations.Unclassified","original_sha256":"c5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/TwistedBockstein.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.BocksteinExtension
import Mathematics.Homology.LocalSystem

/-!
# Twisted Bockstein phase

For a local system `L`, the coefficient sequence is
`0 → L → Lℝ → Lℝ/L → 0`.  Its finite obstruction target is the kernel of
the next-degree map to real twisted cohomology, not the ordinary integral
torsion group unless a trivialization proves that specialization.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TwistedBocksteinPhase.Variantc5ea9aa0004a723c0f8e6e949c8acab538777a5c592391b389fcaaf782fd338f

namespace Mathematics.Homology

universe u v w

/-- Certified local-system coefficient extension in one degree. -/
structure TwistedBocksteinPhase
    (ContinuousTwistedTorus : Type u)
    (TwistedPhase : Type v)
    (NextRealizationKernel : Type w)
    [AddCommGroup ContinuousTwistedTorus]
    [AddCommGroup TwistedPhase]
    [AddCommGroup NextRealizationKernel] where
  degree : Nat
  localSystemDigest : Digest
  extension :
    BocksteinExtension
      ContinuousTwistedTorus TwistedPhase NextRealizationKernel
  integralToRealKernelDigest : Digest
  coefficientSequenceCertificate : ObjectAddress
  trivialRankOneSpecialization :
    Option ObjectAddress

end Mathematics.Homology
```
