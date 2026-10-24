# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Factorization.Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbf09aa5743ce107e4aad28da94bc28d067c1970` · SHA-256 `d42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.MPS

/-!
# Rank, truncation, storage, and cost boundaries

Bond dimensions are certified against the source state.  A configured number
is never accepted as an exact-rank or approximation certificate by itself.
-/

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- Exact Schmidt-rank data supplied for every cut of a finite tensor state. -/
structure SchmidtRankCertificate
    (state : TensorState N D)
    (network : OpenMPS N D) where
  rank : Fin (N + 1) → Nat
  boundedByBond :
    ∀ cut,
      rank cut ≤ network.bondProfile.dimension cut

/-- A truncation certificate binds the source and retained representation. -/
structure MPSTruncationCertificate
    (state : TensorState N D)
    (network : OpenMPS N D) where
  sourceDigest : String
  retainedBondProfileDigest : String
  discardedWeightBound : ℝ
  discardedWeightBound_nonnegative : 0 ≤ discardedWeightBound
  approximation : ApproxMPSRepresentation state network

/-- Exact number of stored scalar coordinates. -/
def OpenMPS.storageCost
    (network : OpenMPS N D) : Nat :=
  ∑ site : Fin N,
    network.bondProfile.dimension site.castSucc *
      D *
      network.bondProfile.dimension site.succ

/-- Uniformly bounded bonds give the declared linear storage estimate. -/
theorem OpenMPS.storageCost_le
    (network : OpenMPS N D)
    {χ : Nat}
    (bounded :
      network.bondProfile.UniformlyBounded χ) :
    network.storageCost ≤ N * (D * χ ^ 2) := by
  unfold OpenMPS.storageCost
  calc
    ∑ site : Fin N,
        network.bondProfile.dimension site.castSucc *
          D *
          network.bondProfile.dimension site.succ
        ≤
      ∑ _site : Fin N, χ * D * χ := by
        apply Finset.sum_le_sum
        intro site _
        exact
          Nat.mul_le_mul
            (Nat.mul_le_mul (bounded site.castSucc) (le_refl D))
            (bounded site.succ)
    _ = N * (D * χ ^ 2) := by
      simp [pow_two, Nat.mul_comm, Nat.mul_left_comm]

/-- A local algorithm supplies its own exact or certified operation bound. -/
structure MPSCostCertificate
    (network : OpenMPS N D) where
  contractionOperations : Nat
  canonicalizationOperations : Nat
  uniformBondBound : Nat
  bounded :
    network.bondProfile.UniformlyBounded uniformBondBound
  contractionBound :
    contractionOperations ≤
      N * (D ^ 2 * uniformBondBound ^ 3)
  canonicalizationBound :
    canonicalizationOperations ≤
      N * (D * uniformBondBound ^ 3)

end Mathematics.TensorNetwork
```
