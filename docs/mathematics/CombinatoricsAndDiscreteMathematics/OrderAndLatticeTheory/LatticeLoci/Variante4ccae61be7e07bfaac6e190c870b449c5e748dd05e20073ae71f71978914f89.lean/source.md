# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeLoci.Variante4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de08042e86eee400b63ef5988016f52967302ed1` · SHA-256 `e4ccae61be7e07bfaac6e190c870b449c5e748dd05e20073ae71f71978914f89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Compression.Loci
import Think.SourceTree.Legacy.Compression.Rewrite

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
Local kinds for the decoded slice/locus layer.

These names are intentionally local to the syntax compression lane. They mark
finite address classes only; they do not assert semantic truth, sheafification,
or geometric morphism authority.
-/
inductive LocusKind : Type
  | source
  | decoded
  | slice
  | macro
  | residue
deriving DecidableEq, Repr

structure DecodedLocus {α : Type} (xs : List α) where
  index : Fin xs.length
deriving Repr

structure SliceLocus {α : Type} (xs : List α) where
  slice : Slice xs
deriving Repr

structure ResidueLocus where
  label : String
  sourceIndex : Option Nat
  decodedIndex : Option Nat
deriving DecidableEq, Repr

theorem decodedLocus_ext {α : Type} {xs : List α}
    {left right : DecodedLocus xs}
    (h : left.index = right.index) :
    left = right := by
  cases left
  cases right
  cases h
  rfl

theorem sliceLocus_ext {α : Type} {xs : List α}
    {left right : SliceLocus xs}
    (h : left.slice = right.slice) :
    left = right := by
  cases left
  cases right
  cases h
  rfl

theorem slice_le_refl {α : Type} {xs : List α}
    (slice : Slice xs) :
    Slice.le slice slice :=
  Slice.le_refl slice

theorem slice_le_trans {α : Type} {xs : List α}
    {left middle right : Slice xs}
    (hleft : Slice.le left middle)
    (hright : Slice.le middle right) :
    Slice.le left right :=
  Slice.le_trans hleft hright

/--
Transport a decoded slice along a decoded-list equality.

