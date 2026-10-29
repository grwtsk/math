-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Com.Variant2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Com.Variant2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Com.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Com.Variant2e81f8d90ec7260d5993ae5cbf3799a12c1cf276c776a48d0aceb281a183bc82

set_option aesop.check.all false
-- With this option, the test becomes unbearably slow.

abbrev State := String → Int

inductive Com where
| Skip : Com
| Seq : Com → Com → Com

declare_syntax_cat com

syntax "SKIP" : com
syntax com ";" com : com
syntax "(" com ")" : com
syntax term : com

syntax "[Com|" com "]" : term

macro_rules
| `([Com| SKIP]) => `(Com.Skip)
| `([Com| $x ; $y]) => `(Com.Seq [Com| $x] [Com| $y])
| `([Com| ( $x:com )]) => `([Com| $x])
| `([Com| $x:term ]) => `($x)

@[aesop safe [constructors, -100 cases (index := [hyp BigStep Com.Skip _ _, hyp BigStep [Com| _;_] _ _])]]
inductive BigStep : Com → State → State → Prop where
| Skip : BigStep Com.Skip s s
| Seq (h1 : BigStep c₁ s t) (h2 : BigStep c₂ t u) : BigStep [Com| c₁;c₂] s u

theorem seq_assoc :
    BigStep [Com| (c1;c2);c3] s s' ↔ BigStep [Com| c1;c2;c3] s s' := by
  aesop
