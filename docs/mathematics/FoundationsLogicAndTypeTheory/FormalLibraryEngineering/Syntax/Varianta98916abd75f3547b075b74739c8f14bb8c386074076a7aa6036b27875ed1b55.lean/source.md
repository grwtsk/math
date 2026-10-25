# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Varianta98916abd75f3547b075b74739c8f14bb8c386074076a7aa6036b27875ed1b55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea01cb200ec38b439c64d67754369fb943f92286` · SHA-256 `299f6a9f706de9321a3ed047c8030fbab397512ebe80842caaa828bb5c888a99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleTk.Variant95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ModuleTk.Variant95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Parser/Module/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleTk.Variant95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669

public section

namespace Lean
namespace Parser

namespace Module
def moduleTk   := leading_parser "module"
def «prelude»  := leading_parser "prelude"
def «public»   := leading_parser (withAnonymousAntiquot := false) "public"
def «meta»     := leading_parser (withAnonymousAntiquot := false) "meta"
def «all»      := leading_parser (withAnonymousAntiquot := false) "all"
def «import»   := leading_parser
  atomic (optional «public» >> optional «meta» >> "import ") >>
  optional all >>
  identWithPartialTrailingDot
def header     := leading_parser optional (moduleTk >> ppLine >> ppLine) >>
  optional («prelude» >> ppLine) >>
  many («import» >> ppLine) >>
  ppLine

/--
  Parser for a Lean module. We never actually run this parser but instead use the imperative definitions in the parent module that
  return the same syntax tree structure, but add error recovery. Still, it is helpful to have a `Parser` definition
  for it in order to auto-generate helpers such as the pretty printer. -/
@[run_builtin_parser_attribute_hooks]
def module     := leading_parser header >> many (commandParser >> ppLine >> ppLine)
```
