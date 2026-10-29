-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Pad1.Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Pad1.Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e","mathematical_subject":"Foundations.Unclassified","original_sha256":"f1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/FramedCellTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow

/-!
# Folder.Rebuild.DiscreteGeometry.FramedCellTopology

Balanced padding and topology-facing cell closures for finite bit patches.

This file sits beside the zero-extension quotient layer in
`BinaryRicciFlow.lean`.  Prefix zero-extension remains available for anchored
word metrics, while the declarations here record centered padding,
periodic/modular closure, and a small combinatorial spherical closure.

No curvature model or discrete Ricci tensor is selected here.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Pad1.Variantf1bfe24731daebe95088b992810a95813f77f2180b64504bd76f3bfb6cdf541e

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

/-- One-dimensional padding by zero cells on the left and right. -/
structure Pad1 where
  left : Nat
  right : Nat
deriving DecidableEq, Repr

namespace Pad1

def total
    (P : Pad1) : Nat :=
  P.left + P.right

/--
Balanced padding allows exact centering and the two tied odd-padding choices.
-/
def IsBalancedTie
    (P : Pad1) : Prop :=
  P.left = P.right ∨ P.left + 1 = P.right ∨ P.right + 1 = P.left

/-- Even balanced padding: `q` zero cells on both sides. -/
def even
    (q : Nat) : Pad1 where
  left := q
  right := q

/-- Odd balanced padding with the extra zero cell on the right. -/
def oddRight
    (q : Nat) : Pad1 where
  left := q
  right := q + 1

/-- Odd balanced padding with the extra zero cell on the left. -/
def oddLeft
    (q : Nat) : Pad1 where
  left := q + 1
  right := q

@[simp]
theorem even_total
    (q : Nat) :
    (even q).total = 2 * q := by
  simp [total, even, two_mul]

@[simp]
theorem oddRight_total
    (q : Nat) :
    (oddRight q).total = 2 * q + 1 := by
  simp [total, oddRight, two_mul, Nat.add_assoc]

@[simp]
theorem oddLeft_total
    (q : Nat) :
    (oddLeft q).total = 2 * q + 1 := by
  simp [total, oddLeft, two_mul, Nat.add_assoc, Nat.add_comm]

@[simp]
theorem even_balanced
    (q : Nat) :
    (even q).IsBalancedTie := by
  simp [IsBalancedTie, even]

@[simp]
theorem oddRight_balanced
    (q : Nat) :
    (oddRight q).IsBalancedTie := by
  simp [IsBalancedTie, oddRight]

@[simp]
theorem oddLeft_balanced
    (q : Nat) :
    (oddLeft q).IsBalancedTie := by
  simp [IsBalancedTie, oddLeft]

end Pad1

/-- Two-dimensional balanced padding around a matrix/cell patch. -/
structure Pad2 where
  top : Nat
  bottom : Nat
  left : Nat
  right : Nat
deriving DecidableEq, Repr

namespace Pad2

def vertical
    (P : Pad2) : Pad1 where
  left := P.top
  right := P.bottom

def horizontal
    (P : Pad2) : Pad1 where
  left := P.left
  right := P.right

def verticalTotal
    (P : Pad2) : Nat :=
  P.top + P.bottom

def horizontalTotal
    (P : Pad2) : Nat :=
  P.left + P.right

def IsBalancedTie
    (P : Pad2) : Prop :=
  P.vertical.IsBalancedTie ∧ P.horizontal.IsBalancedTie

def ofAxisPads
    (vertical horizontal : Pad1) : Pad2 where
  top := vertical.left
  bottom := vertical.right
  left := horizontal.left
  right := horizontal.right

@[simp]
theorem ofAxisPads_balanced
    {vertical horizontal : Pad1}
    (hv : vertical.IsBalancedTie)
    (hh : horizontal.IsBalancedTie) :
    (ofAxisPads vertical horizontal).IsBalancedTie := by
  exact ⟨hv, hh⟩

end Pad2

/--
A matrix together with a chosen origin/center.

This is the topology-facing version of `BinaryMatrix`: the entries still label
finite cells, but the origin records how a later centered or periodic topology
should read the patch.
-/
structure FramedBinaryMatrix where
  rows : Nat
  cols : Nat
  rowOrigin : Nat
  colOrigin : Nat
  rowOrigin_lt : rowOrigin < rows
  colOrigin_lt : colOrigin < cols
  bit : Fin rows → Fin cols → Bit

namespace FramedBinaryMatrix

theorem rows_pos
    (M : FramedBinaryMatrix) :
    0 < M.rows :=
  Nat.lt_of_le_of_lt (Nat.zero_le M.rowOrigin) M.rowOrigin_lt

