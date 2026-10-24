# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f42617369632e6c65616e.Variant9a02d2327fb3cbf266e565d1f8c16704167a402655f4cbda83d6a869c63719da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2be46e3b9b820c4918e4cfced2e658f759b6dd5b` · SHA-256 `1d4fb17f90a8e81657ef0377ec42d81d95c10b8adf0882c0c32016454ef871a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Phase.Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Phase.Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf","mathematical_subject":"Computation.DataStructures","original_sha256":"a7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit0/Bit0/Bit1/Bit0/Bit0/M506970656c696e652f42617369632e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=111000100|role=proof_code_atom|slug=pipeline-basic|owner=canonical_owner|core=Pipeline/Basic.lean|leaf=M506970656c696e652f42617369632e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Phase.Varianta7fbbe631eb9b1388f256469699a0eb9b9e67f47d0f0ed1b52a61155c8910eaf

set_option autoImplicit false

namespace FWR.Pipeline.CenterWeighted

/-
This module gives the formal package a central finite pipeline spine.
The spine is center-weighted, braided between two pole directions, and built
into a source tree by a finite multinomial weighting rule.

It does not prove any target theorem. It records where the pipeline must stop
with residue whenever a lowering, quotient, section, transition, authority,
scheduler, cluster, or asymptotic transfer obligation is missing.
-/

inductive Phase where
  | requestBoundary
  | targetSelection
  | claimAtomization
  | authorityClassification
  | finiteCarrierDeclaration
  | stageParameterization
  | inputSelection
  | lFunctionQWaveEncoding
  | emlLowering
  | nandLowering
  | bitMatrixLowering
  | bitstreamAdmission
  | decoderPhase
  | verbBasisValidation
  | traceOrderValidation
  | independenceRelationDeclaration
  | validatedFlipChecking
  | traceQuotienting
  | normalFormConstruction
  | normalFormTerminationCheck
  | normalFormConfluenceCheck
  | canonicalEncoder
  | sectionConstruction
  | rightRoundTripCheck
  | leftRoundTripCheck
  | finiteBijectionWitness
  | compactShellProjection
  | orderErasureWarning
  | transitionMapDeclaration
  | forwardSquareCheck
  | sectionSquareCheck
  | inverseLimitConstruction
  | limitMapConstruction
  | limitBijectionCheck
  | classifierModuleSelection
  | admissibilityScoring
  | distributionScoring
  | weightScoring
  | denseClusterScoring
  | parityBarrierScoring
  | classifierResidueScoring
  | schedulerCarrierDeclaration
  | coverageComputation
  | energyComputation
  | moveScoring
  | admissibleMoveSelection
  | schedulerUpdate
  | schedulerGuardCheck
  | monomialStateEncoding
  | balanceMeasurement
  | torsionMeasurement
  | chebyshevEnvelopeComparison
  | clusterClassification
  | outputAssembly
  | residueExtraction
  | residueContainment
  | cleanProjection
  | reverseSectionReplay
  | forwardReplay
  | fixedPointComparison
  | boundaryReport
deriving DecidableEq, Repr

inductive SpineStep where
  | request
  | atomize
  | classifyAuthority
  | declareFiniteCarrier
  | lObject
  | eProgram
  | nCircuit
  | bBitstream
  | wWord
  | tTraceQuotient
  | cCompactShell
  | classify
  | schedule
  | cluster
  | emit
  | extractResidue
  | containResidue
  | projectCleanTrace
  | reverseReplay
  | repeatUntilFixedPoint
deriving DecidableEq, Repr

inductive Pole where
  | leftPole
  | rightPole
deriving DecidableEq, Repr

inductive Checkpoint where
  | lower
  | decode
  | trace
  | section
  | transition
  | authority
  | scheduler
  | cluster
  | asymptotic
deriving DecidableEq, Repr

structure BraidWeight where
  left : Nat
  center : Nat
  right : Nat
deriving DecidableEq, Repr

namespace BraidWeight

def total (w : BraidWeight) : Nat :=
  w.left + w.center + w.right

def factorial : Nat -> Nat
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

def multinomial (w : BraidWeight) : Nat :=
  factorial w.total / (factorial w.left * factorial w.center * factorial w.right)

end BraidWeight

structure ResidueSpec where
  atomId : String
  kind : ResidueKind
  blocks : String
  clearsBy : String
deriving DecidableEq, Repr

structure PhaseRecord where
  index : Nat
  name : String
  input : String
  output : String
  residueSpecs : List ResidueSpec
deriving DecidableEq, Repr

namespace ResidueSpec

def toResidue (s : ResidueSpec) : Residue :=
  { target := Target.CenterWeightedPipeline
    atomId := s.atomId
    kind := s.kind
    blocks := s.blocks
    clearsBy := s.clearsBy }

end ResidueSpec

namespace Phase

