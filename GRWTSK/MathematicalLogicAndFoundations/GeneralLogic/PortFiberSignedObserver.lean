/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberGeneralObserver
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed accounting for ANY partial typed observer

An original finite signed source is indexed by its ORIGINAL occurrences,
not quotient classes of the observer result. Every ordered off-diagonal
pair belongs to one of four observation-availability cases:

  some/some: real modeled kernel PLUS exact signed source-minus-model defect;
  none/none: unchanged original source (rough/rough);
  some/none: unchanged original source (mixed, first orientation);
  none/some: unchanged original source (mixed, reverse orientation).

This identity needs no noncircular cancellation assumption: it is exact
finite algebra. A change of observer or of modeled kernel is legal only
with a corresponding change in the signed defect. Missing sources and
both mixed orientations survive every proper typed-port relay.

The unrestricted signed readout never implies positive energy, recovery
of phase, an elliptic isogeny, a prime-zero bijection, or RH.
-/

namespace GRWTSK.Topology.PortFiber.SignedObserver

open GRWTSK.Topology.PortFiber

variable {P : GRWTSK.Topology.PortFiber} {ι V : Type*}

/-- An observation kernel is measured on ACTUAL readout values, rather
than on invented source coefficient or source identity fields. -/
def modelKernel (S : PartialSample P ι)
    (O : Readout P V) (K : V → V → ℝ) (i j : ι) : ℝ :=
  match S.route i, S.route j with
  | some x, some y => K (O.total x) (O.total y)
  | _, _ => 0

/-- The exact signed source-minus-model difference is paid only where
BOTH original occurrences were successfully routed. -/
def matchedDefectKernel (S : PartialSample P ι)
    (O : Readout P V) (K : V → V → ℝ)
    (source : ι → ι → ℝ) (i j : ι) : ℝ :=
  match S.route i, S.route j with
  | some x, some y => source i j - K (O.total x) (O.total y)
  | _, _ => 0

/-- Unmatched/unmatched ordered pairs retain the ORIGINAL signed source. -/
def roughKernel (S : PartialSample P ι)
    (source : ι → ι → ℝ) (i j : ι) : ℝ :=
  match S.route i, S.route j with
  | none, none => source i j
  | _, _ => 0

/-- First original index matched, second unmatched. -/
def forwardMixedKernel (S : PartialSample P ι)
    (source : ι → ι → ℝ) (i j : ι) : ℝ :=
  match S.route i, S.route j with
  | some _, none => source i j
  | _, _ => 0

/-- First original index unmatched, second matched. This is a DISTINCT
ordered sector and cannot be inferred without a symmetric source kernel. -/
def reverseMixedKernel (S : PartialSample P ι)
    (source : ι → ι → ℝ) (i j : ι) : ℝ :=
  match S.route i, S.route j with
  | none, some _ => source i j
  | _, _ => 0

