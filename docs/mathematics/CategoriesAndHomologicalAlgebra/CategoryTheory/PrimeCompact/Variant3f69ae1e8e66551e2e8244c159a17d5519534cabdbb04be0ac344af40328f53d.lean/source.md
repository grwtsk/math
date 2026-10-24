# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeCompact.Variant3f69ae1e8e66551e2e8244c159a17d5519534cabdbb04be0ac344af40328f53d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44b5808bf08c35c02ad5af8223cbd43c3cac16c8` · SHA-256 `2a14bf0fa75b05264f383859da6aa1773e3c80e9d7d4e53b6e922fb1a23c8874`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeCompact.Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PrimeCompact.Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/PrimeCompact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Torsion


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeCompact.Variant34a4c64c86f003e314e871051a248f2e6fd1ad864dcd4dc2e68cdd22399aec6c

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure PrimeCompact where
  primeLabel : Nat
  compact : CompactPatch
  primeCertified : Prop

structure PrimeCompactStage where
  bound : Nat
  compacts : List PrimeCompact
  localMemories : List LocalCompactMemory

structure PNTNormalizer where
  thetaNumerator : Nat
  thetaDenominator : Nat
  normalized : thetaNumerator = thetaDenominator

def PNTNormalizer.residue (N : PNTNormalizer) : Int :=
  Int.ofNat N.thetaNumerator - Int.ofNat N.thetaDenominator

def PrimeCompactStage.resolvedByNormalizer
    (_S : PrimeCompactStage) (N : PNTNormalizer) : Prop :=
  N.residue = 0

structure PrimeCompactAdjunction where
  previous : PrimeCompactStage
  newPrime : PrimeCompact
  next : PrimeCompactStage
  localUpdate : Prop
  torsionCompatible : Prop
  residueStable : Prop
  oldRestrictionsUnchanged : Prop

def PrimeCompactAdjunction.admitted (A : PrimeCompactAdjunction) : Prop :=
  A.localUpdate ∧ A.torsionCompatible ∧ A.residueStable ∧ A.oldRestrictionsUnchanged

theorem pnt_normalizer_residue_zero
    (N : PNTNormalizer) :
    N.residue = 0 := by
  unfold PNTNormalizer.residue
  rw [N.normalized]
  simp

theorem prime_adjunction_admitted_preserves_old_restrictions
    (A : PrimeCompactAdjunction)
    (h : A.admitted) :
    A.oldRestrictionsUnchanged := by
  exact h.2.2.2

end Think.RadoProjectedModularHeatflow.MemoryCore
```
