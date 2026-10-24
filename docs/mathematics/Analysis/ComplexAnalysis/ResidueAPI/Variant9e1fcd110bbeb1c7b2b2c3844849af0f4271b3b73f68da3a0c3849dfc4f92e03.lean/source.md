# Complete source: GRWTSK.Analysis.ComplexAnalysis.ResidueAPI.Variant9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f924c71a1b8754d59daf3dd57c02adbce69265bf` · SHA-256 `9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.PrincipalPart

/-!
# Frozen Surface API for local logarithmic-derivative residues

Downstream Surface modules should import this file rather than the incubating
implementation files.  The public statements deliberately use a
punctured-limit residue coefficient and a normalized small-circle integral:
pinned mathlib does not yet expose a general Laurent-residue object.

After an upstream mathlib theorem is merged, the declarations here become
one-line adapters to the upstream names without changing downstream imports.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Frozen project-facing name for a simple-pole coefficient defined through
the punctured-neighborhood limit. -/
abbrev HasResidueCoefficientAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  HasSimplePoleResidueAt h z r

/-- Stable adapter for the exact local principal-part decomposition. -/
@[surface_adapter, surface_published]
theorem logDeriv_eventuallyEq_order_div_sub_add_regular
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w :=
  AnalyticAt.logDeriv_eventuallyEq_principalPart hf hn

/-- Stable adapter identifying the logarithmic-derivative coefficient with
analytic multiplicity. -/
@[surface_adapter, surface_published]
theorem logDeriv_hasResidueCoefficientAt_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasResidueCoefficientAt (logDeriv f) z (n : ℂ) :=
  AnalyticAt.hasSimplePoleResidueAt_logDeriv hf hn

/-- Stable adapter for the exact sufficiently-small-circle multiplicity
integral. -/
@[surface_adapter, surface_published]
theorem logDeriv_smallCircle_normalizedIntegral_eq_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) :=
  AnalyticAt.exists_smallCircle_normalizedIntegral_logDeriv_eq_order hf hn

end


end Surface.Core.ComplexAnalysis
```
