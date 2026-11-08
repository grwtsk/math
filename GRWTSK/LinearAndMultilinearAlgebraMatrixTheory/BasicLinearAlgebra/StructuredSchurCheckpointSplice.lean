/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Repair base: grwtsk/math@aaa9172c9e5c6630a50fed3301a3eb2c2b07677a.
Canonical workflow source: grwtsk/noeaaeue@
b8136c36f7e0466381ad5ca2f4ad32c98bae9af1.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurGeometricCheckpoint

/-!
# Explicit-link compatibility for structured Schur checkpoint splicing

`StructuredSchurGeometricCheckpoint` already proves
`Tape.blockCaps_checkpoint_add`: adjacent checked blocks and their exact survivor
endpoints compose through their common checkpoint.

An earlier additive source accidentally redeclared that theorem name in the same
namespace.  This file removes the declaration collision and retains only a
uniquely named compatibility wrapper for callers that keep the boundary
equality, first block, and second block as separate arguments.

The wrapper consumes the exact row-by-row boundary equality.  It does not infer
checkpoint identity from dimensions, offsets, labels, hashes, or archive names.
Changing one surviving checkpoint row may change every later rounded row.

This is exact finite recurrence transport.  Literal source identification,
arithmetic signs, high-complement estimates, cofinal families, RH, and
Dirichlet GRH remain separate obligations.  The wrapper is not an independent
proof of the imported composition theorem.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay

open StructuredSchurNearestEven

variable {r N : ℕ}

/-- Compatibility wrapper around the existing checkpoint composition theorem.

The exact common checkpoint remains explicit as `hLink`; no row is synthesized
or assigned a default value. -/
theorem Tape.blockCaps_checkpoint_add_explicitLink (tape : Tape r N) (start : ℕ)
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
        tape.rowAt start checkpoint (k + m) i = next i :=
  tape.blockCaps_checkpoint_add start checkpoint checkpoint' next k m h
    ⟨first, hLink⟩ second

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay
