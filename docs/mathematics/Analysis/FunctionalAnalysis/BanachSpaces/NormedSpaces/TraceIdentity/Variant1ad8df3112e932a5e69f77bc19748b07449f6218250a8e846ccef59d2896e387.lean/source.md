# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.TraceIdentity.Variant1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `144f4c788a8d5c1eea9b7ee486c320c10df12824` · SHA-256 `1ad8df3112e932a5e69f77bc19748b07449f6218250a8e846ccef59d2896e387`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.DiscrepancyTrace

/-!
# Exact unnormalized discrepancy trace

The trace equality itself is proof data and is indexed by the same arithmetic
source as its authority.
-/

namespace Mathematics.MobiusOntology

open scoped BigOperators

universe u v w

abbrev InvariantProjection :=
  Mathematics.AbelReynolds.InvariantProjection

abbrev TraceCertificate
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] :=
  Mathematics.AbelReynolds.ExactDiscrepancyTrace
    Scale Spectrum Carrier

theorem centered_trace_identity
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : TraceCertificate Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale :=
  trace.centered_eq_spectral_sum_add_remainder scale

end Mathematics.MobiusOntology
```
