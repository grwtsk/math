# Complete source: GRWTSK.InformationTheory.ReedSolomon.Runtime

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ea879891e6adb41df1a372d48bc9eb0f12f99cc` · SHA-256 `c9cf0777e41e8d566c0a2f5a6f1dcbc8d115c0613e458b423ea4f4af89591385`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Profiles
import GRWTSK.Algebra.FiniteField.GF128.InverseCertificates
import GRWTSK.Algebra.FiniteField.GF128.Exponentiation

namespace GRWTSK.InformationTheory.ReedSolomon
open GRWTSK.Algebra.FiniteField.GF128
set_option maxRecDepth 100000

/-- Node indices are zero based; the wire coordinates are the six bit patterns 1..6. -/
def nodeWord (n : Fin 6) : Word := BitVec.ofNat 128 (n.val + 1)

def coordinates (n : Nodes) : Four :=
  ⟨nodeWord n.a, nodeWord n.b, nodeWord n.c, nodeWord n.d⟩

def product3 (a b c : Word) : Word := mul (mul a b) c

/-- The same three ordered factors retained by the runtime's `i != j` loop. -/
def excludedProduct (n : Four) (target : Word) (i : Fin 4) : Word :=
  if i = 0 then product3 (target ^^^ n.b) (target ^^^ n.c) (target ^^^ n.d) else
  if i = 1 then product3 (target ^^^ n.a) (target ^^^ n.c) (target ^^^ n.d) else
  if i = 2 then product3 (target ^^^ n.a) (target ^^^ n.b) (target ^^^ n.d) else
  product3 (target ^^^ n.a) (target ^^^ n.b) (target ^^^ n.c)

def denominator (n : Nodes) (i : Fin 4) : Word :=
  excludedProduct (coordinates n) (get (coordinates n) i) i

def numerator (n : Nodes) (target : Fin 6) (i : Fin 4) : Word :=
  excludedProduct (coordinates n) (nodeWord target) i

/-- This calls the exact square-and-multiply inversion model, not an assumed field inverse. -/
def runtimeCoefficient (n : Nodes) (target : Fin 6) (i : Fin 4) : Option Word :=
  (inv (denominator n i)).map (mul (numerator n target i))

/-- Auxiliary finite certificate used only to avoid rechecking the same exponentiation. -/
def lookupCoefficient (n : Nodes) (target : Fin 6) (i : Fin 4) : Option Word :=
  (lookupInv (denominator n i).toNat).map (mul (numerator n target i))

set_option maxHeartbeats 50000000 in
theorem denominator_profile : ∀ (k : Fin 15) (i : Fin 4),
    (denominator (selectedNodes k) i).toNat ∈ runtimeDenominators := by decide

theorem runtimeCoefficient_eq_lookup (k : Fin 15) (target : Fin 6) (i : Fin 4) :
    runtimeCoefficient (selectedNodes k) target i =
      lookupCoefficient (selectedNodes k) target i := by
  have hi := inv_eq_lookupInv (denominator (selectedNodes k) i).toNat
    (denominator_profile k i)
  have hc : BitVec.ofNat 128 (denominator (selectedNodes k) i).toNat =
      denominator (selectedNodes k) i := by simp
  rw [hc] at hi
  simp only [runtimeCoefficient, lookupCoefficient, hi]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 50000000 in
theorem lookup_recovery_coefficients : ∀ (k : Fin 15) (j i : Fin 4),
    lookupCoefficient (selectedNodes k) (getNode dataNodes j) i =
      some (get (recovery k j) i) := by decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 50000000 in
theorem lookup_encoding_coefficients : ∀ (k : Fin 15) (j i : Fin 4),
    lookupCoefficient dataNodes (getNode (selectedNodes k) j) i =
      some (get (encoding k j) i) := by decide

theorem runtime_recovery_coefficients (k : Fin 15) (j i : Fin 4) :
    runtimeCoefficient (selectedNodes k) (getNode dataNodes j) i =
      some (get (recovery k j) i) := by
  rw [runtimeCoefficient_eq_lookup, lookup_recovery_coefficients]

theorem runtime_encoding_coefficients (k : Fin 15) (j i : Fin 4) :
    runtimeCoefficient dataNodes (getNode (selectedNodes k) j) i =
      some (get (encoding k j) i) := by
  have h := runtimeCoefficient_eq_lookup 0 (getNode (selectedNodes k) j) i
  change runtimeCoefficient dataNodes (getNode (selectedNodes k) j) i =
    lookupCoefficient dataNodes (getNode (selectedNodes k) j) i at h
  rw [h, lookup_encoding_coefficients]

def runtimeEval (n : Nodes) (target : Fin 6) (x : Four) : Option Word := do
  let a ← runtimeCoefficient n target 0
  let b ← runtimeCoefficient n target 1
  let c ← runtimeCoefficient n target 2
  let d ← runtimeCoefficient n target 3
  pure (mul a x.a ^^^ mul b x.b ^^^ mul c x.c ^^^ mul d x.d)

def runtimeTransform (n target : Nodes) (x : Four) : Option Four := do
  let a ← runtimeEval n (getNode target 0) x
  let b ← runtimeEval n (getNode target 1) x
  let c ← runtimeEval n (getNode target 2) x
  let d ← runtimeEval n (getNode target 3) x
  pure ⟨a,b,c,d⟩

theorem runtimeEval_eq (n : Nodes) (target : Fin 6) (r : Row) (x : Four)
    (h : ∀ i : Fin 4, runtimeCoefficient n target i = some (get r i)) :
    runtimeEval n target x = some (rowEval r x) := by
  simp only [runtimeEval, h, get]
  rfl

theorem runtimeTransform_eq (n target : Nodes) (m : Matrix) (x : Four)
    (h : ∀ j i : Fin 4, runtimeCoefficient n (getNode target j) i = some (get (m j) i)) :
    runtimeTransform n target x = some (transform m x) := by
  have ha := runtimeEval_eq n (getNode target 0) (m 0) x (h 0)
  have hb := runtimeEval_eq n (getNode target 1) (m 1) x (h 1)
  have hc := runtimeEval_eq n (getNode target 2) (m 2) x (h 2)
  have hd := runtimeEval_eq n (getNode target 3) (m 3) x (h 3)
  simp only [runtimeTransform, ha, hb, hc, hd]
  rfl

def encodeRuntime (k : Fin 15) (x : Four) : Option Four :=
  runtimeTransform dataNodes (selectedNodes k) x

def decodeRuntime (k : Fin 15) (x : Four) : Option Four :=
  runtimeTransform (selectedNodes k) dataNodes x

theorem encodeRuntime_eq (k : Fin 15) (x : Four) :
    encodeRuntime k x = some (transform (encoding k) x) :=
  runtimeTransform_eq _ _ _ x (runtime_encoding_coefficients k)

theorem decodeRuntime_eq (k : Fin 15) (x : Four) :
    decodeRuntime k x = some (transform (recovery k) x) :=
  runtimeTransform_eq _ _ _ x (runtime_recovery_coefficients k)

/-- Exact four-of-six recovery for every 512-bit input, using the concrete inversion loop. -/
theorem runtime_roundtrip (k : Fin 15) (x : Four) :
    (encodeRuntime k x).bind (decodeRuntime k) = some x := by
  rw [encodeRuntime_eq]
  simp only [Option.bind_some, decodeRuntime_eq, erasure_roundtrip]

theorem decode_selected_fullEncode (k : Fin 15) (x : Four) :
    decodeRuntime k (selectProfile k (fullEncode x)) = some x := by
  rw [selectProfile_fullEncode, decodeRuntime_eq, erasure_roundtrip]

end GRWTSK.InformationTheory.ReedSolomon
```
