# Complete source: GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280.ContinuousIntervalExtrema

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f233bdac66ec5679d02b5aad6e589e1ff00c2a5` · SHA-256 `72d39a392cfb3b49dded0f36949440b547a6d18c5a2c27af0e4f8b473529c315`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Maximum and minimum of a continuous function on a nonempty real interval
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
The supplied endpoint order a<=b and ContinuousOn premise remain explicit in both results.
-/
import AnalyticNumber.Mathlib.Certificate

import GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280.ClosedIntervalCompactness
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

/-- A continuous function on a nonempty closed interval attains its maximum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_max
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f y ≤ f x := by
  obtain ⟨x, hx, hmax⟩ :=
    (real_Icc_isCompact a b).exists_isMaxOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMaxOn_iff.mp hmax⟩

/-- A continuous function on a nonempty closed interval attains its minimum.
Mathlib proof via compactness. -/
theorem continuousOn_Icc_attains_min
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f x ≤ f y := by
  obtain ⟨x, hx, hmin⟩ :=
    (real_Icc_isCompact a b).exists_isMinOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMinOn_iff.mp hmin⟩


end GRWTSK.Topology.GeneralTopology.Compactness.RealIntervals.Variant225c3280
```
