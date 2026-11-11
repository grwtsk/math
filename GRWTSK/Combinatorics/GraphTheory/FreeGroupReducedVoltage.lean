/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Lean elaboration, fresh kernel checking,
transitive axiom audit and independent mathematical review: NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.InverseEdgeFreeGroupVoltage
import Mathlib.GroupTheory.FreeGroup.Reduce
import Mathlib

/-!
# Reduced signed histories and exact universal-cover observations

Consumer: the actual `InverseEdgeVoltage.signedBouquetPath`, the actual
`InverseEdgeVoltage.sourceFreeClass`, and `VoltageCover.liftPath`.

This module supplies the previously missing unconditional *normal-form* and
*universal-cover* comparison for arbitrary finite signed edge words.  Mathlib's
`FreeGroup.reduce`, not an independent reduction relation, is used.  The marked
endpoint in the cover with sheet group `FreeGroup A` distinguishes exactly the
free-group classes, equivalently the reduced words.  The original lifted path
still erases to the COMPLETE signed source history, including inverse pairs.

This is an INFINITE sheet group in general.  It does not prove residual
finite-2-group separation, finite-index towers, truncated Magnus unit groups,
physical spin dynamics, source Weil positivity, RH or GRH.  Replacing this cover
by a finite 2-group is a separate, precisely identified mathematical obligation.

Analytic argument: the universal group voltage evaluates each signed generator
as the generator or its inverse; `FreeGroup.lift FreeGroup.of = id`.  Left
cancellation at the chosen initial sheet identifies endpoints exactly with
free-group equality.  The Church--Rosser/reduction theorems from Mathlib then
identify these classes with canonical reduced words.  A backtrack is the hostile
example showing that the reduced readout is NOT the full archival history.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace FreeGroupReducedVoltage

universe u v w

open InverseEdgeVoltage

variable {A : Type u}

/-! ### Canonical normal forms, without modifying source event identities -/

/-- Mathlib's canonical maximal cancellation of a signed source word. -/
def reducedWord [DecidableEq A] (xs : List (A × Bool)) : List (A × Bool) :=
  FreeGroup.reduce xs

/-- The canonical reduced representative of a genuine free-group element. -/
noncomputable def canonicalWord [DecidableEq A] (x : FreeGroup A) :
    List (A × Bool) := FreeGroup.toWord x

@[simp] theorem reducedWord_idempotent [DecidableEq A]
    (xs : List (A × Bool)) :
    reducedWord (reducedWord xs) = reducedWord xs := by
  exact FreeGroup.reduce.idem

/-- Reducing the source word preserves the ACTUAL Mathlib free-group class. -/
@[simp] theorem sourceFreeClass_reduced [DecidableEq A]
    (xs : List (A × Bool)) :
    sourceFreeClass (reducedWord xs) = sourceFreeClass xs := by
  exact FreeGroup.reduce.self

/-- A full two-sided comparison: no group equality is invented by normalization. -/
theorem reducedWord_eq_iff_sourceFreeClass_eq [DecidableEq A]
    (xs ys : List (A × Bool)) :
    reducedWord xs = reducedWord ys ↔
      sourceFreeClass xs = sourceFreeClass ys := by
  constructor
  · exact FreeGroup.reduce.exact
  · exact FreeGroup.reduce.sound

/-- Deciding equality of reduced words decides equality of the original
free-group classes.  It does not say that the original event lists agree. -/
theorem sourceFreeClass_eq_iff_reducedWord_eq [DecidableEq A]
    (xs ys : List (A × Bool)) :
    sourceFreeClass xs = sourceFreeClass ys ↔
      reducedWord xs = reducedWord ys :=
  (reducedWord_eq_iff_sourceFreeClass_eq xs ys).symm

/-- The normal form round trip reconstructs the exact group element. -/
@[simp] theorem sourceFreeClass_canonicalWord [DecidableEq A]
    (x : FreeGroup A) :
    sourceFreeClass (canonicalWord x) = x := by
  exact FreeGroup.mk_toWord

/-- Starting from source syntax, normalizing and decoding yields precisely the
same reduced event word, with no implicit choice of representatives. -/
@[simp] theorem canonicalWord_sourceFreeClass [DecidableEq A]
    (xs : List (A × Bool)) :
    canonicalWord (sourceFreeClass xs) = reducedWord xs := by
  exact FreeGroup.toWord_mk

/-- Decidable finite-word equality of free-group classes, computed without
    enumerating any quotient group or guessing a reduction witness. -/
def sameFreeClass [DecidableEq A]
    (xs ys : List (A × Bool)) : Bool :=
  decide (reducedWord xs = reducedWord ys)

/-- The Boolean procedure agrees with the actual source FreeGroup quotient. -/
theorem sameFreeClass_correct [DecidableEq A]
    (xs ys : List (A × Bool)) :
    sameFreeClass xs ys = true ↔ sourceFreeClass xs = sourceFreeClass ys := by
  simpa [sameFreeClass] using
    (reducedWord_eq_iff_sourceFreeClass_eq xs ys)

/-! ### Unconditional universal-cover classification of inverse histories -/

/-- Read the existing source transport in the free group itself, with no
assumed finite-group or external separation oracle. -/
def universalVoltage (a : A) : FreeGroup A := FreeGroup.of a

/-- Exact source-lift comparison for all signed lists, including inverse events. -/
theorem holonomy_universal_eq_freeClass (xs : List (A × Bool)) :
    Path.holonomy (signedBouquetTransport (universalVoltage (A := A)))
        (signedBouquetPath xs) = sourceFreeClass xs := by
  rw [signedBouquet_holonomy_lift]
  exact FreeGroup.lift_of_apply (sourceFreeClass xs)

