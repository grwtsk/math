# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofChecking.Checks.AnalyticArithmeticKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d3bb96b716b8da8cb27c0018e9f992092d59b1` · SHA-256 `502f89312fff1932ad0018e79cbf78668dc3ac708157b932d529117400dd0c6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.DirichletResponseStatus
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusResponseStatus
import GRWTSK.Analysis.CausalTranslation.ExponentialResponse
import GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusPrimeShellStatus
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
