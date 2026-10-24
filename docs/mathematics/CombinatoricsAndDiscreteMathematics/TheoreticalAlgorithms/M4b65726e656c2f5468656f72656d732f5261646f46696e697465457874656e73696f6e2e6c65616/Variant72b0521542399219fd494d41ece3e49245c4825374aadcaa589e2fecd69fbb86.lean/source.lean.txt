-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Graph.Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b","mathematical_subject":"Computation.DataStructures","original_sha256":"d7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/Bit0/Bit0/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=11101000|role=proof_code_atom|slug=kernel-theorems-radofiniteextension|owner=canonical_owner|core=Kernel/Theorems/RadoFiniteExtension.lean|leaf=M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Graph.Variantd7928a587e79f65c710ab53d43b7aa0541c478689c6eb07dce910a6c28c8b99b

set_option autoImplicit false

namespace Think.Kernel.Theorems.RadoFiniteExtension

universe u

structure Graph (V : Type u) where
  adj : V -> V -> Prop

def DisjointLists {V : Type u} (U W : List V) : Prop :=
  ∀ x : V, x ∈ U -> x ∈ W -> False

def Realizes {V : Type u} (G : Graph V)
    (U W : List V) (x : V) : Prop :=
  (∀ u : V, u ∈ U -> G.adj x u) ∧
    (∀ w : V, w ∈ W -> ¬ G.adj x w)

def ExtensionProperty {V : Type u} (G : Graph V) : Prop :=
  ∀ U W : List V, DisjointLists U W ->
    ∃ x : V, Realizes G U W x

theorem extension_property_produces_realizer
    {V : Type u} (G : Graph V)
    (h : ExtensionProperty G)
    (U W : List V)
    (hdisjoint : DisjointLists U W) :
    ∃ x : V, Realizes G U W x :=
  h U W hdisjoint

theorem realizer_adjacent_to_left
    {V : Type u} {G : Graph V}
    {U W : List V} {x u : V}
    (h : Realizes G U W x)
    (hu : u ∈ U) :
    G.adj x u :=
  h.1 u hu

theorem realizer_avoids_right
    {V : Type u} {G : Graph V}
    {U W : List V} {x w : V}
    (h : Realizes G U W x)
    (hw : w ∈ W) :
    ¬ G.adj x w :=
  h.2 w hw

def extensionStatement
    (V : Type u) (G : Graph V) : Prop :=
  ExtensionProperty G ->
    ∀ U W : List V, DisjointLists U W ->
      ∃ x : V, Realizes G U W x

def extensionFormalTheorem
    (V : Type u) (G : Graph V) : Think.Kernel.Theorems.FormalTheorem :=
  { name := "rado-finite-extension-realizer"
    source := "finite Rado extension-property schema"
    claim := extensionStatement V G
    status := Think.Kernel.Theorems.ProofStatus.proofComplete
    checked := FWR.Checked.proved (by
      intro h U W hdisjoint
      exact extension_property_produces_realizer G h U W hdisjoint) }

theorem extensionFormalTheorem_complete
    (V : Type u) (G : Graph V) :
    (extensionFormalTheorem V G).hasCompleteProof := by
  exact ⟨rfl, rfl⟩

theorem extensionFormalTheorem_has_no_residue
    (V : Type u) (G : Graph V) :
    (extensionFormalTheorem V G).checked.hasResidue = false := by
  exact
    Think.Kernel.Theorems.FormalTheorem.complete_has_no_residue
      (extensionFormalTheorem V G)
      (extensionFormalTheorem_complete V G)

end Think.Kernel.Theorems.RadoFiniteExtension
