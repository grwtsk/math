# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeVolume.Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06cb4dd53f4849563a2caf049af267239b0d724a` · SHA-256 `ac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Tube-volume lower-bound theorem input data.

What is certificate-gated:
The lower-bound statement is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No volume lower-bound theorem is proved here.
-/

/-- Quantitative tube-volume lower-bound theorem input. -/
structure TubeVolumeLowerBound
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  lowerBoundStatement : Prop
  lowerBoundCertified : lowerBoundStatement
  boundary : List String

def TubeVolumeLowerBound.usableForMajorProof
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    Prop :=
  V.wolffAxioms.usableForMajorProof ∧ V.lowerBoundStatement

theorem TubeVolumeLowerBound.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    V.usableForMajorProof :=
  ⟨V.wolffAxioms.usableForMajorProof_of_fields, V.lowerBoundCertified⟩

end Surface.Geometry.Kakeya
```
