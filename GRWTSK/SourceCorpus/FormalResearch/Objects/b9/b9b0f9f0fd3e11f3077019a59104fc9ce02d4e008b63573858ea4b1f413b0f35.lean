import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f42617369632e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e672e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696e2e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e
import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e46726573682e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e41766f6964696e672e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e54776f436f706965732e6c65616e
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f722e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72537465702e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f724275696c642e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f72436f706965732e6c65616e
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e416363756d756c61746f7250726f6a656374696f6e2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c69676174696f6e732e6c65616e
import Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M5472616e73666572732f5265736964756553746174652e6c65616e


/- source-tree-label: STL1|L|addr=0110001|role=proof_code_atom|slug=validation-theoremformalization|owner=canonical_owner|core=Validation/TheoremFormalization.lean|leaf=M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation

universe u

theorem theoremFormalization_scope_is_proof_formalization :
    Think.Kernel.Theorems.currentScope =
      Think.Kernel.Theorems.FormalizationScope.theoremProofFormalization := by
  exact Think.Kernel.Theorems.currentScope_is_actual_theorem_formalization

theorem radoFiniteExtension_complete
    (V : Type u) (G : Think.Kernel.Theorems.RadoFiniteExtension.Graph V) :
    (Think.Kernel.Theorems.RadoFiniteExtension.extensionFormalTheorem V G).hasCompleteProof := by
  exact Think.Kernel.Theorems.RadoFiniteExtension.extensionFormalTheorem_complete V G

theorem radoFiniteExtension_has_no_residue
    (V : Type u) (G : Think.Kernel.Theorems.RadoFiniteExtension.Graph V) :
    (Think.Kernel.Theorems.RadoFiniteExtension.extensionFormalTheorem V G).checked.hasResidue =
      false := by
  exact Think.Kernel.Theorems.RadoFiniteExtension.extensionFormalTheorem_has_no_residue V G

theorem bitRadoFiniteExtension_complete :
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem.hasCompleteProof := by
  exact
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem_complete

theorem bitRadoFiniteExtension_has_no_residue :
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem.checked.hasResidue =
      false := by
  exact
    Think.Pipeline.Center.RadoExtension.bitRadoExtensionFormalTheorem_has_no_residue

theorem bitRadoFiniteInducedEmbedding_exists
    (G : Think.Pipeline.Center.RadoFiniteEmbedding.FiniteBoolGraph) :
    ∃ f : Nat -> Nat,
      Think.Pipeline.Center.RadoFiniteEmbedding.InjectiveOnPrefix G.n f ∧
        Think.Pipeline.Center.RadoFiniteEmbedding.PreservesInducedEdges G f := by
  exact
    Think.Pipeline.Center.RadoFiniteEmbedding.bitRado_finite_induced_embedding G

theorem bitRadoOnePointEmbeddingExtension_exists
    (G : Think.Pipeline.Center.RadoFiniteEmbedding.FiniteBoolGraph)
    (m : Nat)
    (hm : m < G.n)
    (f : Nat -> Nat)
    (hemb :
      Think.Pipeline.Center.RadoEmbeddingExtension.EmbedsPrefix G m f) :
    ∃ z : Nat,
      z ∉ List.map f (List.range m) ∧
        Think.Pipeline.Center.RadoEmbeddingExtension.EmbedsPrefix G (m + 1)
          (Think.Pipeline.Center.RadoFiniteEmbedding.extend f m z) := by
  exact
    Think.Pipeline.Center.RadoEmbeddingExtension.bitRado_extend_finite_induced_embedding
      G m hm f hemb

