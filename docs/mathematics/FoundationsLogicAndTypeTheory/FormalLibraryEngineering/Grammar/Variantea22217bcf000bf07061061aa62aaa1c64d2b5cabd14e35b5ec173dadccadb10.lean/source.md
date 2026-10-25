# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grammar.Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99390552334c6bb5fbab173f425f262aaa1bb27d` · SHA-256 `67cd5eea31456f18054f8e1a1d2bf1a786b61d5d13c2269f848bd7da7d80ddf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticFactorTerm.Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArithmeticFactorTerm.Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514","mathematical_subject":"Foundations.Unclassified","original_sha256":"c0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CellularArithmetic/Grammar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.Grammar

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.arithmetic_factor_term
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticFactorTerm.Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514

namespace Folder
namespace CellularArithmetic

inductive ArithmeticFactorTerm where
  | one : ArithmeticFactorTerm
  | dilate :
      ArithmeticFactorTerm →
      NumberTheory.PrimePower →
      ArithmeticFactorTerm

inductive CellularFactorTerm where
  | pivot : CellularFactorTerm
  | dilate :
      CellularFactorTerm →
      NumberTheory.PrimePower →
      CellularFactorTerm

def arithmeticToCellular :
    ArithmeticFactorTerm → CellularFactorTerm
  | .one => .pivot
  | .dilate t p => .dilate (arithmeticToCellular t) p

def cellularToArithmetic :
    CellularFactorTerm → ArithmeticFactorTerm
  | .pivot => .one
  | .dilate t p => .dilate (cellularToArithmetic t) p

theorem cellularToArithmetic_arithmeticToCellular
    (t : ArithmeticFactorTerm) :
    cellularToArithmetic (arithmeticToCellular t) = t := by
  induction t with
  | one => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

theorem arithmeticToCellular_cellularToArithmetic
    (t : CellularFactorTerm) :
    arithmeticToCellular (cellularToArithmetic t) = t := by
  induction t with
  | pivot => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, cellularToArithmetic, ih]

namespace ArithmeticFactorTerm

def eval : ArithmeticFactorTerm → Nat
  | .one => 1
  | .dilate t P => t.eval * P.value

end ArithmeticFactorTerm

namespace CellularFactorTerm

def decode : CellularFactorTerm → Nat
  | .pivot => 1
  | .dilate t P => t.decode * P.value

end CellularFactorTerm

theorem decode_arithmeticToCellular
    (t : ArithmeticFactorTerm) :
    (arithmeticToCellular t).decode = t.eval := by
  induction t with
  | one => rfl
  | dilate t p ih =>
      simp [arithmeticToCellular, CellularFactorTerm.decode,
        ArithmeticFactorTerm.eval, ih]

end CellularArithmetic
end Folder
```
