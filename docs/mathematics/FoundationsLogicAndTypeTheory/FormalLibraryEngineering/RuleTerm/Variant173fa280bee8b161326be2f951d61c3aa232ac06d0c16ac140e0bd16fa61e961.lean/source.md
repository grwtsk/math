# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTerm.Variant173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4147de809107b52e50c870c08c5f0a40203b1795` · SHA-256 `173fa280bee8b161326be2f951d61c3aa232ac06d0c16ac140e0bd16fa61e961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Aesop.Rule.Name

public section

open Lean Lean.Meta

namespace Aesop

inductive RuleTerm
  | const (decl : Name)
  | term (term : Term)
  deriving Inhabited

instance : ToMessageData RuleTerm where
  toMessageData
    | .const decl => m!"{decl}"
    | .term tm => m!"{tm}"

inductive ElabRuleTerm
  | const (decl : Name)
  | term (term : Term) (expr : Expr)
  deriving Inhabited

namespace ElabRuleTerm

instance : ToMessageData ElabRuleTerm where
  toMessageData
    | .const decl => m!"{decl}"
    | .term tm _ => m!"{tm}"

def expr : ElabRuleTerm → MetaM Expr
  | const decl => mkConstWithFreshMVarLevels decl
  | term _ e => return e

def scope : ElabRuleTerm → ScopeName
  | const .. => .global
  | term .. => .local

def name : ElabRuleTerm → MetaM Name
  | const decl => return decl
  | term _ e => getRuleNameForExpr e

def toRuleTerm : ElabRuleTerm → RuleTerm
  | const decl => .const decl
  | term t _ => .term t

def ofElaboratedTerm (tm : Term) (expr : Expr) : ElabRuleTerm :=
  if let some decl := expr.constName? then
    .const decl
  else
    .term tm expr

end Aesop.ElabRuleTerm
```
