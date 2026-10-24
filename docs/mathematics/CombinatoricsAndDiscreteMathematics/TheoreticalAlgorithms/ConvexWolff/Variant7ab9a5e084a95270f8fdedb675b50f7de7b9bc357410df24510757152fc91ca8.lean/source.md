# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConvexWolff.Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9161319a6a4d098487ab6e0b6c502f363203d808` · SHA-256 `7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Convex Wolff factorization as a theorem-input record.

What is certificate-gated:
The factorization statement is a Prop-valued input and requires Wolff
conditions.

What is not claimed:
No convex Wolff factorization theorem is proved here.
-/

/-- Convex Wolff factorization theorem input. -/
structure ConvexWolffFactorization
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  factorization : Prop
  factorizationCertified : factorization
  boundary : List String

def ConvexWolffFactorization.usableForMajorProof
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    Prop :=
  F.wolffAxioms.usableForMajorProof ∧ F.factorization

theorem ConvexWolffFactorization.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    F.usableForMajorProof :=
  ⟨F.wolffAxioms.usableForMajorProof_of_fields, F.factorizationCertified⟩

end Surface.Geometry.Kakeya
```
