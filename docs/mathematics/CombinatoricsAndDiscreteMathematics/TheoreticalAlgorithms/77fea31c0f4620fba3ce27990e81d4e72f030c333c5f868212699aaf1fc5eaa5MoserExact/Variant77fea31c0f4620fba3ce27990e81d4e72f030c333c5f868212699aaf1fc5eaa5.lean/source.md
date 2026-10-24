# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5MoserExact.Variant77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43b4d5c69c29f1e0524de9aeae38a0eb345e7db5` · SHA-256 `77fea31c0f4620fba3ce27990e81d4e72f030c333c5f868212699aaf1fc5eaa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.HadwigerNelson.Moser
import Mathlib.Data.Fin.SuccPred

namespace FormalResearch.HadwigerNelson

def FinitePointColorable (n : ℕ) : Prop :=
  ∃ f : Fin 7 → Fin n, ∀ i j, ‖moserPoint i - moserPoint j‖ = 1 → f i ≠ f j

lemma finitePointColorable_mono {m n : ℕ} (hmn : m ≤ n)
    (hm : FinitePointColorable m) : FinitePointColorable n := by
  obtain ⟨f, hf⟩ := hm
  refine ⟨fun i ↦ Fin.castLE hmn (f i), ?_⟩
  intro i j hij heq
  exact hf i j hij (Fin.castLE_injective hmn heq)

end FormalResearch.HadwigerNelson
```
