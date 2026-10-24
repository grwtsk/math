-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Trace.Variant26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/Options.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.Trace


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variant26077071ffc64e4032d2d573c4013e96078367dc832a677afc981fb16c7496f2

public section

namespace Lean.Compiler

register_builtin_option compiler.check : Bool := {
  defValue := false
  descr    := "type check code after each compiler step (this is useful for debugging purses)"
}

register_builtin_option compiler.traceUnnormalized : Bool := {
  defValue := false
  descr    := "don't normalize declarations before tracing them at each pipeline step (this is \
    useful for debugging purposes)"
}

register_builtin_option compiler.checkMeta : Bool := {
  defValue := true
  descr := "Check that `meta` declarations only refer to other `meta` declarations and ditto for \
    non-`meta` declarations. Disabling this option may lead to delayed compiler errors and is
    intended only for debugging purposes."
}

register_builtin_option compiler.relaxedMetaCheck : Bool := {
  defValue := false
  descr := "Allow mixed `meta`/non-`meta` references in the same module. References to imports are unaffected."
}

register_builtin_option compiler.ignoreBorrowAnnotation : Bool := {
  defValue := false
  descr := "Ignore user defined borrow inference annotations. This is useful for export/extern \
    forward declarations"
}

register_builtin_option compiler.postponeCompile : Bool := {
  defValue := false
  descr := "Internal. Toggle experimental `leanir` separate compilation."
}

register_builtin_option compiler.inLeanIR : Bool := {
  defValue := false
  descr := "Internal. Indicates whether the compiler is currently running in `leanir`."
}

end Lean.Compiler
