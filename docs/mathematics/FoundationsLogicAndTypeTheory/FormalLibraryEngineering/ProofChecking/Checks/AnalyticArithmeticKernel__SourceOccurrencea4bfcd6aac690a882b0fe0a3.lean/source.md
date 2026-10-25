# Complete source: GRWTSK.Logic.ProofChecking.Checks.AnalyticArithmeticKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0447ad96d908b004b657d4c63df6ca20edee18c` · SHA-256 `74f4bcb562df868a0825d9c17fb180501d2f7e04853857ab5c3212b8213a3532`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.ProofEvidence.DirichletResponseStatus
import GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus
import GRWTSK.Analysis.CausalTranslation.ExponentialResponse
import GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence
import GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus
import GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates
import Lean.Util.CollectAxioms

/-! Audit public and private declarations in the mathematical namespaces.
This rejects any transitive axiom other than Lean's standard foundations.
It does not turn open obligations or conditional implications into proofs.
-/
open Lean Elab Command

def P04Audit.check : CommandElabM Unit := do
  let env ← getEnv
  let prefixes := #[`ASBNP04, `PPNC, `PPNCP04, `EulerP04RH, `HSSCP04]
  let permitted := #[`propext, `Classical.choice, `Quot.sound]
  let mut checked : ℕ := 0
  for (name, _) in env.constants.toList do
    if prefixes.any (fun nsRoot => nsRoot.isPrefixOf (privateToUserName name.eraseMacroScopes)) then
      let axioms ← collectAxioms name
      for axiomName in axioms do
        unless permitted.contains axiomName do
          throwError "Unapproved axiom {axiomName} in {name}"
      checked := checked+1
  logInfo m!"Kernel axiom audit passed for {checked} declarations."

run_cmd P04Audit.check
```
