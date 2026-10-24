# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CheckedJetControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dc62a5bc19fd3ecb3afe798faead828ad96dfaa` · SHA-256 `1d07ed7d86b9a7e52401441e86dcca23b1fdeef0731dffd2a9d0a1c0c3d830f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCheckedJets

set_option autoImplicit false

/-!
# Source-bound packet, ordered-prefix, terminal and contour controls

Small unexecuted decision scripts. A complete tiny square is not the large target.
All 38 large original target equalities remain without kernel acceptance.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.CheckedJetControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure

def poleParameters : RationalPoleValue.Parameters := ⟨1,0,4,1,1,0,1⟩

def polePacket : CheckedPoleJet.Packet := [[]]

theorem complete_finite_jet : CheckedPoleJet.finite one poleParameters polePacket =
    some (⟨one,0⟩,⟨(9/16,0),1/16⟩) := by decide

/-- Actual-source derivative error is not erased by the exact value at the pole. -/
theorem complete_source_patch : CheckedPoleJet.checkPatch one (1/10) (1/2) poleParameters polePacket =
    some ⟨⟨one,0⟩,⟨(9/16,0),33/8⟩,3/4,true⟩ := by decide

theorem missing_and_extra_bases :
    CheckedPoleJet.finite one poleParameters [] = none ∧
    CheckedPoleJet.finite one poleParameters [[],[]] = none := by decide

/-- Zero required squares does not permit an extra fixed-point state. -/
theorem extra_inner_state :
    CheckedPoleJet.finite one poleParameters [[⟨16,0,0⟩]] = none := by decide

theorem invalid_cutoff_and_source :
    CheckedPoleJet.finite one {poleParameters with cutoff := 0} [] = none ∧
    CheckedPoleJet.finite (0,1) poleParameters polePacket = none := by decide

theorem equality_and_outer_disk_reject :
    CheckedPoleJet.checkPatch one (1/8) (1/2) poleParameters polePacket = none ∧
    CheckedPoleJet.checkPatch one (1/10) 1 poleParameters polePacket = none := by decide

def twoParameters : RationalPoleValue.Parameters := ⟨2,0,4,1,1,1,2⟩

def twoPacket : CheckedPoleJet.Packet := [[⟨16,0,0⟩],[⟨7,0,5⟩]]

/-- Last accepted power is reused in the complete endpoint correction. -/
theorem two_bases_complete : CheckedPoleJet.finite one twoParameters twoPacket =
    some (⟨(7/8,0),7/8⟩,⟨(5/8,0),25/16⟩) := by decide

theorem reorder_and_duplicate_reject :
    CheckedPoleJet.finite one twoParameters [[⟨7,0,5⟩],[⟨16,0,0⟩]] = none ∧
    CheckedPoleJet.finite one twoParameters [[⟨16,0,0⟩],[⟨16,0,0⟩]] = none := by decide

theorem wrong_terminal_error_reject :
    CheckedPoleJet.finite one twoParameters [[⟨16,0,0⟩],[⟨7,0,4⟩]] = none := by decide

def smallDomain : List Coordinates :=
  [(99/100,-1/100),(101/100,-1/100),(101/100,1/100),(99/100,1/100),(99/100,-1/100)]

def smallPlans : List ConstructedRectangleCount.Plan :=
  List.replicate 4 ⟨one,1/10,1/2,poleParameters⟩

def smallImage : List Coordinates := List.replicate 5 one

def smallPackets : List CheckedPoleJet.Packet := List.replicate 4 polePacket

/-- Every edge, including closure, is checked with source-computed full jets. -/
theorem complete_small_square :
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage smallPackets = some 0 := by decide

theorem missing_and_extra_plan_packets :
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage (List.replicate 3 polePacket) = none ∧
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage (List.replicate 5 polePacket) = none := by decide

theorem bad_final_packet_reject :
    CheckedJetContour.evaluate 4 smallDomain smallPlans smallImage [polePacket,polePacket,polePacket,[]] = none := by decide

/-- Both incident disks retain the SAME image endpoint. -/
theorem zero_shared_vertex_reject :
    CheckedJetContour.evaluate 4 smallDomain smallPlans [one,one,zero,one,one] smallPackets = none := by decide

theorem global_closure_reject :
    CheckedJetContour.evaluate 4 smallDomain smallPlans [one,one,one,one,(2,0)] smallPackets = none := by decide

end GRWTSK.RiemannHypothesis.Checks.CheckedJetControls
```
