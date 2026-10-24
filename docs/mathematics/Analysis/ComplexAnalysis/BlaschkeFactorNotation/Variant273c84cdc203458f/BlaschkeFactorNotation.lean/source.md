# Complete source: GRWTSK.Analysis.ComplexAnalysis.BlaschkeFactorNotation.Variant273c84cdc203458f.BlaschkeFactorNotation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bd3d4bf6032eb159fd4ea3974ec2f038d1eb4f5` · SHA-256 `926d870b4a92ec3ea840052d250a133584c678f76055795b35bcf0edbdc448c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
One coherent compatibility abbreviation and its definitional equality for canonicalFactor
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b
Organized SHA-256: 70343e4184a77346c36b79cda9dced65c5550e139547226339a3d296562fecc8
PMD: 510.5.030 complex analysis (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
An outer GRWTSK namespace and an explicit open of the imported Complex namespace are added; the original module, public import, section, declarations and proof bytes are retained. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

module

public import Mathlib.Analysis.Complex.CanonicalDecomposition

/-!
# Canonical-decomposition notation

Compatibility notation for disk Blaschke factors in terms of Mathlib's `canonicalFactor`.
-/

@[expose] public section

namespace GRWTSK.Analysis.ComplexAnalysis.BlaschkeFactorNotation.Variant273c84cdc203458f

open Complex

namespace Complex

/-- Blaschke factor on the disk of radius `R` with a zero at `w`; equal to `canonicalFactor`. -/
noncomputable abbrev blaschkeFactor (R : ℝ) (w : ℂ) : ℂ → ℂ := canonicalFactor R w

@[simp] lemma blaschkeFactor_def (R : ℝ) (w : ℂ) :
    blaschkeFactor R w = canonicalFactor R w :=
  rfl

end Complex

end GRWTSK.Analysis.ComplexAnalysis.BlaschkeFactorNotation.Variant273c84cdc203458f
```
