# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quotient.Variant4ba517f561f05515af554309b3b6d100b86901c3eb735a2a01157f81fd9fe8c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc0910ca69318f98c410a605cc6f395deea43ac9` · SHA-256 `53c95e64bc6b6125ba4158327c30720c7ca2167b7e643152be9ae303a1e3845a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasQuotient.Variantaf4b6e4560439c9f1c92f083d0084b511c28f468b5feb3cd616e6438c97afa36","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af4b6e4560439c9f1c92f083d0084b511c28f468b5feb3cd616e6438c97afa36","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasQuotient.Variantaf4b6e4560439c9f1c92f083d0084b511c28f468b5feb3cd616e6438c97afa36","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"af4b6e4560439c9f1c92f083d0084b511c28f468b5feb3cd616e6438c97afa36","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Tactic.Common

/-!
# Algebraic quotients

This file defines notation for algebraic quotients, e.g. quotient groups `G ⧸ H`,
quotient modules `M ⧸ N` and ideal quotients `R ⧸ I`.

The actual quotient structures are defined in the following files:
* quotient group: `Mathlib/GroupTheory/QuotientGroup.lean`
* quotient module: `Mathlib/LinearAlgebra/Quotient.lean`
* quotient ring: `Mathlib/RingTheory/Ideal/Quotient.lean`

## Notations

The following notation is introduced:

* `G ⧸ H` stands for the quotient of the type `G` by some term `H`
  (for example, `H` can be a normal subgroup of `G`).
  To implement this notation for other quotients, you should provide a `HasQuotient` instance.
  Note that since `G` can usually be inferred from `H`, `_ ⧸ H` can also be used,
  but this is less readable.

## Tags

quotient, group quotient, quotient group, module quotient, quotient module, ring quotient,
ideal quotient, quotient ring
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasQuotient.Variantaf4b6e4560439c9f1c92f083d0084b511c28f468b5feb3cd616e6438c97afa36

universe u v

/-- `HasQuotient A B` is a notation typeclass that allows us to write `A ⧸ b` for `b : B`.
This allows the usual notation for quotients of algebraic structures,
such as groups, modules and rings.

`A` is a parameter, despite being unused in the definition below, so it appears in the notation.
-/
class HasQuotient (A : outParam <| Type u) (B : Type v) where
  /-- auxiliary quotient function, the one used will have `A` explicit -/
  quotient' : B → Type max u v

-- Will be provided by e.g. `Ideal.Quotient.inhabited`
/--
`HasQuotient.Quotient A b` (denoted as `A ⧸ b`) is the quotient of the type `A` by `b`.

This differs from `HasQuotient.quotient'` in that the `A` argument is explicit,
which is necessary to make Lean show the notation in the goal state.
-/
abbrev HasQuotient.Quotient (A : outParam <| Type u) {B : Type v}
    [HasQuotient A B] (b : B) : Type max u v :=
  HasQuotient.quotient' b

/-- Quotient notation based on the `HasQuotient` typeclass -/
notation:35 G " ⧸ " H:34 => HasQuotient.Quotient G H
```
