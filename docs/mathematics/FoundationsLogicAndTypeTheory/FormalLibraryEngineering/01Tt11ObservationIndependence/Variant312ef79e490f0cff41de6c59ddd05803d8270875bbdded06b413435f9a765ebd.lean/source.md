# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.01Tt11ObservationIndependence.Variant312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ad1102df72027a3d71ea139192f82f87341b5de` · SHA-256 `312ef79e490f0cff41de6c59ddd05803d8270875bbdded06b413435f9a765ebd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery

/-!
Adversarial cycle-11 boundary: target-occurrence data can be constructed for a
profile whose source admissibility proposition is false.  Therefore the
observation itself does not contain the recovered conclusion; TT-11 can reach
that conclusion only through its separately supplied reflection capabilities.
-/

namespace FCRS.Transport.Cycle11Probe

def ref {kind : ArtifactKind} (name : String) : ArtifactRef kind where
  authority := "cycle11-audit"
  localName := name
  version := "1"
  digest := "sha256:audit-probe"

def inadmissibleProfile : IntervalProfile Unit Unit where
  version := ref "profile"
  sourceTheorem := ref "source-theorem"
  domainVersion := ref "domain"
  lowerVersion := ref "lower"
  upperVersion := ref "upper"
  assumptionSet := ref "assumptions"
  orientation := .Forward
  sourceNotation := "probe"
  domain := fun _ => False
  lower := fun _ => ()
  upper := fun _ => ()
  lowerMode := .Closed
  upperMode := .Closed
  witnessQualifies := fun _ => True
  order := fun _ _ => False

def unitInterpretation : BinaryInterpretation Unit Unit Unit where
  version := ref "interpretation"
  sourceSystem := {
    version := ref "source-system"
    denotes := fun _ _ => True
  }
  targetSystem := {
    version := ref "target-system"
    denotes := fun _ _ => True
  }
  source := fun _ => ()
  target := fun _ => ()

def unitGraph : CoordinateGraph .Materialized Unit Unit where
  version := ref "graph"
  identityPolicy := .PairFunctional
  source := fun _ => ()
  target := fun _ => ()

def unitOccurrence : EdgeOccurrence unitGraph () () where
  occurrenceArtifact := ref "occurrence"
  edge := ()
  sourceVertex := { occurrenceArtifact := ref "source-vertex" }
  targetVertex := { occurrenceArtifact := ref "target-vertex" }
  sourceEquation := rfl
  targetEquation := rfl

def inadmissibleObservation : ReflectiveRecoveryObservation
    inadmissibleProfile () unitInterpretation unitGraph where
  witness := ()
  occurrence := unitOccurrence
  declaration := { declarationArtifact := ref "declaration" }

/-- The observation is inhabited while the recovered source proposition is false. -/
example : ¬ inadmissibleProfile.admissible () inadmissibleObservation.witness := by
  simp [IntervalProfile.admissible, inadmissibleProfile]

#print axioms FCRS.Transport.Theorems.tt11_reflectiveRecovery
#check FCRS.Transport.Theorems.tt11_reflectiveRecovery

end FCRS.Transport.Cycle11Probe
```
