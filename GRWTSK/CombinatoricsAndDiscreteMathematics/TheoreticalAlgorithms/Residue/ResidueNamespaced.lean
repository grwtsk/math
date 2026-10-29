-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueKind.Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResidueKind.Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf","mathematical_subject":"Computation.DataStructures","original_sha256":"d43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/M4b65726e656c2f526573696475652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.Bit1.M4b65726e656c2f5461726765742e6c65616e


/- source-tree-label: STL1|L|addr=00101011|role=proof_code_atom|slug=kernel-residue|owner=canonical_owner|core=Kernel/Residue.lean|leaf=M4b65726e656c2f526573696475652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueKind.Variantd43bf95969f6f4be2af81f4af7bcab5d078dbee6edff34235e6f2d98e51962cf

set_option autoImplicit false

namespace FWR

universe u v

inductive ResidueKind where
  | missingDefinition
  | missingFiniteWitness
  | missingLowering
  | missingDecode
  | missingTraceQuotient
  | missingSection
  | missingTransition
  | missingUniformBound
  | missingContinuumLimit
  | missingAnalyticContinuation
  | missingFunctionalEquation
  | missingAutomorphicAuthority
  | missingSieveEstimate
  | missingDistributionEstimate
  | missingParityBarrierResolution
  | missingPDEEstimate
  | missingGeometricMeasureEstimate
  | missingAsymptoticTransfer
  | externalTheoremNotImported
  | authorityOverclaim
  | replacementOverclaim
  | conjecturalAtom
deriving DecidableEq, Repr

structure Residue where
  target : Target
  atomId : String
  kind : ResidueKind
  blocks : String
  clearsBy : String
deriving Repr, DecidableEq

structure AtomLedger (Ctx : Type u) (Atom : Type v) where
  allAtoms : List Atom
  claim : Ctx -> Atom -> Prop
  residue : Ctx -> Atom -> Residue

structure ResidueFor (Ctx : Type u) (Atom : Type v) where
  atom : Atom
  claim : Ctx -> Prop
  residue : Ctx -> Residue

namespace AtomLedger

def residues {Ctx : Type u} {Atom : Type v}
    (L : AtomLedger Ctx Atom) (ctx : Ctx) :
    List Residue :=
  L.allAtoms.map (L.residue ctx)

end AtomLedger

end FWR
