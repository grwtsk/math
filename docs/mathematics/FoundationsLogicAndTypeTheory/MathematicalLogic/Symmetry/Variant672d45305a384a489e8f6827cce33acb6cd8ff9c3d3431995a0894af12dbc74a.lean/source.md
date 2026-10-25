# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Symmetry.Variant672d45305a384a489e8f6827cce33acb6cd8ff9c3d3431995a0894af12dbc74a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de2124a6b3e33c8889a6c744a580a8ac3015bedd` · SHA-256 `582a92def9e234efd9da1fb5656459fa5a24b81c629f79b4ab0777425b4c55ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryRotate3Indices.Variante3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SymmetryRotate3Indices.Variante3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83","mathematical_subject":"Logic.Foundations","original_sha256":"e3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Symmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Algebra.Symmetry
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete tests for finite bit-state symmetries

These width-three checks exercise the faithful translation and coordinate
actions, a translated coordinate Hamming isometry, and the general SAC-score
invariance theorems for Hamming-isometric conjugacy.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SymmetryRotate3Indices.Variante3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83

namespace BitMatrix.Tests.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Network.Permutation

/-! ## Faithful width-three actions -/

example :
    Function.Injective (translationHom (n := 3)) :=
  translationHom_injective

example :
    Function.Injective (coordinatePermutationHom (n := 3)) :=
  coordinatePermutationHom_injective

/-! ## The three-coordinate cycle -/

/-- The coordinate cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def symmetryRotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- The state permutation induced by `symmetryRotate3Indices`. -/
def symmetryRotate3 : BitPerm 3 :=
  coordinatePermutation symmetryRotate3Indices

example :
    coordinatePermutationHom symmetryRotate3Indices = symmetryRotate3 := by
  ext x i
  rfl

/-! ## A nontrivially translated coordinate isometry -/

/-- A nonzero width-three translation key. -/
def symmetryOffset3 : Bits 3 :=
  basisBit (0 : Fin 3)

/-- Coordinate rotation followed by XOR with `symmetryOffset3`. -/
def symmetryHammingIso3 : HammingIso 3 where
  offset := symmetryOffset3
  coordinates := symmetryRotate3Indices

example (x y : Bits 3) :
    hammingDistance (symmetryHammingIso3.toPerm x)
        (symmetryHammingIso3.toPerm y) =
      hammingDistance x y :=
  symmetryHammingIso3.hammingDistance_toPerm x y

/-! ## Hamming-isometric conjugacy preserves aggregate SAC scores -/

/-- A concrete state permutation used as the conjugated transformation. -/
def symmetryTransformation3 : BitPerm 3 :=
  xorTranslation (basisBit (1 : Fin 3))

example :
    sacScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      sacScore symmetryTransformation3 :=
  sacScore_conjugate_hammingIso symmetryHammingIso3 symmetryTransformation3

example :
    varianceScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      varianceScore symmetryTransformation3 :=
  varianceScore_conjugate_hammingIso
    symmetryHammingIso3 symmetryTransformation3

end BitMatrix.Tests.Symmetry
```