theorem bitRadoFiniteEmbeddingChain_exists
    (G : Think.Pipeline.Center.RadoFiniteEmbedding.FiniteBoolGraph)
    (m t : Nat)
    (hmt : m + t ≤ G.n)
    (f : Nat -> Nat)
    (hemb :
      Think.Pipeline.Center.RadoEmbeddingExtension.EmbedsPrefix G m f) :
    ∃ g : Nat -> Nat,
      Think.Pipeline.Center.RadoFiniteEmbeddingChain.AgreesOnPrefix m f g ∧
        Think.Pipeline.Center.RadoEmbeddingExtension.EmbedsPrefix G (m + t) g := by
  exact
    Think.Pipeline.Center.RadoFiniteEmbeddingChain.bitRado_extend_embedding_prefix_by_steps
      G m t hmt f hemb

theorem bitRadoFinitePatternCopy_exists
    (x : Nat) (xs : List Nat) :
    ∃ y : Nat,
      y ∉ xs ∧
        ∀ v : Nat, v ∈ xs ->
          (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
            Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePattern.bitRado_copy_finite_pattern_over_list
      x xs

theorem bitRadoFreshFinitePatternCopy_exists
    (x : Nat) (xs : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternFresh.bitRado_copy_finite_pattern_avoiding_self_and_list
      x xs

theorem bitRadoFinitePatternCopyAvoidingExtraList_exists
    (x : Nat) (xs forbidden : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ forbidden ∧
            ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
              ∀ v : Nat, v ∈ xs ->
                (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                  Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAvoiding.bitRado_copy_finite_pattern_avoiding_extra_list
      x xs forbidden

theorem bitRadoTwoFreshFinitePatternCopies_exists
    (x : Nat) (xs forbidden : List Nat) :
    ∃ y z : Nat,
      y ≠ x ∧
        z ≠ x ∧
          y ≠ z ∧
            y ∉ xs ∧
              z ∉ xs ∧
                y ∉ forbidden ∧
                  z ∉ forbidden ∧
                    ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
                      ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge z x ∧
                        (∀ v : Nat, v ∈ xs ->
                          (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                            Think.Pipeline.Center.RadoExtension.bitRadoEdge x v)) ∧
                        (∀ v : Nat, v ∈ xs ->
                          (Think.Pipeline.Center.RadoExtension.bitRadoEdge z v ↔
                            Think.Pipeline.Center.RadoExtension.bitRadoEdge x v)) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternTwoCopies.bitRado_two_fresh_copies_of_finite_pattern
      x xs forbidden

theorem bitRadoFreshCopyAvoidingAccumulator_exists
    (x : Nat) (xs acc forbidden : List Nat) :
    ∃ y : Nat,
      y ≠ x ∧
        y ∉ xs ∧
          y ∉ acc ∧
            y ∉ forbidden ∧
              ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
                ∀ v : Nat, v ∈ xs ->
                  (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                    Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulator.bitRado_fresh_copy_avoiding_accumulator
      x xs acc forbidden

theorem bitRadoPatternAccumulatorStep_exists
    (x : Nat) (xs forbidden acc : List Nat)
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc) :
    ∃ y : Nat,
      y ∉ acc ∧
        Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
          x xs forbidden (y :: acc) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.bitRado_extend_pattern_accumulator_step
      x xs forbidden acc hacc

theorem bitRadoPatternAccumulatorBuild_exists
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc) :
    ∃ acc' : List Nat,
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorBuild.bitRado_build_pattern_accumulator_by_steps
      x xs forbidden acc t hacc

theorem bitRadoFreshPatternCopiesOfLength_exists
    (x : Nat) (xs forbidden : List Nat) (t : Nat) :
    ∃ acc : List Nat,
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc ∧
          acc.length = t := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies.bitRado_fresh_pattern_copies_of_length
      x xs forbidden t

theorem bitRadoFreshPatternCopiesExtendingAccumulatorOfLength_exists
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc) :
    ∃ acc' : List Nat,
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies.bitRado_fresh_pattern_copies_extending_accumulator_of_length
      x xs forbidden acc t hacc

theorem bitRadoFreshPatternCopiesExtendingAccumulatorMembersPairBundle_exists
    (x : Nat) (xs forbidden acc : List Nat)
    (t : Nat)
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc) :
    ∃ acc' : List Nat,
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc' ∧
        (∀ y : Nat, y ∈ acc -> y ∈ acc') ∧
          acc'.length = acc.length + t ∧
            ∀ y : Nat, y ∈ acc' ->
              (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
                (¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
                  ∀ v : Nat, v ∈ xs ->
                    (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                      Think.Pipeline.Center.RadoExtension.bitRadoEdge x v)) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorCopies.bitRado_fresh_pattern_copies_extending_accumulator_members_pair_bundle
      x xs forbidden acc t hacc

theorem finitePartialIsoDomainNodup_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData) :
    P.domain.Nodup := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_domain_nodup
      P

theorem finitePartialIsoImageNodup_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData) :
    P.image.Nodup := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_image_nodup
      P

theorem finitePartialIsoMapsDomainToImage_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData)
    {a : Nat}
    (ha : a ∈ P.domain) :
    P.map a ∈ P.image := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_maps_domain_to_image
      P ha

