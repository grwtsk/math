# Complete source: GRWTSK.Analysis.RealAnalysis.RealFunctions.AdmissibleRealPowerModel.Varianta330bd9a635a18f2.AdmissiblePowerNonnegativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b38caf39b6d788b922becc48558942dfcbe59a1` · SHA-256 `fd01a1c6ff76ecba4e0d17131c2230b18ffb7ed7f3440028687d186ee5712bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
AdmissiblePowerNonnegativity — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f
Organized SHA-256: b502477191351b0f048f5127ff10d07e7bca9102aa3e5815c57bcdee8a001337
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole real phase/exponent/admissibility record and original noncomputable real-power constructor/representation/nonnegativity proof. Exact original admissibility retains nonnegative phase and excludes zero to negative exponent. This is a real rpow model, not an IEEE754 error/overflow guarantee or executed precession calculation. -/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes. `BitMatrix.Runtime.ForeignTrace`
provides the separate checked-byte boundary for the two canonical document
encoders; executable conformance vectors remain bounded evidence for the
larger JavaScript geometry surface.
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
