import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra
import Think.SourceTree.Legacy.Compression.Lookup

set_option autoImplicit false

namespace Think.Arithmetic.BitMatrixCover

/-- A finite Boolean matrix carrier. -/
structure BitMatrix where
  rows : Nat
  cols : Nat
  bits : Fin rows → Fin cols → Bool

structure BitLocus (M : BitMatrix) where
  row : Fin M.rows
  col : Fin M.cols

namespace BitLocus

def index {M : BitMatrix} (locus : BitLocus M) : Nat :=
  locus.row.val * M.cols + locus.col.val

end BitLocus

/-- A contiguous row-major interval in the flattened bit matrix. -/
structure BitInterval (M : BitMatrix) where
  start : Nat
  len : Nat
  valid : start + len ≤ M.rows * M.cols

namespace BitInterval

def endExclusive {M : BitMatrix} (interval : BitInterval M) : Nat :=
  interval.start + interval.len

def Contains {M : BitMatrix}
    (interval : BitInterval M) (i : Fin (M.rows * M.cols)) : Prop :=
  interval.start ≤ i.val ∧ i.val < interval.endExclusive

theorem contains_iff {M : BitMatrix}
    (interval : BitInterval M) (i : Fin (M.rows * M.cols)) :
    interval.Contains i ↔
      interval.start ≤ i.val ∧ i.val < interval.start + interval.len :=
  Iff.rfl

end BitInterval

/--
Interval covers are the generating basis.  Exact coverage is stated over the
flattened row-major position set.
-/
structure BitIntervalCover
    (M : BitMatrix) (target : BitInterval M) where
  pieces : List (BitInterval M)
  coversExact :
    ∀ i : Fin (M.rows * M.cols),
      target.Contains i ↔
        ∃ piece ∈ pieces, piece.Contains i
  overlapTracked : Bool

/-- A Boolean mask over flattened matrix positions. -/
structure BitMask (M : BitMatrix) where
  contains : Fin (M.rows * M.cols) → Bool

/--
Mask covers are refinements, not primitive basis covers.  They are admitted only
with exact coverage, deterministic ownership, and explicit overlap data.
-/
structure BitMaskCover (M : BitMatrix) where
  masks : List (BitMask M)
  coversExact :
    ∀ i : Fin (M.rows * M.cols),
      (masks.any (fun mask => mask.contains i)) = true
  deterministicOwner :
    Fin (M.rows * M.cols) → Option Nat
  ownerSound :
    ∀ (i : Fin (M.rows * M.cols)) (owner : Nat),
      deterministicOwner i = some owner →
        ∃ mask ∈ masks, mask.contains i = true
  overlapCompatible : Prop

inductive BitMatrixCover (M : BitMatrix) where
  | interval :
      (target : BitInterval M) →
      BitIntervalCover M target →
      BitMatrixCover M
  | mask :
      BitMaskCover M →
      BitMatrixCover M

inductive BitMatrixCoverTier where
  | intervalBasis
  | certifiedMaskRefinement
  | macroRoutingLater
deriving Repr, DecidableEq

def coverTierIndex : BitMatrixCoverTier → Nat
  | .intervalBasis => 0
  | .certifiedMaskRefinement => 1
  | .macroRoutingLater => 2

theorem interval_basis_precedes_mask_refinement :
    coverTierIndex .intervalBasis <
      coverTierIndex .certifiedMaskRefinement := by
  decide

theorem mask_refinement_precedes_macro_routing :
    coverTierIndex .certifiedMaskRefinement <
      coverTierIndex .macroRoutingLater := by
  decide

structure BitMatrixCoverAuthoritySurface where
  intervalBasisPrimitive : Bool
  arbitraryMaskPrimitiveClaim : Bool
  certifiedMaskRefinementAllowed : Bool
  macroCoverWithoutRoutingClaim : Bool
deriving Repr, DecidableEq

def defaultBitMatrixCoverAuthoritySurface :
    BitMatrixCoverAuthoritySurface :=
  { intervalBasisPrimitive := true
    arbitraryMaskPrimitiveClaim := false
    certifiedMaskRefinementAllowed := true
    macroCoverWithoutRoutingClaim := false }

theorem default_cover_authority_uses_interval_basis :
    defaultBitMatrixCoverAuthoritySurface.intervalBasisPrimitive = true :=
  rfl

theorem default_cover_authority_denies_arbitrary_mask_primitive :
    defaultBitMatrixCoverAuthoritySurface.arbitraryMaskPrimitiveClaim =
      false :=
  rfl

theorem default_cover_authority_allows_certified_mask_refinement :
    defaultBitMatrixCoverAuthoritySurface.certifiedMaskRefinementAllowed =
      true :=
  rfl

theorem default_cover_authority_denies_macro_without_routing :
    defaultBitMatrixCoverAuthoritySurface.macroCoverWithoutRoutingClaim =
      false :=
  rfl

inductive BitLookupPathAt
    (_M : BitMatrix) (_i : Fin (_M.rows * _M.cols)) : Type
  | canonical : BitLookupPathAt _M _i

def canonicalBitLookupPathAt
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    BitLookupPathAt M i :=
  BitLookupPathAt.canonical

theorem bit_lookup_fiber_subsingleton
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    Subsingleton (BitLookupPathAt M i) := by
  constructor
  intro left right
  cases left
  cases right
  rfl

instance bitLookupPathAtSubsingleton
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    Subsingleton (BitLookupPathAt M i) :=
  bit_lookup_fiber_subsingleton M i

