# Complete source: GRWTSK.Algebra.GroupTheory.OrientationEquivariance.Variant9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c53a85bca996d2f783813618edce30bb60e032e4` · SHA-256 `9674e468b8553ca8594d431f9e5bd5cccb60c7d63be23ae17c4124d2d217497c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Refinement.Address

/-!
# Orientation-equivariant addressing

Tree addresses remain independent of symmetry.  This bridge is required only
when an automorphism is claimed to preserve the oriented binary index.
-/

namespace Mathematics.BinaryFrontier.Symmetry

open Mathematics.BinaryFrontier.Refinement

universe uNode uGroup

structure OrientationEquivariance
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (addresses :
      TreeAddressRegistry tree)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Node] where
  addressAction :
    GroupCarrier →
      FrontierAddress →
      FrontierAddress
  addressActionIdentity :
    ∀ address,
      addressAction 1 address = address
  addressActionCompatible :
    ∀ left right address,
      addressAction (left * right) address =
        addressAction left
          (addressAction right address)
  nodeAddressEquivariant :
    ∀ automorphism node,
      addresses.address
          (automorphism • node) =
        addressAction automorphism
          (addresses.address node)
  depthInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .rawPath.length =
        address.rawPath.length
  orientedPathInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .orientedPath =
        address.orientedPath

theorem equalDepthIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address).equalDepthIndex =
      address.equalDepthIndex := by
  unfold FrontierAddress.equalDepthIndex
  rw [equivariance.orientedPathInvariant]

theorem selfDelimitingIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address)
          .selfDelimitingIndex =
      address.selfDelimitingIndex := by
  unfold FrontierAddress.selfDelimitingIndex
  rw [equivariance.depthInvariant,
    equalDepthIndex_invariant
      equivariance automorphism address]

end Mathematics.BinaryFrontier.Symmetry
```
