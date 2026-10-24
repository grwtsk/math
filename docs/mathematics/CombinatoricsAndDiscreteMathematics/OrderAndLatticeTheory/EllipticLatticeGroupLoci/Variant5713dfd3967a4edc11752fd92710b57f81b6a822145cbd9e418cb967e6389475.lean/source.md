# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLatticeGroupLoci.Variant5713dfd3967a4edc11752fd92710b57f81b6a822145cbd9e418cb967e6389475

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b3cdb486cbed8476943cc68ad967269c36980e9` · SHA-256 `54e26836718ef9a4bfe788ed4eab05e1568f648f88f253ac4a561a58c2b695a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLocusAssignment.Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.EllipticLocusAssignment.Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630","mathematical_subject":"Algebra.OrderTheory","original_sha256":"08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/EllipticLatticeGroupLoci.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.Basic
import Think.SourceTree.Legacy.Arithmetic.EllipticGroupLaw
import Think.SourceTree.Legacy.Arithmetic.BSDRankIdentity
import Think.SourceTree.Legacy.Compression.Lookup
import Think.SourceTree.Legacy.Compression.Rewrite
import Think.SourceTree.Legacy.Compression.NormalForm
import Think.SourceTree.Legacy.Compression.LatticeGroupLoci


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.EllipticLocusAssignment.Variant08124030c4231785b0711ecec0971f3fbec5d0c9d18779e0ba7802f80220f630

set_option autoImplicit false

namespace Think.Arithmetic.EllipticLatticeGroupLoci

/-
Finite bridge surface from decoded compression loci to elliptic arithmetic
labels. This file only preserves labels and residue atoms across already
lookup-preserving compression transport. It does not import Mordell-Weil, BSD,
modularity, analytic continuation, or elliptic group-law theorem authority.
-/

structure EllipticLocusAssignment {α : Type}
    (s : Think.Compression.Syntax.CompressedString α) where
  slice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode s)
  groupLaw :
    Think.Arithmetic.EllipticGroupLaw.EllipticCurveGroupLawSurface
  dna :
    Think.Arithmetic.EllipticGroupLaw.EllipticCurveBitMatrixDnaSurface
  bridgeAuthority :
    Think.Arithmetic.BridgeAuthority
  residueAtoms : List String

inductive EllipticLatticeGroupLocusMoveClass : Type
  | finiteLocusTransport
  | groupLawLabelPreserved
  | arithmeticBridgeResidue
  | refusedAuthorityUpgrade
deriving DecidableEq, Repr

structure PreservesEllipticLatticeGroupLoci {α : Type}
    {source target : Think.Compression.Syntax.CompressedString α}
    (sourceAssignment : EllipticLocusAssignment source)
    (targetAssignment : EllipticLocusAssignment target) : Prop where
  preservesCompression :
    Think.Compression.Syntax.PreservesSemanticsAndLookup source target
  sameCurve :
    sourceAssignment.groupLaw.curve = targetAssignment.groupLaw.curve
  sameDnaCurve :
    sourceAssignment.dna.curve = targetAssignment.dna.curve
  sameIdentityLabel :
    sourceAssignment.groupLaw.identityLabel =
      targetAssignment.groupLaw.identityLabel
  sameOperationLabel :
    sourceAssignment.groupLaw.operationLabel =
      targetAssignment.groupLaw.operationLabel
  sameInverseLabel :
    sourceAssignment.groupLaw.inverseLabel =
      targetAssignment.groupLaw.inverseLabel
  sameDnaGroupLawAtom :
    sourceAssignment.dna.groupLawAtom = targetAssignment.dna.groupLawAtom
  residuePreserved :
    sourceAssignment.residueAtoms = targetAssignment.residueAtoms

def sampleCompressedString :
    Think.Compression.Syntax.CompressedString String :=
  Think.Compression.Syntax.encode ["E_short"]

