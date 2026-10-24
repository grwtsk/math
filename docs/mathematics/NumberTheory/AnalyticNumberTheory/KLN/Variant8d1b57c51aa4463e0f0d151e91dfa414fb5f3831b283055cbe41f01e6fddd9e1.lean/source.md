# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.KLN.Variant8d1b57c51aa4463e0f0d151e91dfa414fb5f3831b283055cbe41f01e6fddd9e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e307c6898e41f1e0c697d4b4fd163ee6651c1e41` · SHA-256 `36d2b92b2c4b3fa2d0f4ed0c223cfaae500141ea8248ef68e3e393599b821e6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.A.Variant9630d7efe172c92be056b619d14029f6c9f2ced952da6702155ff4ab4dd49f65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9630d7efe172c92be056b619d14029f6c9f2ced952da6702155ff4ab4dd49f65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.A.Variant9630d7efe172c92be056b619d14029f6c9f2ced952da6702155ff4ab4dd49f65","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"9630d7efe172c92be056b619d14029f6c9f2ced952da6702155ff4ab4dd49f65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/IEANTN/KLN.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions
import Mathlib.NumberTheory.Harmonic.EulerMascheroni


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.A.Variant9630d7efe172c92be056b619d14029f6c9f2ced952da6702155ff4ab4dd49f65

blueprint_comment /--
\section{The estimates of Kadiri, Lumley, and Ng}
-/

blueprint_comment /--
In this section we establish the primary results of \cite{KLN}.
-/

namespace KLN
open Real

/-- (3.4).  For the change in a₂, see Theorem 2.7 of FKS -/
def a₁ : ℝ := 0.63
noncomputable def a₂ : ℝ := (6 / exp 1) * a₁ - (riemannZeta (1 / 2)).re

/-- (3.5) -/
def b₁ : ℝ := 0.62
def b₂ : ℝ := 1.048
def b₃ : ℝ := 0.605
def b₄ : ℝ := 0.529

/-- (3.15) -/
noncomputable def m₀ : ℝ := sqrt (1 + (2 / 3) * sqrt (6 / 5))

/-- (3.18) -/
noncomputable def ω₁ (σ T α : ℝ) : ℝ := exp (α * (σ / T) ^ 2)

/-- (4.3) -/
noncomputable def C₁ (H₀ k : ℝ) : ℝ := 6 / π ^ 2 + b₂ / log (k * H₀)

/-- (4.4) -/
noncomputable def C₂ (H₀ k : ℝ) : ℝ :=
  (π * m₀ * b₁) / log (k * H₀) + 6 * m₀ / (π * k * H₀) +
    (π * m₀ * b₂) / (k * H₀ * log (k * H₀))

/-- (4.6) -/
noncomputable def a₃ : ℝ := -(6 * a₁) / (exp 1) + a₂

/-- (4.7) -/
noncomputable def C₃ (H₀ k : ℝ) : ℝ := a₃ ^ 2 * (C₁ H₀ k) * log (k * H₀)

/-- (4.8) -/
noncomputable def C₄ (H₀ k : ℝ) : ℝ :=
  (C₁ H₀ k) * a₁ ^ 2 * (1 + 1 / sqrt (C₃ H₀ k)) ^ 2

/-- (4.10) -/
noncomputable def C₅ (H₀ k δ : ℝ) : ℝ :=
  π * m₀ * b₄ / (2 * δ) * (1 + (2 * δ) / (log (k * H₀))) ^ 2 *
  exp (2 * δ * eulerMascheroniConstant / log (k * H₀))

/-- (4.11) -/
noncomputable def C₆ (H₀ k δ : ℝ) : ℝ :=
  b₄ / (5 * δ * exp δ) * (1 + (δ / log (k * H₀))) ^ 2 +
  b₃ * exp (-2 * δ) / (log (k * H₀)) ^ 2

/-- (4.15) -/
noncomputable def I (α β A : ℝ) (n : ℕ) : ℝ :=
  ∫ x in Set.Ioi 0, x ^ A * exp (-2 * α * x ^ β) * (log x) ^ n

/-- (4.17) -/
noncomputable def J (H₀ α β k T : ℝ) : ℝ :=
  I α β (β + 1 / 3) 0 + (C₂ H₀ k) / (C₁ H₀ k) * k * (I α β (β - 2 / 3) 0) +
    (2 * (I α β (β + 1 / 3) 0) + 2 * (C₂ H₀ k) / (C₁ H₀ k) * k *
      (I α β (β - 2 / 3) 0)) / log (k * T) +
    (I α β (β + 1 / 3) 2) + (C₂ H₀ k) / (C₁ H₀ k) * k *
      (I α β (β - 2 / 3) 2) / (log (k * T)) ^ 2 +
    2 * a₂ * ((I α β (β + 1 / 6) 0) + (C₂ H₀ k) * k / (C₁ H₀ k) *
      (I α β (β - 5 / 6) 0)) / (a₁ * T ^ (1 / 6) * (log T)) +
    2 * a₂ * ((I α β (β + 1 / 6) 2) + (C₂ H₀ k) * k / (C₁ H₀ k) *
      (I α β (β - 5 / 6) 1)) / (a₁ * T ^ (1 / 6) * (log T) ^ 2) +
    a₂ ^ 2 * ((I α β (β) 0) + (C₂ H₀ k) * k / (C₁ H₀ k) *
      (I α β (β - 1) 0)) / (a₁ ^ 2 * T ^ (1 / 3) * (log T) ^ 2)

