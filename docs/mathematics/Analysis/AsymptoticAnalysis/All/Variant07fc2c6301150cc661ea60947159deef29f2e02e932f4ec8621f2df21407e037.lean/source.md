# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.All.Variant07fc2c6301150cc661ea60947159deef29f2e02e932f4ec8621f2df21407e037

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6350399a5a35970736ac9556f638e9e4e33f9498` · SHA-256 `07fc2c6301150cc661ea60947159deef29f2e02e932f4ec8621f2df21407e037`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Stability.Map
import Mathematics.Stability.Residual
import Mathematics.Stability.DerivativeGain
import Mathematics.Stability.DefectTransport
import Mathematics.Stability.FixedPoint
import Mathematics.Stability.Contraction
import Mathematics.Stability.Expansion
import Mathematics.Stability.PeriodicOrbit
import Mathematics.Stability.Damping
import Mathematics.Stability.LogVerification
import Mathematics.Stability.Propagation
import Mathematics.Stability.Noninterference

/-!
# Reflective stability proof boundary

This import-only umbrella exposes structural proofs for residual separation,
affine defect transport, damping fixed-point preservation, cycle multipliers,
authority noninterference, and append-only historical repair.  Completeness,
basin, branch, derivative, asymptotic-floor, and periodic-attraction claims are
represented by explicit propositions with `ProofDisposition`; they are not
postulated as axioms.
-/
```
