# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceObservableAdapterVerified.Variant7f797cec09824c34129d93094dd5848eeb271a401d1962cb53470cf970becb70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `888780cd6c55c698b29b00acf9e69552c3c030dc` · SHA-256 `7f797cec09824c34129d93094dd5848eeb271a401d1962cb53470cf970becb70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
import FormalResearch.RiemannHypothesis.SourceOrbitCoordinates
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-!
# Literal-source observable adapter with retained residuals

This adapter freezes the actual normalized source at scale `A`. It uses the
implemented four-channel synthesis, its Hermitian Gram matrix, and its distinct
signed reflection matrix. Arbitrary ambient states are decomposed using an
explicit residual; both cross terms and the residual's signed readout are kept.
No membership, orthogonality, rationalization, cross-scale nesting or uniform
arithmetic estimate is inferred.

The final consumer reuses the existing first-prime-to-all-scale reduction. Its
signed critical Abel witness remains an explicit open hypothesis.

Human research direction and formation of the medium: grwtsk contributors.
These proof implementations were developed with OpenAI Codex; focused compilation
does not constitute repository acceptance or a proof of the open signed bound.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceObservableAdapter

open SourceReflectionDuality SourceArithmeticOrbit SourceScaleL2Continuity
open SourceOrbitCoordinates
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped BigOperators InnerProductSpace

/-- Synthesize against the literal source, without changing its normalization. -/
def sourceSynthesis (A : ℝ) (I : Finset ℕ) (c : OrbitIndex I → ℂ) : ComplexL2 :=
  synthesis (originalSourceState A) I c

/-- Full positive Gram readout of the source coefficient state. -/
def sourceGramReadout (A : ℝ) (I : Finset ℕ) (c : OrbitIndex I → ℂ) : ℝ :=
  (∑ i, ∑ j, star (c i) * c j * gramMatrix (originalSourceState A) I i j).re

/-- Full signed reflection readout, kept distinct from the positive Gram form. -/
def sourceReflectedReadout (A : ℝ) (I : Finset ℕ) (c : OrbitIndex I → ℂ) : ℝ :=
  (∑ i, ∑ j, star (c i) * c j * reflectedMatrix (originalSourceState A) I i j).re

/-- Signed reflection on an arbitrary actual ambient L² state. -/
def signedReadout (v : ComplexL2) : ℝ := (⟪v, reflection v⟫_ℂ).re

/-- Exact Gram interpretation; labelled coordinates need not be independent. -/
theorem sourceGramReadout_eq_norm_sq (A : ℝ) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    sourceGramReadout A I c = ‖sourceSynthesis A I c‖ ^ 2 :=
  (synthesis_norm_sq (originalSourceState A) I c).symm

/-- Exact signed interpretation, including every mixed original/dual entry. -/
theorem sourceReflectedReadout_eq_signedReadout (A : ℝ) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    sourceReflectedReadout A I c = signedReadout (sourceSynthesis A I c) := by
  exact (congrArg Complex.re (synthesis_reflected_inner (originalSourceState A) I c c)).symm

/-- The arbitrary complement is retained as the actual state difference. -/
def sourceResidual (A : ℝ) (I : Finset ℕ) (c : OrbitIndex I → ℂ)
    (v : ComplexL2) : ComplexL2 := v - sourceSynthesis A I c

/-- Every ambient state has this decomposition; no source-orbit membership is assumed. -/
theorem source_add_residual (A : ℝ) (I : Finset ℕ) (c : OrbitIndex I → ℂ)
    (v : ComplexL2) :
    sourceSynthesis A I c + sourceResidual A I c v = v := by
  unfold sourceResidual
  abel

/-- Signed reconstruction explicitly retains both cross terms and residual energy. -/
theorem signedReadout_add (u r : ComplexL2) :
    signedReadout (u + r) = signedReadout u +
      (⟪u, reflection r⟫_ℂ).re + (⟪r, reflection u⟫_ℂ).re + signedReadout r := by
  simp only [signedReadout, map_add, inner_add_left, inner_add_right, Complex.add_re]
  ring

