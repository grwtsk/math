# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant248e45fb47f4a941b9555bb237b845b379b7824e4e68690ebdcff46d602a15a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac7de29c5e447cc5dd65280a5566919da112ebf3` · SHA-256 `96c1d6baffd2331c2bc1a20986d35bb487cafe3fc454121ba34215945d6f1dfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprCoreLeOfIntervalHi.Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprCoreLeOfIntervalHi.Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Tactic/Bound/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.Eval.Extended

/-!
# Tactic-Facing Lemmas for Interval Bounds

This file provides lemmas designed for use by tactics that verify bounds
on expressions using interval arithmetic.

## Main theorems

### Core (computable) lemmas
* `exprCore_le_of_interval_hi` - Upper bound from interval high endpoint
* `exprCore_ge_of_interval_lo` - Lower bound from interval low endpoint
* `exprCore_lt_of_interval_hi_lt` - Strict upper bound
* `exprCore_gt_of_interval_lo_gt` - Strict lower bound

### Extended (noncomputable) lemmas
* `expr_le_of_interval_hi` - Upper bound from interval high endpoint
* `expr_ge_of_interval_lo` - Lower bound from interval low endpoint
* `expr_lt_of_interval_hi_lt` - Strict upper bound
* `expr_gt_of_interval_lo_gt` - Strict lower bound
* `expr_le_of_mem_interval` - Single-point variant
* `expr_ge_of_mem_interval` - Single-point variant

## Usage

These lemmas are intended to be used by tactics like `interval_bound` and
`interval_decide` to close goals of the form `∀ x ∈ I, f(x) ≤ c` or similar.

The core lemmas use the computable evaluator and can work with `native_decide`.
The extended lemmas use the noncomputable evaluator with floor/ceil bounds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprCoreLeOfIntervalHi.Variant375448cb548d504ed534dbf3db1afb157cc04e384b2b1b5ce2906dbe5173e4d4

namespace LeanCert.Engine

open LeanCert.Core

/-! ### Tactic-facing lemmas for interval bounds (core, computable) -/

/-- Upper bound lemma for core expressions (computable).
    FULLY PROVED - no sorry, no axioms. Accepts configurable Taylor depth.
    Requires domain validity (e.g., log arguments must be positive). -/
theorem exprCore_le_of_interval_hi (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {})
    (hdom : evalDomainValid1 e I cfg)
    (hhi : (evalIntervalCore1 e I cfg).hi ≤ c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  intro x hx
  have hmem := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalIntervalCore1 e I cfg).hi := hmem.2
  have hhi_le_c : ((evalIntervalCore1 e I cfg).hi : ℝ) ≤ c := by exact_mod_cast hhi
  exact le_trans heval_le_hi hhi_le_c

/-- Lower bound lemma for core expressions (computable).
    FULLY PROVED - no sorry, no axioms. Accepts configurable Taylor depth.
    Requires domain validity (e.g., log arguments must be positive). -/
theorem exprCore_ge_of_interval_lo (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {})
    (hdom : evalDomainValid1 e I cfg)
    (hlo : c ≤ (evalIntervalCore1 e I cfg).lo) :
    ∀ x ∈ I, c ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  have hmem := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at hmem
  have hlo_le_eval : (evalIntervalCore1 e I cfg).lo ≤ Expr.eval (fun _ => x) e := hmem.1
  have hc_le_lo : (c : ℝ) ≤ (evalIntervalCore1 e I cfg).lo := by exact_mod_cast hlo
  exact le_trans hc_le_lo hlo_le_eval

/-- Strict upper bound for core expressions (computable).
    FULLY PROVED - no sorry, no axioms. Accepts configurable Taylor depth.
    Requires domain validity (e.g., log arguments must be positive). -/
theorem exprCore_lt_of_interval_hi_lt (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {})
    (hdom : evalDomainValid1 e I cfg)
    (hhi : (evalIntervalCore1 e I cfg).hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  have hmem := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalIntervalCore1 e I cfg).hi := hmem.2
  have hhi_lt_c : ((evalIntervalCore1 e I cfg).hi : ℝ) < c := by exact_mod_cast hhi
  exact lt_of_le_of_lt heval_le_hi hhi_lt_c

