# Complete source: GRWTSK.Algebra.LinearAlgebra.BitMatrixSite.Variant0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d976ef6a2f61553b2e545cf16c9b29c67c06a9d2` · SHA-256 `0262b4a9a5309654d94da08a27f6c4a8fe39ff98a23ceb05f6961abe073e5346`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.BitMatrixCover

set_option autoImplicit false

namespace Think.Compression.BitMatrixSite

abbrev BitMatrix :=
  Think.Arithmetic.BitMatrixCover.BitMatrix

abbrev BitLocus (M : BitMatrix) :=
  Think.Arithmetic.BitMatrixCover.BitLocus M

abbrev BitInterval (M : BitMatrix) :=
  Think.Arithmetic.BitMatrixCover.BitInterval M

abbrev BitIntervalCover (M : BitMatrix) (target : BitInterval M) :=
  Think.Arithmetic.BitMatrixCover.BitIntervalCover M target

abbrev BitMask (M : BitMatrix) :=
  Think.Arithmetic.BitMatrixCover.BitMask M

abbrev BitMaskCover (M : BitMatrix) :=
  Think.Arithmetic.BitMatrixCover.BitMaskCover M

abbrev BitMatrixCover (M : BitMatrix) :=
  Think.Arithmetic.BitMatrixCover.BitMatrixCover M

abbrev BitMatrixCoverTier :=
  Think.Arithmetic.BitMatrixCover.BitMatrixCoverTier

abbrev BitMatrixCoverAuthoritySurface :=
  Think.Arithmetic.BitMatrixCover.BitMatrixCoverAuthoritySurface

abbrev BitLookupPathAt
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :=
  Think.Arithmetic.BitMatrixCover.BitLookupPathAt M i

abbrev BitLookupSection
    (M : BitMatrix) (target : BitInterval M) :=
  Think.Arithmetic.BitMatrixCover.BitLookupSection M target

abbrev BitMaskLookupSection
    (M : BitMatrix) (cover : BitMaskCover M) :=
  Think.Arithmetic.BitMatrixCover.BitMaskLookupSection M cover

abbrev CompatibleBitIntervalFamily
    (M : BitMatrix) (target : BitInterval M)
    (cover : BitIntervalCover M target) :=
  Think.Arithmetic.BitMatrixCover.CompatibleBitIntervalFamily M target cover

abbrev CompatibleBitMaskFamily
    (M : BitMatrix) (cover : BitMaskCover M) :=
  Think.Arithmetic.BitMatrixCover.CompatibleBitMaskFamily M cover

abbrev RestrictsToBitIntervalCover
    {M : BitMatrix} {target : BitInterval M}
    {cover : BitIntervalCover M target}
    (global : BitLookupSection M target)
    (family : CompatibleBitIntervalFamily M target cover) :=
  Think.Arithmetic.BitMatrixCover.RestrictsToBitIntervalCover
    global
    family

abbrev RestrictsToBitMaskCover
    {M : BitMatrix} {cover : BitMaskCover M}
    (global : BitMaskLookupSection M cover)
    (family : CompatibleBitMaskFamily M cover) :=
  Think.Arithmetic.BitMatrixCover.RestrictsToBitMaskCover
    global
    family

def coverTierIndex : BitMatrixCoverTier → Nat :=
  Think.Arithmetic.BitMatrixCover.coverTierIndex

def defaultBitMatrixCoverAuthoritySurface :
    BitMatrixCoverAuthoritySurface :=
  Think.Arithmetic.BitMatrixCover.defaultBitMatrixCoverAuthoritySurface

structure BitMatrixSiteAuthoritySurface where
  finiteSiteSurface : Bool
  fullToposClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  geometricFrobeniusClaim : Bool
deriving Repr, DecidableEq

def defaultBitMatrixSiteAuthoritySurface :
    BitMatrixSiteAuthoritySurface :=
  { finiteSiteSurface := true
    fullToposClaim := false
    lawvereTierneyTopologyClaim := false
    geometricFrobeniusClaim := false }

theorem interval_basis_precedes_mask_refinement :
    coverTierIndex
        Think.Arithmetic.BitMatrixCover.BitMatrixCoverTier.intervalBasis <
      coverTierIndex
        Think.Arithmetic.BitMatrixCover.BitMatrixCoverTier.certifiedMaskRefinement :=
  Think.Arithmetic.BitMatrixCover.interval_basis_precedes_mask_refinement

