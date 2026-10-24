# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArithmeticTree.Variantf4bec80705ccd8b937d5a33360f53a92d2f90ccd534c5c30afcccf458705e58e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8acbc1a7250948cbf2a77fbac1c7ddeb86929115` · SHA-256 `3f23487732a60d6fabbec8b039de9778e499871a3d29a40f5d14181d42f82169`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CellularArithmeticTree.Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CellularArithmeticTree.Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32","mathematical_subject":"Computation.DataStructures","original_sha256":"fddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CellularArithmetic/ArithmeticTree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.PrimePower

/-!
# Folder.CellularArithmetic.ArithmeticTree

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_tree
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CellularArithmeticTree.Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32

namespace Folder
namespace CellularArithmetic

structure CellularArithmeticTree where
  factors : List NumberTheory.PrimePower

namespace CellularArithmeticTree

def decode (T : CellularArithmeticTree) : Nat :=
  T.factors.foldr (fun P acc => P.value * acc) 1

def PrimeStrictlyIncreasing
    (xs : List NumberTheory.PrimePower) : Prop :=
  xs.Pairwise (fun a b => a.prime < b.prime)

def Canonical
    (T : CellularArithmeticTree) : Prop :=
  PrimeStrictlyIncreasing T.factors

@[simp]
theorem decode_empty :
    ({ factors := [] } : CellularArithmeticTree).decode = 1 :=
  rfl

theorem decode_cons
    (P : NumberTheory.PrimePower)
    (xs : List NumberTheory.PrimePower) :
    ({ factors := P :: xs } : CellularArithmeticTree).decode =
      P.value * ({ factors := xs } : CellularArithmeticTree).decode := by
  rfl

end CellularArithmeticTree
end CellularArithmetic
end Folder
```