/-- Starting from a marked sheet `g`, the endpoint records the exact
free-group class; cancellation is a property of transport, not of the archive. -/
theorem universal_endpoint_eq (xs : List (A × Bool))
    (g : FreeGroup A) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath xs) g).1 = g * sourceFreeClass xs := by
  rw [signedBouquet_lift_endpoint]
  exact congrArg (fun x : FreeGroup A => g * x)
    (FreeGroup.lift_of_apply (sourceFreeClass xs))

/-- Two signed histories reach the same marked endpoint if and ONLY if they
represent the same free-group element, with no finite bound on word length. -/
theorem universal_endpoints_eq_iff_freeClass_eq
    (xs ys : List (A × Bool)) (g : FreeGroup A) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath xs) g).1 =
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath ys) g).1 ↔
      sourceFreeClass xs = sourceFreeClass ys := by
  rw [universal_endpoint_eq, universal_endpoint_eq]
  constructor
  · exact mul_left_cancel
  · intro h
    rw [h]

/-- Equivalently, equal endpoints mean equal maximal reduced forms. -/
theorem universal_endpoints_eq_iff_reducedWord_eq [DecidableEq A]
    (xs ys : List (A × Bool)) (g : FreeGroup A) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath xs) g).1 =
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath ys) g).1 ↔
      reducedWord xs = reducedWord ys := by
  rw [universal_endpoints_eq_iff_freeClass_eq]
  exact sourceFreeClass_eq_iff_reducedWord_eq xs ys

/-- No finite inventory and no pre-given separating transport is required:
reduced-distinct words have different endpoints in the universal cover. -/
theorem universal_endpoints_ne_of_reduced_ne [DecidableEq A]
    (xs ys : List (A × Bool)) (g : FreeGroup A)
    (hne : reducedWord xs ≠ reducedWord ys) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath xs) g).1 ≠
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (signedBouquetPath ys) g).1 := by
  intro h
  exact hne ((universal_endpoints_eq_iff_reducedWord_eq xs ys g).mp h)

/-- The unchanged existing cover path return still reconstructs every
original source event, including all inverse-pair occurrences. -/
theorem universal_source_path_return (xs : List (A × Bool))
    (g : FreeGroup A) :
    VoltageCover.erasePath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (universalVoltage (A := A)))
      (VoltageCover.liftPath
        (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (universalVoltage (A := A)))
        (signedBouquetPath xs) g).2 =
      signedBouquetPath xs :=
  signedBouquet_erase_lift _ _ _

/-- The *original* signed source path retains the chronological word, even
    though its free-group normal form may delete inverse pairs. -/
@[simp] theorem signedBouquet_path_labels (xs : List (A × Bool)) :
    Path.labels (fun {_ _} (e : A × Bool) => e) (signedBouquetPath xs) = xs := by
  classical
  exact PositiveWordSeparation.labels_asBouquetPath xs

/-- Combining the actual covering return with original path labels returns
    the literal signed source bytes at the mathematical event level. -/
theorem universal_returned_labels (xs : List (A × Bool))
    (g : FreeGroup A) :
    Path.labels (fun {_ _} (e : A × Bool) => e)
      (VoltageCover.erasePath
        (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (universalVoltage (A := A)))
        (VoltageCover.liftPath
          (PositiveWordSeparation.bouquetEdge (A × Bool))
          (signedBouquetTransport (universalVoltage (A := A)))
          (signedBouquetPath xs) g).2) = xs := by
  rw [universal_source_path_return]
  exact signedBouquet_path_labels xs

/-- If the source inventory is faithful *up to reduction*, marked endpoints
are injective on that inventory.  This explicitly retains the hypothesis
that two different records do not represent the same reduced group word. -/
theorem universal_inventory_injective [DecidableEq A]
    {P : Type v} (history : P → List (A × Bool))
    (faithful : Function.Injective (fun p => reducedWord (history p)))
    (g : FreeGroup A) :
    Function.Injective (fun p =>
      (VoltageCover.liftPath
        (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (universalVoltage (A := A)))
        (signedBouquetPath (history p)) g).1) := by
  intro p q he
  apply faithful
  exact (universal_endpoints_eq_iff_reducedWord_eq
    (history p) (history q) g).mp he

/-! ### Transport invariance versus literal history identity -/

/-- The source-normalized path produces the same group transport for every
source-assigned group-valued voltage, not only for the universal voltage. -/
theorem normalized_holonomy {G : Type w} [Group G] [DecidableEq A]
    (f : A → G) (xs : List (A × Bool)) :
    Path.holonomy (signedBouquetTransport f)
      (signedBouquetPath (reducedWord xs)) =
    Path.holonomy (signedBouquetTransport f)
      (signedBouquetPath xs) := by
  rw [signedBouquet_holonomy_lift, signedBouquet_holonomy_lift]
  rw [sourceFreeClass_reduced]

/-- A backtrack is erased by group reduction; that is NOT an equality of
source histories. -/
theorem backtrack_freeClass_eq_empty (a : A) :
    sourceFreeClass [(a, true), (a, false)] = sourceFreeClass [] := by
  exact freeClass_cancel [] [] a true

/-- The original tagged signed event path has two events and is not empty. -/
theorem backtrack_path_ne_empty (a : A) :
    signedBouquetPath [(a, true), (a, false)] ≠ signedBouquetPath [] := by
  intro h
  cases h

end FreeGroupReducedVoltage
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
