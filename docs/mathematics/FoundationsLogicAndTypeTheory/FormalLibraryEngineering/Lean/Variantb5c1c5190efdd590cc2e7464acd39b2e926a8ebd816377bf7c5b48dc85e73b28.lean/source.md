# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variantb5c1c5190efdd590cc2e7464acd39b2e926a8ebd816377bf7c5b48dc85e73b28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db1d56fbd201eae72ad393ad94929d0602e80fa2` · SHA-256 `b5c1c5190efdd590cc2e7464acd39b2e926a8ebd816377bf7c5b48dc85e73b28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Lean.Data
public import Lean.Compiler
public import Lean.Environment
public import Lean.Modifiers
public import Lean.ProjFns
public import Lean.Runtime
public import Lean.ResolveName
public import Lean.Attributes
public import Lean.Parser
public import Lean.ReducibilityAttrs
public import Lean.Elab
public import Lean.Class
public import Lean.LocalContext
public import Lean.MetavarContext
public import Lean.AuxRecursor
public import Lean.Meta
public import Lean.Util
public import Lean.Structure
public import Lean.PrettyPrinter
public import Lean.CoreM
public import Lean.ReservedNameAction
public import Lean.InternalExceptionId
public import Lean.Server
public import Lean.ScopedEnvExtension
public import Lean.DocString
public import Lean.DeclarationRange
public import Lean.LoadDynlib
public import Lean.Widget
public import Lean.Log
public import Lean.Linter
public import Lean.SubExpr
public import Lean.LabelAttribute
public import Lean.AutoDecl
public import Lean.AddDecl
public import Lean.Replay
public import Lean.PrivateName
public import Lean.LibrarySuggestions
public import Lean.Namespace
public import Lean.EnvExtension
public import Lean.ErrorExplanation
public import Lean.DefEqAttrib
public import Lean.Shell
public import Lean.ExtraModUses
public import Lean.OriginalConstKind
public import Lean.PostprocessTraces
```
