# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Corollaries.Variant8379a6d78d8ce346820861e5a73dc43c278cfc5fde55ceece7b5a1b45d6876dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62c171dabd5d5fc16adc518b243b034ff368f8b9` · SHA-256 `8379a6d78d8ce346820861e5a73dc43c278cfc5fde55ceece7b5a1b45d6876dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.MainTheorem

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Corollaries

def AnalyticOnUnitInterval (_phi : ℝ → ℝ) : Prop :=
  False

def AnalyticCurveDecouplingInequality
    (_phi : ℝ → ℝ)
    (_p _epsilon _delta _constant : ℝ)
    (_g : ℝ → ℂ) : Prop :=
  False

def PlaneCurveDecouplingInequality
    (_phiOne _phiTwo : ℝ → ℝ)
    (_p _epsilon _delta _constant : ℝ)
    (_g : ℝ → ℂ) : Prop :=
  False

/-- Corollary 1.4 surface, not a checked proof. -/
def l2_decoupling_analytic_curve_finite_vanishing_curvature :
    DecouplingTheoremSurface :=
  { arxivId := "1812.04760"
    externalLabel := "Corollary 1.4"
    leanNamespace := "Think.Analysis.Decoupling.Corollaries"
    leanName := "l2_decoupling_analytic_curve_finite_vanishing_curvature"
    theoremStatementRecorded := true
    proofComplete := false
    authority := .openResidue
    unresolvedResidue := "analytic_curve_corollary_depends_on_open_main_theorem" }

/-- Corollary 1.5 surface, not a checked proof. -/
def l2_decoupling_regular_plane_curve_finite_wronskian_vanishing :
    DecouplingTheoremSurface :=
  { arxivId := "1812.04760"
    externalLabel := "Corollary 1.5"
    leanNamespace := "Think.Analysis.Decoupling.Corollaries"
    leanName := "l2_decoupling_regular_plane_curve_finite_wronskian_vanishing"
    theoremStatementRecorded := true
    proofComplete := false
    authority := .openResidue
    unresolvedResidue := "regular_plane_curve_corollary_depends_on_open_main_theorem" }

theorem analytic_corollary_surface_is_open_residue :
    l2_decoupling_analytic_curve_finite_vanishing_curvature.authority =
      .openResidue := rfl

theorem regular_plane_curve_corollary_surface_is_open_residue :
    l2_decoupling_regular_plane_curve_finite_wronskian_vanishing.authority =
      .openResidue := rfl

end Corollaries
end Think.Analysis.Decoupling
```
