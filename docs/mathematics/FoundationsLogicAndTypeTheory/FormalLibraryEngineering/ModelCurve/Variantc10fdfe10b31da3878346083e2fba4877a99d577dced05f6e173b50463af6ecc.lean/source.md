# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModelCurve.Variantc10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ffbcc86aab3fbd087b4f5c8cdd3657cb64426d8` · SHA-256 `c10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.ParabolaImport

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace ModelCurve

def IntegrableOnUnitInterval (_g : ℝ → ℂ) : Prop :=
  True

def DecouplingInequality
    (_phiOne _phiTwo : ℝ → ℝ)
    (_p _epsilon _delta _constant : ℝ)
    (_g : ℝ → ℂ) : Prop :=
  False

def modelCurveStatementSurface : Prop :=
  ∀ {nu p epsilon delta : ℝ},
    0 < nu →
    2 ≤ p →
    p ≤ 6 →
    0 < epsilon →
    0 < delta →
    delta ≤ 1 →
    ∀ g : ℝ → ℂ,
      IntegrableOnUnitInterval g →
      ∃ constant : ℝ,
        0 < constant ∧
          DecouplingInequality
            (fun t : ℝ => t)
            (Curves.modelCurvePhi nu)
            p epsilon delta constant g

/--
Theorem 1.1 surface for arXiv:1812.04760.

This definition is intentionally a theorem surface, not a proof of the
decoupling inequality.
-/
def l2_decoupling_model_curve_t_t_one_add_nu : DecouplingTheoremSurface :=
  { arxivId := "1812.04760"
    externalLabel := "Theorem 1.1"
    leanNamespace := "Think.Analysis.Decoupling.ModelCurve"
    leanName := "l2_decoupling_model_curve_t_t_one_add_nu"
    theoremStatementRecorded := true
    proofComplete := false
    authority := .openResidue
    unresolvedResidue :=
      "model_curve_decoupling_proof_and_bourgain_demeter_dependency_missing" }

theorem model_curve_surface_is_open_residue :
    l2_decoupling_model_curve_t_t_one_add_nu.authority = .openResidue := rfl

theorem model_curve_surface_is_not_checked_proof :
    l2_decoupling_model_curve_t_t_one_add_nu.authority ≠ .checkedProof := by
  intro h
  cases h

end ModelCurve
end Think.Analysis.Decoupling
```
