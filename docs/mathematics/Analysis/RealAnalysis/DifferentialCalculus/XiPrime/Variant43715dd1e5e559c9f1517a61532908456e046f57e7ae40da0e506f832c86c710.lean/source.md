# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiPrime.Variant43715dd1e5e559c9f1517a61532908456e046f57e7ae40da0e506f832c86c710

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `517b5fbb7844775d2864be348c3156d3ba046d1b` · SHA-256 `99dd9a77b5bcb9b15698acc97e85d4cbbe8c81de76b85d075f726d65fdecdc58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Xi.Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Xi.Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b","mathematical_subject":"Analysis.Calculus","original_sha256":"28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/ChallengeDeps/XiPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
import Mathlib


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Xi.Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b

open scoped BigOperators
open Complex Set

noncomputable section

namespace XiPrime

/-- ξ(s) := s(s−1)/2 · Λ₀(s) + 1/2  (= ½ s(s−1) π^{-s/2} Γ(s/2) ζ(s) for s ∉ {0,1}; entire). -/
def xi (s : ℂ) : ℂ := s * (s - 1) / 2 * completedRiemannZeta₀ s + 1 / 2

/-- ξ′ := the complex derivative of ξ (an entire function; [XF′ §0] writes F := (ξ′)′/ξ′). -/
def xiDeriv : ℂ → ℂ := deriv xi

/-- ρ₁ is a zero of ξ′:  ξ′(ρ₁) = 0 — ALL zeros, NO real-part condition. -/
def IsXiDerivZero (ρ : ℂ) : Prop := xiDeriv ρ = 0

/-- m_{ρ₁} := multiplicity of ρ₁ as a zero of ξ′ = analytic order of ξ′ at ρ₁ (ℕ∞ → ℕ via toNat). -/
def xiDerivMult (ρ : ℂ) : ℕ := (analyticOrderAt xiDeriv ρ).toNat

/-- {ρ₁ : ξ′(ρ₁) = 0, T₁ < Im ρ₁ ≤ T₂}  (ALL zeros in the height window; positive ordinates, NOT |Im|).
This set is finite — every zero of ξ′ lies in the open critical strip (the first challenge statement) and the zeros of
the entire function ξ′ are isolated — so the finite sums and cardinalities below are genuine counts (Lean's `finsum`
and `Set.ncard` would return 0 on an infinite set). -/
def zerosIn (T₁ T₂ : ℝ) : Set ℂ := {ρ | IsXiDerivZero ρ ∧ T₁ < ρ.im ∧ ρ.im ≤ T₂}

/-- N_{ξ′}(T₁,T₂) := number of zeros of ξ′ with T₁ < Im ≤ T₂ (any real part), COUNTED WITH MULTIPLICITY. -/
def Ncount (T₁ T₂ : ℝ) : ℕ := ∑ᶠ ρ ∈ zerosIn T₁ T₂, xiDerivMult ρ

/-- N_{d,ξ′}(T₁,T₂) := number of DISTINCT zeros of ξ′ with T₁ < Im ≤ T₂ (any real part). -/
def Ndist (T₁ T₂ : ℝ) : ℕ := (zerosIn T₁ T₂).ncard

/-- N^{s}_{0,ξ′}(T₁,T₂) := #{ρ₁ : T₁ < Im ρ₁ ≤ T₂, Re ρ₁ = 1/2, m_{ρ₁} = 1}: SIMPLE zeros of ξ′ ON the
critical line (each such point counted once — it is simple). -/
def N0simple (T₁ T₂ : ℝ) : ℕ :=
  (zerosIn T₁ T₂ ∩ {ρ | ρ.re = 1 / 2} ∩ {ρ | xiDerivMult ρ = 1}).ncard

end XiPrime
```
