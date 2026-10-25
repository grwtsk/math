# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parser.Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff5651ecde581d6c36679c780e22ecb345785870` · SHA-256 `9cd0f45d8bee6a1336bd4be2a3669e1118b04df0f23ac2c90a9439fc8379cb0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAntiquotParenthesizer.Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkAntiquotParenthesizer.Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Parser.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Basic
public import Lean.Parser.Level
public import Lean.Parser.Term
public import Lean.Parser.Tactic
public import Lean.Parser.Command
public import Lean.Parser.Module
public import Lean.Parser.Syntax
public import Lean.Parser.Do
public import Lean.Parser.Tactic.Doc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAntiquotParenthesizer.Variant5eb168a2bb3181bed4c62fa219dd718392de148a650ddb1e09ec0fbb748209dc

public section

namespace Lean
namespace Parser
open Lean.PrettyPrinter
open Lean.PrettyPrinter.Parenthesizer
open Lean.PrettyPrinter.Formatter

builtin_initialize
  register_parser_alias "ws" checkWsBefore { stackSz? := some 0 }
  register_parser_alias "noWs" checkNoWsBefore { stackSz? := some 0 }
  register_parser_alias "linebreak" checkLinebreakBefore { stackSz? := some 0 }
  register_parser_alias (kind := numLitKind) "num" numLit
  register_parser_alias (kind := strLitKind) "str" strLit
  register_parser_alias (kind := charLitKind) "char" charLit
  register_parser_alias (kind := nameLitKind) "name" nameLit
  register_parser_alias (kind := scientificLitKind) "scientific" scientificLit
  register_parser_alias (kind := identKind) ident
  register_parser_alias (kind := identKind) rawIdent
  register_parser_alias (kind := hygieneInfoKind) hygieneInfo
  register_parser_alias "colGt" checkColGt { stackSz? := some 0 }
  register_parser_alias "colGe" checkColGe { stackSz? := some 0 }
  register_parser_alias "colEq" checkColEq { stackSz? := some 0 }
  register_parser_alias "lineEq" checkLineEq { stackSz? := some 0 }
  register_parser_alias lookahead { stackSz? := some 0 }
  register_parser_alias atomic { stackSz? := none }
  register_parser_alias many
  register_parser_alias many1
  register_parser_alias manyIndent
  register_parser_alias many1Indent
  register_parser_alias optional { autoGroupArgs := false }
  register_parser_alias withPosition { stackSz? := none }
  register_parser_alias withoutPosition { stackSz? := none }
  register_parser_alias withoutForbidden { stackSz? := none }
  register_parser_alias (kind := interpolatedStrKind) interpolatedStr
  register_parser_alias (kind := hexnumKind) hexnum
  register_parser_alias orelse
  register_parser_alias andthen { stackSz? := none }
  register_parser_alias recover

  registerAlias `notFollowedBy ``notFollowedBy (notFollowedBy · "element")
  Parenthesizer.registerAlias `notFollowedBy notFollowedBy.parenthesizer
  Formatter.registerAlias `notFollowedBy notFollowedBy.formatter

end Parser

namespace PrettyPrinter
namespace Parenthesizer

set_option compiler.ignoreBorrowAnnotation true in
-- Close the mutual recursion loop; see corresponding `[extern]` in the parenthesizer.
@[export lean_mk_antiquot_parenthesizer]
def mkAntiquot.parenthesizer (name : String) (kind : SyntaxNodeKind) (anonymous := true) (isPseudoKind := true) : Parenthesizer :=
  Parser.mkAntiquot.parenthesizer name kind anonymous isPseudoKind

-- The parenthesizer auto-generated these instances correctly, but tagged them with the wrong kind, since the actual kind
-- (e.g. `ident`) is not equal to the parser name `Lean.Parser.Term.ident`.
@[builtin_parenthesizer ident] def ident.parenthesizer : Parenthesizer := Parser.Term.ident.parenthesizer
@[builtin_parenthesizer num] def numLit.parenthesizer : Parenthesizer := Parser.Term.num.parenthesizer
@[builtin_parenthesizer scientific] def scientificLit.parenthesizer : Parenthesizer := Parser.Term.scientific.parenthesizer
@[builtin_parenthesizer char] def charLit.parenthesizer : Parenthesizer := Parser.Term.char.parenthesizer
@[builtin_parenthesizer str] def strLit.parenthesizer : Parenthesizer := Parser.Term.str.parenthesizer

open Lean.Parser

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_pretty_printer_parenthesizer_interpret_parser_descr]
unsafe def interpretParserDescr : ParserDescr → CoreM Parenthesizer
  | ParserDescr.const n                             => getConstAlias parenthesizerAliasesRef n
  | ParserDescr.unary n d                           => return (← getUnaryAlias parenthesizerAliasesRef n) (← interpretParserDescr d)
  | ParserDescr.binary n d₁ d₂                      => return (← getBinaryAlias parenthesizerAliasesRef n) (← interpretParserDescr d₁) (← interpretParserDescr d₂)
  | ParserDescr.node k prec d                       => return leadingNode.parenthesizer k prec (← interpretParserDescr d)
  | ParserDescr.nodeWithAntiquot n k d              => return withAntiquot.parenthesizer (mkAntiquot.parenthesizer' n k (anonymous := true)) <|
                                                                node.parenthesizer k (← interpretParserDescr d)
  | ParserDescr.sepBy p sep psep trail              => return sepBy.parenthesizer (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.sepBy1 p sep psep trail             => return sepBy1.parenthesizer (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.trailingNode k prec lhsPrec d       => return trailingNode.parenthesizer k prec lhsPrec (← interpretParserDescr d)
  | ParserDescr.symbol tk                           => return symbol.parenthesizer tk
  | ParserDescr.nonReservedSymbol tk includeIdent   => return nonReservedSymbol.parenthesizer tk includeIdent
  | ParserDescr.unicodeSymbol tk asciiTk preserve   => return unicodeSymbol.parenthesizer tk asciiTk preserve
  | ParserDescr.parser constName                    => combinatorParenthesizerAttribute.runDeclFor constName
  | ParserDescr.cat catName prec                    => return categoryParser.parenthesizer catName prec

end Parenthesizer

namespace Formatter

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_mk_antiquot_formatter]
def mkAntiquot.formatter (name : String) (kind : SyntaxNodeKind) (anonymous := true) (isPseudoKind := true) : Formatter :=
  Parser.mkAntiquot.formatter name kind anonymous isPseudoKind

@[builtin_formatter ident] def ident.formatter : Formatter := Parser.Term.ident.formatter
@[builtin_formatter num] def numLit.formatter : Formatter := Parser.Term.num.formatter
@[builtin_formatter scientific] def scientificLit.formatter : Formatter := Parser.Term.scientific.formatter
@[builtin_formatter char] def charLit.formatter : Formatter := Parser.Term.char.formatter
@[builtin_formatter str] def strLit.formatter : Formatter := Parser.Term.str.formatter

open Lean.Parser

set_option compiler.ignoreBorrowAnnotation true in
@[export lean_pretty_printer_formatter_interpret_parser_descr]
unsafe def interpretParserDescr : ParserDescr → CoreM Formatter
  | ParserDescr.const n                             => getConstAlias formatterAliasesRef n
  | ParserDescr.unary n d                           => return (← getUnaryAlias formatterAliasesRef n) (← interpretParserDescr d)
  | ParserDescr.binary n d₁ d₂                      => return (← getBinaryAlias formatterAliasesRef n) (← interpretParserDescr d₁) (← interpretParserDescr d₂)
  | ParserDescr.node k _ d                          => return node.formatter k (← interpretParserDescr d)
  | ParserDescr.nodeWithAntiquot n k d              => return withAntiquot.formatter (mkAntiquot.formatter' n k (anonymous := true)) <|
                                                                node.formatter k (← interpretParserDescr d)
  | ParserDescr.sepBy p sep psep trail              => return sepBy.formatter (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.sepBy1 p sep psep trail             => return sepBy1.formatter (← interpretParserDescr p) sep (← interpretParserDescr psep) trail
  | ParserDescr.trailingNode k prec lhsPrec d       => return trailingNode.formatter k prec lhsPrec (← interpretParserDescr d)
  | ParserDescr.symbol tk                           => return symbol.formatter tk
  | ParserDescr.nonReservedSymbol tk _              => return nonReservedSymbol.formatter tk
  | ParserDescr.unicodeSymbol tk asciiTk preserve   => return unicodeSymbol.formatter tk asciiTk preserve
  | ParserDescr.parser constName                    => combinatorFormatterAttribute.runDeclFor constName
  | ParserDescr.cat catName _                       => return categoryParser.formatter catName

end Formatter
end PrettyPrinter
end Lean
```
