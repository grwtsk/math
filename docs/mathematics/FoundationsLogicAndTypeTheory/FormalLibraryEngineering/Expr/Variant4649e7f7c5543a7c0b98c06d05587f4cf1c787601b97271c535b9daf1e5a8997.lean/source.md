# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant4649e7f7c5543a7c0b98c06d05587f4cf1c787601b97271c535b9daf1e5a8997

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8ffb043e70ee0a640f01cf5e7c10ccdaba9431a` · SHA-256 `350cfb669dfd4c9d28ad32c3acb4458cf6d6cf8e5fa19683e550501252c44044`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprInstOne.Varianta5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprInstOne.Varianta5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Init
import Qq

/-! # Helpers to invoke functions involving algebra at tactic time

This file provides instances on `x y : Q($α)` such that `x + y = q($x + $y)`.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprInstOne.Varianta5fe110d25f54637462d4e338482196a3f21b63268be43abd4accceefe9b6164

open Qq

/-- Produce a `One` instance for `Q($α)` such that `1 : Q($α)` is `q(1 : $α)`. -/
def Expr.instOne {u : Lean.Level} (α : Q(Type u)) (_ : Q(One $α)) : One Q($α) where
  one := q(1 : $α)

/-- Produce a `Zero` instance for `Q($α)` such that `0 : Q($α)` is `q(0 : $α)`. -/
def Expr.instZero {u : Lean.Level} (α : Q(Type u)) (_ : Q(Zero $α)) : Zero Q($α) where
  zero := q(0 : $α)

/-- Produce a `Mul` instance for `Q($α)` such that `x * y : Q($α)` is `q($x * $y)`. -/
def Expr.instMul {u : Lean.Level} (α : Q(Type u)) (_ : Q(Mul $α)) : Mul Q($α) where
  mul x y := q($x * $y)

/-- Produce an `Add` instance for `Q($α)` such that `x + y : Q($α)` is `q($x + $y)`. -/
def Expr.instAdd {u : Lean.Level} (α : Q(Type u)) (_ : Q(Add $α)) : Add Q($α) where
  add x y := q($x + $y)
```
