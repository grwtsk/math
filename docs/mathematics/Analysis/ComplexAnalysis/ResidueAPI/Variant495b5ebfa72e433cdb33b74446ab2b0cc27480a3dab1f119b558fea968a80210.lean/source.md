# Complete source: GRWTSK.Analysis.ComplexAnalysis.ResidueAPI.Variant495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb2e06975655620f4e0a34e316e142f55abf69b2` · SHA-256 `495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.PrincipalPart

/-!
# Incubating Surface API for local logarithmic-derivative residues

Downstream Surface modules should import this file rather than the incubating
implementation files.  The public statements deliberately use a
punctured-limit residue coefficient and a normalized small-circle integral:
pinned mathlib does not yet expose a general Laurent-residue object.

The signatures are not yet frozen: that gate requires a real downstream
contour-shift consumer and an upstream-oriented API review.  After upstream
merge, the declarations here become one-line adapters without changing
downstream imports.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Incubating project-facing name for a simple-pole coefficient defined through
the punctured-neighborhood limit. -/
abbrev HasResidueCoefficientAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  HasSimplePoleResidueAt h z r

/-- Checked incubating alias for the exact local principal-part decomposition. -/
@[surface_novel]
theorem logDeriv_eventuallyEq_order_div_sub_add_regular
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w :=
  AnalyticAt.logDeriv_eventuallyEq_principalPart hf hn

/-- Checked incubating alias identifying the logarithmic-derivative coefficient with
analytic multiplicity. -/
@[surface_novel]
theorem logDeriv_hasResidueCoefficientAt_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasResidueCoefficientAt (logDeriv f) z (n : ℂ) :=
  AnalyticAt.hasSimplePoleResidueAt_logDeriv hf hn

/-- Checked incubating alias for the exact sufficiently-small-circle multiplicity
integral. -/
@[surface_novel]
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