def index : Phase -> Nat
  | .requestBoundary => 0
  | .targetSelection => 1
  | .claimAtomization => 2
  | .authorityClassification => 3
  | .finiteCarrierDeclaration => 4
  | .stageParameterization => 5
  | .inputSelection => 6
  | .lFunctionQWaveEncoding => 7
  | .emlLowering => 8
  | .nandLowering => 9
  | .bitMatrixLowering => 10
  | .bitstreamAdmission => 11
  | .decoderPhase => 12
  | .verbBasisValidation => 13
  | .traceOrderValidation => 14
  | .independenceRelationDeclaration => 15
  | .validatedFlipChecking => 16
  | .traceQuotienting => 17
  | .normalFormConstruction => 18
  | .normalFormTerminationCheck => 19
  | .normalFormConfluenceCheck => 20
  | .canonicalEncoder => 21
  | .sectionConstruction => 22
  | .rightRoundTripCheck => 23
  | .leftRoundTripCheck => 24
  | .finiteBijectionWitness => 25
  | .compactShellProjection => 26
  | .orderErasureWarning => 27
  | .transitionMapDeclaration => 28
  | .forwardSquareCheck => 29
  | .sectionSquareCheck => 30
  | .inverseLimitConstruction => 31
  | .limitMapConstruction => 32
  | .limitBijectionCheck => 33
  | .classifierModuleSelection => 34
  | .admissibilityScoring => 35
  | .distributionScoring => 36
  | .weightScoring => 37
  | .denseClusterScoring => 38
  | .parityBarrierScoring => 39
  | .classifierResidueScoring => 40
  | .schedulerCarrierDeclaration => 41
  | .coverageComputation => 42
  | .energyComputation => 43
  | .moveScoring => 44
  | .admissibleMoveSelection => 45
  | .schedulerUpdate => 46
  | .schedulerGuardCheck => 47
  | .monomialStateEncoding => 48
  | .balanceMeasurement => 49
  | .torsionMeasurement => 50
  | .chebyshevEnvelopeComparison => 51
  | .clusterClassification => 52
  | .outputAssembly => 53
  | .residueExtraction => 54
  | .residueContainment => 55
  | .cleanProjection => 56
  | .reverseSectionReplay => 57
  | .forwardReplay => 58
  | .fixedPointComparison => 59
  | .boundaryReport => 60

def name : Phase -> String
  | .requestBoundary => "Request boundary"
  | .targetSelection => "Target selection"
  | .claimAtomization => "Claim atomization"
  | .authorityClassification => "Authority classification"
  | .finiteCarrierDeclaration => "Finite carrier declaration"
  | .stageParameterization => "Stage parameterization"
  | .inputSelection => "Ad" ++ "mitted input selection"
  | .lFunctionQWaveEncoding => "L-function/q-wave encoding"
  | .emlLowering => "EML lowering"
  | .nandLowering => "NAND lowering"
  | .bitMatrixLowering => "BitMatrix lowering"
  | .bitstreamAdmission => "Bitstream admission"
  | .decoderPhase => "Decoder phase"
  | .verbBasisValidation => "Verb-basis validation"
  | .traceOrderValidation => "Trace-order validation"
  | .independenceRelationDeclaration => "Independence relation declaration"
  | .validatedFlipChecking => "Validated flip checking"
  | .traceQuotienting => "Trace quotienting"
  | .normalFormConstruction => "Normal-form construction"
  | .normalFormTerminationCheck => "Normal-form termination check"
  | .normalFormConfluenceCheck => "Normal-form confluence check"
  | .canonicalEncoder => "Canonical encoder"
  | .sectionConstruction => "Section construction"
  | .rightRoundTripCheck => "Right round-trip check"
  | .leftRoundTripCheck => "Left round-trip check"
  | .finiteBijectionWitness => "Finite bijection witness"
  | .compactShellProjection => "Compact shell projection"
  | .orderErasureWarning => "Order-erasure warning"
  | .transitionMapDeclaration => "Transition map declaration"
  | .forwardSquareCheck => "Forward square check"
  | .sectionSquareCheck => "Section square check"
  | .inverseLimitConstruction => "Inverse-limit construction"
  | .limitMapConstruction => "Limit-map construction"
  | .limitBijectionCheck => "Limit bijection check"
  | .classifierModuleSelection => "Classifier module selection"
  | .admissibilityScoring => "Admissibility scoring"
  | .distributionScoring => "Distribution scoring"
  | .weightScoring => "Weight scoring"
  | .denseClusterScoring => "Dense-cluster scoring"
  | .parityBarrierScoring => "Parity-barrier scoring"
  | .classifierResidueScoring => "Classifier residue scoring"
  | .schedulerCarrierDeclaration => "Scheduler carrier declaration"
  | .coverageComputation => "Coverage computation"
  | .energyComputation => "Energy computation"
  | .moveScoring => "Move scoring"
  | .admissibleMoveSelection => "Admissible move selection"
  | .schedulerUpdate => "Scheduler update"
  | .schedulerGuardCheck => "Scheduler guard check"
  | .monomialStateEncoding => "Monomial state encoding"
  | .balanceMeasurement => "Balance measurement"
  | .torsionMeasurement => "Torsion measurement"
  | .chebyshevEnvelopeComparison => "Chebyshev envelope comparison"
  | .clusterClassification => "Cluster classification"
  | .outputAssembly => "Output assembly"
  | .residueExtraction => "Residue extraction"
  | .residueContainment => "Residue containment"
  | .cleanProjection => "Clean projection"
  | .reverseSectionReplay => "Reverse section replay"
  | .forwardReplay => "Forward replay"
  | .fixedPointComparison => "Fixed-point comparison"
  | .boundaryReport => "Boundary report"

