# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompileInductive.Variant943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab8a5a2d4b2ef96c486bba5855bd0b6ee72157cf` · SHA-256 `943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Util.CompileInductive
import Mathlib.Data.Fin.Fin2

compile_inductive% Fin2

example := @Nat.rec
example := @List.rec
example := @Fin2.rec
example := @PUnit.rec
example := @PEmpty.rec

example := @Nat.recOn
example := @List.recOn
example := @Fin2.recOn
example := @PUnit.recOn
example := @PEmpty.recOn
example := @And.recOn
example := @False.recOn
example := @Empty.recOn

example := @Nat.brecOn
example := @List.brecOn
example := @Fin2.brecOn

example := @List._sizeOf_1

open Lean Elab Term

def tryToCompileAllInductives : TermElabM Unit := do
  let ivs := (← getEnv).constants.toList.filterMap fun | (_, .inductInfo iv) => some iv | _ => none
  let mut success : Nat := 0
  for iv in ivs do
    try
      withCurrHeartbeats <| Mathlib.Util.compileInductive iv
      success := success + 1
    catch | e => logError m!"[{iv.name}] {e.toMessageData}"
  modifyThe Core.State fun s =>
    { s with messages.unreported := s.messages.unreported.filter (·.severity != .warning) }
  modifyThe Core.State fun s => { s with messages := s.messages.errorsToWarnings }
  logInfo m!"{success} / {ivs.length}"

-- #eval Command.liftTermElabM tryToCompileAllInductives
```
