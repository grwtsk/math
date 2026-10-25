# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Relations.Variant8388255d924cabcf14a99f52c84b8d90f4c542aa23666557cd3c678bd714982a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5ad8e79faae83253eb1fb911d736bd7bf92877b` · SHA-256 `8388255d924cabcf14a99f52c84b8d90f4c542aa23666557cd3c678bd714982a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import CompositeElements.Projects

/-! # Closed static relation registry for the first federation. -/

namespace URSM.Composite

def importsBits : BitMatrix projectCount projectCount :=
  fun consumer dependency ↦
    ((consumer.val == 3) &&
      ((dependency.val == 0) ||
        (dependency.val == 1) ||
        (dependency.val == 2))) ||
    ((consumer.val == 4) &&
      ((dependency.val == 0) ||
        (dependency.val == 2))) ||
    ((consumer.val == 5) &&
      ((dependency.val == 0) ||
        (dependency.val == 3) ||
        (dependency.val == 4)))

def ProjectImports
    (consumer dependency : Fin projectCount) : Prop :=
  importsBits consumer dependency = true

def transportBits : BitMatrix projectCount projectCount :=
  fun source target ↦
    decide (source = target) ||
      ((source.val == 0) && (target.val == 1)) ||
      ((source.val == 1) && (target.val == 0)) ||
      ((source.val == 2) &&
        ((target.val == 0) || (target.val == 1)))

def exactBridgeBits : BitMatrix projectCount projectCount :=
  fun source target ↦
    decide (source = target) ||
      ((source.val == 0) && (target.val == 1)) ||
      ((source.val == 1) && (target.val == 0))

def conflictBits : BitMatrix projectCount projectCount :=
  fun _ _ ↦ false

def conflictValidityBits : BitMatrix projectCount projectCount :=
  exactBridgeBits

def propertyNaturalityBits : BitMatrix projectCount projectCount :=
  exactBridgeBits

def declaredBits : BitMatrix projectCount projectCount :=
  BitMatrix.diagonal (fun _ ↦ true)

def formalEligibleBits : BitMatrix projectCount projectCount :=
  BitMatrix.diagonal (fun _ ↦ true)

def importEdges : List (Nat × Nat) :=
  [(3, 0), (3, 1), (3, 2),
    (4, 0), (4, 2),
    (5, 0), (5, 3), (5, 4)]

def transportEdges : List (Nat × Nat) :=
  [(0, 0), (0, 1), (1, 0), (1, 1),
    (2, 0), (2, 1), (2, 2), (3, 3), (4, 4), (5, 5)]

def exactBridgeEdges : List (Nat × Nat) :=
  [(0, 0), (0, 1), (1, 0), (1, 1),
    (2, 2), (3, 3), (4, 4), (5, 5)]

def propertyNaturalityEdges : List (Nat × Nat) :=
  exactBridgeEdges

def conflictEdges : List (Nat × Nat) :=
  []

def conflictValidityEdges : List (Nat × Nat) :=
  exactBridgeEdges

def projectRank : Fin projectCount → Nat :=
  ![0, 0, 0, 1, 1, 2]

@[simp] theorem importsBits_true_iff
    (consumer dependency : Fin projectCount) :
    importsBits consumer dependency = true ↔
      ProjectImports consumer dependency :=
  Iff.rfl

theorem imports_rank_decreases
    {consumer dependency : Fin projectCount}
    (imports : importsBits consumer dependency = true) :
    projectRank dependency < projectRank consumer := by
  fin_cases consumer <;> fin_cases dependency <;>
    simp [importsBits, projectRank] at imports ⊢

theorem exactBridge_symmetric
    (left right : Fin projectCount) :
    exactBridgeBits left right = exactBridgeBits right left := by
  native_decide +revert

theorem conflict_symmetric
    (left right : Fin projectCount) :
    conflictBits left right = conflictBits right left :=
  rfl

theorem exactBridge_implies_transport
    (left right : Fin projectCount)
    (exact : exactBridgeBits left right = true) :
      transportBits left right = true ∧
      transportBits right left = true := by
  native_decide +revert

@[simp] theorem transport_identity
    (project : Fin projectCount) :
    transportBits project project = true := by
  native_decide +revert

theorem transport_composes
    (source middle target : Fin projectCount)
    (first : transportBits source middle = true)
    (second : transportBits middle target = true) :
    transportBits source target = true := by
  native_decide +revert

def relations : URSM.Bridge.CompositeRelations projectCount where
  imports := importsBits
  transport := transportBits
  exactBridge := exactBridgeBits
  conflict := conflictBits
  propertyNaturality := propertyNaturalityBits
  exactBridgeSymmetric := exactBridge_symmetric
  conflictSymmetric := conflict_symmetric
  exactBridgeImpliesTransport := exactBridge_implies_transport

end URSM.Composite
```
