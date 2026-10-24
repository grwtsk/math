# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sticky.Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `447a6768b16d52c1e219e6bae512d888839ebc9b` · SHA-256 `de661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Sticky-Kakeya theorem input data.

What is certificate-gated:
The sticky estimate is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No sticky Kakeya theorem is proved here.
-/

/-- Sticky-Kakeya theorem input. -/
structure StickyKakeyaTheoremInput
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  stickyEstimate : Prop
  stickyEstimateCertified : stickyEstimate
  boundary : List String

def StickyKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    Prop :=
  S.wolffAxioms.usableForMajorProof ∧ S.stickyEstimate

theorem StickyKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    S.usableForMajorProof :=
  ⟨S.wolffAxioms.usableForMajorProof_of_fields, S.stickyEstimateCertified⟩

end Surface.Geometry.Kakeya
```
