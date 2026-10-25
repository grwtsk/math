# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Builtin.Variant495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `683bd0f93378e2d6bd3b0c5cf3a4486c9954cc8d` · SHA-256 `495e1cf95261433ffb2257244f8b4abe2dd99e6710b766240030fcee818769a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König
-/
module

prelude
public import Lean.Linter.Util
public import Lean.Elab.Command

public section

namespace Lean.Linter

register_builtin_option linter.suspiciousUnexpanderPatterns : Bool := {
  defValue := true,
  descr := "enable the 'suspicious unexpander patterns' linter"
}

def getLinterSuspiciousUnexpanderPatterns (o : LinterOptions) : Bool := getLinterValue linter.suspiciousUnexpanderPatterns o

def suspiciousUnexpanderPatterns : Linter where
  run cmdStx := do
    unless getLinterSuspiciousUnexpanderPatterns (← getLinterOptions) do
      return

    -- check `[app_unexpander _]` defs defined by pattern matching
    let `($[$_:docComment]? @[$[$attrs:attr],*] $(_vis)? def $_ : $_ $[| $pats => $_]*) := cmdStx | return

    unless attrs.any (· matches `(attr| app_unexpander $_)) do
      return

    for pat in pats do
      let patHead ← match pat with
        | `(`($patHead:ident $_args*)) => pure patHead
        | `(`($patHead:ident))         => pure patHead
        | _                            => continue

      logLint linter.suspiciousUnexpanderPatterns patHead
        "Unexpanders should match the function name against an antiquotation `$_` so as to be independent of the specific pretty printing of the name."

builtin_initialize addLinter suspiciousUnexpanderPatterns

end Lean.Linter
```
