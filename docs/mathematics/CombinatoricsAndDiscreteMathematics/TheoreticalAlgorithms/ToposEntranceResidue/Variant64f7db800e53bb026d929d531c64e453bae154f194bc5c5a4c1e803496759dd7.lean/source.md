# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToposEntranceResidue.Variant64f7db800e53bb026d929d531c64e453bae154f194bc5c5a4c1e803496759dd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9ff8c12cd32d4cbf2d10a6f10a8f30632632803` · SHA-256 `79b5dcfe5c56f8a03da5a8e155b8db039778fb1d455c783d779b6bf5dc7dcc21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteFieldCurveSurface.Variant25eb03a983da99d8aaef77426f87069da28f2f4728641ece5dafcd870e4585bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25eb03a983da99d8aaef77426f87069da28f2f4728641ece5dafcd870e4585bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FiniteFieldCurveSurface.Variant25eb03a983da99d8aaef77426f87069da28f2f4728641ece5dafcd870e4585bb","mathematical_subject":"Computation.DataStructures","original_sha256":"25eb03a983da99d8aaef77426f87069da28f2f4728641ece5dafcd870e4585bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/ToposEntranceResidue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra
import Think.SourceTree.Legacy.Arithmetic.FunctionFieldRHImport
import Think.SourceTree.Legacy.Compression.Lookup
import Think.SourceTree.Legacy.Compression.Residue


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteFieldCurveSurface.Variant25eb03a983da99d8aaef77426f87069da28f2f4728641ece5dafcd870e4585bb

set_option autoImplicit false

namespace Think.Arithmetic.ToposEntranceResidue

open Think.Arithmetic.FinitePhaseBitmatrixAlgebra

/--
A finite-field curve surface with a shtuka-style label.

The `shtukaStyleClaim` field records intended shape only; theorem authority is
blocked unless `shtukaBridgeImported` is separately true.
-/
structure FiniteFieldCurveSurface where
  curveId : String
  q : Nat
  primePowerCertified : Bool
  smooth : Bool
  projective : Bool
  shtukaStyleClaim : Bool
  shtukaBridgeImported : Bool
deriving Repr, DecidableEq

structure BitMatrixResidueClassifier where
  matrix : Mat2F2
  phase : Nat × Nat
  bucket : RankIdentityBucket
  residueBit : Bool
  finiteFieldLabel : String
deriving Repr, DecidableEq

namespace BitMatrixResidueClassifier

def consistent (classifier : BitMatrixResidueClassifier) : Prop :=
  classifier.phase =
      Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase
        classifier.matrix ∧
    classifier.bucket = rankIdentityBucket classifier.matrix

end BitMatrixResidueClassifier

def residueBitForBucket : RankIdentityBucket → Bool
  | .zero => false
  | .identity => true
  | .rankOneSingular => true
  | .nonIdentityInvertible => true

def mkBitMatrixResidueClassifier
    (finiteFieldLabel : String) (matrix : Mat2F2) :
    BitMatrixResidueClassifier :=
  let bucket := rankIdentityBucket matrix
  { matrix := matrix
    phase := Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase matrix
    bucket := bucket
    residueBit := residueBitForBucket bucket
    finiteFieldLabel := finiteFieldLabel }

theorem mk_classifier_consistent
    (finiteFieldLabel : String) (matrix : Mat2F2) :
    BitMatrixResidueClassifier.consistent
      (mkBitMatrixResidueClassifier finiteFieldLabel matrix) := by
  exact ⟨rfl, rfl⟩

theorem mk_classifier_phase_eq
    (finiteFieldLabel : String) (matrix : Mat2F2) :
    (mkBitMatrixResidueClassifier finiteFieldLabel matrix).phase =
      Think.Arithmetic.FinitePhaseBitmatrixAlgebra.phase matrix := rfl

theorem mk_classifier_bucket_eq
    (finiteFieldLabel : String) (matrix : Mat2F2) :
    (mkBitMatrixResidueClassifier finiteFieldLabel matrix).bucket =
      rankIdentityBucket matrix := rfl

structure BijectiveCompressionWitness where
  sourceCarrier : String
  compressedCarrier : String
  encodeLabel : String
  decodeLabel : String
  roundtripSourceClosed : Bool
  roundtripCompressedClosed : Bool
  theoremPromotionClaim : Bool
deriving Repr, DecidableEq

inductive ToposEntranceResidueKind where
  | essentialGeometricMorphismMissing
  | lawvereTierneyTopologyMissing
  | fullToposSheafificationMissing
  | shtukaBridgeMissing
  | finiteToGlobalPromotionBlocked
deriving Repr, DecidableEq

structure ToposEntranceResidueSurface where
  curve : FiniteFieldCurveSurface
  classifiers : List BitMatrixResidueClassifier
  compressionWitness : BijectiveCompressionWitness
  finiteSheafStyleGluing : Bool
  essentialGeometricMorphismClaim : Bool
  lawvereTierneyTopologyClaim : Bool
  fullToposSheafificationClaim : Bool
  theoremPromotionClaim : Bool
  residues : List ToposEntranceResidueKind
