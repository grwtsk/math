# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Loci.Variant9bf37eb026f2e8d26ac653eaa76cb77585be00ecdf47895a2fd957d780af4e87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39f5894521a90970e82f67c2843a3a2271a8b23d` · SHA-256 `24f23d6a612002391bea177f7b8c3356b85ed8e16739c704a52e817968f1fa95`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressedObject.Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompressedObject.Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732","mathematical_subject":"Computation.DataStructures","original_sha256":"605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/Loci.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.Core
import Think.SourceTree.Legacy.Compression.Lattice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressedObject.Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732

set_option autoImplicit false

namespace Think.Compression

/--
A compressed object packages the finite macro dictionary with the compressed
word that depends on it.

This keeps decoded-position loci typed by the actual expansion surface. It does
not claim strict compression, semantic truth, or proof authority.
-/
structure CompressedObject (α : Type) where
  dictionary : MacroDictionary α
  string : CompressedString α
deriving Repr

namespace CompressedObject

def decode {α : Type} (obj : CompressedObject α) : List α :=
  (unwrap obj.dictionary obj.string).symbols

theorem decode_mk {α : Type} (D : MacroDictionary α)
    (s : CompressedString α) :
    (CompressedObject.mk D s).decode = (unwrap D s).symbols := rfl

end CompressedObject

theorem decode_mk {α : Type} (D : MacroDictionary α)
    (s : CompressedString α) :
    (CompressedObject.mk D s).decode = (unwrap D s).symbols :=
  CompressedObject.decode_mk D s

inductive LocusKind : Type
  | source
  | decoded
  | slice
  | macro
  | residue
deriving DecidableEq, Repr

/--
Loose finite locus record for bridge and receipt surfaces.

The strongly typed decoded/source/slice loci below should be preferred for
lookup-fiber authority.
-/
structure Locus (α : Type) where
  kind : LocusKind
  sourceIndex : Option Nat
  decodedIndex : Option Nat
  macroId : Option Nat
  residueLabel : Option String
deriving Repr

structure DecodedLocus {α : Type} (xs : List α) where
  index : Fin xs.length
deriving Repr

structure SourceLocus {α : Type} (s : CompressedString α) where
  index : Fin s.length
deriving Repr

structure SliceLocus {α : Type} (xs : List α) where
  slice : Syntax.Slice xs
deriving Repr

structure MacroLocus where
  macroId : Nat
  occurrence : Nat
deriving DecidableEq, Repr

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

/--
Option-valued lookup for macro expansion.

Unlike `lookupMacro`, missing macro ids do not silently erase decoded loci here;
they become `none` and can be routed to a residue locus.
-/
def lookupMacroList? {α : Type} :
    List (Nat × List α) → Nat → Option (List α)
  | [], _ => none
  | pair :: rest, id =>
      if pair.1 = id then
        some pair.2
      else
        lookupMacroList? rest id

def lookupMacro? {α : Type}
    (D : MacroDictionary α) (id : Nat) : Option (List α) :=
  lookupMacroList? D.macros id

inductive MacroLookupResidue : Type
  | missingMacroId : Nat → MacroLookupResidue
deriving DecidableEq, Repr

namespace MacroLookupResidue

def toResidueLocus : MacroLookupResidue → ResidueLocus
  | .missingMacroId _ =>
      { label := "missingMacroId"
        sourceIndex := none
        decodedIndex := none }

end MacroLookupResidue

theorem lookupMacroList?_sound {α : Type}
    {entries : List (Nat × List α)} {id : Nat} {xs : List α}
    (h : lookupMacroList? entries id = some xs) :
    lookupMacroList entries id = xs := by
  induction entries with
  | nil =>
      cases h
  | cons pair rest ih =>
      change
        (if pair.1 = id then some pair.2 else lookupMacroList? rest id) =
          some xs at h
      change
        (if pair.1 = id then pair.2 else lookupMacroList rest id) = xs
      by_cases hpair : pair.1 = id
      · rw [if_pos hpair] at h
        rw [if_pos hpair]
        cases h
        rfl
      · rw [if_neg hpair] at h
        rw [if_neg hpair]
        exact ih h

theorem lookupMacro?_sound {α : Type}
    (D : MacroDictionary α) (id : Nat) (xs : List α)
    (h : lookupMacro? D id = some xs) :
    lookupMacro D id = xs :=
  lookupMacroList?_sound h

theorem lookupMacro?_none_is_residue {α : Type}
    (D : MacroDictionary α) (id : Nat)
    (_h : lookupMacro? D id = none) :
    ∃ residue : ResidueLocus,
      residue = (MacroLookupResidue.missingMacroId id).toResidueLocus :=
  ⟨(MacroLookupResidue.missingMacroId id).toResidueLocus, rfl⟩

/--
Locus preservation for two dictionary-backed compressed objects.

This is the local no-deflation invariant at the decoded-position level:
rewrites may change representatives only when they transport decoded loci
forward and backward with roundtrip laws.
-/
structure PreservesLoci {α : Type}
    (source target : CompressedObject α) : Type where
  decoded_eq :
    source.decode = target.decode
  locus_forward :
    DecodedLocus source.decode → DecodedLocus target.decode
  locus_backward :
    DecodedLocus target.decode → DecodedLocus source.decode
  forward_backward :
    ∀ locus, locus_backward (locus_forward locus) = locus
  backward_forward :
    ∀ locus, locus_forward (locus_backward locus) = locus

def preservesLoci_refl {α : Type}
    (obj : CompressedObject α) :
    PreservesLoci obj obj :=
  { decoded_eq := rfl
    locus_forward := fun locus => locus
    locus_backward := fun locus => locus
    forward_backward := by
      intro _
      rfl
    backward_forward := by
      intro _
      rfl }

def preservesLoci_symm {α : Type}
    {source target : CompressedObject α}
    (h : PreservesLoci source target) :
    PreservesLoci target source :=
  { decoded_eq := h.decoded_eq.symm
    locus_forward := h.locus_backward
    locus_backward := h.locus_forward
    forward_backward := h.backward_forward
    backward_forward := h.forward_backward }

def preservesLoci_trans {α : Type}
    {left middle right : CompressedObject α}
    (hleft : PreservesLoci left middle)
    (hright : PreservesLoci middle right) :
    PreservesLoci left right :=
  { decoded_eq := Eq.trans hleft.decoded_eq hright.decoded_eq
    locus_forward := fun locus => hright.locus_forward (hleft.locus_forward locus)
    locus_backward := fun locus => hleft.locus_backward (hright.locus_backward locus)
    forward_backward := by
      intro locus
      rw [hright.forward_backward, hleft.forward_backward]
    backward_forward := by
      intro locus
      rw [hleft.backward_forward, hright.backward_forward] }

end Think.Compression
```
