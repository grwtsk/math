# Concrete continuation of prime replicas from 16D to 64D

Source: [PrimeReplicaLift16To64.lean](PrimeReplicaLift16To64.lean).
Issue: [math #1844](https://github.com/grwtsk/math/issues/1844).

The source references the *actual* concrete additive
`addressLift : Cell 4 → Cell 6`, previously proposed in
`ConcretePrimeAtlasLift16To64.lean`.

For every old target syndrome t, the lifted chosen face neighbor
is proved to equal the new chosen face neighbor for `portLift t`.
The specific secondary color a=(1,0,0,0) is proved to lift to the
six-bit color a64=(1,0,0,0,0,0). Consequently both prime-marked
neighbors and the exact physical replica edge commute with the
dimensional embedding.

The map `liftBeacon : Beacon 4 → Beacon 6` is injective, so old
prime identities retain their source positions in the 64D chart.
A separately typed `PrimeLabelExtension` requires an injective
64D label assignment retaining every old numerical prime label.
It does NOT assert existence without a prime-supply construction.

**Crucial boundary:** `Beacon 6` has 2^58 members; two complete
64D syndrome classes contain 2^59 marked positions. The
original 4096 distinct prime IDs cannot label every new base
injectively. The theorem preserves the embedded finite 16D chart,
not global 64D coverage with a fixed 4096-identity inventory.

This is a combinatorial continuation theorem, not analytic
continuation of an L-function or a GRH result. It is a source
proof candidate until compiled under pinned root Lean 4.34.1
and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Independent replay and external mathematical review NOT_RUN.
