# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f3da819982fa62c4078fa898250832bf197bfb1` · SHA-256 `4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

/-!
# Authority noninterference

Traversal, finite observation, and realization proposals cannot close an
arithmetic or square-root obligation.
-/

namespace Mathematics.SemiLocalDefect

inductive EvidenceAuthority
  | accessSchedule
  | finiteObservation
  | reconstructedProposal
  | realizationCertificate
  | arithmeticCertificate
  | normCertificate
deriving DecidableEq, Repr

inductive MayClose :
    EvidenceAuthority →
      UnknownGroup → Prop
  | realizationArchimedean :
      MayClose .realizationCertificate
        .archimedeanBalance
  | realizationPositive :
      MayClose .realizationCertificate
        .positiveRealization
  | realizationSonin :
      MayClose .realizationCertificate
        .soninGeometry
  | finiteComputation :
      MayClose .realizationCertificate
        .finiteConnectorComputation
  | arithmetic :
      MayClose .arithmeticCertificate
        .arithmeticCorrespondence
  | squareRoot :
      MayClose .normCertificate
        .squareRootScale

theorem accessSchedule_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .accessSchedule group := by
  intro authority
  cases authority

theorem finiteObservation_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .finiteObservation group := by
  intro authority
  cases authority

theorem reconstructionProposal_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .reconstructedProposal group := by
  intro authority
  cases authority

theorem realization_cannot_close_arithmetic :
    ¬ MayClose .realizationCertificate
      .arithmeticCorrespondence := by
  intro authority
  cases authority

theorem realization_cannot_close_squareRoot :
    ¬ MayClose .realizationCertificate
      .squareRootScale := by
  intro authority
  cases authority

end Mathematics.SemiLocalDefect
```