theorem cols_pos
    (M : FramedBinaryMatrix) :
    0 < M.cols :=
  Nat.lt_of_le_of_lt (Nat.zero_le M.colOrigin) M.colOrigin_lt

/-- Attach the existing `BinaryMatrix` carrier by preserving dimensions and entries. -/
def ofBinaryMatrix
    (M : Carrier.BinaryMatrix)
    (rowOrigin colOrigin : Nat)
    (hrow : rowOrigin < M.m)
    (hcol : colOrigin < M.n) :
    FramedBinaryMatrix where
  rows := M.m
  cols := M.n
  rowOrigin := rowOrigin
  colOrigin := colOrigin
  rowOrigin_lt := hrow
  colOrigin_lt := hcol
  bit i j := carrierBitToBit (M.get i j)

@[simp]
theorem bit_ofBinaryMatrix
    (M : Carrier.BinaryMatrix)
    (rowOrigin colOrigin : Nat)
    (hrow : rowOrigin < M.m)
    (hcol : colOrigin < M.n)
    (i : Fin M.m)
    (j : Fin M.n) :
    (ofBinaryMatrix M rowOrigin colOrigin hrow hcol).bit i j =
      carrierBitToBit (M.get i j) :=
  rfl

/-- The centered `3 x 3` one-cell patch: one active center cell in a zero exterior. -/
def centeredSingleton3x3 : FramedBinaryMatrix where
  rows := 3
  cols := 3
  rowOrigin := 1
  colOrigin := 1
  rowOrigin_lt := by norm_num
  colOrigin_lt := by norm_num
  bit i j :=
    if i.val = 1 ∧ j.val = 1 then
      1
    else
      0

@[simp]
theorem centeredSingleton3x3_originLabel :
    centeredSingleton3x3.bit
      ⟨centeredSingleton3x3.rowOrigin, centeredSingleton3x3.rowOrigin_lt⟩
      ⟨centeredSingleton3x3.colOrigin, centeredSingleton3x3.colOrigin_lt⟩ = 1 := by
  simp [centeredSingleton3x3]

end FramedBinaryMatrix

/-- Periodic/modular closure: matrix indices wrap around. -/
structure PeriodicBinaryMatrix where
  rows : Nat
  cols : Nat
  rows_pos : 0 < rows
  cols_pos : 0 < cols
  bit : ZMod rows → ZMod cols → Bit

namespace PeriodicBinaryMatrix

/-- Interpret a framed matrix as a finite periodic fundamental tile. -/
def fromFramed
    (M : FramedBinaryMatrix) :
    PeriodicBinaryMatrix where
  rows := M.rows
  cols := M.cols
  rows_pos := M.rows_pos
  cols_pos := M.cols_pos
  bit i j :=
    haveI : NeZero M.rows := ⟨Nat.ne_of_gt M.rows_pos⟩
    haveI : NeZero M.cols := ⟨Nat.ne_of_gt M.cols_pos⟩
    M.bit ⟨i.val, ZMod.val_lt i⟩ ⟨j.val, ZMod.val_lt j⟩

end PeriodicBinaryMatrix

/--
Combinatorial spherical closure for the basic "one face plus exterior" picture.

The boundary is only cell-combinatorial here. Refining padding may increase the
number of boundary vertices, while preserving the inside/outside face relation.
-/
structure SphericalBinaryPatch where
  boundaryVertices : Nat
  boundaryVertices_eq_four_or_refined : 4 ≤ boundaryVertices
  insideLabel : Bit
  outsideLabel : Bit

namespace SphericalBinaryPatch

/-- The basic central active face with one exterior zero face sharing a 4-cycle. -/
def centeredOneCell : SphericalBinaryPatch where
  boundaryVertices := 4
  boundaryVertices_eq_four_or_refined := by norm_num
  insideLabel := 1
  outsideLabel := 0

@[simp]
theorem centeredOneCell_boundaryVertices :
    centeredOneCell.boundaryVertices = 4 :=
  rfl

@[simp]
theorem centeredOneCell_insideLabel :
    centeredOneCell.insideLabel = 1 :=
  rfl

@[simp]
theorem centeredOneCell_outsideLabel :
    centeredOneCell.outsideLabel = 0 :=
  rfl

end SphericalBinaryPatch

/--
The three metric regimes are deliberately separated: anchored prefix metrics,
centered/refinement metrics, and modular metrics live over different carriers.
-/
inductive CellDistanceRegime where
  | prefix
  | centered
  | modular
deriving DecidableEq, Repr

end

end DiscreteGeometry
end Rebuild
end Folder
