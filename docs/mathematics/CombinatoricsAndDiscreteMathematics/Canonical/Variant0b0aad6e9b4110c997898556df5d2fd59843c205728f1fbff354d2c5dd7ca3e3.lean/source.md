# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Canonical.Variant0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c59965d204bc8a633c06bc489194416d598b6189` · SHA-256 `0b0aad6e9b4110c997898556df5d2fd59843c205728f1fbff354d2c5dd7ca3e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.Data.Finset.Order

/-!
# Generic finite-orbit canonicalization

This module knows only a finite group action and a stable linear order.  It
does not import bitfields, completion semantics, trees, or obstructions.
-/

namespace Mathematics.BinaryFrontier.Symmetry

universe uGroup uCarrier uKey

variable
  (GroupCarrier : Type uGroup)
  (Carrier : Type uCarrier)
  [Group GroupCarrier]
  [Fintype GroupCarrier]
  [DecidableEq GroupCarrier]
  [MulAction GroupCarrier Carrier]
  [DecidableEq Carrier]
  [LinearOrder Carrier]

def orbitFinset
    (value : Carrier) :
    Finset Carrier :=
  Finset.univ.image
    (fun automorphism : GroupCarrier =>
      automorphism • value)

theorem orbitFinset_nonempty
    (value : Carrier) :
    (orbitFinset
      GroupCarrier Carrier value).Nonempty := by
  refine
    ⟨value, Finset.mem_image.mpr ?_⟩
  exact
    ⟨1, Finset.mem_univ _, one_smul _ _⟩

theorem orbit_nonempty
    (value : Carrier) :
    (orbitFinset
      GroupCarrier Carrier value).Nonempty :=
  orbitFinset_nonempty
    GroupCarrier Carrier value

def canon
    (value : Carrier) : Carrier :=
  (orbitFinset
    GroupCarrier Carrier value).min'
      (orbitFinset_nonempty
        GroupCarrier Carrier value)

theorem canon_mem_orbit
    (value : Carrier) :
    canon GroupCarrier Carrier value ∈
      orbitFinset GroupCarrier Carrier value :=
  Finset.min'_mem
    (orbitFinset
      GroupCarrier Carrier value)
    (orbitFinset_nonempty
      GroupCarrier Carrier value)

theorem orbitFinset_smul
    (automorphism : GroupCarrier)
    (value : Carrier) :
    orbitFinset GroupCarrier Carrier
        (automorphism • value) =
      orbitFinset GroupCarrier Carrier value := by
  ext candidate
  simp only
    [orbitFinset, Finset.mem_image,
      Finset.mem_univ, true_and]
  constructor
  · rintro ⟨transport, rfl⟩
    refine ⟨transport * automorphism, ?_⟩
    simp [mul_smul]
  · rintro ⟨transport, rfl⟩
    refine
      ⟨transport * automorphism⁻¹, ?_⟩
    simp [mul_smul]

theorem canon_smul
    (automorphism : GroupCarrier)
    (value : Carrier) :
    canon GroupCarrier Carrier
        (automorphism • value) =
      canon GroupCarrier Carrier value := by
  simp only
    [canon,
      orbitFinset_smul
        GroupCarrier Carrier automorphism value]

theorem canon_idempotent
    (value : Carrier) :
    canon GroupCarrier Carrier
        (canon GroupCarrier Carrier value) =
      canon GroupCarrier Carrier value := by
  rcases
      Finset.mem_image.mp
        (canon_mem_orbit
          GroupCarrier Carrier value) with
    ⟨automorphism, _member, transformed⟩
  calc
    canon GroupCarrier Carrier
        (canon GroupCarrier Carrier value) =
      canon GroupCarrier Carrier
        (automorphism • value) := by
          rw [transformed]
    _ =
      canon GroupCarrier Carrier value :=
        canon_smul
          GroupCarrier Carrier
          automorphism value

theorem canon_eq_iff_same_orbit
    (left right : Carrier) :
    canon GroupCarrier Carrier left =
        canon GroupCarrier Carrier right ↔
      ∃ automorphism : GroupCarrier,
        automorphism • left = right := by
  constructor
  · intro canonicalEqual
    rcases
        Finset.mem_image.mp
          (canon_mem_orbit
            GroupCarrier Carrier left) with
      ⟨leftTransport, _leftMember,
        leftCanonical⟩
    rcases
        Finset.mem_image.mp
          (canon_mem_orbit
            GroupCarrier Carrier right) with
      ⟨rightTransport, _rightMember,
        rightCanonical⟩
    refine
      ⟨rightTransport⁻¹ * leftTransport, ?_⟩
    calc
      (rightTransport⁻¹ * leftTransport) • left =
        rightTransport⁻¹ •
          (leftTransport • left) := by
            rw [mul_smul]
      _ =
        rightTransport⁻¹ •
          canon GroupCarrier Carrier left := by
            rw [leftCanonical]
      _ =
        rightTransport⁻¹ •
          canon GroupCarrier Carrier right := by
            rw [canonicalEqual]
      _ =
        rightTransport⁻¹ •
          (rightTransport • right) := by
            rw [rightCanonical]
      _ = right := by simp
  · rintro ⟨automorphism, transformed⟩
    calc
      canon GroupCarrier Carrier left =
        canon GroupCarrier Carrier
          (automorphism • left) :=
            (canon_smul
              GroupCarrier Carrier
              automorphism left).symm
      _ =
        canon GroupCarrier Carrier right := by
          rw [transformed]

structure OrderedEncoding
    (Encoded : Type uCarrier)
    (Key : Type uKey)
    [LinearOrder Key] where
  encode : Encoded → Key
  injective :
    Function.Injective encode

end Mathematics.BinaryFrontier.Symmetry
```
