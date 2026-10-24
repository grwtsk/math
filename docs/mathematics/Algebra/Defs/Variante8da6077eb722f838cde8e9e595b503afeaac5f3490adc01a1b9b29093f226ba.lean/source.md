# Complete source: GRWTSK.Algebra.Defs.Variante8da6077eb722f838cde8e9e595b503afeaac5f3490adc01a1b9b29093f226ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b47a3dbaf73f3155a59f56a2feb37105ccc670b7` · SHA-256 `08dbc8be8b1d736450acd47381312cd5155ea9f1966944998c20997d11c3a0bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsIntegralClosure.Variantc2a593953a65a8d428df050eaeb06da2b871a506867193c18e74df7625526061","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2a593953a65a8d428df050eaeb06da2b871a506867193c18e74df7625526061","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsIntegralClosure.Variantc2a593953a65a8d428df050eaeb06da2b871a506867193c18e74df7625526061","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c2a593953a65a8d428df050eaeb06da2b871a506867193c18e74df7625526061","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/IntegralClosure/IsIntegralClosure/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral closure as a characteristic predicate

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `IsIntegralClosure R A` : the characteristic predicate stating `A` is the integral closure of `R`
  in `B`, i.e. that an element of `B` is integral over `R` iff it is an element of
  (the image of) `A`.
-/


namespace GRWTSK.Algebra.IsIntegralClosure.Variantc2a593953a65a8d428df050eaeb06da2b871a506867193c18e74df7625526061

public section

/-- `IsIntegralClosure A R B` is the characteristic predicate stating `A` is
the integral closure of `R` in `B`,
i.e. that an element of `B` is integral over `R` iff it is an element of (the image of) `A`.
-/
class IsIntegralClosure (A R B : Type*) [CommRing R] [CommSemiring A] [CommRing B] [Algebra R B]
  [Algebra A B] : Prop where
  algebraMap_injective (A R B) : Function.Injective (algebraMap A B)
  isIntegral_iff : ∀ {x : B}, IsIntegral R x ↔ ∃ y, algebraMap A B y = x

theorem IsIntegralClosure.faithfulSMul (R A B : Type*) [CommRing R] [CommSemiring A] [CommRing B]
    [Algebra R B] [Algebra A B] [IsIntegralClosure A R B] : FaithfulSMul A B :=
  (faithfulSMul_iff_algebraMap_injective A B).mpr (algebraMap_injective A R B)
```
