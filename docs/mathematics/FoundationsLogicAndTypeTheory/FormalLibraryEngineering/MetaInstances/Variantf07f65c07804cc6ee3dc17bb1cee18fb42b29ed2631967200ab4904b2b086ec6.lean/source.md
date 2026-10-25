# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetaInstances.Variantf07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58b93beff94cc72d15cdb5528c62506c0032d9ce` · SHA-256 `f07f65c07804cc6ee3dc17bb1cee18fb42b29ed2631967200ab4904b2b086ec6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Elab.ConfigEval.Commands
public import Lean.Elab.ConfigEval.Instances
import Lean.Elab.ConfigEval.DeriveEvalTerm
import Lean.Elab.ConfigEval.DeriveEvalExpr

/-!
# Derived evaluator instances for built-in Meta types

-/

public section

namespace Lean.Elab.ConfigEval

open Meta Term

ensure_eval_term_expr_instances ApplyNewGoals
ensure_eval_term_expr_instances EtaStructMode
ensure_eval_term_expr_instances TransparencyMode
ensure_eval_term_expr_instances Occurrences

end Lean.Elab.ConfigEval
```