theorem finitePartialIsoPreservesListedEdges_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b) :
    (Think.Pipeline.Center.RadoExtension.bitRadoEdge (P.map a) (P.map b) ↔
      P.G.edge a b = true) := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_preserves_listed_edges
      P ha hb hne

theorem finitePartialIsoSourceEdgeToBitRadoEdge_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b)
    (hedge : P.G.edge a b = true) :
    Think.Pipeline.Center.RadoExtension.bitRadoEdge (P.map a) (P.map b) := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_source_edge_to_bitRadoEdge
      P ha hb hne hedge

theorem finitePartialIsoBitRadoEdgeToSourceEdge_project
    (P : Think.Pipeline.Center.RadoFinitePartialIso.FinitePartialIsoData)
    {a b : Nat}
    (ha : a ∈ P.domain)
    (hb : b ∈ P.domain)
    (hne : a ≠ b)
    (hedge :
      Think.Pipeline.Center.RadoExtension.bitRadoEdge (P.map a) (P.map b)) :
    P.G.edge a b = true := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIso.finitePartialIso_bitRadoEdge_to_source_edge
      P ha hb hne hedge

theorem finitePartialIsoExtensionObligationTagsLength_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags.length =
      5 := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags_length

theorem finitePartialIsoChooseFreshWitnessMemObligations_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.PartialIsoExtensionObligationTag.chooseFreshWitness ∈
      Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIso_chooseFreshWitness_mem_obligations

theorem finitePartialIsoPreserveDomainMembershipMemObligations_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.PartialIsoExtensionObligationTag.preserveDomainMembership ∈
      Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIso_preserveDomainMembership_mem_obligations

theorem finitePartialIsoPreserveImageMembershipMemObligations_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.PartialIsoExtensionObligationTag.preserveImageMembership ∈
      Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIso_preserveImageMembership_mem_obligations

theorem finitePartialIsoPreserveSourceToTargetEdgesMemObligations_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.PartialIsoExtensionObligationTag.preserveSourceToTargetEdges ∈
      Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIso_preserveSourceToTargetEdges_mem_obligations

theorem finitePartialIsoPreserveTargetToSourceEdgesMemObligations_project :
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.PartialIsoExtensionObligationTag.preserveTargetToSourceEdges ∈
      Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIsoExtensionObligationTags := by
  exact
    Think.Pipeline.Center.RadoFinitePartialIsoObligations.finitePartialIso_preserveTargetToSourceEdges_mem_obligations

theorem applyClearanceClearedEqCons_project
    (s : Think.Transfers.ResidueState)
    (r : FWR.Residue)
    (h : Think.Transfers.ClearsResidue r) :
    (Think.Transfers.applyClearance s r h).cleared = r :: s.cleared := by
  exact Think.Transfers.applyClearance_cleared_eq_cons s r h

