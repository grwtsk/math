-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternEntry.Variant2bfef85fbdbacfa11b66c9f79df79dfa5fa8b829db3a8be8e393ca48f4676e85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bfef85fbdbacfa11b66c9f79df79dfa5fa8b829db3a8be8e393ca48f4676e85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExternEntry.Variant2bfef85fbdbacfa11b66c9f79df79dfa5fa8b829db3a8be8e393ca48f4676e85","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2bfef85fbdbacfa11b66c9f79df79dfa5fa8b829db3a8be8e393ca48f4676e85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Parser/Attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Parser.Extra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternEntry.Variant2bfef85fbdbacfa11b66c9f79df79dfa5fa8b829db3a8be8e393ca48f4676e85

public section

namespace Lean.Parser

builtin_initialize
  registerBuiltinParserAttribute `builtin_prio_parser ``Category.prio .both
  registerBuiltinDynamicParserAttribute `prio_parser `prio

builtin_initialize
  registerBuiltinParserAttribute `builtin_attr_parser ``Category.attr .symbol
  registerBuiltinDynamicParserAttribute `attr_parser `attr

@[inline] def priorityParser (rbp : Nat := 0) : Parser :=
  categoryParser `prio rbp

@[inline] def attrParser (rbp : Nat := 0) : Parser :=
  categoryParser `attr rbp

attribute [run_builtin_parser_attribute_hooks]
  priorityParser attrParser

namespace Priority
@[builtin_prio_parser] def numPrio  := checkPrec maxPrec >> numLit
attribute [run_builtin_parser_attribute_hooks] numPrio
end Priority

namespace Attr

@[builtin_attr_parser] def simple     := leading_parser ident >> optional (ppSpace >> (priorityParser <|> ident))
/- Remark, We can't use `simple` for `class`, `instance`, `export`, and `macro` because they are keywords. -/
@[builtin_attr_parser] def «macro»    := leading_parser "macro " >> ident
@[builtin_attr_parser] def «export»   := leading_parser "export " >> ident

/- We don't use `simple` for recursor because the argument is not a priority -/
@[builtin_attr_parser] def recursor         := leading_parser nonReservedSymbol "recursor " >> numLit
@[builtin_attr_parser] def «class»          := leading_parser "class"
@[builtin_attr_parser] def «instance»       := leading_parser "instance" >> optional (ppSpace >> priorityParser)
@[builtin_attr_parser] def default_instance := leading_parser nonReservedSymbol "default_instance" >> optional (ppSpace >> priorityParser)
@[builtin_attr_parser] def «specialize»     := leading_parser (nonReservedSymbol "specialize") >> many (ppSpace >> (ident <|> numLit))

def externEntry := leading_parser
  optional (ident >> ppSpace) >> optional (nonReservedSymbol "inline ") >> strLit
@[builtin_attr_parser] def extern     := leading_parser
  nonReservedSymbol "extern" >> many (ppSpace >> externEntry)

/--
Declares this tactic to be an alias or alternative form of an existing tactic.

This has the following effects:
 * The alias relationship is saved
 * The docstring is taken from the original tactic, if present
-/
@[builtin_attr_parser] def «tactic_alt» := leading_parser
  "tactic_alt" >> ppSpace >> ident

/--
Adds one or more tags to a tactic.

Tags should be applied to the canonical names for tactics.
-/
@[builtin_attr_parser] def «tactic_tag» := leading_parser
  "tactic_tag" >> many1 (ppSpace >> ident)

/--
Sets the tactic's name.

Ordinarily, tactic names are automatically set to the first token in the tactic's parser. If this
process fails, or if the tactic's name should be multiple tokens (e.g. `let rec`), then this
attribute can be used to provide a name.

The tactic's name is used in documentation as well as in completion. Thus, the name should be a
valid prefix of the tactic's syntax.
-/
@[builtin_attr_parser] def «tactic_name» := leading_parser
  "tactic_name" >> ppSpace >> (ident <|> strLit)

end Attr

end Lean.Parser
