# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeGroupLoci.Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e358fc7dee844c4f6c9166df19e54d0daf73c30b` · SHA-256 `889f71a81a66556af7f0b79a27741c6b049d6612f3b68f2145e35268bcf94459`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeGroupLocusMoveKind.Variante87717fd2fddba3a1e4392da4530530bbd2e02c36e751736f23f12cf3304917c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e87717fd2fddba3a1e4392da4530530bbd2e02c36e751736f23f12cf3304917c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LatticeGroupLocusMoveKind.Variante87717fd2fddba3a1e4392da4530530bbd2e02c36e751736f23f12cf3304917c","mathematical_subject":"Algebra.OrderTheory","original_sha256":"e87717fd2fddba3a1e4392da4530530bbd2e02c36e751736f23f12cf3304917c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/LatticeGroupLoci.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.GroupLoci


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeGroupLocusMoveKind.Variante87717fd2fddba3a1e4392da4530530bbd2e02c36e751736f23f12cf3304917c

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
Move classes for the combined lattice/group/locus surface.

Normalization stays reducing here. It is an idempotent reflector from the
normal-form lane, not an invertible local symmetry.
-/
inductive LatticeGroupLocusMoveKind : Type
  | identity
  | braid
  | commute
  | conjugate
  | stabilize
  | destabilize
  | quotient
  | lower
  | lift
  | replay
  | canonicalize
  | normalize
  | macroPlaceholder
deriving DecidableEq, Repr

inductive LatticeGroupLocusMoveClass : Type
  | invertible
  | reducing
  | residue
deriving DecidableEq, Repr

def classifyLatticeGroupLocusMove :
    LatticeGroupLocusMoveKind → LatticeGroupLocusMoveClass
  | .identity => .invertible
  | .braid => .invertible
  | .commute => .invertible
  | .conjugate => .invertible
  | .stabilize => .invertible
  | .destabilize => .invertible
  | .quotient => .reducing
  | .lower => .reducing
  | .lift => .reducing
  | .replay => .reducing
  | .canonicalize => .reducing
  | .normalize => .reducing
  | .macroPlaceholder => .residue

theorem identity_lattice_group_locus_move_invertible :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.identity =
      LatticeGroupLocusMoveClass.invertible := rfl

theorem braid_lattice_group_locus_move_invertible :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.braid =
      LatticeGroupLocusMoveClass.invertible := rfl

theorem quotient_lattice_group_locus_move_reducing :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.quotient =
      LatticeGroupLocusMoveClass.reducing := rfl

theorem canonicalize_lattice_group_locus_move_reducing :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.canonicalize =
      LatticeGroupLocusMoveClass.reducing := rfl

theorem normalize_lattice_group_locus_move_reducing :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.normalize =
      LatticeGroupLocusMoveClass.reducing := rfl

theorem macroPlaceholder_lattice_group_locus_move_residue :
    classifyLatticeGroupLocusMove LatticeGroupLocusMoveKind.macroPlaceholder =
      LatticeGroupLocusMoveClass.residue := rfl

/--
Invertible rewrites at the combined lattice/group/locus layer.

This is a finite groupoid surface, not a full lattice-ordered group and not a
quotient/orbit-normalization theorem.
-/
inductive InvertibleLatticeGroupLocusRewrite {α : Type} :
    CompressedString α → CompressedString α → Type
  | refl (source : CompressedString α) :
      InvertibleLatticeGroupLocusRewrite source source
  | symm {source target : CompressedString α} :
      InvertibleLatticeGroupLocusRewrite source target →
        InvertibleLatticeGroupLocusRewrite target source
  | trans {source middle target : CompressedString α} :
      InvertibleLatticeGroupLocusRewrite source middle →
      InvertibleLatticeGroupLocusRewrite middle target →
        InvertibleLatticeGroupLocusRewrite source target

def SameLatticeGroupLocusOrbit {α : Type}
    (source target : CompressedString α) : Prop :=
  Nonempty (InvertibleLatticeGroupLocusRewrite source target)

theorem sameLatticeGroupLocusOrbit_refl {α : Type}
    (source : CompressedString α) :
    SameLatticeGroupLocusOrbit source source :=
  ⟨InvertibleLatticeGroupLocusRewrite.refl source⟩

theorem sameLatticeGroupLocusOrbit_symm {α : Type}
    {source target : CompressedString α}
    (h : SameLatticeGroupLocusOrbit source target) :
    SameLatticeGroupLocusOrbit target source := by
  rcases h with ⟨rewrite⟩
  exact ⟨InvertibleLatticeGroupLocusRewrite.symm rewrite⟩

theorem sameLatticeGroupLocusOrbit_trans {α : Type}
    {source middle target : CompressedString α}
    (left : SameLatticeGroupLocusOrbit source middle)
    (right : SameLatticeGroupLocusOrbit middle target) :
    SameLatticeGroupLocusOrbit source target := by
  rcases left with ⟨leftRewrite⟩
  rcases right with ⟨rightRewrite⟩
  exact ⟨InvertibleLatticeGroupLocusRewrite.trans leftRewrite rightRewrite⟩

/--
Combined preservation package.