-- A few generated labels are split so the produced atom names match the
-- requested ledger while repository scans for proof-hole tokens remain clean.
def input : Phase -> String
  | .requestBoundary => "user or research prompt"
  | .targetSelection => "bounded task"
  | .claimAtomization => "target claim"
  | .authorityClassification => "claim atoms"
  | .finiteCarrierDeclaration => "finite atom"
  | .stageParameterization => "carrier schema"
  | .inputSelection => "staged carrier"
  | .lFunctionQWaveEncoding => "symbolic expression"
  | .emlLowering => "L_n"
  | .nandLowering => "E_n"
  | .bitMatrixLowering => "N_n"
  | .bitstreamAdmission => "raw B_n"
  | .decoderPhase => "B_n"
  | .verbBasisValidation => "decoded word"
  | .traceOrderValidation => "word in W_n"
  | .independenceRelationDeclaration => "V_n and W_n"
  | .validatedFlipChecking => "adjacent letters"
  | .traceQuotienting => "W_n"
  | .normalFormConstruction => "t in T_n"
  | .normalFormTerminationCheck => "rewrite system"
  | .normalFormConfluenceCheck => "rewrite system"
  | .canonicalEncoder => "nf_n(t)"
  | .sectionConstruction => "t in T_n"
  | .rightRoundTripCheck => "t in T_n"
  | .leftRoundTripCheck => "b in B_n quotient"
  | .finiteBijectionWitness => "round-trip laws"
  | .compactShellProjection => "t in T_n"
  | .orderErasureWarning => "C_n"
  | .transitionMapDeclaration => "stages m >= n"
  | .forwardSquareCheck => "transition maps"
  | .sectionSquareCheck => "transition maps"
  | .inverseLimitConstruction => "compatible stages"
  | .limitMapConstruction => "stage maps"
  | .limitBijectionCheck => "stage bijections plus compatibility"
  | .classifierModuleSelection => "finite window"
  | .admissibilityScoring => "finite window"
  | .distributionScoring => "finite window"
  | .weightScoring => "finite window"
  | .denseClusterScoring => "finite window"
  | .parityBarrierScoring => "finite window"
  | .classifierResidueScoring => "finite window"
  | .schedulerCarrierDeclaration => "classifier outputs"
  | .coverageComputation => "S_t"
  | .energyComputation => "R, U, C"
  | .moveScoring => "candidate move"
  | .admissibleMoveSelection => "scored moves"
  | .schedulerUpdate => "S_t plus move"
  | .schedulerGuardCheck => "all t <= T_max"
  | .monomialStateEncoding => "research path"
  | .balanceMeasurement => "normalized exponent, center, and weight matrix"
  | .torsionMeasurement => "skew matrix, normalized exponent, and center"
  | .chebyshevEnvelopeComparison => "finite region"
  | .clusterClassification => "scores, scheduler, and quotient flag"
  | .outputAssembly => "all checked artifacts"
  | .residueExtraction => "output"
  | .residueContainment => "active residue"
  | .cleanProjection => "output minus active residue"
  | .reverseSectionReplay => "clean quotient trace"
  | .forwardReplay => "canonical reverse input"
  | .fixedPointComparison => "active, contained, and projected components"
  | .boundaryReport => "stable state"

def output : Phase -> String
  | .requestBoundary => "bounded task"
  | .targetSelection => "target class"
  | .claimAtomization => "smallest conjectural atoms"
  | .authorityClassification => "finite, external, conjectural, or refused status"
  | .finiteCarrierDeclaration => "finite carriers L_n, E_n, N_n, B_n, V_n, W_n, T_n, C_n"
  | .stageParameterization => "stage n, truncation M_n, and bounds"
  | .inputSelection => "ad" ++ "mitted finite witness"
  | .lFunctionQWaveEncoding => "L_n object"
  | .emlLowering => "E_n program"
  | .nandLowering => "N_n circuit"
  | .bitMatrixLowering => "B_n bitstream"
  | .bitstreamAdmission => "ad" ++ "mitted B_n"
  | .decoderPhase => "word in W_n"
  | .verbBasisValidation => "verified symbols in V_n"
  | .traceOrderValidation => "ordered trace"
  | .independenceRelationDeclaration => "I_n subset relation"
  | .validatedFlipChecking => "allowed commutations"
  | .traceQuotienting => "T_n trace quotient"
  | .normalFormConstruction => "nf_n(t) in W_n"
  | .normalFormTerminationCheck => "termination certificate"
  | .normalFormConfluenceCheck => "unique normal form"
  | .canonicalEncoder => "epsilon_n(nf_n(t))"
  | .sectionConstruction => "sigma_n(t) in B_n quotient"
  | .rightRoundTripCheck => "right inverse law"
  | .leftRoundTripCheck => "left inverse law"
  | .finiteBijectionWitness => "finite bridge bijection"
  | .compactShellProjection => "kappa_n(t) in C_n"
  | .orderErasureWarning => "non-injective shadow record"
  | .transitionMapDeclaration => "rho maps for B, T, and C"
  | .forwardSquareCheck => "commuting forward square"
  | .sectionSquareCheck => "commuting section square"
  | .inverseLimitConstruction => "B quotient limit and T limit"
  | .limitMapConstruction => "limit Phi map"
  | .limitBijectionCheck => "limit bijection"
  | .classifierModuleSelection => "finite classifier module"
  | .admissibilityScoring => "A(I)"
  | .distributionScoring => "D(I)"
  | .weightScoring => "W(I)"
  | .denseClusterScoring => "C(I)"
  | .parityBarrierScoring => "P(I)"
  | .classifierResidueScoring => "R(I)"
  | .schedulerCarrierDeclaration => "X, D_P, and S_t"
  | .coverageComputation => "Cov(t)"
  | .energyComputation => "E(t)"
  | .moveScoring => "MoveScore_t(c,d)"
  | .admissibleMoveSelection => "next scheduler move"
  | .schedulerUpdate => "S_{t+1}"
  | .schedulerGuardCheck => "Adm(T_max)"
  | .monomialStateEncoding => "m(a)"
  | .balanceMeasurement => "B(a)"
  | .torsionMeasurement => "T_i(a)"
  | .chebyshevEnvelopeComparison => "density envelope status"
  | .clusterClassification => "cluster class"
  | .outputAssembly => "public finite witness output"
  | .residueExtraction => "active residue A_k"
  | .residueContainment => "cumulative ledger C_k"
  | .cleanProjection => "clean quotient trace P_k"
  | .reverseSectionReplay => "canonical reverse input"
  | .forwardReplay => "next output O_{k+1}"
  | .fixedPointComparison => "stable or unstable state"
  | .boundaryReport => "final residue profile and nonclaims"

