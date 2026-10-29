-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyProd.Variantec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MyProd.Variantec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ConstructorEquations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyProd.Variantec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501

set_option aesop.check.all true

-- From an equation where both sides contain only constructor applications
-- and variables, Aesop should derive equations about the variables.

example (h : Nat.zero = Nat.succ n) : False := by
  aesop

example (h : Nat.succ (Nat.succ n) = Nat.succ Nat.zero) : False := by
  aesop

example (h : (Nat.succ m, Nat.succ n) = (Nat.succ a, Nat.succ b)) :
    m = a ∧ n = b := by
  aesop

structure MyProd (A B : Type _) where
  toProd : A × B

example (h : MyProd.mk (x, y) = .mk (a, b)) : x = a ∧ y = b := by
  aesop
