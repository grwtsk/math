import Think.Bit0.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M4b65726e656c2f436865636b65642e6c65616e


/- source-tree-label: STL1|L|addr=0000111000|role=proof_code_atom|slug=kernel-bridge|owner=canonical_owner|core=Kernel/Bridge.lean|leaf=M4b65726e656c2f4272696467652e6c65616e.lean -/

set_option autoImplicit false

universe u v

namespace FWR

namespace Function

def Bijective {α : Sort u} {β : Sort v} (f : α -> β) : Prop :=
  _root_.Function.Injective f ∧ _root_.Function.Surjective f

end Function

structure StageBridge (BQ T : Type u) where
  Phi : BQ -> T
  sigma : T -> BQ
  right_inv : ∀ t : T, Phi (sigma t) = t
  left_inv : ∀ b : BQ, sigma (Phi b) = b

namespace StageBridge

theorem injective {BQ T : Type u} (S : StageBridge BQ T) :
    Function.Injective S.Phi := by
  intro a b h
  calc
    a = S.sigma (S.Phi a) := (S.left_inv a).symm
    _ = S.sigma (S.Phi b) := by rw [h]
    _ = b := S.left_inv b

theorem surjective {BQ T : Type u} (S : StageBridge BQ T) :
    Function.Surjective S.Phi := by
  intro t
  exact ⟨S.sigma t, S.right_inv t⟩

theorem bijective {BQ T : Type u} (S : StageBridge BQ T) :
    Function.Bijective S.Phi :=
  ⟨S.injective, S.surjective⟩

end StageBridge

structure BridgeAttempt (BQ T : Type u) where
  Phi : BQ -> T
  sigma : T -> BQ
  DecodeTotal : Prop
  QuotientWellDefined : Prop
  TransitionCompatible : Prop

namespace BridgeAttempt

structure Valid {BQ T : Type u} (A : BridgeAttempt BQ T) : Prop where
  decodeTotal : A.DecodeTotal
  quotientWellDefined : A.QuotientWellDefined
  rightSection : ∀ t : T, A.Phi (A.sigma t) = t
  leftSection : ∀ b : BQ, A.sigma (A.Phi b) = b
  transitionCompatible : A.TransitionCompatible

def toStageBridge {BQ T : Type u} (A : BridgeAttempt BQ T)
    (h : A.Valid) : StageBridge BQ T where
  Phi := A.Phi
  sigma := A.sigma
  right_inv := h.rightSection
  left_inv := h.leftSection

def validationResidues (target : Target) : List Residue := [
  { target := target
    atomId := "bridgeAttempt.decodeTotality"
    kind := ResidueKind.missingDecode
    blocks := "validation that decoding is total and matches the target carrier"
    clearsBy := "a decode-totality theorem for the bridge attempt" },
  { target := target
    atomId := "bridgeAttempt.quotientWellDefined"
    kind := ResidueKind.missingTraceQuotient
    blocks := "validation that the bridge respects the intended quotient relation"
    clearsBy := "a quotient well-definedness theorem for the bridge attempt" },
  { target := target
    atomId := "bridgeAttempt.rightSection"
    kind := ResidueKind.missingSection
    blocks := "construction of a right inverse for the proposed bridge"
    clearsBy := "a proof of the right round-trip law" },
  { target := target
    atomId := "bridgeAttempt.leftSection"
    kind := ResidueKind.missingSection
    blocks := "construction of a left inverse for the proposed bridge"
    clearsBy := "a proof of the left round-trip law" },
  { target := target
    atomId := "bridgeAttempt.transitionCompatibility"
    kind := ResidueKind.missingTransition
    blocks := "compatibility of bridge attempts across finite stages"
    clearsBy := "a transition-compatibility theorem for the bridge attempt" }
]

def validate {BQ T : Type u} (target : Target)
    (A : BridgeAttempt BQ T) : Checked A.Valid :=
  Checked.residue (validationResidues target)

def validateWithProof {BQ T : Type u} (_target : Target)
    (A : BridgeAttempt BQ T) (h : A.Valid) : Checked A.Valid :=
  Checked.proved h

theorem validate_hasResidue {BQ T : Type u} (target : Target)
    (A : BridgeAttempt BQ T) :
    (validate target A).hasResidue = true := by
  rfl

end BridgeAttempt

end FWR
