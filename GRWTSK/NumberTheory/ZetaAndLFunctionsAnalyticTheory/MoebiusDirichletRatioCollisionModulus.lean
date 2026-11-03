/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Nat.ModEq
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# No modular aliasing of rational slopes at q >= N squared

For 1<=m,n,r,s<=N and any positive modulus q>=N*N,
the products m*s and n*r are both in [1,q].
If their ZMod q residues coincide, they are the SAME
positive integer: the only apparent boundary ambiguity
between 0 and q is excluded by positivity. This includes
the equality case q=N*N (not only strict q>N*N).

If the denominator residues n and s are units, equality of
the multiplicative fractions m*n⁻¹ and r*s⁻¹ in ZMod q
implies equality of products m*s=n*r.
The first equality is the literal original Dirichlet-ratio
collision. The conclusion is equality of rational slopes,
not a probabilistic near-rational approximation.

At fixed q this no-alias regime does NOT survive N(T)->infty.
The result is entirely finite arithmetic, with NO
GRH, Möbius sign, kernel, analytic continuation or
new signed cancellation premise.

New Lean bodies SOURCE PROOF CANDIDATES, compiler/kernel NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletRatioCollisionModulus

variable (q : ℕ) [NeZero q]
classical

/-- Congruence of two strictly positive products in [1,q]
is equality, even if one or both products equals q. -/
theorem positive_products_eq_of_mod_eq
    (N m n r s : ℕ)
    (hq : N*N ≤ q)
    (hm1 : 1 ≤ m) (hn1 : 1 ≤ n)
    (hr1 : 1 ≤ r) (hs1 : 1 ≤ s)
    (hmN : m ≤ N) (hnN : n ≤ N)
    (hrN : r ≤ N) (hsN : s ≤ N)
    (hmod : (m*s)%q = (n*r)%q) :
    m*s = n*r := by
  have hmsp : 0 < m*s := Nat.mul_pos (by omega) (by omega)
  have hnrp : 0 < n*r := Nat.mul_pos (by omega) (by omega)
  have hmsq : m*s ≤ q :=
    (Nat.mul_le_mul hmN hsN).trans hq
  have hnrq : n*r ≤ q :=
    (Nat.mul_le_mul hnN hrN).trans hq
  by_cases hmslt : m*s < q
  · by_cases hnrlt : n*r < q
    · simpa [Nat.mod_eq_of_lt hmslt,
        Nat.mod_eq_of_lt hnrlt] using hmod
    · have hnreq : n*r = q := by omega
      have hz : m*s = 0 := by
        simpa [Nat.mod_eq_of_lt hmslt, hnreq] using hmod
      omega
  · have hmseq : m*s = q := by omega
    by_cases hnrlt : n*r < q
    · have hz : n*r = 0 := by
        simpa [hmseq, Nat.mod_eq_of_lt hnrlt] using hmod
      omega
    · omega

