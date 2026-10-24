# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantce361d4e911cc843c3bbb2070805ff5168fe0efee79c07cf6d0c33b5ee360f89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e918753609a77cb96086c18ef7c86cd97053e4a` · SHA-256 `b615d679bd72666e4d85b984f55609c91fecfaaf6e241b3437f59f4733a58318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Module.Variant320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Condensed.Light.Module
/-!

# Limits in categories of light condensed objects

This file adds some instances for limits in light condensed sets and modules.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant320b8d8c8a4c39880eba15dc0d6194a5084a3f09a95494f17e4de8733c6ff0d7

universe u

open CategoryTheory Limits

instance : HasLimitsOfSize.{u, u} LightCondSet.{u} := by
  change HasLimitsOfSize (Sheaf _ _)
  infer_instance

instance : HasFiniteLimits LightCondSet.{u} := hasFiniteLimits_of_hasLimitsOfSize _

variable (R : Type u) [Ring R]

instance : HasLimitsOfSize.{u, u} (LightCondMod.{u} R) :=
  inferInstanceAs (HasLimitsOfSize (Sheaf _ _))

instance : HasLimitsOfSize.{0, 0} (LightCondMod.{u} R) :=
  inferInstanceAs (HasLimitsOfSize (Sheaf _ _))

instance : HasFiniteLimits (LightCondMod.{u} R) := hasFiniteLimits_of_hasLimitsOfSize _
```
