# Complete source: GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280.ClosedIntervalCompactness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bbe1a8bf847a0e59c49b6305c7dc250675f197e` · SHA-256 `71e13b53e05b4d3edabcba6ccddac75e49d53975d7ab5e54f59bdeaa7427648c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Compactness of every real closed interval
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The exact legacy AnalyticNumber.Mathlib.Certificate import remains unresolved; no certificate or authority record is materialized here.
No endpoint-order assumption is introduced for compactness itself, including empty intervals.
-/
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: compactness and the extreme-value theorem

Mathlib-backed formal proofs:

* every real closed interval `Set.Icc a b` is compact (`isCompact_Icc`);
* every continuous real-valued function on a nonempty `Set.Icc a b` attains
  a maximum and a minimum (`IsCompact.exists_forall_ge` /
  `IsCompact.exists_forall_le`).

The conjunction is packaged as a `MathlibProofCertificate` and recovered a
second time only through the analytic boundary calculus.
-/

open AnalyticNumber AnalyticNumber.MathlibBridge

namespace GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280

/-- Real closed intervals are compact. Mathlib proof. -/
theorem real_Icc_isCompact
    (a b : ℝ) :
    IsCompact (Set.Icc a b) :=
  isCompact_Icc


end GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280
```
