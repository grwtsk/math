# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea10cec237e2399f2b46d48e1d25ab4db723882f` · SHA-256 `da2be21c62198ecf6c570ea806934618c579fbe32e7603e33230d7cfcbdf40b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedJetContour
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition

set_option autoImplicit false

/-!
# Canonical checked cells split into the unchanged 38 contour blocks

Each cell uses the source-generated packet for its literal plan, then the same
global domain/image endpoints and the same signed polygon chart. The checked
predicate is proved equal to the old direct predicate before any target-specific
finite equality is asserted.

This is a proof decomposition only. It does not establish any block value,
whole-contour result, runtime bound, or kernel acceptance.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenCanonicalBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open HeightFifteenJetCandidate HeightFifteenBlockDecomposition

/-- The old proposition used by directTest, named for the refinement proof. -/
def oldEdge (i : ℕ) : Prop :=
  JetPoleContour.EdgeValid (RationalPoleContour.pointAt domain i)
    (RationalPoleContour.pointAt domain (i+1))
    (directImage i) (directImage (i+1)) (plan i) ∧
  RationalPolygonIndex.EdgeValid (directImage i) (directImage (i+1))

/-- The same cell, but its source tube is supplied by the canonical checked packet. -/
def checkedEdge (i : ℕ) : Prop :=
  CheckedJetContour.edgeCheck (RationalPoleContour.pointAt domain i)
    (RationalPoleContour.pointAt domain (i+1))
    (directImage i) (directImage (i+1)) (plan i)
    (CanonicalCheckedPoleJet.packet (plan i).center (plan i).parameters) = true ∧
  RationalPolygonIndex.EdgeValid (directImage i) (directImage (i+1))

def checkedTest (i : ℕ) : Bool := decide (checkedEdge i)

theorem checkedEdge_iff (i : ℕ) : checkedEdge i ↔ oldEdge i := by
  constructor
  · rintro ⟨hsource,hchart⟩
    exact ⟨CheckedJetContour.edge_refines hsource,hchart⟩
  · rintro ⟨hsource,hchart⟩
    exact ⟨CanonicalCheckedJetContour.edgeCheck_packets hsource,hchart⟩

/-- Equality of complete cell Booleans, including false outcomes. -/
theorem checkedTest_eq_direct (i : ℕ) : checkedTest i = directTest i := by
  rw [Bool.eq_iff_iff]
  simpa only [checkedTest,directTest,checkedEdge,oldEdge,decide_eq_true_eq] using
    checkedEdge_iff i

/-- Every local checked block is exactly the old local block computation. -/
theorem checkedChunk_eq_direct (start count : ℕ) :
    chunk checkedTest directTerm start count =
      chunk directTest directTerm start count := by
  unfold chunk
  have hall := allRange_congr (f:=checkedTest) (g:=directTest) start count
    (fun j _ => checkedTest_eq_direct (start+j))
  rw [hall]

/-- Same widths, claims, cells, and signed contributions as the old obligations. -/
def ScriptObligations : Prop :=
  Pieces checkedTest directTerm 0 widths expected

theorem pieces_checked_iff (start : ℕ) (ws : List ℕ) (ks : List ℤ) :
    Pieces checkedTest directTerm start ws ks ↔
      Pieces directTest directTerm start ws ks := by
  induction ws generalizing start ks with
  | nil =>
      cases ks <;> simp [Pieces]
  | cons w ws ih =>
      cases ks with
      | nil => simp [Pieces]
      | cons k ks =>
          simp only [Pieces,checkedChunk_eq_direct,ih]

theorem script_iff_blocks : ScriptObligations ↔ BlockObligations := by
  unfold ScriptObligations BlockObligations
  exact pieces_checked_iff 0 widths expected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenCanonicalBlocks
```
