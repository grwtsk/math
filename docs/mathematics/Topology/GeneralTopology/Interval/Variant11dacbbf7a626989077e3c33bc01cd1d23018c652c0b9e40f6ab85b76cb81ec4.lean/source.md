# Complete source: GRWTSK.Topology.GeneralTopology.Interval.Variant11dacbbf7a626989077e3c33bc01cd1d23018c652c0b9e40f6ab85b76cb81ec4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fcd44115781dc5501a6acab15964937dfae07d1` · SHA-256 `887446d028e7c82f136007ec78492c4500d5d13d256d6b82637e8cc7eaa05241`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.MemIcc.Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.MemIcc.Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Core/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Topology.Order.Basic

/-!
# Abstract Interval Interface

This file defines the abstract notion of intervals as subsets of ℝ,
with semantic properties. This provides the mathematical foundation
that `IntervalReal` will implement computationally.

## Main definitions

* Lemmas about `Set.Icc` (closed intervals) relevant to interval arithmetic
* Convexity and integrability properties

## Design notes

We primarily use `Set.Icc a b` from Mathlib as our semantic interval type.
This file collects lemmas and abstractions useful for verified numerics.
-/


namespace GRWTSK.Topology.GeneralTopology.MemIcc.Variant3b7e7c4200cbb10a35444d56bb6217ba17af1c1b5e565ecdb9fe87e683589565

namespace LeanCert.Core

/-! ### Interval membership and operations -/

/-- A real number is in the interval [a, b] -/
abbrev mem_Icc (x a b : ℝ) : Prop := a ≤ x ∧ x ≤ b

theorem mem_Icc_iff (x a b : ℝ) : mem_Icc x a b ↔ x ∈ Set.Icc a b := Iff.rfl

/-! ### Interval arithmetic semantics

These lemmas establish the semantic foundation for interval arithmetic:
if x ∈ [a, b] and y ∈ [c, d], then x ⊕ y ∈ [a ⊕ c, b ⊕ d] (for appropriate ⊕).
-/

/-- Addition preserves interval membership -/
theorem add_mem_Icc {x y a b c d : ℝ} (hx : x ∈ Set.Icc a b) (hy : y ∈ Set.Icc c d) :
    x + y ∈ Set.Icc (a + c) (b + d) := by
  simp only [Set.mem_Icc] at *
  constructor <;> linarith

/-- Negation reverses interval bounds -/
theorem neg_mem_Icc {x a b : ℝ} (hx : x ∈ Set.Icc a b) :
    -x ∈ Set.Icc (-b) (-a) := by
  simp only [Set.mem_Icc] at *
  constructor <;> linarith

/-- Subtraction on intervals -/
theorem sub_mem_Icc {x y a b c d : ℝ} (hx : x ∈ Set.Icc a b) (hy : y ∈ Set.Icc c d) :
    x - y ∈ Set.Icc (a - d) (b - c) := by
  simp only [Set.mem_Icc] at *
  constructor <;> linarith

/-! ### Convexity -/

/-- Closed intervals are convex -/
theorem Icc_convex (a b : ℝ) : Convex ℝ (Set.Icc a b) := convex_Icc a b

/-! ### Compactness -/

/-- Nonempty closed bounded intervals are compact -/
theorem Icc_compact (a b : ℝ) : IsCompact (Set.Icc a b) := isCompact_Icc

/-! ### Continuous functions on intervals -/

/-- A continuous function on a compact interval attains its bounds -/
theorem continuous_Icc_bounds {f : ℝ → ℝ} {a b : ℝ} (hab : a ≤ b)
    (hf : Continuous f) :
    ∃ (lo hi : ℝ), (∀ x ∈ Set.Icc a b, lo ≤ f x ∧ f x ≤ hi) ∧
      (∃ x ∈ Set.Icc a b, f x = lo) ∧ (∃ x ∈ Set.Icc a b, f x = hi) := by
  have hne : (Set.Icc a b).Nonempty := Set.nonempty_Icc.mpr hab
  have hcpt : IsCompact (Set.Icc a b) := isCompact_Icc
  obtain ⟨xmin, hxmin_mem, hxmin⟩ := hcpt.exists_isMinOn hne hf.continuousOn
  obtain ⟨xmax, hxmax_mem, hxmax⟩ := hcpt.exists_isMaxOn hne hf.continuousOn
  exact ⟨f xmin, f xmax,
    fun x hx => ⟨hxmin hx, hxmax hx⟩,
    ⟨xmin, hxmin_mem, rfl⟩,
    ⟨xmax, hxmax_mem, rfl⟩⟩

end LeanCert.Core
```
