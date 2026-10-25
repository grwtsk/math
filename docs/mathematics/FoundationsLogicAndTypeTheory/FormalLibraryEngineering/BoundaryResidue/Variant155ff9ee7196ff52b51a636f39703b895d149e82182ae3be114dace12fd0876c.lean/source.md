# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidue.Variant155ff9ee7196ff52b51a636f39703b895d149e82182ae3be114dace12fd0876c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `697ed3d1c823f7be3c527f21f583ebd77f5c96e8` · SHA-256 `53c305ef1ae067f9cc3a2d654acdc923d34ad4abd3fde488e01b5dca4f16eeb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidue.Variant686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryResidue.Variant686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f","mathematical_subject":"Foundations.Unclassified","original_sha256":"686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/BoundaryResidue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.InnerOuter


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryResidue.Variant686f558800e722c71ce1da3d363e172f649680d800d97dfc1a9a2a9ae518804f

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryResidue where
  treeNode : Nat
  innerCoeff : Nat -> Int
  bridgeCoeff : Nat -> Int
  outerCoeff : Nat -> Int
  targetCoeff : Nat -> Int

def BoundaryResidue.value (R : BoundaryResidue) (n : Nat) : Int :=
  R.targetCoeff n - R.innerCoeff n - R.bridgeCoeff n - R.outerCoeff n

def BoundaryResidue.resolvedAt (R : BoundaryResidue) (n : Nat) : Prop :=
  R.value n = 0

def BoundaryResidue.totalValue (R : BoundaryResidue) (n : Nat) : Int :=
  R.value n + R.value n

theorem boundaryResidue_zero_resolved
    (R : BoundaryResidue) (n : Nat)
    (h : R.targetCoeff n = R.innerCoeff n + R.bridgeCoeff n + R.outerCoeff n) :
    R.resolvedAt n := by
  unfold BoundaryResidue.resolvedAt BoundaryResidue.value
  omega

structure ModularMemoryForm where
  vertex : MemoryVertex
  k : Nat
  evenWeight : k % 2 = 0
  qCoeff : Nat -> Int

def ModularMemoryForm.boundarySymmetric
    (inner outer : ModularMemoryForm) : Prop :=
  inner.k = outer.k ∧
    inner.vertex.residueClass = outer.vertex.residueClass

end Think.RadoProjectedModularHeatflow.MemoryCore
```