theorem bit_lookup_fiber_inhabited
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    Nonempty (BitLookupPathAt M i) :=
  ⟨canonicalBitLookupPathAt M i⟩

theorem bit_lookup_fiber_unique
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    ∃! _path : BitLookupPathAt M i, True := by
  refine ⟨canonicalBitLookupPathAt M i, trivial, ?_⟩
  intro other _
  exact Subsingleton.elim _ _

def BitLookupSection
    (M : BitMatrix) (target : BitInterval M) : Type :=
  ∀ i : Fin (M.rows * M.cols),
    target.Contains i → BitLookupPathAt M i

def canonicalBitLookupSection
    (M : BitMatrix) (target : BitInterval M) :
    BitLookupSection M target :=
  fun i _ => canonicalBitLookupPathAt M i

theorem bitLookupSection_subsingleton
    (M : BitMatrix) (target : BitInterval M) :
    Subsingleton (BitLookupSection M target) := by
  constructor
  intro left right
  funext i hcontains
  exact Subsingleton.elim _ _

structure CompatibleBitIntervalFamily
    (M : BitMatrix) (target : BitInterval M)
    (cover : BitIntervalCover M target) where
  sectionAt :
    ∀ piece : BitInterval M,
      piece ∈ cover.pieces → BitLookupSection M piece
  compatibleOnOverlaps :
    ∀ (left : BitInterval M) (hleft : left ∈ cover.pieces)
      (right : BitInterval M) (hright : right ∈ cover.pieces)
      (i : Fin (M.rows * M.cols))
      (hleftContains : left.Contains i)
      (hrightContains : right.Contains i),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains

def RestrictsToBitIntervalCover
    {M : BitMatrix} {target : BitInterval M}
    {cover : BitIntervalCover M target}
    (global : BitLookupSection M target)
    (family : CompatibleBitIntervalFamily M target cover) : Prop :=
  ∀ (piece : BitInterval M) (hpiece : piece ∈ cover.pieces)
    (i : Fin (M.rows * M.cols))
    (hpieceContains : piece.Contains i)
    (htargetContains : target.Contains i),
    global i htargetContains =
      family.sectionAt piece hpiece i hpieceContains

theorem interval_lookup_sections_glue_unique
    (M : BitMatrix)
    (target : BitInterval M)
    (cover : BitIntervalCover M target)
    (family : CompatibleBitIntervalFamily M target cover) :
    ∃! global : BitLookupSection M target,
      RestrictsToBitIntervalCover global family := by
  refine ⟨canonicalBitLookupSection M target, ?_, ?_⟩
  · intro piece hpiece i hpieceContains htargetContains
    exact Subsingleton.elim _ _
  intro other _
  exact @Subsingleton.elim
    (BitLookupSection M target)
    (bitLookupSection_subsingleton M target)
    other
    (canonicalBitLookupSection M target)

def BitMaskLookupSection
    (M : BitMatrix) (cover : BitMaskCover M) : Type :=
  ∀ i : Fin (M.rows * M.cols),
    (cover.masks.any (fun mask => mask.contains i)) = true →
      BitLookupPathAt M i

def canonicalBitMaskLookupSection
    (M : BitMatrix) (cover : BitMaskCover M) :
    BitMaskLookupSection M cover :=
  fun i _ => canonicalBitLookupPathAt M i

theorem bitMaskLookupSection_subsingleton
    (M : BitMatrix) (cover : BitMaskCover M) :
    Subsingleton (BitMaskLookupSection M cover) := by
  constructor
  intro left right
  funext i hcontains
  exact Subsingleton.elim _ _

structure CompatibleBitMaskFamily
    (M : BitMatrix) (cover : BitMaskCover M) where
  sectionAt :
    ∀ mask : BitMask M,
      mask ∈ cover.masks →
        ∀ i : Fin (M.rows * M.cols),
          mask.contains i = true → BitLookupPathAt M i
  compatibleOnOverlaps :
    ∀ (left : BitMask M) (hleft : left ∈ cover.masks)
      (right : BitMask M) (hright : right ∈ cover.masks)
      (i : Fin (M.rows * M.cols))
      (hleftContains : left.contains i = true)
      (hrightContains : right.contains i = true),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains
  deterministicRoutingUsed : Bool

def RestrictsToBitMaskCover
    {M : BitMatrix} {cover : BitMaskCover M}
    (global : BitMaskLookupSection M cover)
    (family : CompatibleBitMaskFamily M cover) : Prop :=
  ∀ (mask : BitMask M) (hmask : mask ∈ cover.masks)
    (i : Fin (M.rows * M.cols))
    (hmaskContains : mask.contains i = true)
    (hcoverContains :
      (cover.masks.any (fun coverMask => coverMask.contains i)) = true),
    global i hcoverContains =
      family.sectionAt mask hmask i hmaskContains

theorem mask_lookup_sections_glue_unique
    (M : BitMatrix)
    (cover : BitMaskCover M)
    (family : CompatibleBitMaskFamily M cover) :
    ∃! global : BitMaskLookupSection M cover,
      RestrictsToBitMaskCover global family := by
  refine ⟨canonicalBitMaskLookupSection M cover, ?_, ?_⟩
  · intro mask hmask i hmaskContains hcoverContains
    exact Subsingleton.elim _ _
  intro other _
  exact @Subsingleton.elim
    (BitMaskLookupSection M cover)
    (bitMaskLookupSection_subsingleton M cover)
    other
    (canonicalBitMaskLookupSection M cover)

end Think.Arithmetic.BitMatrixCover
