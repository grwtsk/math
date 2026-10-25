# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShellCohomology.Variant03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `774f66f860a643fefb99999df291ec9917afa2e1` · SHA-256 `03b97a9aeb410072a2c0c9e9ff71323c0035bbc2db5d7c27d66dfa863912d351`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.PhaseConnection

/-!
# Folder.Cellular.ShellCohomology

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: cellular.shell_cohomology
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def Cohomologous
    (A B : Cochain1 d k m) : Prop :=
  ∃ f : Cochain0 d k m, ∀ e, A e = B e + coboundary f e

structure ShellTorsionClass (d k m : Nat) where
  representative : Cochain1 d k m

def SameShellTorsionClass
    (A B : ShellTorsionClass d k m) : Prop :=
  Cohomologous A.representative B.representative

theorem exact_connection_same_as_zero
    (f : Cochain0 d k m) :
    Cohomologous (coboundary f) (fun _ => 0) := by
  refine ⟨f, ?_⟩
  intro e
  simp

structure TopShellCohomologyContract (d k m : Nat) where
  Class : Type _
  classOf : Cochain1 d k m → Class

end Cellular
end Folder
```
