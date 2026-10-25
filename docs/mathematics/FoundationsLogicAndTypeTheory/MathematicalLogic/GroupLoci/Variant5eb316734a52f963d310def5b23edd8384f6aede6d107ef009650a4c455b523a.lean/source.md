# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GroupLoci.Variant5eb316734a52f963d310def5b23edd8384f6aede6d107ef009650a4c455b523a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5bbf164e59ab857e865db2da09ec4db2344f3c4` · SHA-256 `cde9a6f240a2d57017f016b1e1e95d06a4c193bfd9f9b5636d3f62e383afa613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvertibleLocusRewrite.Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.InvertibleLocusRewrite.Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65","mathematical_subject":"Logic.Foundations","original_sha256":"93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Compression/GroupLoci.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Compression.LatticeLoci


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvertibleLocusRewrite.Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65

set_option autoImplicit false

namespace Think.Compression.Syntax

/--
Invertible local-address rewrites.

This is a groupoid surface over compressed syntax and its decoded/slice loci.
It is not a quotient completion and does not classify normalization as a group
action.
-/
inductive InvertibleLocusRewrite {α : Type} :
    CompressedString α → CompressedString α → Type
  | refl (source : CompressedString α) :
      InvertibleLocusRewrite source source
  | symm {source target : CompressedString α} :
      InvertibleLocusRewrite source target →
        InvertibleLocusRewrite target source
  | trans {source middle target : CompressedString α} :
      InvertibleLocusRewrite source middle →
      InvertibleLocusRewrite middle target →
        InvertibleLocusRewrite source target

def SameLocusOrbit {α : Type}
    (source target : CompressedString α) : Prop :=
  Nonempty (InvertibleLocusRewrite source target)

theorem sameLocusOrbit_refl {α : Type}
    (source : CompressedString α) :
    SameLocusOrbit source source :=
  ⟨InvertibleLocusRewrite.refl source⟩

theorem sameLocusOrbit_symm {α : Type}
    {source target : CompressedString α}
    (h : SameLocusOrbit source target) :
    SameLocusOrbit target source := by
  rcases h with ⟨rewrite⟩
  exact ⟨InvertibleLocusRewrite.symm rewrite⟩

theorem sameLocusOrbit_trans {α : Type}
    {source middle target : CompressedString α}
    (left : SameLocusOrbit source middle)
    (right : SameLocusOrbit middle target) :
    SameLocusOrbit source target := by
  rcases left with ⟨leftRewrite⟩
  rcases right with ⟨rightRewrite⟩
  exact ⟨InvertibleLocusRewrite.trans leftRewrite rightRewrite⟩

inductive LocusMoveKind : Type
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

inductive LocusMoveClass : Type
  | invertible
  | reducing
  | residue
deriving DecidableEq, Repr

def classifyLocusMove : LocusMoveKind → LocusMoveClass
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

theorem identity_locus_move_invertible :
    classifyLocusMove LocusMoveKind.identity = LocusMoveClass.invertible := rfl

theorem braid_locus_move_invertible :
    classifyLocusMove LocusMoveKind.braid = LocusMoveClass.invertible := rfl

theorem quotient_locus_move_reducing :
    classifyLocusMove LocusMoveKind.quotient = LocusMoveClass.reducing := rfl

theorem canonicalize_locus_move_reducing :
    classifyLocusMove LocusMoveKind.canonicalize = LocusMoveClass.reducing := rfl

theorem normalize_locus_move_reducing :
    classifyLocusMove LocusMoveKind.normalize = LocusMoveClass.reducing := rfl

theorem macroPlaceholder_locus_move_residue :
    classifyLocusMove LocusMoveKind.macroPlaceholder = LocusMoveClass.residue := rfl

/--
An explicit action on decoded and slice loci induced by a lookup-preserving
syntax relation.

The action is data-bearing: it carries forward/backward maps and roundtrip laws
for both point loci and slice loci.
-/
structure LocusAction {α : Type}
    (source target : CompressedString α) where
  preserves : PreservesSemanticsAndLookup source target
  decodedForward :
    DecodedLocus (decode source) → DecodedLocus (decode target)
  decodedBackward :
    DecodedLocus (decode target) → DecodedLocus (decode source)
  sliceForward :
    SliceLocus (decode source) → SliceLocus (decode target)
  sliceBackward :
    SliceLocus (decode target) → SliceLocus (decode source)
  decoded_roundtrip_left :
    ∀ locus, decodedBackward (decodedForward locus) = locus
  decoded_roundtrip_right :
    ∀ locus, decodedForward (decodedBackward locus) = locus
  slice_roundtrip_left :
    ∀ locus, sliceBackward (sliceForward locus) = locus
  slice_roundtrip_right :
    ∀ locus, sliceForward (sliceBackward locus) = locus

def groupLocus_refl_action {α : Type}
    (source : CompressedString α) :
    LocusAction source source :=
  { preserves := preserves_semantics_and_lookup_refl source
    decodedForward := fun locus => locus
    decodedBackward := fun locus => locus
    sliceForward := fun locus => locus
    sliceBackward := fun locus => locus
    decoded_roundtrip_left := by
      intro _
      rfl
    decoded_roundtrip_right := by
      intro _
      rfl
    slice_roundtrip_left := by
      intro _
      rfl
    slice_roundtrip_right := by
      intro _
      rfl }

theorem preserves_semantics_and_lookup_symm_for_loci {α : Type}
    {source target : CompressedString α}
    (h : PreservesSemanticsAndLookup source target) :
    PreservesSemanticsAndLookup target source := by
  rcases h with ⟨equiv⟩
  exact ⟨preservesOfDecodeEq equiv.decode_eq.symm⟩

theorem invertible_locus_rewrite_preserves_lookup {α : Type}
    {source target : CompressedString α}
    (rewrite : InvertibleLocusRewrite source target) :
    PreservesSemanticsAndLookup source target := by
  induction rewrite with
  | refl source =>
      exact preserves_semantics_and_lookup_refl source
  | symm rewrite ih =>
      exact preserves_semantics_and_lookup_symm_for_loci ih
  | trans left right leftIh rightIh =>
      exact preserves_semantics_and_lookup_trans leftIh rightIh

end Think.Compression.Syntax
```