The transported region keeps the same finite start/length address and changes
only the proof that the region is bounded by the target decoded list.
-/
def transportSlice {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (slice : Slice (decode source)) :
    Slice (decode target) :=
  { start := slice.start
    len := slice.len
    valid := by
      have hlength :
          (decode source).length = (decode target).length :=
        congrArg List.length hdecode
      rw [← hlength]
      exact slice.valid }

theorem transportSlice_contains_forward {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (slice : Slice (decode source))
    (i : Fin (decode source).length)
    (hcontains : Slice.containsFin slice i) :
    Slice.containsFin
      (transportSlice hdecode slice)
      (transportIndex hdecode i) := by
  change slice.containsNat i.val
  exact hcontains

theorem transportSlice_contains_backward {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (slice : Slice (decode target))
    (i : Fin (decode source).length)
    (hcontains :
      Slice.containsFin slice (transportIndex hdecode i)) :
    Slice.containsFin
      (transportSlice hdecode.symm slice)
      i := by
  change slice.containsNat i.val
  exact hcontains

theorem transportSlice_roundtrip_forward {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (slice : Slice (decode source)) :
    transportSlice hdecode.symm (transportSlice hdecode slice) = slice := by
  cases slice with
  | mk start len valid =>
      simp [transportSlice]

theorem transportSlice_roundtrip_backward {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target)
    (slice : Slice (decode target)) :
    transportSlice hdecode (transportSlice hdecode.symm slice) = slice := by
  cases slice with
  | mk start len valid =>
      simp [transportSlice]

/--
Regionwise preservation of decoded lattice loci.

This upgrades pointwise lookup-fiber preservation into slice-local transport.
It is still finite and structural: no complete lattice, exact hull union,
Lawvere-Tierney topology, or external theorem authority is claimed here.
-/
structure PreservesLatticeLoci {α : Type}
    (source target : CompressedString α) : Type where
  lookupEquiv : LookupFibrationEquivalence source target
  preservesLookup : PreservesSemanticsAndLookup source target
  sliceForward : Slice (decode source) → Slice (decode target)
  sliceBackward : Slice (decode target) → Slice (decode source)
  forwardBackward :
    ∀ slice, sliceBackward (sliceForward slice) = slice
  backwardForward :
    ∀ slice, sliceForward (sliceBackward slice) = slice
  containsForward :
    ∀ (slice : Slice (decode source))
      (i : Fin (decode source).length),
      Slice.containsFin slice i →
        Slice.containsFin
          (sliceForward slice)
          (transportIndex lookupEquiv.decode_eq i)
  containsBackward :
    ∀ (slice : Slice (decode target))
      (i : Fin (decode source).length),
      Slice.containsFin
        slice
        (transportIndex lookupEquiv.decode_eq i) →
          Slice.containsFin (sliceBackward slice) i

def preservesLatticeLociOfDecodeEq {α : Type}
    {source target : CompressedString α}
    (hdecode : decode source = decode target) :
    PreservesLatticeLoci source target :=
  { lookupEquiv := preservesOfDecodeEq hdecode
    preservesLookup := ⟨preservesOfDecodeEq hdecode⟩
    sliceForward := transportSlice hdecode
    sliceBackward := transportSlice hdecode.symm
    forwardBackward := transportSlice_roundtrip_forward hdecode
    backwardForward := transportSlice_roundtrip_backward hdecode
    containsForward := transportSlice_contains_forward hdecode
    containsBackward := transportSlice_contains_backward hdecode }

def preservesLatticeLoci_refl {α : Type}
    (s : CompressedString α) :
    PreservesLatticeLoci s s :=
  preservesLatticeLociOfDecodeEq rfl

def preservesLatticeLoci_symm {α : Type}
    {source target : CompressedString α}
    (h : PreservesLatticeLoci source target) :
    PreservesLatticeLoci target source :=
  { lookupEquiv := preservesOfDecodeEq h.lookupEquiv.decode_eq.symm
    preservesLookup := ⟨preservesOfDecodeEq h.lookupEquiv.decode_eq.symm⟩
    sliceForward := h.sliceBackward
    sliceBackward := h.sliceForward
    forwardBackward := h.backwardForward
    backwardForward := h.forwardBackward
    containsForward := by
      intro slice i hcontains
      let sourceIndex := transportIndex h.lookupEquiv.decode_eq.symm i
      have htarget :
          Slice.containsFin slice
            (transportIndex h.lookupEquiv.decode_eq sourceIndex) := by
        change slice.containsNat i.val
        exact hcontains
      exact h.containsBackward slice sourceIndex htarget
    containsBackward := by
      intro slice i hcontains
      have hforward :=
        h.containsForward slice
          (transportIndex h.lookupEquiv.decode_eq.symm i)
          hcontains
      change (h.sliceForward slice).containsNat i.val at hforward
      change (h.sliceForward slice).containsNat i.val
      exact hforward }

def preservesLatticeLoci_trans {α : Type}
    {left middle right : CompressedString α}
    (hleft : PreservesLatticeLoci left middle)
    (hright : PreservesLatticeLoci middle right) :
    PreservesLatticeLoci left right :=
  { lookupEquiv :=
      preservesOfDecodeEq
        (hleft.lookupEquiv.decode_eq.trans hright.lookupEquiv.decode_eq)
    preservesLookup :=
      preserves_semantics_and_lookup_trans
        hleft.preservesLookup
        hright.preservesLookup
    sliceForward := fun slice => hright.sliceForward (hleft.sliceForward slice)
    sliceBackward := fun slice => hleft.sliceBackward (hright.sliceBackward slice)
    forwardBackward := by
      intro slice
      rw [hright.forwardBackward, hleft.forwardBackward]
    backwardForward := by
      intro slice
      rw [hleft.backwardForward, hright.backwardForward]
    containsForward := by
      intro slice i hcontains
      have hmiddle := hleft.containsForward slice i hcontains
      have hrightContains :=
        hright.containsForward
          (hleft.sliceForward slice)
          (transportIndex hleft.lookupEquiv.decode_eq i)
          hmiddle
      change
        (hright.sliceForward (hleft.sliceForward slice)).containsNat
          i.val at hrightContains
      change
        (hright.sliceForward (hleft.sliceForward slice)).containsNat
          i.val
      exact hrightContains
    containsBackward := by
      intro slice i hcontains
      have hrightContains :
          Slice.containsFin
            (hright.sliceBackward slice)
            (transportIndex hleft.lookupEquiv.decode_eq i) := by
        have hraw :=
          hright.containsBackward
            slice
            (transportIndex hleft.lookupEquiv.decode_eq i)
            (by
              change slice.containsNat i.val
              exact hcontains)
        exact hraw
      exact hleft.containsBackward
        (hright.sliceBackward slice)
        i
        hrightContains }

theorem rewrite_preserves_lattice_loci {α : Type}
    {source target : CompressedString α}
    (step : RewriteStep source target) :
    Nonempty (PreservesLatticeLoci source target) := by
  cases step
  · exact ⟨preservesLatticeLoci_refl source⟩
  · exact ⟨preservesLatticeLociOfDecodeEq (normalize_sound source).symm⟩

def lookupSection_transport_forward {α : Type}
    {source target : CompressedString α}
    (h : PreservesLatticeLoci source target)
    {slice : Slice (decode source)}
    (_section : LookupSection source slice) :
    LookupSection target (h.sliceForward slice) :=
  fun i _hcontains => canonicalLookupPathAt target i

def lookupSection_transport_backward {α : Type}
    {source target : CompressedString α}
    (h : PreservesLatticeLoci source target)
    {slice : Slice (decode target)}
    (_section : LookupSection target slice) :
    LookupSection source (h.sliceBackward slice) :=
  fun i _hcontains => canonicalLookupPathAt source i

end Think.Compression.Syntax
```
