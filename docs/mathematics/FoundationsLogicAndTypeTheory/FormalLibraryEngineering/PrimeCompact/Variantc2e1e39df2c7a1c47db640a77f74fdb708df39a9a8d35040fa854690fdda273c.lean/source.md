# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompact.Variantc2e1e39df2c7a1c47db640a77f74fdb708df39a9a8d35040fa854690fdda273c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67b379e7b928990d7cbff817719347ef9d2866d7` · SHA-256 `614c8587d271a256c3a88ea0d47f7bf07b6ec11a3e2e2ccfc63d36514c773374`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompactAdjunctionPlan.Variante486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PrimeCompactAdjunctionPlan.Variante486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f","mathematical_subject":"Foundations.Unclassified","original_sha256":"e486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/PrimeCompact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Compact


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCompactAdjunctionPlan.Variante486f38e83d8af7d2d2f0456f01a7fd23c66cc3e778c202eecf67f8d67233c8f

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.PrimeCompact

structure PrimeCompactAdjunctionPlan where
  newPrimeLabel : Nat
  attachLocally : Prop
  torsionCompatible : Prop
  residueStable : Prop
  oldSourceTreeRestrictionPreserved : Prop

def PrimeCompactAdjunctionPlan.admitted
    (P : PrimeCompactAdjunctionPlan) : Prop :=
  P.attachLocally ∧
    P.torsionCompatible ∧
    P.residueStable ∧
    P.oldSourceTreeRestrictionPreserved

structure PrimeCompactCanonicalPass where
  plan : PrimeCompactAdjunctionPlan
  pntNormalizer : Think.RadoProjectedModularHeatflow.MemoryCore.PNTNormalizer
  pairCorrelationBelowTolerance : Prop

def PrimeCompactCanonicalPass.admitted
    (P : PrimeCompactCanonicalPass) : Prop :=
  P.plan.admitted ∧
    P.pntNormalizer.residue = 0 ∧
    P.pairCorrelationBelowTolerance

theorem admitted_prime_compact_pass_has_pnt_residue_zero
    (P : PrimeCompactCanonicalPass)
    (h : P.admitted) :
    P.pntNormalizer.residue = 0 := by
  exact h.2.1

end Think.RadoProjectedModularHeatflow.PrimeCompact
```
