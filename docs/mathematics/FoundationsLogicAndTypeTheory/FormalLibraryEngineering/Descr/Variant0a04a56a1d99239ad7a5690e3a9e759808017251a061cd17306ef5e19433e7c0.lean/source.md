# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Descr.Variant0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b1b5b28b9593c91034bba000a653ff58f0562c3` · SHA-256 `0a04a56a1d99239ad7a5690e3a9e759808017251a061cd17306ef5e19433e7c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Aesop.RuleTac.Basic
public import Aesop.Forward.Match.Types
public import Aesop.Script.CtorNames

public section

open Lean Lean.Meta

namespace Aesop

inductive RuleTacDescr
  | apply (term : RuleTerm) (md : TransparencyMode)
  | constructors (constructorNames : Array Name) (md : TransparencyMode)
  | forward (term : RuleTerm) (immediate : UnorderedArraySet PremiseIndex)
      (isDestruct : Bool)
  | cases (target : CasesTarget) (md : TransparencyMode)
      (isRecursiveType : Bool) (ctorNames : Array CtorNames)
  | tacticM (decl : Name)
  | ruleTac (decl : Name)
  | tacGen (decl : Name)
  | singleRuleTac (decl : Name)
  | tacticStx (stx : Syntax)
  | preprocess
  | forwardMatches (ms : Array ForwardRuleMatch)
  deriving Inhabited

namespace RuleTacDescr

def forwardRuleMatches? : RuleTacDescr → Option (Array ForwardRuleMatch)
  | forwardMatches ms => ms
  | _ => none

end RuleTacDescr

end Aesop
```