/-- Equality of actual ZMod fractions with UNIT denominators
gives an exact product congruence; no rational division in ℕ
is used and the original ordered indices remain unchanged. -/
theorem ratio_eq_implies_product_mod_eq
    (m n r s : ℕ)
    (hn : IsUnit (n : ZMod q))
    (hs : IsUnit (s : ZMod q))
    (h :
      (m : ZMod q)*(n : ZMod q)⁻¹ =
      (r : ZMod q)*(s : ZMod q)⁻¹) :
    (m*s)%q = (n*r)%q := by
  have hni :
      (n : ZMod q)⁻¹*(n : ZMod q) = 1 :=
    ZMod.inv_mul_of_unit (n : ZMod q) hn
  have hsi :
      (s : ZMod q)⁻¹*(s : ZMod q) = 1 :=
    ZMod.inv_mul_of_unit (s : ZMod q) hs
  have heq :
      (m : ZMod q)*(s : ZMod q) =
        (n : ZMod q)*(r : ZMod q) := by
    calc
      (m : ZMod q)*(s : ZMod q) =
        (m : ZMod q)*((n : ZMod q)⁻¹*(n : ZMod q))*
          (s : ZMod q) := by rw [hni]; ring
      _ = ((m : ZMod q)*(n : ZMod q)⁻¹)*
          ((n : ZMod q)*(s : ZMod q)) := by ring
      _ = ((r : ZMod q)*(s : ZMod q)⁻¹)*
          ((n : ZMod q)*(s : ZMod q)) := by rw [h]
      _ = (r : ZMod q)*((s : ZMod q)⁻¹*(s : ZMod q))*
          (n : ZMod q) := by ring
      _ = (n : ZMod q)*(r : ZMod q) := by rw [hsi]; ring
  have hcast :
      ((m*s : ℕ) : ZMod q) =
        ((n*r : ℕ) : ZMod q) := by
    simpa only [Nat.cast_mul] using heq
  exact (ZMod.natCast_eq_natCast_iff' (m*s) (n*r) q).mp hcast

/-- Exact INTEGER cross-product equality always implies the
ZMod ratio equality as soon as both denominator residues are
units, regardless of the size of q. This is the missing reverse
direction of the rational-slope collision comparison. -/
theorem integer_slope_eq_implies_ratio_eq
    (m n r s : ℕ)
    (hn : IsUnit (n : ZMod q))
    (hs : IsUnit (s : ZMod q))
    (h : m*s = n*r) :
    (m : ZMod q)*(n : ZMod q)⁻¹ =
      (r : ZMod q)*(s : ZMod q)⁻¹ := by
  have hni :
      (n : ZMod q)⁻¹*(n : ZMod q) = 1 :=
    ZMod.inv_mul_of_unit (n : ZMod q) hn
  have hsi :
      (s : ZMod q)⁻¹*(s : ZMod q) = 1 :=
    ZMod.inv_mul_of_unit (s : ZMod q) hs
  have hprod :
      (m : ZMod q)*(s : ZMod q) =
        (n : ZMod q)*(r : ZMod q) := by
    simpa only [Nat.cast_mul] using
      (congrArg (fun k : ℕ => (k : ZMod q)) h)
  calc
    (m : ZMod q)*(n : ZMod q)⁻¹ =
      ((m : ZMod q)*(n : ZMod q)⁻¹)*
        ((s : ZMod q)⁻¹*(s : ZMod q)) := by
        rw [hsi]
        ring
    _ = ((m : ZMod q)*(s : ZMod q))*
        ((n : ZMod q)⁻¹*(s : ZMod q)⁻¹) := by ring
    _ = ((n : ZMod q)*(r : ZMod q))*
        ((n : ZMod q)⁻¹*(s : ZMod q)⁻¹) := by rw [hprod]
    _ = ((n : ZMod q)⁻¹*(n : ZMod q))*
        ((r : ZMod q)*(s : ZMod q)⁻¹) := by ring
    _ = (r : ZMod q)*(s : ZMod q)⁻¹ := by rw [hni]; ring

/-- The TRUE large-modulus rational-slope collision:
no modular alias remains for q>=N² and positive bounded
original source indices. -/
theorem ratio_eq_implies_integer_slope_eq
    (N m n r s : ℕ)
    (hq : N*N ≤ q)
    (hm1 : 1 ≤ m) (hn1 : 1 ≤ n)
    (hr1 : 1 ≤ r) (hs1 : 1 ≤ s)
    (hmN : m ≤ N) (hnN : n ≤ N)
    (hrN : r ≤ N) (hsN : s ≤ N)
    (hn : IsUnit (n : ZMod q))
    (hs : IsUnit (s : ZMod q))
    (h :
      (m : ZMod q)*(n : ZMod q)⁻¹ =
        (r : ZMod q)*(s : ZMod q)⁻¹) :
    m*s = n*r := by
  exact positive_products_eq_of_mod_eq q N m n r s
    hq hm1 hn1 hr1 hs1 hmN hnN hrN hsN
    (ratio_eq_implies_product_mod_eq q m n r s hn hs h)

/-- Full NO-ALIAS IFF for ratio collisions at q>=N²,
including the boundary q=N² and composite moduli, with
both actual denominator-unit guards unchanged. -/
theorem ratio_collision_iff_integer_slope
    (N m n r s : ℕ)
    (hq : N*N ≤ q)
    (hm1 : 1 ≤ m) (hn1 : 1 ≤ n)
    (hr1 : 1 ≤ r) (hs1 : 1 ≤ s)
    (hmN : m ≤ N) (hnN : n ≤ N)
    (hrN : r ≤ N) (hsN : s ≤ N)
    (hn : IsUnit (n : ZMod q))
    (hs : IsUnit (s : ZMod q)) :
    ((m : ZMod q)*(n : ZMod q)⁻¹ =
      (r : ZMod q)*(s : ZMod q)⁻¹) ↔ m*s = n*r := by
  constructor
  · exact ratio_eq_implies_integer_slope_eq q N m n r s
      hq hm1 hn1 hr1 hs1 hmN hnN hrN hsN hn hs
  · exact integer_slope_eq_implies_ratio_eq q m n r s hn hs

end GRWTSK.NumberTheory.Moebius.DirichletRatioCollisionModulus
