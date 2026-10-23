# Prime-power coefficient recovery

Issue #189 is still a source contract rather than an accepted implemented explicit-formula theorem. This increment therefore does not choose a Fourier/Mellin convention on its behalf.

Instead it proves that the remaining packing weight is not an independent unknown once #189 supplies the exact prime-power coefficient.

For q=p^k, the existing raw arithmetic coordinate is

  (k log p, log p).

Let c(q) be the exact real coefficient assigned to q by the selected explicit-formula/test-function normalization. Since p is prime, p>1 and log p>0. Therefore the unique test weight satisfying

  testWeight(q) * log p = c(q)

is

  testWeight(q) = c(q) / log p.

Consequently the weighted packing coordinate becomes exactly

  (k log p, c(q)).

This is the useful reduction: #189 need only expose the exact prime-power coefficient function in a source-bound normalization. The packing layer does not need to infer or fit an additional weight.

The new PrimePowerCoefficientRecurrence accepts that coefficient source and actual increasing prime-power events, then specializes canonically to the existing packing recurrence.

Open obligations:
- an accepted #189 theorem supplying the coefficient source and exact normalization;
- a source-faithful selector of the initial and next prime-power events from the accepted mechanism/local source;
- the signed-quartic comparison and complete residual decay;
- the transitive PNT/circularity audit.

No explicit-formula theorem, external replay, or RH proof is claimed here.
