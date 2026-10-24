# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Differentiable.Variant2e300c8e1f85d2d4638c4549c27d50d5d7806f06a4bcaab4d67c2db79cecaf9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a3f08344f1002f6a37548dd74959027d25d53fa` · SHA-256 `79ad84d2889f506af2d73a42c1a3b1e0a7f04baa16355b4458c602231b105575`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentiableOnIdPrime.Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DifferentiableOnIdPrime.Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb","mathematical_subject":"Analysis.Calculus","original_sha256":"4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/FunProp/Differentiable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Tomáš Skřivan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomáš Skřivan
-/
import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.Calculus.FDeriv.Comp
import Mathlib.Analysis.Calculus.FDeriv.Prod
import Mathlib.Analysis.Calculus.FDeriv.Pi
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Analysis.Calculus.FDeriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Log.Deriv


import Mathlib.Tactic.FunProp

/-!
## `funProp` minimal setup for Differentiable(At/On)
-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentiableOnIdPrime.Variant4323fd293e8e25f6d5a52c599cfc83e2237741b3b3f5595067e9fb6fe65e9ffb

section Missing

section lambda_rules

variable {K : Type*} [NontriviallyNormedField K]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace K E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace K F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace K G]
variable {f : E → F} {x} {s}


theorem differentiableOn_id' : DifferentiableOn K (fun x : E => x) s :=
  differentiable_id.differentiableOn

theorem Differentiable.comp' {g : F → G} (hg : Differentiable K g) (hf : Differentiable K f) :
    Differentiable K (fun x => g (f x)) :=
  fun x => DifferentiableAt.comp x (hg (f x)) (hf x)

theorem DifferentiableAt.comp' {f : E → F} {g : F → G} (hg : DifferentiableAt K g (f x))
    (hf : DifferentiableAt K f x) : DifferentiableAt K (fun x => g (f x)) x :=
  (hg.hasFDerivAt.comp x hf.hasFDerivAt).differentiableAt

theorem DifferentiableOn.comp' {g : F → G} {t : Set F} (hg : DifferentiableOn K g t)
    (hf : DifferentiableOn K f s) (st : Set.MapsTo f s t) :
    DifferentiableOn K (fun x => g (f x)) s :=
  fun x hx => DifferentiableWithinAt.comp x (hg (f x) (st hx)) (hf x hx) st

end lambda_rules

end Missing


-- mark definition
attribute [fun_prop]
  Differentiable
  DifferentiableAt
  DifferentiableOn


-- lambda rules
attribute [fun_prop]
  differentiable_id'
  differentiable_const
  Differentiable.comp'

  differentiableAt_id'
  differentiableAt_const
  DifferentiableAt.comp'

  differentiableOn_id'
  differentiableOn_const
  DifferentiableOn.comp'

-- product
attribute [fun_prop]
  Differentiable.prod
  Differentiable.fst
  Differentiable.snd

  DifferentiableAt.prod
  DifferentiableAt.fst
  DifferentiableAt.snd

  DifferentiableOn.prod
  DifferentiableOn.fst
  DifferentiableOn.snd

-- transitions
attribute [fun_prop]
  Differentiable.differentiableAt
  Differentiable.differentiableOn
  DifferentiableAt.continuousAt
  DifferentiableOn.continuousOn

-- algebra
attribute [fun_prop]
  Differentiable.add
  Differentiable.sub
  Differentiable.neg
  Differentiable.mul
  Differentiable.smul
  Differentiable.div
  Differentiable.inv

  DifferentiableAt.add
  DifferentiableAt.sub
  DifferentiableAt.neg
  DifferentiableAt.mul
  DifferentiableAt.smul
  DifferentiableAt.div
  DifferentiableAt.inv

  DifferentiableOn.add
  DifferentiableOn.sub
  DifferentiableOn.neg
  DifferentiableOn.mul
  DifferentiableOn.smul
  DifferentiableOn.div
  DifferentiableOn.inv


-- special function
attribute [fun_prop]
  Differentiable.exp
  Differentiable.log
  Differentiable.pow

  DifferentiableAt.exp
  DifferentiableAt.log
  DifferentiableAt.pow

  DifferentiableOn.exp
  DifferentiableOn.log
  DifferentiableOn.pow
```
