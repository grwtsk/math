/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCompactReplay

/-!
# Exact checkpoint splicing for structured Schur replay

A checked prefix and a checked following block compose only after the surviving
rows at their common boundary are identified.  `Tape.blockCaps_add` already
returns the combined pivot checks.  This module adds the matching endpoint
return: replay is pointwise in each checkpoint row, so the second endpoint can
be transported through the same exact boundary comparison.

The theorem does not infer the boundary comparison from equal dimensions,
archive labels, or hashes.  It consumes equality of every surviving row and
retains all pivot caps in both blocks.  It is an exact finite recurrence result;
source identification, literal seed comparisons, arithmetic signs, and analytic
high-complement estimates remain separate obligations.

Primary proof: use `Tape.rowAt_add` to split the replay, transport one surviving
row through the second block by induction on its length, and then apply the
supplied second endpoint.  A hostile boundary is immediate: changing one
surviving checkpoint row can change every later rounded row, so an endpoint
cannot be spliced from block lengths alone.  Independent mathematical review
and novelty assessment are not claimed.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurNearestEven

variable {r N : ℕ}

/-- Replay at one fixed row depends only on that row's checkpoint value.
This public form exposes the pointwise transport used when adjoining blocks. -/
theorem Tape.rowAt_congr_at (tape : Tape r N) (start : ℕ)
    (left right : Fin N → GridRow r) (i : Fin N)
    (h : left i = right i) (k : ℕ) :
    tape.rowAt start left k i = tape.rowAt start right k i := by
  induction k with
  | zero => exact h
  | succ k ih => simp only [Tape.rowAt, ih]

/-- Adjacent checked blocks and the second block's survivor endpoint compose
through the exact common checkpoint.  Rows eliminated before the boundary do
not enter the endpoint comparison. -/
theorem Tape.blockCaps_checkpoint_add (tape : Tape r N) (start : ℕ)
    (checkpoint : Fin N → GridRow r) (k m : ℕ)
    (h : start + (k + m) ≤ N) (checkpoint' next : Fin N → GridRow r)
    (hLink : ∀ i : Fin N, start + k ≤ i.val →
      tape.rowAt start checkpoint k i = checkpoint' i)
    (first : tape.BlockCaps start checkpoint k (by omega))
    (second : tape.BlockCaps (start + k) checkpoint' m (by omega) ∧
      ∀ i : Fin N, start + k + m ≤ i.val →
        tape.rowAt (start + k) checkpoint' m i = next i) :
    tape.BlockCaps start checkpoint (k + m) h ∧
      ∀ i : Fin N, start + (k + m) ≤ i.val →
        tape.rowAt start checkpoint (k + m) i = next i := by
  refine ⟨tape.blockCaps_add start checkpoint k m h checkpoint'
    hLink first second.1, ?_⟩
  intro i hi
  rw [tape.rowAt_add]
  exact (tape.rowAt_congr_at (start + k)
    (tape.rowAt start checkpoint k) checkpoint' i
    (hLink i (by omega)) m).trans (second.2 i (by omega))

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