deriving Repr, DecidableEq

def defaultFiniteFieldCurveSurface : FiniteFieldCurveSurface :=
  { curveId := "finite_field_curve_shtuka_style_surface"
    q := 2
    primePowerCertified := true
    smooth := true
    projective := true
    shtukaStyleClaim := true
    shtukaBridgeImported := false }

def defaultBijectiveCompressionWitness : BijectiveCompressionWitness :=
  { sourceCarrier := "allMat2F2"
    compressedCarrier := "finite_bitmatrix_residue_classifier"
    encodeLabel := "finite_classifier_encode"
    decodeLabel := "finite_classifier_decode"
    roundtripSourceClosed := true
    roundtripCompressedClosed := true
    theoremPromotionClaim := false }

def defaultToposEntranceResidues : List ToposEntranceResidueKind := [
  .essentialGeometricMorphismMissing,
  .lawvereTierneyTopologyMissing,
  .fullToposSheafificationMissing,
  .shtukaBridgeMissing,
  .finiteToGlobalPromotionBlocked
]

def defaultToposEntranceClassifiers : List BitMatrixResidueClassifier :=
  allMat2F2.map (mkBitMatrixResidueClassifier "F2")

def defaultToposEntranceResidueSurface : ToposEntranceResidueSurface :=
  { curve := defaultFiniteFieldCurveSurface
    classifiers := defaultToposEntranceClassifiers
    compressionWitness := defaultBijectiveCompressionWitness
    finiteSheafStyleGluing := true
    essentialGeometricMorphismClaim := false
    lawvereTierneyTopologyClaim := false
    fullToposSheafificationClaim := false
    theoremPromotionClaim := false
    residues := defaultToposEntranceResidues }

theorem default_topos_entrance_denies_essential_geometric_morphism :
    defaultToposEntranceResidueSurface.essentialGeometricMorphismClaim =
      false := rfl

theorem default_topos_entrance_denies_lawvere_tierney_topology :
    defaultToposEntranceResidueSurface.lawvereTierneyTopologyClaim =
      false := rfl

theorem default_topos_entrance_denies_full_sheafification :
    defaultToposEntranceResidueSurface.fullToposSheafificationClaim =
      false := rfl

theorem default_topos_entrance_denies_theorem_promotion :
    defaultToposEntranceResidueSurface.theoremPromotionClaim = false := rfl

theorem default_topos_entrance_shtuka_bridge_not_imported :
    defaultToposEntranceResidueSurface.curve.shtukaBridgeImported =
      false := rfl

theorem default_topos_entrance_compression_not_theorem_promotion :
    defaultToposEntranceResidueSurface.compressionWitness.theoremPromotionClaim =
      false := rfl

theorem default_topos_entrance_retains_categorical_residue :
    ToposEntranceResidueKind.essentialGeometricMorphismMissing ∈
        defaultToposEntranceResidueSurface.residues ∧
      ToposEntranceResidueKind.lawvereTierneyTopologyMissing ∈
        defaultToposEntranceResidueSurface.residues ∧
      ToposEntranceResidueKind.fullToposSheafificationMissing ∈
        defaultToposEntranceResidueSurface.residues := by
  simp [defaultToposEntranceResidueSurface, defaultToposEntranceResidues]

theorem default_topos_entrance_retains_shtuka_residue :
    ToposEntranceResidueKind.shtukaBridgeMissing ∈
      defaultToposEntranceResidueSurface.residues := by
  simp [defaultToposEntranceResidueSurface, defaultToposEntranceResidues]

theorem default_topos_entrance_retains_finite_to_global_residue :
    ToposEntranceResidueKind.finiteToGlobalPromotionBlocked ∈
      defaultToposEntranceResidueSurface.residues := by
  simp [defaultToposEntranceResidueSurface, defaultToposEntranceResidues]

theorem default_topos_entrance_classifiers_count_matches_allMat2F2 :
    defaultToposEntranceResidueSurface.classifiers.length =
      allMat2F2.length := by
  rfl

theorem default_topos_entrance_classifiers_count_sixteen :
    defaultToposEntranceResidueSurface.classifiers.length = 16 := by
  rfl

theorem finite_bitmatrix_topos_entrance_not_function_field_rh_import :
    Think.Arithmetic.FunctionFieldRHImport.defaultFunctionFieldRHImportSurface.theoremImported = false := by
  rfl

theorem default_topos_entrance_is_residue_classified_candidate :
    defaultToposEntranceResidueSurface.finiteSheafStyleGluing = true ∧
      defaultToposEntranceResidueSurface.essentialGeometricMorphismClaim =
        false ∧
      defaultToposEntranceResidueSurface.lawvereTierneyTopologyClaim =
        false ∧
      defaultToposEntranceResidueSurface.fullToposSheafificationClaim =
        false ∧
      defaultToposEntranceResidueSurface.theoremPromotionClaim = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

end Think.Arithmetic.ToposEntranceResidue
```
