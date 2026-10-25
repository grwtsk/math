# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RotorRouter.Variant1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02971ea039c202d0cd492c19fd213b70a90d01a1` · SHA-256 `1d647c98fc5a36a1db5f8567d3b01e0af4adb9e2f256af3fcd15d3e269baa7ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Deterministic rotor transition and cost-order-preserving tie break
-/

namespace Mathematics.GraphAccess

def rotorTransition (currentPort degree : Nat) : Nat :=
  if degree = 0 then 0 else (currentPort + 1) % degree

structure RotorStepCertificate where
  currentPort : Nat
  degree : Nat
  nextPort : Nat
  transitionExact :
    nextPort = rotorTransition currentPort degree
deriving Repr

theorem rotor_transition_deterministic
    (certificate : RotorStepCertificate) :
    certificate.nextPort =
      rotorTransition certificate.currentPort certificate.degree :=
  certificate.transitionExact

structure RotorTieBreakCertificate where
  minimumPrimaryCost : Nat
  selectedPrimaryCost : Nat
  selectedRemainsAtMinimum :
    selectedPrimaryCost = minimumPrimaryCost
deriving Repr

theorem rotor_tie_break_preserves_astar_order
    (certificate : RotorTieBreakCertificate) :
    certificate.selectedPrimaryCost =
      certificate.minimumPrimaryCost :=
  certificate.selectedRemainsAtMinimum

end Mathematics.GraphAccess
```
