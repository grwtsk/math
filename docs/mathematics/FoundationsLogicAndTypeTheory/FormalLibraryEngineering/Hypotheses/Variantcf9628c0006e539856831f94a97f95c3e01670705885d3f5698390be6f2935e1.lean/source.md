# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hypotheses.Variantcf9628c0006e539856831f94a97f95c3e01670705885d3f5698390be6f2935e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `260592149b9d1553bfaa38f945141a6d3c5790fa` · SHA-256 `fb372ab0053ad92038f3943c5e195c5e4c632ce9b7348f4446ca3f6bcf360e5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IicMemOfLe.Variant96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IicMemOfLe.Variant96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Inclusion/Extension/IntervalDyadicReal/Hypotheses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 David Ledvinka. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ledvinka
-/
module

public meta import Mathlib.Tactic.Inclusion.ExtensionAPI.Attr
public import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Init

/-!
# Hypothesis operations for dyadic real intervals

This file defines the hypothesis extensions for the `interval_dyadic_real` inclusion family.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IicMemOfLe.Variant96fd28581bb553e8290ffef943e5f2d3f1287799fc6129e24e12b57d2051e3f6

@[expose] public section

namespace Inclusion

namespace IntervalDyadicReal

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_le {x y : ℝ} {I : Interval Dyadic} (hxy : x ≤ y) (hy : y ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_le hxy hy

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_le {x y : ℝ} {I : Interval Dyadic} (hxy : x ≤ y) (hx : x ∈ I) :
    y ∈ Interval.Ici I.lb := Interval.mem_Ici_of_le hxy hx

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_lt {x y : ℝ} {I : Interval Dyadic} (hxy : x < y) (hy : y ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_lt hxy hy

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_lt {x y : ℝ} {I : Interval Dyadic} (hxy : x < y) (hx : x ∈ I) :
    y ∈ Interval.Ici I.lb := Interval.mem_Ici_of_lt hxy hx

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_mem_Ici {a x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Ici a) (ha : a ∈ I) :
    x ∈ Interval.Ici I.lb := Interval.mem_Ici_of_mem_Ici hx ha

@[hypothesis_op interval_dyadic_real]
theorem Ici_mem_of_mem_Ioi {a x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Ioi a) (ha : a ∈ I) :
    x ∈ Interval.Ici I.lb := Interval.mem_Ici_of_mem_Ioi hx ha

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_mem_Iic {b x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Iic b) (hb : b ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_mem_Iic hx hb

@[hypothesis_op interval_dyadic_real]
theorem Iic_mem_of_mem_Iio {b x : ℝ} {I : Interval Dyadic} (hx : x ∈ Set.Iio b) (hb : b ∈ I) :
    x ∈ Interval.Iic I.ub := Interval.mem_Iic_of_mem_Iio hx hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ico {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ico a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ico hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ioc {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ioc a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ioc hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Icc {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Icc a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Icc hx ha hb

@[hypothesis_op interval_dyadic_real]
theorem Icc_mem_of_mem_Ioo {a b x : ℝ} {I J : Interval Dyadic} (hx : x ∈ Set.Ioo a b)
    (ha : a ∈ I) (hb : b ∈ J) : x ∈ Interval.Icc I.lb J.ub :=
  Interval.mem_Icc_of_mem_Ioo hx ha hb

end IntervalDyadicReal

end Inclusion
```