theorem applyClearanceActiveEqFilter_project
    (s : Think.Transfers.ResidueState)
    (r : FWR.Residue)
    (h : Think.Transfers.ClearsResidue r) :
    (Think.Transfers.applyClearance s r h).active =
      s.active.filter (fun q => decide (q ≠ r)) := by
  exact Think.Transfers.applyClearance_active_eq_filter s r h

theorem applyActiveClearanceRequiresActive_project
    (s : Think.Transfers.ResidueState)
    (r : FWR.Residue)
    (h : Think.Transfers.ActiveClearance s r) :
    r ∈ s.active := by
  exact Think.Transfers.applyActiveClearance_requires_active s r h

theorem activeClearanceDoesNotSettleTarget_project
    (s : Think.Transfers.ResidueState)
    (r : FWR.Residue)
    (h : Think.Transfers.ActiveClearance s r) :
    h.clearance.doesNotSettleTarget = true := by
  exact Think.Transfers.activeClearance_does_not_settle_target s r h

theorem applyActiveClearanceActiveEqFilter_project
    (s : Think.Transfers.ResidueState)
    (r : FWR.Residue)
    (h : Think.Transfers.ActiveClearance s r) :
    (Think.Transfers.applyActiveClearance s r h).active =
      s.active.filter (fun q => decide (q ≠ r)) := by
  exact Think.Transfers.applyActiveClearance_active_eq_filter s r h

theorem clearsResidueDoesNotSettleTarget_project
    (r : FWR.Residue)
    (h : Think.Transfers.ClearsResidue r) :
    h.doesNotSettleTarget = true := by
  exact Think.Transfers.clearsResidue_does_not_settle_target r h

theorem candidateResidueObligationRetainsFinalTarget_project
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : Think.Transfers.CandidateResidueObligation candidate r) :
    candidate.finalTargetRetained = true := by
  exact
    Think.Transfers.candidateResidueObligation_retains_final_target
      candidate r h

theorem patternAccumulatorMemberProperties_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧
      y ∉ xs ∧
        y ∉ forbidden ∧
          ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_properties
      hacc hy

theorem patternAccumulatorNodup_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc) :
    acc.Nodup := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_nodup
      hacc

theorem patternAccumulatorMemberNotSource_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_not_source
      hacc hy

theorem patternAccumulatorMemberAvoidsXs_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ∉ xs := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_avoids_xs
      hacc hy

theorem patternAccumulatorMemberAvoidsForbidden_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ∉ forbidden := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_avoids_forbidden
      hacc hy

theorem patternAccumulatorMemberNonadjacentSource_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_nonadjacent_source
      hacc hy

theorem patternAccumulatorMemberCopiesPattern_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ∀ v : Nat, v ∈ xs ->
      (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
        Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_copies_pattern
      hacc hy

theorem patternAccumulatorMemberCoreBundle_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧
      y ∉ xs ∧
        y ∉ forbidden ∧
          ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
            ∀ v : Nat, v ∈ xs ->
              (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
                Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_core_bundle
      hacc hy

theorem patternAccumulatorMemberAvoidanceBundle_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_avoidance_bundle
      hacc hy

theorem patternAccumulatorMemberEdgeBundle_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    ¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
      ∀ v : Nat, v ∈ xs ->
        (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
          Think.Pipeline.Center.RadoExtension.bitRadoEdge x v) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_edge_bundle
      hacc hy

theorem patternAccumulatorMemberPairBundle_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    (y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden) ∧
      (¬ Think.Pipeline.Center.RadoExtension.bitRadoEdge y x ∧
        ∀ v : Nat, v ∈ xs ->
          (Think.Pipeline.Center.RadoExtension.bitRadoEdge y v ↔
            Think.Pipeline.Center.RadoExtension.bitRadoEdge x v)) := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_pair_bundle
      hacc hy

end Think.Validation