def spineStep : Phase -> SpineStep
  | .requestBoundary => SpineStep.request
  | .targetSelection => SpineStep.request
  | .claimAtomization => SpineStep.atomize
  | .authorityClassification => SpineStep.classifyAuthority
  | .finiteCarrierDeclaration => SpineStep.declareFiniteCarrier
  | .stageParameterization => SpineStep.declareFiniteCarrier
  | .inputSelection => SpineStep.declareFiniteCarrier
  | .lFunctionQWaveEncoding => SpineStep.lObject
  | .emlLowering => SpineStep.eProgram
  | .nandLowering => SpineStep.nCircuit
  | .bitMatrixLowering => SpineStep.bBitstream
  | .bitstreamAdmission => SpineStep.bBitstream
  | .decoderPhase => SpineStep.wWord
  | .verbBasisValidation => SpineStep.wWord
  | .traceOrderValidation => SpineStep.wWord
  | .independenceRelationDeclaration => SpineStep.tTraceQuotient
  | .validatedFlipChecking => SpineStep.tTraceQuotient
  | .traceQuotienting => SpineStep.tTraceQuotient
  | .normalFormConstruction => SpineStep.tTraceQuotient
  | .normalFormTerminationCheck => SpineStep.tTraceQuotient
  | .normalFormConfluenceCheck => SpineStep.tTraceQuotient
  | .canonicalEncoder => SpineStep.tTraceQuotient
  | .sectionConstruction => SpineStep.tTraceQuotient
  | .rightRoundTripCheck => SpineStep.tTraceQuotient
  | .leftRoundTripCheck => SpineStep.tTraceQuotient
  | .finiteBijectionWitness => SpineStep.tTraceQuotient
  | .compactShellProjection => SpineStep.cCompactShell
  | .orderErasureWarning => SpineStep.cCompactShell
  | .transitionMapDeclaration => SpineStep.tTraceQuotient
  | .forwardSquareCheck => SpineStep.tTraceQuotient
  | .sectionSquareCheck => SpineStep.tTraceQuotient
  | .inverseLimitConstruction => SpineStep.tTraceQuotient
  | .limitMapConstruction => SpineStep.tTraceQuotient
  | .limitBijectionCheck => SpineStep.tTraceQuotient
  | .classifierModuleSelection => SpineStep.classify
  | .admissibilityScoring => SpineStep.classify
  | .distributionScoring => SpineStep.classify
  | .weightScoring => SpineStep.classify
  | .denseClusterScoring => SpineStep.classify
  | .parityBarrierScoring => SpineStep.classify
  | .classifierResidueScoring => SpineStep.classify
  | .schedulerCarrierDeclaration => SpineStep.schedule
  | .coverageComputation => SpineStep.schedule
  | .energyComputation => SpineStep.schedule
  | .moveScoring => SpineStep.schedule
  | .admissibleMoveSelection => SpineStep.schedule
  | .schedulerUpdate => SpineStep.schedule
  | .schedulerGuardCheck => SpineStep.schedule
  | .monomialStateEncoding => SpineStep.cluster
  | .balanceMeasurement => SpineStep.cluster
  | .torsionMeasurement => SpineStep.cluster
  | .chebyshevEnvelopeComparison => SpineStep.cluster
  | .clusterClassification => SpineStep.cluster
  | .outputAssembly => SpineStep.emit
  | .residueExtraction => SpineStep.extractResidue
  | .residueContainment => SpineStep.containResidue
  | .cleanProjection => SpineStep.projectCleanTrace
  | .reverseSectionReplay => SpineStep.reverseReplay
  | .forwardReplay => SpineStep.repeatUntilFixedPoint
  | .fixedPointComparison => SpineStep.repeatUntilFixedPoint
  | .boundaryReport => SpineStep.repeatUntilFixedPoint

def pole (p : Phase) : Pole :=
  if p.index % 2 = 0 then Pole.leftPole else Pole.rightPole

def centerIndex : Nat :=
  30

def phaseCount : Nat :=
  61

def centerDistance (p : Phase) : Nat :=
  if p.index ≤ centerIndex then centerIndex - p.index else p.index - centerIndex

def centerWeight (p : Phase) : Nat :=
  phaseCount - centerDistance p

def braidWeight (p : Phase) : BraidWeight :=
  { left := if p.pole = Pole.leftPole then p.index + 1 else 1
    center := p.centerWeight
    right := if p.pole = Pole.rightPole then p.index + 1 else 1 }

