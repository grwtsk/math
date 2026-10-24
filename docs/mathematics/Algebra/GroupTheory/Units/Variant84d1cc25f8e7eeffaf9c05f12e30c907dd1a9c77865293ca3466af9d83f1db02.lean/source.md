# Complete source: GRWTSK.Algebra.GroupTheory.Units.Variant84d1cc25f8e7eeffaf9c05f12e30c907dd1a9c77865293ca3466af9d83f1db02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0517c544fbf30f898649e53dffc3fc4f8e0d80a5` · SHA-256 `bf3dee77481b0dc8c908670ffe0205f710afb8b1bbd7b9f16e0c443f31d351a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.UnitsPosSubgroup.Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.UnitsPosSubgroup.Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90","mathematical_subject":"Algebra.Groups","original_sha256":"1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Subring/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.Operations
import Mathlib.Algebra.Order.GroupWithZero.Submonoid
import Mathlib.Algebra.Order.Ring.Defs

/-!

# Unit subgroups of a ring

-/


namespace GRWTSK.Algebra.GroupTheory.UnitsPosSubgroup.Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90

/-- The subgroup of positive units of a linear ordered semiring. -/
def Units.posSubgroup (R : Type*) [Semiring R] [LinearOrder R] [IsStrictOrderedRing R] :
    Subgroup Rˣ :=
  { (Submonoid.pos R).comap (Units.coeHom R) with
    carrier := { x | (0 : R) < x }
    inv_mem' := Units.inv_pos.mpr }

@[simp]
theorem Units.mem_posSubgroup {R : Type*} [Semiring R] [LinearOrder R] [IsStrictOrderedRing R]
    (u : Rˣ) : u ∈ Units.posSubgroup R ↔ (0 : R) < u :=
  Iff.rfl
```
