# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant7658a4916b50b0edcc0a6f0fbdd2718921c6cf43a3e54628a32b843765b987f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d55319c62a0da9b2588f1012d6a00591d53119b` · SHA-256 `9b2b1f29a1aa9af12531861bf9a761b7ecdfaf658dc67ed84606a7dcd971925b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocalInverse.Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.LocalInverse.Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e","mathematical_subject":"Analysis.Calculus","original_sha256":"a5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/InverseFunctionTheorem/Deriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.Deriv.Inverse
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv

/-!
# Inverse function theorem, 1D case

In this file we prove a version of the inverse function theorem for maps `f : 𝕜 → 𝕜`.
We use `ContinuousLinearEquiv.unitsEquivAut` to translate `HasStrictDerivAt f f' a` and
`f' ≠ 0` into `HasStrictFDerivAt f (_ : 𝕜 ≃L[𝕜] 𝕜) a`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LocalInverse.Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e

open Filter
open scoped Topology

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜] (f : 𝕜 → 𝕜)

noncomputable section
namespace HasStrictDerivAt

variable (f' a : 𝕜) (hf : HasStrictDerivAt f f' a) (hf' : f' ≠ 0)
include hf hf'

/-- A function that is inverse to `f` near `a`. -/
abbrev localInverse : 𝕜 → 𝕜 :=
  (hf.hasStrictFDerivAt_equiv hf').localInverse _ _ _

variable {f f' a}

theorem map_nhds_eq : map f (𝓝 a) = 𝓝 (f a) :=
  (hf.hasStrictFDerivAt_equiv hf').map_nhds_eq_of_equiv

theorem to_localInverse : HasStrictDerivAt (hf.localInverse f f' a hf') f'⁻¹ (f a) :=
  (hf.hasStrictFDerivAt_equiv hf').to_localInverse

theorem to_local_left_inverse {g : 𝕜 → 𝕜} (hg : ∀ᶠ x in 𝓝 a, g (f x) = x) :
    HasStrictDerivAt g f'⁻¹ (f a) :=
  (hf.hasStrictFDerivAt_equiv hf').to_local_left_inverse hg

end HasStrictDerivAt

variable {f}

/-- If a function has a non-zero strict derivative at all points, then it is an open map. -/
theorem isOpenMap_of_hasStrictDerivAt {f' : 𝕜 → 𝕜}
    (hf : ∀ x, HasStrictDerivAt f (f' x) x) (h0 : ∀ x, f' x ≠ 0) : IsOpenMap f :=
  isOpenMap_iff_nhds_le.2 fun x => ((hf x).map_nhds_eq (h0 x)).ge
```