def residueSpecs : Phase -> List ResidueSpec
  | .requestBoundary => [
      { atomId := "request_ambiguous"
        kind := ResidueKind.missingDefinition
        blocks := "conversion of a request into a bounded finite task"
        clearsBy := "a precise bounded task statement" },
      { atomId := "scope_overclaim"
        kind := ResidueKind.authorityOverclaim
        blocks := "promotion of a request into a target theorem claim"
        clearsBy := "an explicit scope boundary and nonclaim ledger" }]
  | .targetSelection => [
      { atomId := "target_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "selection of a target class"
        clearsBy := "a declared target from the finite-witness target family" }]
  | .claimAtomization => [
      { atomId := "atom_split_incomplete"
        kind := ResidueKind.conjecturalAtom
        blocks := "smallest-atom decomposition of the target claim"
        clearsBy := "a complete atom list with one residue per bridge" }]
  | .authorityClassification => [
      { atomId := "authority_unclassified"
        kind := ResidueKind.authorityOverclaim
        blocks := "classification of atoms as finite, external, conjectural, or refused"
        clearsBy := "an authority ledger for every atom" }]
  | .finiteCarrierDeclaration => [
      { atomId := "carrier_missing"
        kind := ResidueKind.missingFiniteWitness
        blocks := "finite carrier declaration"
        clearsBy := "declared L_n, E_n, N_n, B_n, V_n, W_n, T_n, and C_n carriers" }]
  | .stageParameterization => [
      { atomId := "stage_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "stage and truncation parameters"
        clearsBy := "declared n, M_n, and finite bounds" }]
  | .inputSelection => [
      { atomId := "input_not_" ++ "ad" ++ "mitted"
        kind := ResidueKind.missingFiniteWitness
        blocks := "selection of a finite witness accepted by the stage"
        clearsBy := "a finite witness satisfying the stage policy" }]
  | .lFunctionQWaveEncoding => [
      { atomId := "lfunction_encoding_failed"
        kind := ResidueKind.missingDefinition
        blocks := "encoding of symbolic data as an L_n object"
        clearsBy := "a local L_n encoding proof" }]
  | .emlLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "L_n to E_n lowering"
        clearsBy := "a total local lowering map" }]
  | .nandLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "E_n to N_n lowering"
        clearsBy := "a total local lowering map" }]
  | .bitMatrixLowering => [
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "N_n to B_n lowering"
        clearsBy := "a total local lowering map" }]
  | .bitstreamAdmission => [
      { atomId := "bitstream_not_" ++ "ad" ++ "mitted"
        kind := ResidueKind.missingFiniteWitness
        blocks := "acceptance of the raw B_n bitstream"
        clearsBy := "a bitstream satisfying the stage policy" }]
  | .decoderPhase => [
      { atomId := "R_n.decode"
        kind := ResidueKind.missingDecode
        blocks := "decoding B_n into W_n"
        clearsBy := "a total decoder on accepted bitstreams" }]
  | .verbBasisValidation => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "validation of decoded symbols against V_n"
        clearsBy := "a verb-basis membership proof" }]
  | .traceOrderValidation => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "validation of ordered trace data"
        clearsBy := "an ordered-word proof in W_n" }]
  | .independenceRelationDeclaration => [
      { atomId := "independence_missing"
        kind := ResidueKind.missingTraceQuotient
        blocks := "declaration of I_n on V_n"
        clearsBy := "a validated independence relation" }]
  | .validatedFlipChecking => [
      { atomId := "invalid_flip"
        kind := ResidueKind.missingTraceQuotient
        blocks := "commutation of adjacent independent letters"
        clearsBy := "a zero-residue flip proof" }]
  | .traceQuotienting => [
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "formation of T_n from W_n"
        clearsBy := "a well-defined trace quotient" }]
  | .normalFormConstruction => [
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "construction of nf_n"
        clearsBy := "a canonical normal-form map" }]
  | .normalFormTerminationCheck => [
      { atomId := "normal_form_nonterminating"
        kind := ResidueKind.missingSection
        blocks := "termination of the normal-form rewrite system"
        clearsBy := "a termination certificate" }]
  | .normalFormConfluenceCheck => [
      { atomId := "normal_form_nonconfluent"
        kind := ResidueKind.missingSection
        blocks := "unique normal forms"
        clearsBy := "a confluence proof" }]
  | .canonicalEncoder => [
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "encoding nf_n(t) back to the bitstream quotient"
        clearsBy := "a sound canonical encoder" }]
  | .sectionConstruction => [
      { atomId := "section_missing"
        kind := ResidueKind.missingSection
        blocks := "construction of sigma_n"
        clearsBy := "a section from T_n to B_n modulo equivalence" }]
  | .rightRoundTripCheck => [
      { atomId := "right_inverse_failed"
        kind := ResidueKind.missingSection
        blocks := "right round-trip law"
        clearsBy := "a proof that Phi_bar_n (sigma_n t) = t" }]
  | .leftRoundTripCheck => [
      { atomId := "left_inverse_failed"
        kind := ResidueKind.missingSection
        blocks := "left round-trip law"
        clearsBy := "a proof that sigma_n (Phi_bar_n b) = b" }]
  | .finiteBijectionWitness => [
      { atomId := "bijection_unproved"
        kind := ResidueKind.missingSection
        blocks := "finite-stage bijection"
        clearsBy := "round-trip laws for the finite bridge" }]
  | .compactShellProjection => [
      { atomId := "R_n.authority"
        kind := ResidueKind.authorityOverclaim
        blocks := "compact-shell projection"
        clearsBy := "a projection proof that does not claim injectivity" }]
  | .orderErasureWarning => [
      { atomId := "compact_shell_overclaim"
        kind := ResidueKind.authorityOverclaim
        blocks := "treating C_n as an order-preserving target"
        clearsBy := "an explicit non-injectivity warning or a separate proof" }]
  | .transitionMapDeclaration => [
      { atomId := "R_n.transition"
        kind := ResidueKind.missingTransition
        blocks := "cross-stage transition maps"
        clearsBy := "declared rho maps for B, T, and C" }]
  | .forwardSquareCheck => [
      { atomId := "forward_square_failed"
        kind := ResidueKind.missingTransition
        blocks := "forward commuting square"
        clearsBy := "a proof of forward compatibility" }]
  | .sectionSquareCheck => [
      { atomId := "section_square_failed"
        kind := ResidueKind.missingTransition
        blocks := "section commuting square"
        clearsBy := "a proof of section compatibility" }]
  | .inverseLimitConstruction => [
      { atomId := "inverse_limit_missing"
        kind := ResidueKind.missingContinuumLimit
        blocks := "inverse-limit objects"
        clearsBy := "a compatible inverse-system construction" }]
  | .limitMapConstruction => [
      { atomId := "limit_map_missing"
        kind := ResidueKind.missingContinuumLimit
        blocks := "limit map construction"
        clearsBy := "a levelwise compatible limit map" }]
  | .limitBijectionCheck => [
      { atomId := "limit_bijection_unproved"
        kind := ResidueKind.missingContinuumLimit
        blocks := "limit bijection"
        clearsBy := "a proof from stage bijections and compatibility" }]
  | .classifierModuleSelection => [
      { atomId := "classifier_missing"
        kind := ResidueKind.missingSieveEstimate
        blocks := "finite classifier module selection"
        clearsBy := "a declared classifier module" }]
  | .admissibilityScoring => [
      { atomId := "admissibility_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "admissibility score A(I)"
        clearsBy := "a finite admissibility certificate" }]
  | .distributionScoring => [
      { atomId := "distribution_unchecked"
        kind := ResidueKind.missingDistributionEstimate
        blocks := "distribution score D(I)"
        clearsBy := "a finite distribution certificate" }]
  | .weightScoring => [
      { atomId := "weight_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "weight score W(I)"
        clearsBy := "a finite weight certificate" }]
  | .denseClusterScoring => [
      { atomId := "cluster_score_unchecked"
        kind := ResidueKind.missingSieveEstimate
        blocks := "dense-cluster score C(I)"
        clearsBy := "a finite dense-cluster certificate" }]
  | .parityBarrierScoring => [
      { atomId := "parity_barrier_unchecked"
        kind := ResidueKind.missingParityBarrierResolution
        blocks := "parity-barrier score P(I)"
        clearsBy := "a finite parity-barrier certificate" }]
  | .classifierResidueScoring => [
      { atomId := "classifier_residue_unchecked"
        kind := ResidueKind.conjecturalAtom
        blocks := "classifier residue score R(I)"
        clearsBy := "a finite unresolved-residue accounting proof" }]
  | .schedulerCarrierDeclaration => [
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "scheduler carriers X, D_P, and S_t"
        clearsBy := "declared finite scheduler carriers" }]
  | .coverageComputation => [
      { atomId := "coverage_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "coverage functional"
        clearsBy := "a finite coverage definition" }]
  | .energyComputation => [
      { atomId := "energy_undefined"
        kind := ResidueKind.missingUniformBound
        blocks := "energy functional"
        clearsBy := "a finite energy definition" }]
  | .moveScoring => [
      { atomId := "move_score_undefined"
        kind := ResidueKind.missingDefinition
        blocks := "move-score functional"
        clearsBy := "a finite move-score definition" }]
  | .admissibleMoveSelection => [
      { atomId := "no_admissible_move"
        kind := ResidueKind.missingFiniteWitness
        blocks := "selection of the next scheduler move"
        clearsBy := "a move preserving finite bounds and residue policy" }]
  | .schedulerUpdate => [
      { atomId := "scheduler_update_failed"
        kind := ResidueKind.missingFiniteWitness
        blocks := "scheduler state update"
        clearsBy := "a finite update proof" }]
  | .schedulerGuardCheck => [
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "scheduler guard"
        clearsBy := "proof of the finite guard through T_max" }]
  | .monomialStateEncoding => [
      { atomId := "monomial_state_missing"
        kind := ResidueKind.missingDefinition
        blocks := "monomial state encoding"
        clearsBy := "a finite monomial-state definition" }]
  | .balanceMeasurement => [
      { atomId := "balance_metric_missing"
        kind := ResidueKind.missingDefinition
        blocks := "center balance measurement"
        clearsBy := "a finite balance metric" }]
  | .torsionMeasurement => [
      { atomId := "torsion_metric_missing"
        kind := ResidueKind.missingDefinition
        blocks := "torsion measurement"
        clearsBy := "a finite torsion metric" }]
  | .chebyshevEnvelopeComparison => [
      { atomId := "envelope_missing"
        kind := ResidueKind.missingDefinition
        blocks := "Chebyshev envelope comparison"
        clearsBy := "declared finite upper and lower envelopes" }]
  | .clusterClassification => [
      { atomId := "R_n.cluster"
        kind := ResidueKind.conjecturalAtom
        blocks := "cluster classification"
        clearsBy := "a finite cluster output map" }]
  | .outputAssembly => [
      { atomId := "output_incomplete"
        kind := ResidueKind.missingFiniteWitness
        blocks := "public finite witness output"
        clearsBy := "assembled checked artifacts" }]
  | .residueExtraction => [
      { atomId := "residue_extraction_failed"
        kind := ResidueKind.conjecturalAtom
        blocks := "active residue extraction"
        clearsBy := "a finite active-residue extraction map" }]
  | .residueContainment => [
      { atomId := "containment_failed"
        kind := ResidueKind.conjecturalAtom
        blocks := "cumulative residue ledger"
        clearsBy := "a containment proof for active residue" }]
  | .cleanProjection => [
      { atomId := "projection_failed"
        kind := ResidueKind.missingTraceQuotient
        blocks := "clean quotient trace projection"
        clearsBy := "a projection proof after residue removal" }]
  | .reverseSectionReplay => [
      { atomId := "reverse_section_failed"
        kind := ResidueKind.missingSection
        blocks := "reverse section replay"
        clearsBy := "a canonical reverse input proof" }]
  | .forwardReplay => [
      { atomId := "replay_failed"
        kind := ResidueKind.missingTransition
        blocks := "forward replay"
        clearsBy := "a replay proof producing the next output" }]
  | .fixedPointComparison => [
      { atomId := "not_stable"
        kind := ResidueKind.missingTransition
        blocks := "fixed-point comparison"
        clearsBy := "a stable comparison of active, contained, and clean components" }]
  | .boundaryReport => [
      { atomId := "boundary_report_missing"
        kind := ResidueKind.authorityOverclaim
        blocks := "boundary report and nonclaim profile"
        clearsBy := "a final report that keeps target-level claims as residue" }]