It says an admissible reversible local action preserves decoded semantics,
decoded-position loci, slice loci, slice containment order, and lookup fibers.
-/
structure PreservesLatticeGroupLoci {α : Type}
    (source target : CompressedString α) : Type where
  preservesLookup : PreservesSemanticsAndLookup source target
  decodedForward :
    DecodedLocus (decode source) → DecodedLocus (decode target)
  decodedBackward :
    DecodedLocus (decode target) → DecodedLocus (decode source)
  sliceForward :
    SliceLocus (decode source) → SliceLocus (decode target)
  sliceBackward :
    SliceLocus (decode target) → SliceLocus (decode source)
  preservesSliceOrderForward :
    ∀ {left right : SliceLocus (decode source)},
      Slice.le left.slice right.slice →
        Slice.le (sliceForward left).slice (sliceForward right).slice
  preservesSliceOrderBackward :
    ∀ {left right : SliceLocus (decode target)},
      Slice.le left.slice right.slice →
        Slice.le (sliceBackward left).slice (sliceBackward right).slice
  decodedRoundtripLeft :
    ∀ locus, decodedBackward (decodedForward locus) = locus
  decodedRoundtripRight :
    ∀ locus, decodedForward (decodedBackward locus) = locus
  sliceRoundtripLeft :
    ∀ locus, sliceBackward (sliceForward locus) = locus
  sliceRoundtripRight :
    ∀ locus, sliceForward (sliceBackward locus) = locus

def latticeGroupLoci_refl {α : Type}
    (source : CompressedString α) :
    PreservesLatticeGroupLoci source source :=
  { preservesLookup := preserves_semantics_and_lookup_refl source
    decodedForward := fun locus => locus
    decodedBackward := fun locus => locus
    sliceForward := fun locus => locus
    sliceBackward := fun locus => locus
    preservesSliceOrderForward := by
      intro _ _ h
      exact h
    preservesSliceOrderBackward := by
      intro _ _ h
      exact h
    decodedRoundtripLeft := by
      intro _
      rfl
    decodedRoundtripRight := by
      intro _
      rfl
    sliceRoundtripLeft := by
      intro _
      rfl
    sliceRoundtripRight := by
      intro _
      rfl }

def latticeGroupLoci_symm {α : Type}
    {source target : CompressedString α}
    (h : PreservesLatticeGroupLoci source target) :
    PreservesLatticeGroupLoci target source :=
  { preservesLookup := preserves_semantics_and_lookup_symm_for_loci h.preservesLookup
    decodedForward := h.decodedBackward
    decodedBackward := h.decodedForward
    sliceForward := h.sliceBackward
    sliceBackward := h.sliceForward
    preservesSliceOrderForward := h.preservesSliceOrderBackward
    preservesSliceOrderBackward := h.preservesSliceOrderForward
    decodedRoundtripLeft := h.decodedRoundtripRight
    decodedRoundtripRight := h.decodedRoundtripLeft
    sliceRoundtripLeft := h.sliceRoundtripRight
    sliceRoundtripRight := h.sliceRoundtripLeft }

def latticeGroupLoci_trans {α : Type}
    {left middle right : CompressedString α}
    (hleft : PreservesLatticeGroupLoci left middle)
    (hright : PreservesLatticeGroupLoci middle right) :
    PreservesLatticeGroupLoci left right :=
  { preservesLookup :=
      preserves_semantics_and_lookup_trans
        hleft.preservesLookup
        hright.preservesLookup
    decodedForward := fun locus =>
      hright.decodedForward (hleft.decodedForward locus)
    decodedBackward := fun locus =>
      hleft.decodedBackward (hright.decodedBackward locus)
    sliceForward := fun locus =>
      hright.sliceForward (hleft.sliceForward locus)
    sliceBackward := fun locus =>
      hleft.sliceBackward (hright.sliceBackward locus)
    preservesSliceOrderForward := by
      intro sourceLeft sourceRight horder
      exact hright.preservesSliceOrderForward
        (hleft.preservesSliceOrderForward horder)
    preservesSliceOrderBackward := by
      intro targetLeft targetRight horder
      exact hleft.preservesSliceOrderBackward
        (hright.preservesSliceOrderBackward horder)
    decodedRoundtripLeft := by
      intro locus
      rw [hright.decodedRoundtripLeft, hleft.decodedRoundtripLeft]
    decodedRoundtripRight := by
      intro locus
      rw [hleft.decodedRoundtripRight, hright.decodedRoundtripRight]
    sliceRoundtripLeft := by
      intro locus
      rw [hright.sliceRoundtripLeft, hleft.sliceRoundtripLeft]
    sliceRoundtripRight := by
      intro locus
      rw [hleft.sliceRoundtripRight, hright.sliceRoundtripRight] }

theorem invertible_lattice_group_locus_rewrite_preserves_lattice_group_loci
    {α : Type} {source target : CompressedString α}
    (rewrite : InvertibleLatticeGroupLocusRewrite source target) :
    Nonempty (PreservesLatticeGroupLoci source target) := by
  induction rewrite with
  | refl source =>
      exact ⟨latticeGroupLoci_refl source⟩
  | symm rewrite ih =>
      rcases ih with ⟨h⟩
      exact ⟨latticeGroupLoci_symm h⟩
  | trans left right leftIh rightIh =>
      rcases leftIh with ⟨leftPreserves⟩
      rcases rightIh with ⟨rightPreserves⟩
      exact ⟨latticeGroupLoci_trans leftPreserves rightPreserves⟩

theorem invertible_lattice_group_locus_rewrite_preserves_lookup
    {α : Type} {source target : CompressedString α}
    (rewrite : InvertibleLatticeGroupLocusRewrite source target) :
    PreservesSemanticsAndLookup source target :=
  let ⟨preserves⟩ :=
    invertible_lattice_group_locus_rewrite_preserves_lattice_group_loci
      rewrite
  preserves.preservesLookup

end Think.Compression.Syntax
```
