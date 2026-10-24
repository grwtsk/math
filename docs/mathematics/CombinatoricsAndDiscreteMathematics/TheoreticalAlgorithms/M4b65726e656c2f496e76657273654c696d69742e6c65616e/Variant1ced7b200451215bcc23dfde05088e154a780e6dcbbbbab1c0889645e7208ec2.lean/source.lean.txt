-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InverseSystem.Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InverseSystem.Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0","mathematical_subject":"Computation.DataStructures","original_sha256":"57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/Bit0/M4b65726e656c2f496e76657273654c696d69742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M4b65726e656c2f4272696467652e6c65616e


/- source-tree-label: STL1|L|addr=00000010|role=proof_code_atom|slug=kernel-inverselimit|owner=canonical_owner|core=Kernel/InverseLimit.lean|leaf=M4b65726e656c2f496e76657273654c696d69742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InverseSystem.Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0

set_option autoImplicit false

namespace FWR

universe u

structure InverseSystem where
  Obj : Nat -> Type u
  rho : ∀ {m n : Nat}, n ≤ m -> Obj m -> Obj n
  rho_self : ∀ {n : Nat} (x : Obj n), rho (Nat.le_refl n) x = x
  rho_comp :
    ∀ {k m n : Nat}
      (hnm : n ≤ m) (hmk : m ≤ k) (x : Obj k),
      rho hnm (rho hmk x) = rho (Nat.le_trans hnm hmk) x

structure LimitPoint (S : InverseSystem.{u}) where
  val : ∀ n : Nat, S.Obj n
  compat : ∀ {m n : Nat} (h : n ≤ m), S.rho h (val m) = val n

structure CompatibleBridge where
  B : InverseSystem.{u}
  T : InverseSystem.{u}
  bridge : ∀ n : Nat, StageBridge (B.Obj n) (T.Obj n)
  forward_comm :
    ∀ {m n : Nat} (h : n ≤ m) (b : B.Obj m),
      T.rho h ((bridge m).Phi b) =
      (bridge n).Phi (B.rho h b)
  section_comm :
    ∀ {m n : Nat} (h : n ≤ m) (t : T.Obj m),
      B.rho h ((bridge m).sigma t) =
      (bridge n).sigma (T.rho h t)

inductive CompatibleBridgeObligation where
  | stageBridge
  | forwardCommutation
  | sectionCommutation
  | rightInverse
  | leftInverse
deriving DecidableEq, Repr

def compatibleBridgeObligations : List CompatibleBridgeObligation :=
  [ CompatibleBridgeObligation.stageBridge
  , CompatibleBridgeObligation.forwardCommutation
  , CompatibleBridgeObligation.sectionCommutation
  , CompatibleBridgeObligation.rightInverse
  , CompatibleBridgeObligation.leftInverse
  ]

theorem compatibleBridgeObligations_count :
    compatibleBridgeObligations.length = 5 := by
  rfl

def CompatibleBridgeObligation.residue
    (o : CompatibleBridgeObligation) : Residue :=
  { target := Target.QuotientLimitBridge
    atomId :=
      match o with
      | CompatibleBridgeObligation.stageBridge =>
          "compatible-bridge-stage-bridge"
      | CompatibleBridgeObligation.forwardCommutation =>
          "compatible-bridge-forward-commutation"
      | CompatibleBridgeObligation.sectionCommutation =>
          "compatible-bridge-section-commutation"
      | CompatibleBridgeObligation.rightInverse =>
          "compatible-bridge-right-inverse"
      | CompatibleBridgeObligation.leftInverse =>
          "compatible-bridge-left-inverse"
    kind := ResidueKind.missingTraceQuotient
    blocks := "limit bridge theorem requires this finite-stage compatibility obligation"
    clearsBy := "construct the corresponding stage bridge, commutation law, or round-trip law" }

def compatibleBridgeObligationResidues : List Residue :=
  compatibleBridgeObligations.map CompatibleBridgeObligation.residue

theorem compatibleBridgeObligationResidues_count :
    compatibleBridgeObligationResidues.length = 5 := by
  rfl

def limitPhi (C : CompatibleBridge.{u})
    (x : LimitPoint C.B) : LimitPoint C.T where
  val n := (C.bridge n).Phi (x.val n)
  compat := by
    intro m n h
    calc
      C.T.rho h ((C.bridge m).Phi (x.val m))
          = (C.bridge n).Phi (C.B.rho h (x.val m)) :=
            C.forward_comm h (x.val m)
      _ = (C.bridge n).Phi (x.val n) := by rw [x.compat h]

def limitSigma (C : CompatibleBridge.{u})
    (y : LimitPoint C.T) : LimitPoint C.B where
  val n := (C.bridge n).sigma (y.val n)
  compat := by
    intro m n h
    calc
      C.B.rho h ((C.bridge m).sigma (y.val m))
          = (C.bridge n).sigma (C.T.rho h (y.val m)) :=
            C.section_comm h (y.val m)
      _ = (C.bridge n).sigma (y.val n) := by rw [y.compat h]

theorem limitPhi_limitSigma_val (C : CompatibleBridge.{u})
    (y : LimitPoint C.T) (n : Nat) :
    (limitPhi C (limitSigma C y)).val n = y.val n :=
  (C.bridge n).right_inv (y.val n)

theorem limitSigma_limitPhi_val (C : CompatibleBridge.{u})
    (x : LimitPoint C.B) (n : Nat) :
    (limitSigma C (limitPhi C x)).val n = x.val n :=
  (C.bridge n).left_inv (x.val n)

theorem limitPhi_compat (C : CompatibleBridge.{u})
    (x : LimitPoint C.B) {m n : Nat} (h : n ≤ m) :
    C.T.rho h ((limitPhi C x).val m) = (limitPhi C x).val n :=
  (limitPhi C x).compat h

theorem limitSigma_compat (C : CompatibleBridge.{u})
    (y : LimitPoint C.T) {m n : Nat} (h : n ≤ m) :
    C.B.rho h ((limitSigma C y).val m) = (limitSigma C y).val n :=
  (limitSigma C y).compat h

end FWR
