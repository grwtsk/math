# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variant3a073c68f821f07c6d2381717928d2dd0e41585e8417acef7dcb0b65869b4ba3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `388f196fba0df5039d2ba4de0a0f8ae20672cfc2` · SHA-256 `b9002a8abed0727c27d7b49fd450a8ad93c9951a1d04364bb02ed8b8bcbe1e59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosPart.Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PosPart.Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.ToAdditive

/-!
# Notations for operations involving order and algebraic structure

## Notations

* `a⁺ᵐ = a ⊔ 1`: *Positive component* of an element `a` of a multiplicative lattice ordered group
* `a⁻ᵐ = a⁻¹ ⊔ 1`: *Negative component* of an element `a` of a multiplicative lattice ordered group
* `a⁺ = a ⊔ 0`: *Positive component* of an element `a` of a lattice ordered group
* `a⁻ = (-a) ⊔ 0`: *Negative component* of an element `a` of a lattice ordered group
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosPart.Variant886832ebb71fe5b687e565c21ed9c3a96e25ed7fa1a08c8a55000ddd34b5e732

/-- A notation class for the *positive part* function: `a⁺`. -/
class PosPart (α : Type*) where
  /-- The *positive part* of an element `a`. -/
  posPart : α → α

/-- A notation class for the *positive part* function (multiplicative version): `a⁺ᵐ`. -/
@[to_additive]
class OneLePart (α : Type*) where
  /-- The *positive part* of an element `a`. -/
  oneLePart : α → α

/-- A notation class for the *negative part* function: `a⁻`. -/
class NegPart (α : Type*) where
  /-- The *negative part* of an element `a`. -/
  negPart : α → α

/-- A notation class for the *negative part* function (multiplicative version): `a⁻ᵐ`. -/
@[to_additive]
class LeOnePart (α : Type*) where
  /-- The *negative part* of an element `a`. -/
  leOnePart : α → α

export OneLePart (oneLePart)
export LeOnePart (leOnePart)
export PosPart (posPart)
export NegPart (negPart)

@[inherit_doc] postfix:max "⁺ᵐ " => OneLePart.oneLePart
@[inherit_doc] postfix:max "⁻ᵐ" => LeOnePart.leOnePart
@[inherit_doc] postfix:max "⁺" => PosPart.posPart
@[inherit_doc] postfix:max "⁻" => NegPart.negPart
```
