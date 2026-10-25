# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fd6c0af6d7e204bbfd1c0e97fa80c818bf6f97c` · SHA-256 `95fceb73fa2c26f1266bc02859b68c0f6a725577a8529060c8f4982930271669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Sebastian Ullrich
-/
module

prelude
public import Lean.Parser.Command

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