def β : ℝ := 2

/-- (4.18) -/
noncomputable def U (H₀ α k T : ℝ) : ℝ :=
  4 * α * β * (C₄ H₀ k) * (ω₁ (1 / 2) T α) ^ 2 * (J H₀ α β k T)

/-- (4.20) -/
noncomputable def K (H₀ α k δ T : ℝ) : ℝ :=
  (C₅ H₀ k δ + C₆ H₀ k δ * π * m₀ / (k * T)) * (I α β 1 0) +
  (C₆ H₀ k δ) / k * (I α β 2 0)

noncomputable def σ₂ (δ X : ℝ) := 1 + δ / log X

/-- (4.19) -/
noncomputable def V (H₀ α k δ T : ℝ) : ℝ :=
  8 * α * (ω₁ (σ₂ δ (k * T)) T α) ^ 2 * K H₀ α k δ T

/-- (4.23) -/
noncomputable def M (H₀ k δ : ℝ) : ℝ := max ((log H₀) / (log (k * H₀) + 2 * δ)) 1

/-- (4.44) -/
noncomputable def b₅ (η : ℝ) : ℝ :=
  (riemannZeta (1 + η)).re ^ 4 / (riemannZeta (2 + 2 * η)).re ^ 2 +
  2 * (riemannZeta (1 + η)).re ^ 2 / (riemannZeta (2 + 2 * η)).re

/-- (4.45) -/
noncomputable def b₆ (X η : ℝ) : ℝ :=
  (1 + η) * (log X) / (η * X ^ η) *
  (1 + 1 / (η * (log X)) + eulerMascheroniConstant / (log X) +
  7 * η / (12 * (1 + η) * X * (log X)))

/-- (4.50) -/
noncomputable def b₇ (k η H₀ : ℝ) : ℝ :=
  (1 + 2 / (3.006 * (riemannZeta (1 + η)).re * (k * H₀) ^ (1 + η))) *
  (3.006 * riemannZeta (1 + η)).re ^ 2

/-- (4.51) -/
noncomputable def b₈ (η H : ℝ) : ℝ :=
  sqrt ((2 + η) ^ 2 / H ^ 2 + ((1 + 2 * η) / H + 1) ^ 2)

/-- (4.59) -/
noncomputable def b₉ (H₀ k η H : ℝ) : ℝ :=
  π * log (b₇ k η H₀) / log 2 + π * log (b₅ η) / log 2 -
  2 * π * log (1 - (b₆ (10 ^ 6) η) ^ 2) / log 2 + π +
  2 * (1 + 2 * η) / (log 2) * log ((b₈ η H) / (2 * π))

/-- (4.56) -/
noncomputable def C₇ (H₀ k η H : ℝ) : ℝ :=
  (2 * (1 + 2 * η) + 2 * π * (1 + η)) / (log 2) + (b₉ H₀ k η H) / (log H₀)

/-- (4.66) -/
noncomputable def b₁₀ (H₀ k μ : ℝ) :=
  -log (1 - (b₆ (k * H₀) (μ - 1)) ^ 2) / (b₆ (k * H₀) (μ - 1)) ^ 2

/-- (4.68) -/
noncomputable def b₁₁ (X τ : ℝ) :=
  1 + 3 / ((τ - 1) * (log X)) + 6 / ((τ - 1) ^ 2 * (log X) ^ 2) +
  6 / ((τ - 1) ^ 3 * (log X) ^ 3)

/-- (4.63) -/
noncomputable def C₈ (H₀ k μ : ℝ) :=
  (b₁₀ H₀ k μ) * (log (k * H₀)) ^ 2 / (k * H₀) ^ (2 * μ - 2) *
  (4 * μ * (b₁₁ (k * H₀) (2 * μ)) / (k * (2 * μ - 1)) +
  2 * π * m₀ * (2 * μ - 1) * (b₁₁ (k * H₀) (2 * μ - 1)) / (μ - 1))

/-- (4.75) -/
noncomputable def b₁₂ (H : ℝ) : ℝ := 1 / (2 * (1 - 1 / H) ^ 2)

/-- (4.72) -/
noncomputable def CC₁ (H₀ α d δ k H σ : ℝ) : ℝ :=
  (b₁₂ H) * exp ((8 / 3) * δ * (2 * σ - 1) * (M H₀ k σ) +
    4 * δ * (2 * δ - 1) * (log (log H₀)) / (log (k * H₀) + 2 * δ)) *
  (U H₀ α k H₀) ^ (2 * (1 - σ) + 2 * d / (log H₀) +
    2 * δ * (2 * σ - 1) / (log (k * H₀) + 2 * δ)) *
  (V H₀ α k δ H) ^ (2 * σ - 1) *
  exp ((2 * d * (2 * log (log H₀) - log (log (k * H₀)))) / (log H₀) + 8 * d / 3 + 2 * α)

/-- (4.73) -/
noncomputable def CC₂ (H₀ d η k H μ σ : ℝ) : ℝ :=
  (C₇ H₀ k η H) * (μ - σ + d / (log H₀)) + (C₈ H₀ k μ)

end KLN
```