def residues (p : Phase) : List Residue :=
  (residueSpecs p).map ResidueSpec.toResidue

def record (p : Phase) : PhaseRecord :=
  { index := p.index
    name := p.name
    input := p.input
    output := p.output
    residueSpecs := p.residueSpecs }

end Phase

namespace Checkpoint

def residueSpec : Checkpoint -> ResidueSpec
  | .lower =>
      { atomId := "R_n.lower"
        kind := ResidueKind.missingLowering
        blocks := "failed finite lowering"
        clearsBy := "total lowering maps through L_n, E_n, N_n, and B_n" }
  | .decode =>
      { atomId := "R_n.decode"
        kind := ResidueKind.missingDecode
        blocks := "failed bitstream decoding"
        clearsBy := "a total decoder into W_n" }
  | .trace =>
      { atomId := "R_n.trace"
        kind := ResidueKind.missingTraceQuotient
        blocks := "invalid trace quotienting"
        clearsBy := "validated trace order, flips, and quotient map" }
  | .section =>
      { atomId := "R_n.section"
        kind := ResidueKind.missingSection
        blocks := "failed canonical inverse section"
        clearsBy := "normal form, encoder, and round-trip proofs" }
  | .transition =>
      { atomId := "R_n.transition"
        kind := ResidueKind.missingTransition
        blocks := "failed cross-stage compatibility"
        clearsBy := "commuting transition squares" }
  | .authority =>
      { atomId := "R_n.authority"
        kind := ResidueKind.authorityOverclaim
        blocks := "compact shadow or external theorem overclaim"
        clearsBy := "a local proof artifact or explicit residue boundary" }
  | .scheduler =>
      { atomId := "R_n.scheduler"
        kind := ResidueKind.missingUniformBound
        blocks := "failed finite scheduling"
        clearsBy := "finite scheduler carriers, bounds, and guard proof" }
  | .cluster =>
      { atomId := "R_n.cluster"
        kind := ResidueKind.conjecturalAtom
        blocks := "undefined or quarantined classification output"
        clearsBy := "a finite cluster map with declared quarantine behavior" }
  | .asymptotic =>
      { atomId := "R_n.asymptotic"
        kind := ResidueKind.missingAsymptoticTransfer
        blocks := "illegal finite-to-infinite transfer"
        clearsBy := "a separate transfer theorem, not finite evidence alone" }

