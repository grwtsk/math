# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictSheafSurface.Variant54ddf5d9cb4766d09b6cb5cfa8ddcfb20cf2cb2fd9a6a5aeba966b73d1064e7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39efd6d5a74dbd889220e00bb7091a30e7021704` · SHA-256 `7f1c374f53e9f50e2e8ecf8f9cc5deefbef783a372dc6d5ad6b222015e4762db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictCompatibleFamily.Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.StrictCompatibleFamily.Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32","mathematical_subject":"Logic.Foundations","original_sha256":"9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/StrictSheafSurface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Lookup
import Think.SourceTree.Legacy.Compression.BitMatrixSite


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StrictCompatibleFamily.Variant9e23d485c1c7cebdac4c2492ed3daa1282a3589cd415cb3dcf43d0d4239b7c32

set_option autoImplicit false

namespace Think.Compression.BitMatrixSite

/-
Strict finite lookup sheaf surface over bit-matrix interval covers.

This keeps the bit-matrix site version separate from the decoded-slice version
below.  Both are finite singleton-fiber witnesses, not full topos authority.
-/

structure StrictCompatibleFamily {M : BitMatrix}
    {target : BitInterval M} (cover : BitIntervalCover M target) where
  sectionAt :
    ∀ interval : BitInterval M,
      interval ∈ cover.pieces → BitLookupSection M interval
  sectionAgreement :
    ∀ (left right : BitInterval M)
      (leftMem : left ∈ cover.pieces) (rightMem : right ∈ cover.pieces)
      (idx : Fin (M.rows * M.cols))
      (leftHit : left.Contains idx)
      (rightHit : right.Contains idx),
        sectionAt left leftMem idx leftHit =
          sectionAt right rightMem idx rightHit

def StrictRestrictsTo {M : BitMatrix} {target : BitInterval M}
    (cover : BitIntervalCover M target)
    (globalSec : BitLookupSection M target)
    (familySec : ∀ interval : BitInterval M,
      interval ∈ cover.pieces → BitLookupSection M interval) : Prop :=
  ∀ (interval : BitInterval M) (intervalMem : interval ∈ cover.pieces)
    (idx : Fin (M.rows * M.cols))
    (localHit : interval.Contains idx)
    (targetHit : target.Contains idx),
      globalSec idx targetHit = familySec interval intervalMem idx localHit

theorem strict_restriction_holds_by_subsingleton {M : BitMatrix}
    {target : BitInterval M}
    (cover : BitIntervalCover M target)
    (globalSec : BitLookupSection M target)
    (family : StrictCompatibleFamily cover) :
    StrictRestrictsTo cover globalSec family.sectionAt := by
  intro interval intervalMem idx localHit targetHit
  exact Subsingleton.elim _ _

theorem strict_bitmatrix_lookup_sections_glue_unique {M : BitMatrix}
    (target : BitInterval M)
    (cover : BitIntervalCover M target)
    (family : StrictCompatibleFamily cover) :
    ∃! globalSec : BitLookupSection M target,
      StrictRestrictsTo cover globalSec family.sectionAt := by
  let buildGlobal : BitLookupSection M target :=
    fun idx _ =>
      Think.Arithmetic.BitMatrixCover.canonicalBitLookupPathAt M idx
  refine ⟨buildGlobal, ?_, ?_⟩
  · exact strict_restriction_holds_by_subsingleton cover buildGlobal family
  · intro otherSec _
    exact @Subsingleton.elim
      (BitLookupSection M target)
      (Think.Arithmetic.BitMatrixCover.bitLookupSection_subsingleton M target)
      otherSec
      buildGlobal

end Think.Compression.BitMatrixSite

namespace Think.Compression.Syntax

/-
Strict finite lookup sheaf surface over decoded slices.

The ordinary lookup layer already has canonical singleton fibers. This module
gives the stronger restriction shape an explicit name so later prose can
distinguish a finite singleton-fiber strict surface from full Grothendieck
sheafification or topos authority.
-/

structure StrictCompatibleFamily {α : Type}
    (s : CompressedString α) {slice : Slice (decode s)}
    (cover : Cover slice) where
  sectionAt :
    ∀ piece : Slice (decode s),
      piece ∈ cover.pieces → LookupSection s piece
  agreesOnOverlap :
    ∀ (left : Slice (decode s)) (hleft : left ∈ cover.pieces)
      (right : Slice (decode s)) (hright : right ∈ cover.pieces)
      (i : Fin (decode s).length)
      (hleftContains : Slice.containsFin left i)
      (hrightContains : Slice.containsFin right i),
      sectionAt left hleft i hleftContains =
        sectionAt right hright i hrightContains

def StrictRestrictsTo {α : Type}
    {s : CompressedString α} {slice : Slice (decode s)}
    {cover : Cover slice}
    (global : LookupSection s slice)
    (family : StrictCompatibleFamily s cover) : Prop :=
  ∀ (piece : Slice (decode s)) (hpiece : piece ∈ cover.pieces)
    (i : Fin (decode s).length)
    (hpieceContains : Slice.containsFin piece i)
    (htargetContains : Slice.containsFin slice i),
    global i htargetContains =
      family.sectionAt piece hpiece i hpieceContains

structure StrictSheafAuthoritySurface where
  finiteSingletonFiberSurface : Bool
  fullGrothendieckSheafificationClaim : Bool
  fullToposClaim : Bool
  lawvereTierneyTopologyClaim : Bool
deriving Repr, DecidableEq

def defaultStrictSheafAuthoritySurface :
    StrictSheafAuthoritySurface :=
  { finiteSingletonFiberSurface := true
    fullGrothendieckSheafificationClaim := false
    fullToposClaim := false
    lawvereTierneyTopologyClaim := false }

theorem strict_lookup_sections_glue_unique {α : Type}
    (s : CompressedString α)
    (slice : Slice (decode s))
    (cover : Cover slice)
    (family : StrictCompatibleFamily s cover) :
    ∃! global : LookupSection s slice,
      StrictRestrictsTo global family := by
  refine ⟨canonicalLookupSection s slice, ?_, ?_⟩
  · intro piece hpiece i hpieceContains htargetContains
    exact Subsingleton.elim _ _
  intro other _
  exact @Subsingleton.elim
    (LookupSection s slice)
    (lookupSection_subsingleton s slice)
    other
    (canonicalLookupSection s slice)

theorem strict_sheaf_surface_is_finite_singleton_surface :
    defaultStrictSheafAuthoritySurface.finiteSingletonFiberSurface =
      true := by
  rfl

theorem strict_sheaf_surface_denies_full_sheafification :
    defaultStrictSheafAuthoritySurface.fullGrothendieckSheafificationClaim =
      false := by
  rfl

theorem strict_sheaf_surface_denies_full_topos :
    defaultStrictSheafAuthoritySurface.fullToposClaim = false := by
  rfl

theorem strict_sheaf_surface_denies_lawvere_tierney_topology :
    defaultStrictSheafAuthoritySurface.lawvereTierneyTopologyClaim =
      false := by
  rfl

end Think.Compression.Syntax
```