/-- Strict lower bound for core expressions (computable).
    FULLY PROVED - no sorry, no axioms. Accepts configurable Taylor depth.
    Requires domain validity (e.g., log arguments must be positive). -/
theorem exprCore_gt_of_interval_lo_gt (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (c : ℚ) (cfg : EvalConfig := {})
    (hdom : evalDomainValid1 e I cfg)
    (hlo : c < (evalIntervalCore1 e I cfg).lo) :
    ∀ x ∈ I, c < Expr.eval (fun _ => x) e := by
  intro x hx
  have hmem := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at hmem
  have hlo_le_eval : (evalIntervalCore1 e I cfg).lo ≤ Expr.eval (fun _ => x) e := hmem.1
  have hc_lt_lo : (c : ℝ) < (evalIntervalCore1 e I cfg).lo := by exact_mod_cast hlo
  exact lt_of_lt_of_le hc_lt_lo hlo_le_eval

/-! ### Tactic-facing lemmas for interval bounds (extended, noncomputable) -/

/-- Upper bound lemma for extended expressions.
    FULLY PROVED - no sorry, no axioms. -/
theorem expr_le_of_interval_hi (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (hhi : (evalInterval1 e I).hi ≤ c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ c := by
  intro x hx
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalInterval1 e I).hi := hmem.2
  have hhi_le_c : ((evalInterval1 e I).hi : ℝ) ≤ c := by exact_mod_cast hhi
  exact le_trans heval_le_hi hhi_le_c

/-- Lower bound lemma for extended expressions.
    FULLY PROVED - no sorry, no axioms. -/
theorem expr_ge_of_interval_lo (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (hlo : c ≤ (evalInterval1 e I).lo) :
    ∀ x ∈ I, c ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  have hlo_le_eval : (evalInterval1 e I).lo ≤ Expr.eval (fun _ => x) e := hmem.1
  have hc_le_lo : (c : ℝ) ≤ (evalInterval1 e I).lo := by exact_mod_cast hlo
  exact le_trans hc_le_lo hlo_le_eval

/-- Strict upper bound for extended expressions.
    FULLY PROVED - no sorry, no axioms. -/
theorem expr_lt_of_interval_hi_lt (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (hhi : (evalInterval1 e I).hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  have heval_le_hi : Expr.eval (fun _ => x) e ≤ (evalInterval1 e I).hi := hmem.2
  have hhi_lt_c : ((evalInterval1 e I).hi : ℝ) < c := by exact_mod_cast hhi
  exact lt_of_le_of_lt heval_le_hi hhi_lt_c

/-- Strict lower bound for extended expressions.
    FULLY PROVED - no sorry, no axioms. -/
theorem expr_gt_of_interval_lo_gt (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (hlo : c < (evalInterval1 e I).lo) :
    ∀ x ∈ I, c < Expr.eval (fun _ => x) e := by
  intro x hx
  have hmem := evalInterval1_correct e hsupp x I hx
  simp only [IntervalRat.mem_def] at hmem
  have hlo_le_eval : (evalInterval1 e I).lo ≤ Expr.eval (fun _ => x) e := hmem.1
  have hc_lt_lo : (c : ℝ) < (evalInterval1 e I).lo := by exact_mod_cast hlo
  exact lt_of_lt_of_le hc_lt_lo hlo_le_eval

/-- Variant for single point (extended). -/
theorem expr_le_of_mem_interval (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (x : ℝ) (hx : x ∈ I)
    (hhi : (evalInterval1 e I).hi ≤ c) :
    Expr.eval (fun _ => x) e ≤ c :=
  expr_le_of_interval_hi e hsupp I c hhi x hx

/-- Variant for single point (extended). -/
theorem expr_ge_of_mem_interval (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c : ℚ) (x : ℝ) (hx : x ∈ I)
    (hlo : c ≤ (evalInterval1 e I).lo) :
    c ≤ Expr.eval (fun _ => x) e :=
  expr_ge_of_interval_lo e hsupp I c hlo x hx

end LeanCert.Engine
```