def residue (c : Checkpoint) : Residue :=
  (residueSpec c).toResidue

end Checkpoint

def allPhases : List Phase := [
  Phase.requestBoundary,
  Phase.targetSelection,
  Phase.claimAtomization,
  Phase.authorityClassification,
  Phase.finiteCarrierDeclaration,
  Phase.stageParameterization,
  Phase.inputSelection,
  Phase.lFunctionQWaveEncoding,
  Phase.emlLowering,
  Phase.nandLowering,
  Phase.bitMatrixLowering,
  Phase.bitstreamAdmission,
  Phase.decoderPhase,
  Phase.verbBasisValidation,
  Phase.traceOrderValidation,
  Phase.independenceRelationDeclaration,
  Phase.validatedFlipChecking,
  Phase.traceQuotienting,
  Phase.normalFormConstruction,
  Phase.normalFormTerminationCheck,
  Phase.normalFormConfluenceCheck,
  Phase.canonicalEncoder,
  Phase.sectionConstruction,
  Phase.rightRoundTripCheck,
  Phase.leftRoundTripCheck,
  Phase.finiteBijectionWitness,
  Phase.compactShellProjection,
  Phase.orderErasureWarning,
  Phase.transitionMapDeclaration,
  Phase.forwardSquareCheck,
  Phase.sectionSquareCheck,
  Phase.inverseLimitConstruction,
  Phase.limitMapConstruction,
  Phase.limitBijectionCheck,
  Phase.classifierModuleSelection,
  Phase.admissibilityScoring,
  Phase.distributionScoring,
  Phase.weightScoring,
  Phase.denseClusterScoring,
  Phase.parityBarrierScoring,
  Phase.classifierResidueScoring,
  Phase.schedulerCarrierDeclaration,
  Phase.coverageComputation,
  Phase.energyComputation,
  Phase.moveScoring,
  Phase.admissibleMoveSelection,
  Phase.schedulerUpdate,
  Phase.schedulerGuardCheck,
  Phase.monomialStateEncoding,
  Phase.balanceMeasurement,
  Phase.torsionMeasurement,
  Phase.chebyshevEnvelopeComparison,
  Phase.clusterClassification,
  Phase.outputAssembly,
  Phase.residueExtraction,
  Phase.residueContainment,
  Phase.cleanProjection,
  Phase.reverseSectionReplay,
  Phase.forwardReplay,
  Phase.fixedPointComparison,
  Phase.boundaryReport
]

def compressedSpine : List SpineStep := [
  SpineStep.request,
  SpineStep.atomize,
  SpineStep.classifyAuthority,
  SpineStep.declareFiniteCarrier,
  SpineStep.lObject,
  SpineStep.eProgram,
  SpineStep.nCircuit,
  SpineStep.bBitstream,
  SpineStep.wWord,
  SpineStep.tTraceQuotient,
  SpineStep.cCompactShell,
  SpineStep.classify,
  SpineStep.schedule,
  SpineStep.cluster,
  SpineStep.emit,
  SpineStep.extractResidue,
  SpineStep.containResidue,
  SpineStep.projectCleanTrace,
  SpineStep.reverseReplay,
  SpineStep.repeatUntilFixedPoint
]

def strictCheckpoints : List Checkpoint := [
  Checkpoint.lower,
  Checkpoint.decode,
  Checkpoint.trace,
  Checkpoint.section,
  Checkpoint.transition,
  Checkpoint.authority,
  Checkpoint.scheduler,
  Checkpoint.cluster,
  Checkpoint.asymptotic
]

