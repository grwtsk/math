# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Sheaf.Variantc55e4925824c4a29fb45149e484f6b4985efe5ba4236c9bba7c6e3efe35cbb95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fffe744be2751e3436ddd1ad64f276a03983e89a` · SHA-256 `ec5b70f400f5c0c5040310c120a0d4c677d2fcdb9f886147c6259f49e327e5e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.Modules.Variantd8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.Modules.Variantd8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"d8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Modules/Sheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Category.ModuleCat.Sheaf.Abelian
import Mathlib.AlgebraicGeometry.Modules.Presheaf

/-!
# The category of sheaves of modules over a scheme

In this file, we define the abelian category of sheaves of modules
`X.Modules` over a scheme `X`.

-/


namespace GRWTSK.Geometry.AlgebraicGeometry.Modules.Variantd8c642aefdcebb7bc2ed707a0c7f6a781a8529ffabb877263d0fe65aa554034c

universe u

open CategoryTheory

namespace AlgebraicGeometry.Scheme

variable (X : Scheme.{u})

/-- The category of sheaves of modules over a scheme. -/
abbrev Modules := SheafOfModules.{u} X.ringCatSheaf

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
noncomputable instance : Abelian X.Modules := inferInstance

end AlgebraicGeometry.Scheme
```
