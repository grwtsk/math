# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Address.Variantc97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35b7d515a4dcd0ce658466b3947b84bfa4fc25d7` · SHA-256 `c97ab4fbed4b5a15aae5b6736d82fd212c01bdd72e4951d4ac5005c52a72c247`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance

/-!
# Binary frontier addresses

Addresses index refinement geometry and are not permanent node identities.
Terminal prefix-freedom and dyadic disjointness are exposed only through an
explicit finite certificate.
-/

namespace Mathematics.BinaryFrontier

def BinaryValue : List Bool → Nat
  | [] => 0
  | bit :: tail =>
      (if bit then 1 else 0) * 2 ^ tail.length +
        BinaryValue tail

structure BinaryFrontierAddress where
  subjectRef : String
  rawPath : List Bool
  orientations : List LocalOrientation
  orientationLength :
    orientations.length = rawPath.length
  orientedPath : List Bool :=
    orientPath orientations rawPath
  orientedPath_exact :
    orientedPath = orientPath orientations rawPath
  depth : Nat := rawPath.length
  depth_exact : depth = rawPath.length
  fixedDepthIndex : Nat := BinaryValue orientedPath
  fixedDepthIndex_exact :
    fixedDepthIndex = BinaryValue orientedPath
  selfDelimitingIndex : Nat :=
    2 ^ depth + fixedDepthIndex
  selfDelimitingIndex_exact :
    selfDelimitingIndex =
      2 ^ depth + fixedDepthIndex

def ListPrefix (left right : List Bool) : Prop :=
  ∃ suffix, right = left ++ suffix

def TerminalPrefixFree
    (addresses : List BinaryFrontierAddress) : Prop :=
  ∀ left ∈ addresses, ∀ right ∈ addresses,
    left.subjectRef ≠ right.subjectRef →
      ¬ ListPrefix left.rawPath right.rawPath

def DyadicIntervalsDisjoint
    (left right : BinaryFrontierAddress) : Prop :=
  let leftNumerator := BinaryValue left.orientedPath
  let rightNumerator := BinaryValue right.orientedPath
  (leftNumerator + 1) * 2 ^ right.depth ≤
      rightNumerator * 2 ^ left.depth ∨
    (rightNumerator + 1) * 2 ^ left.depth ≤
      leftNumerator * 2 ^ right.depth

structure CertifiedTerminalAddresses where
  addresses : List BinaryFrontierAddress
  prefixFree : TerminalPrefixFree addresses
  dyadicDisjoint :
    ∀ left ∈ addresses, ∀ right ∈ addresses,
      left.subjectRef ≠ right.subjectRef →
        DyadicIntervalsDisjoint left right

theorem terminal_addresses_prefix_free
    (certificate : CertifiedTerminalAddresses) :
    TerminalPrefixFree certificate.addresses :=
  certificate.prefixFree

theorem dyadic_terminal_intervals_disjoint
    (certificate : CertifiedTerminalAddresses)
    (left : BinaryFrontierAddress)
    (leftMember : left ∈ certificate.addresses)
    (right : BinaryFrontierAddress)
    (rightMember : right ∈ certificate.addresses)
    (distinct : left.subjectRef ≠ right.subjectRef) :
    DyadicIntervalsDisjoint left right :=
  certificate.dyadicDisjoint
    left leftMember right rightMember distinct

end Mathematics.BinaryFrontier
```