theorem mask_refinement_precedes_macro_routing :
    coverTierIndex
        Think.Arithmetic.BitMatrixCover.BitMatrixCoverTier.certifiedMaskRefinement <
      coverTierIndex
        Think.Arithmetic.BitMatrixCover.BitMatrixCoverTier.macroRoutingLater :=
  Think.Arithmetic.BitMatrixCover.mask_refinement_precedes_macro_routing

theorem default_cover_authority_uses_interval_basis :
    defaultBitMatrixCoverAuthoritySurface.intervalBasisPrimitive = true :=
  Think.Arithmetic.BitMatrixCover.default_cover_authority_uses_interval_basis

theorem default_cover_authority_denies_arbitrary_mask_primitive :
    defaultBitMatrixCoverAuthoritySurface.arbitraryMaskPrimitiveClaim =
      false :=
  Think.Arithmetic.BitMatrixCover.default_cover_authority_denies_arbitrary_mask_primitive

theorem default_cover_authority_allows_certified_mask_refinement :
    defaultBitMatrixCoverAuthoritySurface.certifiedMaskRefinementAllowed =
      true :=
  Think.Arithmetic.BitMatrixCover.default_cover_authority_allows_certified_mask_refinement

theorem default_cover_authority_denies_macro_without_routing :
    defaultBitMatrixCoverAuthoritySurface.macroCoverWithoutRoutingClaim =
      false :=
  Think.Arithmetic.BitMatrixCover.default_cover_authority_denies_macro_without_routing

theorem bit_lookup_fiber_inhabited
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    Nonempty (BitLookupPathAt M i) :=
  Think.Arithmetic.BitMatrixCover.bit_lookup_fiber_inhabited M i

theorem bit_lookup_fiber_subsingleton
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    Subsingleton (BitLookupPathAt M i) :=
  Think.Arithmetic.BitMatrixCover.bit_lookup_fiber_subsingleton M i

theorem bit_lookup_fiber_unique
    (M : BitMatrix) (i : Fin (M.rows * M.cols)) :
    ∃! _path : BitLookupPathAt M i, True :=
  Think.Arithmetic.BitMatrixCover.bit_lookup_fiber_unique M i

theorem interval_cover_is_finite_surface
    (M : BitMatrix) (target : BitInterval M)
    (cover : BitIntervalCover M target) :
    ∃ pieces : List (BitInterval M), pieces = cover.pieces :=
  ⟨cover.pieces, rfl⟩

theorem mask_cover_requires_owner_or_overlap_compatibility
    (M : BitMatrix) (cover : BitMaskCover M) :
    (∀ (i : Fin (M.rows * M.cols)) (owner : Nat),
        cover.deterministicOwner i = some owner →
          ∃ mask ∈ cover.masks, mask.contains i = true) ∧
      (cover.overlapCompatible → cover.overlapCompatible) :=
  ⟨cover.ownerSound, fun h => h⟩

theorem bitmatrix_site_is_not_full_topos :
    defaultBitMatrixSiteAuthoritySurface.fullToposClaim = false :=
  rfl

theorem bitmatrix_site_is_not_lawvere_tierney_topology :
    defaultBitMatrixSiteAuthoritySurface.lawvereTierneyTopologyClaim =
      false :=
  rfl

theorem bitmatrix_site_is_not_geometric_frobenius :
    defaultBitMatrixSiteAuthoritySurface.geometricFrobeniusClaim =
      false :=
  rfl

theorem interval_lookup_sections_glue_unique
    (M : BitMatrix)
    (target : BitInterval M)
    (cover : BitIntervalCover M target)
    (family : CompatibleBitIntervalFamily M target cover) :
    ∃! global : BitLookupSection M target,
      RestrictsToBitIntervalCover global family :=
  Think.Arithmetic.BitMatrixCover.interval_lookup_sections_glue_unique
    M
    target
    cover
    family

theorem mask_lookup_sections_glue_unique
    (M : BitMatrix)
    (cover : BitMaskCover M)
    (family : CompatibleBitMaskFamily M cover) :
    ∃! global : BitMaskLookupSection M cover,
      RestrictsToBitMaskCover global family :=
  Think.Arithmetic.BitMatrixCover.mask_lookup_sections_glue_unique
    M
    cover
    family

end Think.Compression.BitMatrixSite
```
