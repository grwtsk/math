-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSpec.Variant441f9a7a6d953ac833a8c02a3be3d2961094150c813041b798f3d46224ad3c6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"441f9a7a6d953ac833a8c02a3be3d2961094150c813041b798f3d46224ad3c6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PhaseSpec.Variant441f9a7a6d953ac833a8c02a3be3d2961094150c813041b798f3d46224ad3c6f","mathematical_subject":"Foundations.Unclassified","original_sha256":"441f9a7a6d953ac833a8c02a3be3d2961094150c813041b798f3d46224ad3c6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit1/Bit1/Bit0/Bit0/M506970656c696e652f5068617365732f5068617365537065632e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=0001100|role=proof_code_atom|slug=pipeline-phases-phasespec|owner=canonical_owner|core=Pipeline/Phases/PhaseSpec.lean|leaf=M506970656c696e652f5068617365732f5068617365537065632e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSpec.Variant441f9a7a6d953ac833a8c02a3be3d2961094150c813041b798f3d46224ad3c6f

set_option autoImplicit false

namespace Think.Pipeline.Phases

def phaseMirror (n : Nat) : Nat :=
  60 - n

def phaseWeight (n : Nat) : Nat :=
  4 + 2 * ((Nat.min n (60 - n)) / 5)

theorem phaseWeight_reflection (n : Nat) (h : n ≤ 60) :
    phaseWeight n = phaseWeight (phaseMirror n) := by
  unfold phaseWeight phaseMirror
  rw [Nat.sub_sub_self h]
  exact congrArg (fun x => 4 + 2 * (x / 5)) (Nat.min_comm n (60 - n))

def poleFamilyName : Think.SourceTree.Pole -> String
  | Think.SourceTree.Pole.request => "Request"
  | Think.SourceTree.Pole.carrier => "Carrier"
  | Think.SourceTree.Pole.lowering => "Lowering"
  | Think.SourceTree.Pole.trace => "Trace"
  | Think.SourceTree.Pole.compact => "Compact"
  | Think.SourceTree.Pole.classifier => "Classifier"
  | Think.SourceTree.Pole.scheduler => "Scheduler"
  | Think.SourceTree.Pole.cluster => "Cluster"
  | Think.SourceTree.Pole.boundary => "Boundary"

structure PhaseSpec where
  id : Nat
  name : String
  mirror : Nat
  weight : Nat
  poleFamily : String
  residueClass : String
deriving DecidableEq, Repr

namespace PhaseSpec

def ofPhase (p : Think.PhaseId) : PhaseSpec :=
  { id := p.index
    name := p.name
    mirror := phaseMirror p.index
    weight := phaseWeight p.index
    poleFamily := poleFamilyName (Think.SourceTree.phasePole p)
    residueClass := p.name }

end PhaseSpec

end Think.Pipeline.Phases
