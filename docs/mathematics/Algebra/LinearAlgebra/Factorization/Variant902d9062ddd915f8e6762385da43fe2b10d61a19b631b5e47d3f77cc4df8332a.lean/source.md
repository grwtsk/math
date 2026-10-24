# Complete source: GRWTSK.Algebra.LinearAlgebra.Factorization.Variant902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba841bed0e4fe286acfb4335db5f0c6ea61704a2` · SHA-256 `902d9062ddd915f8e6762385da43fe2b10d61a19b631b5e47d3f77cc4df8332a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.PrimeComposite
import Surface.Legacy.BinaryLogicMatrix.MorphismFactorization
import Surface.Legacy.BinaryLogicMatrix.ProofAdapter

namespace Surface.Legacy

structure BinaryLogicMatrixFactorizationDescriptor where
  name : String
  certificate : FactorizationCertificate
  morphismBoundary : String
  theoremBoundary : String
  sound : Prop

theorem blmFactorizationDescriptor_sound
    (D : BinaryLogicMatrixFactorizationDescriptor) :
    D.sound -> D.sound := by
  intro h
  exact h

structure FinalTheoremFamily where
  codecBoundary : String
  morphismBoundary : String
  flowBoundary : String
  hypotheses : Prop
  conclusion : Prop
  transport : hypotheses -> conclusion

theorem finalTheoremFamily_sound (F : FinalTheoremFamily) :
    F.hypotheses -> F.conclusion := by
  intro h
  exact F.transport h

theorem finalTheoremFamily_boundaries_visible
    (F : FinalTheoremFamily) :
    F.codecBoundary = F.codecBoundary ∧
    F.morphismBoundary = F.morphismBoundary ∧
    F.flowBoundary = F.flowBoundary := by
  exact ⟨rfl, rfl, rfl⟩

end Surface.Legacy
```
