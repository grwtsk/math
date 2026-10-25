# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SProd.Variantfad89e8e58d49933d5fba82109991c05f71cde4768f4dcaba5922cc23e4c1449

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfffaece6cf9984c697aaa88786760431543f360` · SHA-256 `8880d8f3ddc904defef7b976b80a9bf155971a1ce833e1fee55362c13de68964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SProd.Variant4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SProd.Variant4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/SProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Tactic.FBinop

/-!
# Set Product Notation
This file provides notation for a product of sets, and other similar types.

## Main Definitions

* `SProd α β γ` for a binary operation `(· ×ˢ ·) : α → β → γ`.

## Notation

We introduce the notation `x ×ˢ y` for the `sprod` of any `SProd` structure. Ideally, `x × y`
notation is desirable but this notation is defined in core for `Prod` so replacing `x ×ˢ y` with
`x × y` seems difficult.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SProd.Variant4208a395a923826622d179520c73a571b60a4c9eb99f692df37fe19e08ae5206

universe u v w

/-- Notation type class for the set product `×ˢ`. -/
class SProd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
  /-- The cartesian product `s ×ˢ t` is the set of `(a, b)` such that `a ∈ s` and `b ∈ t`. -/
  sprod : α → β → γ

-- This notation binds more strongly than (pre)images, unions and intersections.
@[inherit_doc SProd.sprod] infixr:82 " ×ˢ " => SProd.sprod
macro_rules | `($x ×ˢ $y)   => `(fbinop% SProd.sprod $x $y)
```
