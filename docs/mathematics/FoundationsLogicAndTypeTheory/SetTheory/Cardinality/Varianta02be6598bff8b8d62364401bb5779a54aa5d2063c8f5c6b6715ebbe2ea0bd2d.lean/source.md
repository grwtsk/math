# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Varianta02be6598bff8b8d62364401bb5779a54aa5d2063c8f5c6b6715ebbe2ea0bd2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `740bad7b126712483999ee40a786d9dac6d61ab6` · SHA-256 `0b1e7180022fbf21495983bca3f5fe64071a7e61409e6dfc35012ddcd417f651`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkComplex.Variantf99039f391e18be475140be6d5dc9bfad80c1c2082fcdfa238707dd5575dcdd9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f99039f391e18be475140be6d5dc9bfad80c1c2082fcdfa238707dd5575dcdd9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CardinalMkComplex.Variantf99039f391e18be475140be6d5dc9bfad80c1c2082fcdfa238707dd5575dcdd9","mathematical_subject":"Logic.SetTheory","original_sha256":"f99039f391e18be475140be6d5dc9bfad80c1c2082fcdfa238707dd5575dcdd9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Analysis.Real.Cardinality
public import Mathlib.Basic.Complex.Basic

/-!
# The cardinality of the complex numbers

This file shows that the complex numbers have cardinality continuum, i.e. `#ℂ = 𝔠`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalMkComplex.Variantf99039f391e18be475140be6d5dc9bfad80c1c2082fcdfa238707dd5575dcdd9

public section

open Cardinal Set

open Cardinal

/-- The cardinality of the complex numbers, as a type. -/
@[simp]
theorem Cardinal.mk_complex : #ℂ = 𝔠 := by
  rw [mk_congr Complex.equivRealProd, mk_prod, lift_id, mk_real, continuum_mul_self]

/-- The cardinality of the complex numbers, as a set. -/
theorem Cardinal.mk_univ_complex : #(Set.univ : Set ℂ) = 𝔠 := by rw [mk_univ, mk_complex]

/-- The complex numbers are not countable. -/
theorem not_countable_complex : ¬(Set.univ : Set ℂ).Countable := by
  rw [← le_aleph0_iff_set_countable, not_le, Cardinal.mk_univ_complex]
  apply cantor
```
