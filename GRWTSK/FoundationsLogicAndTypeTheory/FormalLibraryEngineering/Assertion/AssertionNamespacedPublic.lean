-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/Do/Assertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Gladshtein, Sebastian Graf
-/
module

prelude
public import Init.Internal.Order
public import Std.Internal.Do.Order.Basic
public import Std.Internal.Do.Order.Heyting
public import Std.Internal.Do.Order.Instances

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Abbrev.Variantdcb83bcbbfe5ae3eca56073af30fd0d6d6a3ef8ca6034ff7518d67ff2036fdf8

universe u v w
@[expose] public section

namespace Std.Internal.Do

open Lean.Order

/-!
# Assertion

The `Assertion` class and `Assertion.ofProp` embedding.
-/

/-- An assertion type is equipped with a `CompleteLattice` structure,
used as the carrier for pre- and postconditions. -/
class abbrev Assertion (α : Type w) := CompleteLattice α



end Std.Internal.Do
