# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SourceComponents.Variant6a8c4d7c421f9c98.FiniteBinaryMatrixCarrier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `748baeba476514b948cfee076b43c35600270e24` · SHA-256 `4a1b44f945186cd02d90020a0aeb22e308176839c0d801972c63ade5e88571fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteBinaryMatrixCarrier — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6a8c4d7c421f9c981fa364d75596c553c4c2422250e0b3bfc4cb4a03a59fbc77
Organized SHA-256: 02587afbb8384718f0448dbaf9e54afd048908e902439e33230a3c8aaffb1807
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole dimension/entry carrier, construction, constant/zero matrices, all exact accessors and dependent extensionality with both shape equalities/casts. Original declaration namespace and import identities remain exact. Same-source companion imports, if any, are explicit. Source documentation may describe archived workflow components. No Lean elaboration, provider activation, semantic acceptance or namespace coimport compatibility is asserted. -/

import Folder.Carrier.Bit

/-!
# Folder.Carrier.BinaryMatrix

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.binary_matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier
structure BinaryMatrix where
  m : Nat
  n : Nat
  A : Fin m → Fin n → Bit

namespace BinaryMatrix
def ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    BinaryMatrix where
  m := m
  n := n
  A := A

@[simp]
def rows (M : BinaryMatrix) : Nat :=
  M.m

@[simp]
def cols (M : BinaryMatrix) : Nat :=
  M.n

@[simp]
def get (M : BinaryMatrix) (i : Fin M.m) (j : Fin M.n) : Bit :=
  M.A i j

def constant (m n : Nat) (b : Bit) : BinaryMatrix :=
  ofFunction m n (fun _ _ => b)

def zero (m n : Nat) : BinaryMatrix :=
  constant m n 0

@[simp]
theorem rows_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    rows (ofFunction m n A) = m :=
  rfl

@[simp]
theorem cols_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    cols (ofFunction m n A) = n :=
  rfl

@[simp]
theorem get_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit)
    (i : Fin m)
    (j : Fin n) :
    get (ofFunction m n A) i j = A i j :=
  rfl

@[simp]
theorem rows_constant (m n : Nat) (b : Bit) :
    rows (constant m n b) = m :=
  rfl

@[simp]
theorem cols_constant (m n : Nat) (b : Bit) :
    cols (constant m n b) = n :=
  rfl

@[simp]
theorem get_constant (m n : Nat) (b : Bit) (i : Fin m) (j : Fin n) :
    get (constant m n b) i j = b :=
  rfl

@[simp]
theorem rows_zero (m n : Nat) :
    rows (zero m n) = m :=
  rfl

@[simp]
theorem cols_zero (m n : Nat) :
    cols (zero m n) = n :=
  rfl

@[simp]
theorem get_zero (m n : Nat) (i : Fin m) (j : Fin n) :
    get (zero m n) i j = 0 :=
  rfl

theorem ext_entries
    {m n : Nat}
    {A B : Fin m → Fin n → Bit}
    (h : ∀ i j, A i j = B i j) :
    ofFunction m n A = ofFunction m n B := by
  have hAB : A = B := funext fun i => funext fun j => h i j
  cases hAB
  rfl

theorem ext
    {M N : BinaryMatrix}
    (hm : M.m = N.m)
    (hn : M.n = N.n)
    (h : ∀ i j,
      M.get i j =
        N.get (Fin.cast hm i) (Fin.cast hn j)) :
    M = N := by
  cases M with
  | mk m n A =>
    cases N with
    | mk m' n' B =>
      simp at hm hn
      subst hm
      subst hn
      simp at h
      have hAB : A = B := funext fun i => funext fun j => h i j
      cases hAB
      rfl

end BinaryMatrix
end Carrier
end Folder
```
