# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoMatching.Variantbb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f58210a968e3c9d5debfacbb9745632bbfc88314` · SHA-256 `bb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
import Lean.Elab.Command
open Qq Lean

-- TODO: this linter crashes on the `def` below
set_option linter.constructorNameAsVariable false in
def turnExistsIntoForall : Q(Prop) → MetaM Q(Prop)
  | ~q(∃ x y, $p x y) => return q(∀ x y, $p x y)
  | e => return e

/-- info: ∀ (x : String) (y : Nat), x.length ≤ y + 42 -/
#guard_msgs in
run_cmd Elab.Command.liftTermElabM do
  Lean.logInfo <| ← turnExistsIntoForall q(∃ a b, String.length a ≤ b + 42)
```