def sampleSlice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode sampleCompressedString) :=
  { start := 0
    len := 1
    valid := by
      change
        0 + 1 ≤
          (Think.Compression.Syntax.decode
            (Think.Compression.Syntax.encode ["E_short"])).length
      rw [Think.Compression.Syntax.decode_encode_identity]
      decide }

def sampleResidueAtoms : List String :=
  [ Think.Arithmetic.EllipticGroupLaw.bitMatrixDnaSurface.mordellTotalityAtom
  , "bsd.rank_identity:E_short"
  , "hasse_weil_analytic_continuation_pending"
  , "modularity_import_pending"
  , "elliptic_group_law_adapter_pending" ]

def sampleEllipticAssignment :
    EllipticLocusAssignment sampleCompressedString :=
  { slice := sampleSlice
    groupLaw :=
      Think.Arithmetic.EllipticGroupLaw.chordTangentGroupLawSurface
    dna :=
      Think.Arithmetic.EllipticGroupLaw.bitMatrixDnaSurface
    bridgeAuthority := Think.Arithmetic.BridgeAuthority.bridgeObligation
    residueAtoms := sampleResidueAtoms }

theorem sample_assignment_curve_id :
    sampleEllipticAssignment.groupLaw.curve.curveId = "E_short" := by
  rfl

theorem sample_assignment_identity_label :
    sampleEllipticAssignment.groupLaw.identityLabel =
      "point_at_infinity" := by
  rfl

theorem sample_assignment_group_law_atom :
    sampleEllipticAssignment.dna.groupLawAtom =
      "elliptic_curve.group_law.chord_tangent" := by
  rfl

theorem elliptic_lattice_group_loci_refl {α : Type}
    {s : Think.Compression.Syntax.CompressedString α}
    (assignment : EllipticLocusAssignment s) :
    PreservesEllipticLatticeGroupLoci assignment assignment :=
  { preservesCompression :=
      Think.Compression.Syntax.preserves_semantics_and_lookup_refl s
    sameCurve := rfl
    sameDnaCurve := rfl
    sameIdentityLabel := rfl
    sameOperationLabel := rfl
    sameInverseLabel := rfl
    sameDnaGroupLawAtom := rfl
    residuePreserved := rfl }

theorem elliptic_lattice_group_loci_preserves_residue {α : Type}
    {source target : Think.Compression.Syntax.CompressedString α}
    {sourceAssignment : EllipticLocusAssignment source}
    {targetAssignment : EllipticLocusAssignment target}
    (h :
      PreservesEllipticLatticeGroupLoci
        sourceAssignment
        targetAssignment) :
    sourceAssignment.residueAtoms = targetAssignment.residueAtoms :=
  h.residuePreserved

def sampleHasseWeilSurface :
    Think.Arithmetic.HasseWeilLFunctionSurface :=
  { curve :=
      Think.Arithmetic.EllipticGroupLaw.shortWeierstrassSurface
    lFunctionSymbol := "L(E_short,s)"
    criticalPoint := "s=1"
    analyticContinuationImported := false }

def sampleBSDRankSurface :
    Think.Arithmetic.BSDRankIdentity.BSDRankSurface :=
  { curve :=
      Think.Arithmetic.EllipticGroupLaw.shortWeierstrassSurface
    algebraicRankSymbol := "rank_E_short_algebraic"
    analyticRankSymbol := "rank_E_short_analytic"
    hasseWeilLFunction := sampleHasseWeilSurface }

theorem mordell_totality_still_residue :
    (Think.Arithmetic.EllipticGroupLaw.mordellTotalityChecked
      sampleEllipticAssignment.groupLaw).hasResidue = true := by
  rfl

theorem bsd_rank_identity_still_residue :
    (Think.Arithmetic.BSDRankIdentity.bsdRankIdentityChecked
      sampleBSDRankSurface).hasResidue = true := by
  rfl

end Think.Arithmetic.EllipticLatticeGroupLoci
```
