# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.KernelCorrespondence.Composition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6ee80904baeb988f9608f3402edeef1247e4419` · SHA-256 `aff4e4062867563413828b361adfa1247ee5ac6e22d5cf98934d1e5bb1272abd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Finite1Pipeline

/-!
Compose two kernel correspondences with the same intermediate map and zero.
This theorem neither identifies different source objects nor supplies a missing
bridge. Concrete users must separately prove their intermediate-map equality.
-/
namespace Finite1Composition

/-- Composition preserves both kernel maps and their inverse laws. -/
theorem compose {V W U : Type}
    (T : V → V) (S : W → W) (Q : U → U)
    (L₁ : W → V) (R₁ : V → W) (L₂ : U → W) (R₂ : W → U)
    (zV : V) (zW : W) (zU : U)
    (first : Finite1Pipeline.KernelCorrespondence T S L₁ R₁ zV zW)
    (second : Finite1Pipeline.KernelCorrespondence S Q L₂ R₂ zW zU) :
    Finite1Pipeline.KernelCorrespondence T Q
      (fun x => L₁ (L₂ x)) (fun v => R₂ (R₁ v)) zV zU := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro x hx
    exact first.1 (L₂ x) (second.1 x hx)
  · intro v hv
    exact second.2.1 (R₁ v) (first.2.1 v hv)
  · intro x
    exact (congrArg R₂ (first.2.2.1 (L₂ x))).trans (second.2.2.1 x)
  · intro v hv
    exact (congrArg L₁ (second.2.2.2 (R₁ v) (first.2.1 v hv))).trans
      (first.2.2.2 v hv)

end Finite1Composition

#print axioms Finite1Composition.compose
```
