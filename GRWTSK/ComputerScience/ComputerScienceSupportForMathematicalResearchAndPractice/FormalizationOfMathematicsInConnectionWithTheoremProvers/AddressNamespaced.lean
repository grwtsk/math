-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalOrientation.Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LocalOrientation.Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Refinement/Address.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Refinement.Tree

/-!
# Oriented binary frontier addresses

Addresses are presentation data over an already valid refinement tree.  They
carry no feasibility or obstruction authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalOrientation.Variant42156764ec2e01391fe5ddf33068e0d464693228f9ce1c5896ca1ef70421fdf9

namespace Mathematics.BinaryFrontier.Refinement

universe uNode

inductive LocalOrientation
  | zeroThenOne
  | oneThenZero
  deriving DecidableEq, Repr, Fintype

def orientBit :
    LocalOrientation → Bool → Bool
  | .zeroThenOne, bit => bit
  | .oneThenZero, bit => !bit

structure FrontierAddress where
  rawPath : List Bool
  orientations : List LocalOrientation
  sameLength :
    rawPath.length = orientations.length
  deriving DecidableEq, Repr

def FrontierAddress.orientedPath
    (address : FrontierAddress) :
    List Bool :=
  List.zipWith orientBit
    address.orientations address.rawPath

theorem FrontierAddress.orientedPath_length
    (address : FrontierAddress) :
    address.orientedPath.length =
      address.rawPath.length := by
  simp [FrontierAddress.orientedPath,
    address.sameLength]

def binaryPathIndex : List Bool → Nat
  | [] => 0
  | bit :: rest =>
      (if bit then 2 ^ rest.length else 0) +
        binaryPathIndex rest

def FrontierAddress.equalDepthIndex
    (address : FrontierAddress) : Nat :=
  binaryPathIndex address.orientedPath

def FrontierAddress.selfDelimitingIndex
    (address : FrontierAddress) : Nat :=
  2 ^ address.rawPath.length +
    address.equalDepthIndex

structure DyadicInterval where
  left : ℚ
  right : ℚ
  ordered : left ≤ right
  deriving Repr

noncomputable def FrontierAddress.dyadicInterval
    (address : FrontierAddress) :
    DyadicInterval where
  left :=
    (address.equalDepthIndex : ℚ) /
      (2 ^ address.rawPath.length : ℚ)
  right :=
    ((address.equalDepthIndex + 1 : Nat) : ℚ) /
      (2 ^ address.rawPath.length : ℚ)
  ordered := by positivity

def PathPrefix
    (prefix path : List Bool) : Prop :=
  ∃ suffix,
    path = prefix ++ suffix

def DyadicIntervalsDisjoint
    (left right : DyadicInterval) : Prop :=
  left.right ≤ right.left ∨
    right.right ≤ left.left

structure TreeAddressRegistry
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width) where
  address : Node → FrontierAddress
  rootAddress :
    (address tree.root).rawPath = []
  parentStep :
    ∀ {parentNode childNode},
      tree.parent childNode = some parentNode →
      ∃ branchBit orientation,
        (address childNode).rawPath =
          (address parentNode).rawPath ++
            [branchBit] ∧
        (address childNode).orientations =
          (address parentNode).orientations ++
            [orientation]
  addressInjective :
    Function.Injective address

theorem tree_frontier_address_unique
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (registry :
      TreeAddressRegistry tree)
    {left right : Node}
    (sameAddress :
      registry.address left =
        registry.address right) :
    left = right :=
  registry.addressInjective sameAddress

structure TerminalAddressCertificate
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (registry :
      TreeAddressRegistry tree) where
  terminal : Finset Node
  prefixFree :
    ∀ {left right},
      left ∈ terminal →
      right ∈ terminal →
      left ≠ right →
      ¬PathPrefix
          (registry.address left).orientedPath
          (registry.address right).orientedPath
  dyadicDisjoint :
    ∀ {left right},
      left ∈ terminal →
      right ∈ terminal →
      left ≠ right →
      DyadicIntervalsDisjoint
        (registry.address left).dyadicInterval
        (registry.address right).dyadicInterval

theorem terminal_addresses_prefix_free
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {registry :
      TreeAddressRegistry tree}
    (certificate :
      TerminalAddressCertificate registry)
    {left right : Node}
    (leftTerminal :
      left ∈ certificate.terminal)
    (rightTerminal :
      right ∈ certificate.terminal)
    (different : left ≠ right) :
    ¬PathPrefix
      (registry.address left).orientedPath
      (registry.address right).orientedPath :=
  certificate.prefixFree
    leftTerminal rightTerminal different

theorem dyadic_terminal_intervals_disjoint
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {registry :
      TreeAddressRegistry tree}
    (certificate :
      TerminalAddressCertificate registry)
    {left right : Node}
    (leftTerminal :
      left ∈ certificate.terminal)
    (rightTerminal :
      right ∈ certificate.terminal)
    (different : left ≠ right) :
    DyadicIntervalsDisjoint
      (registry.address left).dyadicInterval
      (registry.address right).dyadicInterval :=
  certificate.dyadicDisjoint
    leftTerminal rightTerminal different

structure OrientedIndexCertificate where
  injectiveAtFixedDepth :
    ∀ left right : FrontierAddress,
      left.rawPath.length =
          right.rawPath.length →
      left.equalDepthIndex =
          right.equalDepthIndex →
      left.orientedPath =
        right.orientedPath

theorem oriented_index_injective_at_fixed_depth
    (certificate :
      OrientedIndexCertificate)
    {left right : FrontierAddress}
    (sameDepth :
      left.rawPath.length =
        right.rawPath.length)
    (sameIndex :
      left.equalDepthIndex =
        right.equalDepthIndex) :
    left.orientedPath =
      right.orientedPath :=
  certificate.injectiveAtFixedDepth
    left right sameDepth sameIndex

end Mathematics.BinaryFrontier.Refinement
