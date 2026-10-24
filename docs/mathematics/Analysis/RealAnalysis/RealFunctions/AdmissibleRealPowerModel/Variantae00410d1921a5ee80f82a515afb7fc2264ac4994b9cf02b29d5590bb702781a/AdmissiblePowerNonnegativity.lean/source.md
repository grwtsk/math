# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.AdmissibleRealPowerModel.Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.AdmissiblePowerNonnegativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a0143ac41ab5d73f083a49be61eee3e4f5e4a08` · SHA-256 `b32d8b69bd85222beb5aea9049b80e2827236c3aa4932e09a69d6ea923b766f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a
Organized SHA-256: 20e244a174896a660df9ce7fc06a9ad2b2b1ea79142ccf9379faf2607f653a9f
Established decision SHA-256: c257a39aec8a78062eea2c3a7b7075faf0fc227f50b4d0149bebcfa9aa408e7b
PMD: 510.5.010.010 real functions
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes; executable conformance vectors remain
the authority for that final bridge.
-/

namespace GRWTSK.Analysis.RealAnalysis.RealFunctions.AdmissibleRealPowerModel.Varianta330bd9a635a18f2

open BitMatrix.Runtime.Semantics
open BitMatrix.Geometry.CarrierGrid
open BitMatrix.Codec
open BitMatrix.Codec.Profiles

namespace BitMatrix.Runtime.Correspondence

/-- Inputs to the exact real precession formula. -/
structure PrecessionInvocation where
  phase : ℝ
  exponent : ℝ
  admissible : PrecessionAdmissible phase exponent

noncomputable def executePrecession (invocation : PrecessionInvocation) : ℝ :=
  precessionPhaseModel invocation.phase invocation.exponent

noncomputable def precessionRepresentation :
    RepresentationRelation ℝ PrecessionInvocation where
  abstract := executePrecession
  represents runtime semantic := executePrecession runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executePrecession_represents (invocation : PrecessionInvocation) :
    precessionRepresentation.represents invocation
      (precessionPhaseModel invocation.phase invocation.exponent) :=
  rfl

/-- A successful precession invocation remains nonnegative.  Floating overflow
and approximation remain executable conformance obligations, not theorem
consequences of this real-valued model. -/
theorem executePrecession_nonnegative (invocation : PrecessionInvocation) :
    0 ≤ executePrecession invocation :=
  precessionPhaseModel_nonnegative invocation.admissible.1
    invocation.exponent

end BitMatrix.Runtime.Correspondence

end GRWTSK.Analysis.RealAnalysis.RealFunctions.AdmissibleRealPowerModel.Varianta330bd9a635a18f2
```