/-- Literal-source coordinates reconstruct an arbitrary state's signed target
only when the complete residual and cross interactions are retained. -/
theorem signedReadout_source_reconstruction (A : ℝ) (I : Finset ℕ)
    (c : OrbitIndex I → ℂ) (v : ComplexL2) :
    signedReadout v = sourceReflectedReadout A I c +
      (⟪sourceSynthesis A I c, reflection (sourceResidual A I c v)⟫_ℂ).re +
      (⟪sourceResidual A I c v, reflection (sourceSynthesis A I c)⟫_ℂ).re +
      signedReadout (sourceResidual A I c v) := by
  rw [sourceReflectedReadout_eq_signedReadout]
  rw [← signedReadout_add, source_add_residual]

/-- The same fixed source and actual coefficients are transported by existing
zero-extension refinement, with their complete ambient synthesis unchanged. -/
theorem sourceSynthesis_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) :
    sourceSynthesis A K (extendCoefficients hIK c) = sourceSynthesis A I c :=
  synthesis_extendCoefficients (originalSourceState A) hIK c

/-- Refinement preserves the positive Gram interaction separately. -/
theorem sourceGramReadout_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) :
    sourceGramReadout A K (extendCoefficients hIK c) = sourceGramReadout A I c :=
  congrArg Complex.re (gram_refinement (originalSourceState A) hIK c c)

/-- Refinement preserves the signed source interaction without a positivity substitution. -/
theorem sourceReflectedReadout_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) :
    sourceReflectedReadout A K (extendCoefficients hIK c) = sourceReflectedReadout A I c :=
  congrArg Complex.re (reflected_refinement (originalSourceState A) hIK c c)

/-- The full arbitrary residual also survives fixed-source refinement. -/
theorem sourceResidual_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) (v : ComplexL2) :
    sourceResidual A K (extendCoefficients hIK c) v = sourceResidual A I c v := by
  unfold sourceResidual
  rw [sourceSynthesis_refinement]

/-- Refinement retains both mixed interactions and the residual signed readout. -/
theorem signed_reconstruction_refinement (A : ℝ) {I K : Finset ℕ} (hIK : I ⊆ K)
    (c : OrbitIndex I → ℂ) (v : ComplexL2) :
    sourceReflectedReadout A K (extendCoefficients hIK c) +
      (⟪sourceSynthesis A K (extendCoefficients hIK c),
        reflection (sourceResidual A K (extendCoefficients hIK c) v)⟫_ℂ).re +
      (⟪sourceResidual A K (extendCoefficients hIK c) v,
        reflection (sourceSynthesis A K (extendCoefficients hIK c))⟫_ℂ).re +
      signedReadout (sourceResidual A K (extendCoefficients hIK c) v) =
    sourceReflectedReadout A I c +
      (⟪sourceSynthesis A I c, reflection (sourceResidual A I c v)⟫_ℂ).re +
      (⟪sourceResidual A I c v, reflection (sourceSynthesis A I c)⟫_ℂ).re +
      signedReadout (sourceResidual A I c v) := by
  rw [sourceReflectedReadout_refinement, sourceSynthesis_refinement,
    sourceResidual_refinement]

/-- An actual critical signed Abel tail witness reaches the existing unchanged
all-real estimate through the checked first-prime consumer. This is conditional,
and does not construct the remaining arithmetic witness. -/
theorem estimate_of_criticalAbel_tail
    (h : SourceFirstPrimeAbel.CriticalAbelTailLowerBound) :
    CorrelationAssembly.EstimateObligation :=
  SourcePrimePowerPartition.estimate_of_firstPrime_tail
    (SourceFirstPrimeAbel.firstPrime_tail_iff_criticalAbel_tail.mpr h)

end FormalResearch.RiemannHypothesis.SourceObservableAdapter
```