/-- Complete arithmetic identity for one ORIGINAL ordered source pair.
It does NOT equate the original kernel and an arbitrary observed kernel;
the signed defect is preserved without an inequality. -/
theorem pointwise_complete
    (S : PartialSample P ι)
    (O : Readout P V) (K : V → V → ℝ)
    (source : ι → ι → ℝ) (i j : ι) :
    source i j =
      modelKernel S O K i j +
      matchedDefectKernel S O K source i j +
      roughKernel S source i j +
      forwardMixedKernel S source i j +
      reverseMixedKernel S source i j := by
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none =>
          simp [modelKernel, matchedDefectKernel, roughKernel,
            forwardMixedKernel, reverseMixedKernel, hi, hj]
      | some y =>
          simp [modelKernel, matchedDefectKernel, roughKernel,
            forwardMixedKernel, reverseMixedKernel, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none =>
          simp [modelKernel, matchedDefectKernel, roughKernel,
            forwardMixedKernel, reverseMixedKernel, hi, hj]
      | some y =>
          simp [modelKernel, matchedDefectKernel, roughKernel,
            forwardMixedKernel, reverseMixedKernel, hi, hj]
          ring

/-- Source occurrence indices and BOTH orientations are retained.
A collision of observer labels must not identify distinct i,j here. -/
def orderedPacket (S : Finset ι) (K : ι → ι → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S, if i = j then 0 else K i j

/-- Ordered packet addition is exact; neither a sign nor a diagonal
term disappears under linearity. -/
theorem orderedPacket_add (S : Finset ι)
    (K L : ι → ι → ℝ) :
    orderedPacket S (fun i j => K i j + L i j) =
      orderedPacket S K + orderedPacket S L := by
  classical
  unfold orderedPacket
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simp [hij]

/-- The complete finite signed accounting theorem for ANY port-fiber
system, any optional route and any real readout kernel. Even an
asymmetric kernel retains forward and reverse mixed sectors. -/
theorem orderedPacket_complete
    (S : PartialSample P ι) (O : Readout P V)
    (K : V → V → ℝ) (source : ι → ι → ℝ)
    (indices : Finset ι) :
    orderedPacket indices source =
      orderedPacket indices (modelKernel S O K) +
      orderedPacket indices (matchedDefectKernel S O K source) +
      orderedPacket indices (roughKernel S source) +
      orderedPacket indices (forwardMixedKernel S source) +
      orderedPacket indices (reverseMixedKernel S source) := by
  classical
  calc
    orderedPacket indices source =
        orderedPacket indices (fun i j =>
          modelKernel S O K i j +
          matchedDefectKernel S O K source i j +
          roughKernel S source i j +
          forwardMixedKernel S source i j +
          reverseMixedKernel S source i j) := by
        unfold orderedPacket
        apply Finset.sum_congr rfl
        intro i hi
        apply Finset.sum_congr rfl
        intro j hj
        by_cases hij : i = j
        · simp [hij]
        · simpa only [if_neg hij] using
            pointwise_complete S O K source i j
    _ = _ := by
      simp only [orderedPacket_add]
      ring

/-- Modeled matched terms and their defects always return to the
same original matched source, regardless of the observer. -/
theorem model_add_defect_pointwise
    (S : PartialSample P ι)
    (O : Readout P V) (K : V → V → ℝ)
    (source : ι → ι → ℝ) (i j : ι) :
    modelKernel S O K i j +
      matchedDefectKernel S O K source i j =
      match S.route i, S.route j with
      | some _, some _ => source i j
      | _, _ => 0 := by
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none =>
          simp [modelKernel, matchedDefectKernel, hi, hj]
      | some y =>
          simp [modelKernel, matchedDefectKernel, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none =>
          simp [modelKernel, matchedDefectKernel, hi, hj]
      | some y =>
          simp [modelKernel, matchedDefectKernel, hi, hj]

/-- Changing BOTH the observer and its kernel cannot change the
complete signed modeled-plus-defect contribution on a fixed route.
This is the exact no-free-cancellation rule for an observer change. -/
theorem observer_change_preserves_matched_ledger
    {V₂ : Type*} (S : PartialSample P ι)
    (O₁ : Readout P V) (K₁ : V → V → ℝ)
    (O₂ : Readout P V₂) (K₂ : V₂ → V₂ → ℝ)
    (source : ι → ι → ℝ) (i j : ι) :
    modelKernel S O₁ K₁ i j +
        matchedDefectKernel S O₁ K₁ source i j =
      modelKernel S O₂ K₂ i j +
        matchedDefectKernel S O₂ K₂ source i j := by
  rw [model_add_defect_pointwise, model_add_defect_pointwise]

/-- The previous identity also holds on the FULL original finite
ordered packet, not only after compressing equal observation values. -/
theorem observer_change_preserves_matched_packet
    {V₂ : Type*} (S : PartialSample P ι)
    (O₁ : Readout P V) (K₁ : V → V → ℝ)
    (O₂ : Readout P V₂) (K₂ : V₂ → V₂ → ℝ)
    (source : ι → ι → ℝ) (indices : Finset ι) :
    orderedPacket indices (modelKernel S O₁ K₁) +
        orderedPacket indices (matchedDefectKernel S O₁ K₁ source) =
      orderedPacket indices (modelKernel S O₂ K₂) +
        orderedPacket indices (matchedDefectKernel S O₂ K₂ source) := by
  rw [← orderedPacket_add, ← orderedPacket_add]
  unfold orderedPacket
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simpa only [if_neg hij] using
      observer_change_preserves_matched_ledger S O₁ K₁ O₂ K₂ source i j

/-- A true typed-port relay preserves missing/matched status, but it may
change all observed values. The difference is charged to the exact
matched defect on each original index pair. No readout invariance
hypothesis is invented for this theorem. -/
theorem relay_change_preserves_matched_ledger
    {V₂ : Type*} (S : PartialSample P ι) (f : Relay P)
    (O₁ : Readout P V) (K₁ : V → V → ℝ)
    (O₂ : Readout P V₂) (K₂ : V₂ → V₂ → ℝ)
    (source : ι → ι → ℝ) (i j : ι) :
    modelKernel S O₁ K₁ i j +
        matchedDefectKernel S O₁ K₁ source i j =
      modelKernel (S.relay f) O₂ K₂ i j +
        matchedDefectKernel (S.relay f) O₂ K₂ source i j := by
  rw [model_add_defect_pointwise, model_add_defect_pointwise]
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none => simp [PartialSample.relay, hi, hj]
      | some y => simp [PartialSample.relay, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none => simp [PartialSample.relay, hi, hj]
      | some y => simp [PartialSample.relay, hi, hj]

/-- The original rough source is truly preserved under a typed relay,
even if the relay collapses observable values. -/
theorem roughKernel_relay (S : PartialSample P ι) (f : Relay P)
    (source : ι → ι → ℝ) (i j : ι) :
    roughKernel (S.relay f) source i j = roughKernel S source i j := by
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none => simp [roughKernel, PartialSample.relay, hi, hj]
      | some y => simp [roughKernel, PartialSample.relay, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none => simp [roughKernel, PartialSample.relay, hi, hj]
      | some y => simp [roughKernel, PartialSample.relay, hi, hj]

/-- Both original mixed orientations retain their signs and positions. -/
theorem forwardMixedKernel_relay (S : PartialSample P ι)
    (f : Relay P) (source : ι → ι → ℝ) (i j : ι) :
    forwardMixedKernel (S.relay f) source i j =
      forwardMixedKernel S source i j := by
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none => simp [forwardMixedKernel, PartialSample.relay, hi, hj]
      | some y => simp [forwardMixedKernel, PartialSample.relay, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none => simp [forwardMixedKernel, PartialSample.relay, hi, hj]
      | some y => simp [forwardMixedKernel, PartialSample.relay, hi, hj]

theorem reverseMixedKernel_relay (S : PartialSample P ι)
    (f : Relay P) (source : ι → ι → ℝ) (i j : ι) :
    reverseMixedKernel (S.relay f) source i j =
      reverseMixedKernel S source i j := by
  cases hi : S.route i with
  | none =>
      cases hj : S.route j with
      | none => simp [reverseMixedKernel, PartialSample.relay, hi, hj]
      | some y => simp [reverseMixedKernel, PartialSample.relay, hi, hj]
  | some x =>
      cases hj : S.route j with
      | none => simp [reverseMixedKernel, PartialSample.relay, hi, hj]
      | some y => simp [reverseMixedKernel, PartialSample.relay, hi, hj]

/-- The actual matched packet plus its whole signed defect is preserved
under a port relay and a completely different observer/kernel.
This equality follows from the unchanged original indices, not from
positive Gram or any RH-strength arithmetic estimate. -/
theorem relay_change_preserves_matched_packet
    {V₂ : Type*} (S : PartialSample P ι) (f : Relay P)
    (O₁ : Readout P V) (K₁ : V → V → ℝ)
    (O₂ : Readout P V₂) (K₂ : V₂ → V₂ → ℝ)
    (source : ι → ι → ℝ) (indices : Finset ι) :
    orderedPacket indices (modelKernel S O₁ K₁) +
        orderedPacket indices (matchedDefectKernel S O₁ K₁ source) =
      orderedPacket indices (modelKernel (S.relay f) O₂ K₂) +
        orderedPacket indices
          (matchedDefectKernel (S.relay f) O₂ K₂ source) := by
  rw [← orderedPacket_add, ← orderedPacket_add]
  unfold orderedPacket
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simpa only [if_neg hij] using
      relay_change_preserves_matched_ledger
        S f O₁ K₁ O₂ K₂ source i j

/-- With every observation genuinely missing, the model, defect, and
both mixed sectors are zero. The original complete source stays
entirely in the rough sector. -/
theorem empty_observer_preserves_source
    (P : GRWTSK.Topology.PortFiber) (ι V : Type*)
    (O : Readout P V) (K : V → V → ℝ)
    (source : ι → ι → ℝ) (indices : Finset ι) :
    orderedPacket indices source =
      orderedPacket indices
        (roughKernel (PartialSample.empty P ι) source) := by
  unfold orderedPacket
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  simp [roughKernel, PartialSample.empty]

end GRWTSK.Topology.PortFiber.SignedObserver
