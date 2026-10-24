# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Support.Variant8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b381ea7c12f9071af691ca04fa49f0b514e58af7` · SHA-256 `8ebd459a0d554cceed4a08c855e5edc8a91ab62ae26520917539d7f6a5dacc13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Analysis.Calculus.Deriv.Basic

#align_import analysis.calculus.deriv.support from "leanprover-community/mathlib"@"3bce8d800a6f2b8f63fe1e588fd76a9ff4adcebe"

/-!
# Support of the derivative of a function

In this file we prove that the (topological) support of a function includes the support of its
derivative. As a corollary, we show that the derivative of a function with compact support has
compact support.

## Keywords

derivative, support
-/


universe u v

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]

variable {E : Type v} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {f : 𝕜 → E}

/-! ### Support of derivatives -/


section Support

open Function

theorem support_deriv_subset : support (deriv f) ⊆ tsupport f := by
  intro x
  rw [← not_imp_not]
  intro h2x
  rw [not_mem_tsupport_iff_eventuallyEq] at h2x
  exact nmem_support.mpr (h2x.deriv_eq.trans (deriv_const x 0))
#align support_deriv_subset support_deriv_subset

theorem HasCompactSupport.deriv (hf : HasCompactSupport f) : HasCompactSupport (deriv f) :=
  hf.mono' support_deriv_subset
#align has_compact_support.deriv HasCompactSupport.deriv

end Support

```