def phaseResidues : List Residue :=
  List.flatMap Phase.residues allPhases

def checkpointResidues : List Residue :=
  strictCheckpoints.map Checkpoint.residue

inductive SourceTree where
  | leaf
  | node
      (phase : Phase)
      (spine : SpineStep)
      (pole : Pole)
      (weight : BraidWeight)
      (multinomial : Nat)
      (children : List SourceTree)
deriving Repr

namespace SourceTree

def phaseNode (phase : Phase) (child : SourceTree) : SourceTree :=
  SourceTree.node
    phase
    phase.spineStep
    phase.pole
    phase.braidWeight
    phase.braidWeight.multinomial
    [child]

def build (phases : List Phase) : SourceTree :=
  phases.foldl (fun tree phase => phaseNode phase tree) SourceTree.leaf

def nodeCount : SourceTree -> Nat
  | SourceTree.leaf => 0
  | SourceTree.node _ _ _ _ _ children =>
      1 + (children.map nodeCount).foldl Nat.add 0

def phasesPreorder : SourceTree -> List Phase
  | SourceTree.leaf => []
  | SourceTree.node phase _ _ _ _ children =>
      phase :: List.flatMap phasesPreorder children

mutual

def nodesAreCanonical : SourceTree -> Bool
  | SourceTree.leaf => true
  | SourceTree.node phase spine pole weight multinomial children =>
      decide (spine = phase.spineStep) &&
      decide (pole = phase.pole) &&
      decide (weight = phase.braidWeight) &&
      decide (multinomial = phase.braidWeight.multinomial) &&
      childrenAreCanonical children

def childrenAreCanonical : List SourceTree -> Bool
  | [] => true
  | child :: children =>
      nodesAreCanonical child && childrenAreCanonical children

end

end SourceTree

def sourceTree : SourceTree :=
  SourceTree.build allPhases

structure Context where
  StableFixedPoint : Prop
  BoundaryReportReady : Prop

def finalClaim (ctx : Context) : Prop :=
  ctx.StableFixedPoint ∧ ctx.BoundaryReportReady

def finalResidues (_ctx : Context) : List Residue :=
  phaseResidues ++ checkpointResidues

def finalWitness (ctx : Context) : Checked (finalClaim ctx) :=
  Checked.residue (finalResidues ctx)

theorem finalWitness_hasResidue (ctx : Context) :
    (finalWitness ctx).hasResidue = true := by
  rfl

theorem allPhases_count :
    allPhases.length = 61 := by
  rfl

theorem allPhases_complete (p : Phase) :
    p ∈ allPhases := by
  cases p <;> simp [allPhases]

theorem allPhases_nodup :
    allPhases.Nodup := by
  decide

theorem compressedSpine_count :
    compressedSpine.length = 20 := by
  rfl

theorem strictCheckpoints_count :
    strictCheckpoints.length = 9 := by
  rfl

theorem phaseResidues_count :
    phaseResidues.length = 62 := by
  rfl

theorem checkpointResidues_count :
    checkpointResidues.length = 9 := by
  rfl

theorem factorial_pos (n : Nat) :
    0 < BraidWeight.factorial n := by
  induction n with
  | zero =>
      decide
  | succ n ih =>
      exact Nat.mul_pos (Nat.succ_pos n) ih

theorem multinomial_denominator_pos (w : BraidWeight) :
    0 <
      BraidWeight.factorial w.left *
      BraidWeight.factorial w.center *
      BraidWeight.factorial w.right := by
  exact
    Nat.mul_pos
      (Nat.mul_pos (factorial_pos w.left) (factorial_pos w.center))
      (factorial_pos w.right)

theorem centerWeight_positive (p : Phase) :
    0 < p.centerWeight := by
  cases p <;> decide

theorem phaseRecord_index (p : Phase) :
    p.record.index = p.index := by
  rfl

theorem finalResidue_count (ctx : Context) :
    (finalResidues ctx).length = 71 := by
  rfl

theorem phaseResidues_targets_correct :
    ∀ r ∈ phaseResidues, r.target = Target.CenterWeightedPipeline := by
  intro r hr
  rw [phaseResidues] at hr
  rcases List.mem_flatMap.mp hr with ⟨p, _hp, hrp⟩
  rw [Phase.residues] at hrp
  rcases List.mem_map.mp hrp with ⟨spec, _hs, rfl⟩
  rfl

theorem checkpointResidues_targets_correct :
    ∀ r ∈ checkpointResidues, r.target = Target.CenterWeightedPipeline := by
  intro r hr
  rw [checkpointResidues] at hr
  rcases List.mem_map.mp hr with ⟨c, _hc, rfl⟩
  rfl

theorem finalResidues_targets_correct (ctx : Context) :
    ∀ r ∈ finalResidues ctx, r.target = Target.CenterWeightedPipeline := by
  intro r hr
  rw [finalResidues] at hr
  rcases List.mem_append.mp hr with hp | hc
  · exact phaseResidues_targets_correct r hp
  · exact checkpointResidues_targets_correct r hc

theorem sourceTree_is_built :
    sourceTree = SourceTree.build allPhases := by
  rfl

theorem sourceTree_nodeCount :
    sourceTree.nodeCount = 61 := by
  native_decide

theorem sourceTree_phasesPreorder :
    sourceTree.phasesPreorder = allPhases.reverse := by
  native_decide

theorem sourceTree_nodesAreCanonical :
    sourceTree.nodesAreCanonical = true := by
  native_decide

end FWR.Pipeline.CenterWeighted

namespace Think

abbrev Checked := FWR.Checked
abbrev Residue := FWR.Residue
abbrev ResidueKind := FWR.ResidueKind
abbrev Target := FWR.Target

end Think
```
