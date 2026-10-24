# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variantf3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13231c2e8a1b93230313d0b336a0f1471afa7a5d` · SHA-256 `f3f728f6475e285337e48433437004c6b73c7d953abde239ba38890e7321903b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Jan-David Salchow. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jan-David Salchow, Sébastien Gouëzel, Jean Lo
-/
import Mathlib.Analysis.NormedSpace.OperatorNorm.Basic
import Mathlib.Analysis.Asymptotics.Defs
/-!
# Asymptotic statements about the operator norm

This file contains lemmas about how operator norm on continuous linear maps interacts with `IsBigO`.

-/

open Asymptotics


variable {𝕜 𝕜₂ 𝕜₃ E F G : Type*}
variable [SeminormedAddCommGroup E] [SeminormedAddCommGroup F] [SeminormedAddCommGroup G]
variable [NontriviallyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] [NontriviallyNormedField 𝕜₃]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜₂ F] [NormedSpace 𝕜₃ G] {σ₁₂ : 𝕜 →+* 𝕜₂} {σ₂₃ : 𝕜₂ →+* 𝕜₃}

namespace ContinuousLinearMap

variable [RingHomIsometric σ₁₂] (f : E →SL[σ₁₂] F) (l : Filter E)

theorem isBigOWith_id : IsBigOWith ‖f‖ l f fun x => x :=
  isBigOWith_of_le' _ f.le_opNorm

theorem isBigO_id : f =O[l] fun x => x :=
  (f.isBigOWith_id l).isBigO

theorem isBigOWith_comp [RingHomIsometric σ₂₃] {α : Type*} (g : F →SL[σ₂₃] G) (f : α → F)
    (l : Filter α) : IsBigOWith ‖g‖ l (fun x' => g (f x')) f :=
  (g.isBigOWith_id ⊤).comp_tendsto le_top

theorem isBigO_comp [RingHomIsometric σ₂₃] {α : Type*} (g : F →SL[σ₂₃] G) (f : α → F)
    (l : Filter α) : (fun x' => g (f x')) =O[l] f :=
  (g.isBigOWith_comp f l).isBigO

theorem isBigOWith_sub (x : E) :
    IsBigOWith ‖f‖ l (fun x' => f (x' - x)) fun x' => x' - x :=
  f.isBigOWith_comp _ l

theorem isBigO_sub (x : E) :
    (fun x' => f (x' - x)) =O[l] fun x' => x' - x :=
  f.isBigO_comp _ l

end ContinuousLinearMap

namespace ContinuousLinearEquiv

variable {σ₂₁ : 𝕜₂ →+* 𝕜} [RingHomInvPair σ₁₂ σ₂₁] [RingHomInvPair σ₂₁ σ₁₂] (e : E ≃SL[σ₁₂] F)

section

variable [RingHomIsometric σ₁₂]

theorem isBigO_comp {α : Type*} (f : α → E) (l : Filter α) : (fun x' => e (f x')) =O[l] f :=
  (e : E →SL[σ₁₂] F).isBigO_comp f l

theorem isBigO_sub (l : Filter E) (x : E) : (fun x' => e (x' - x)) =O[l] fun x' => x' - x :=
  (e : E →SL[σ₁₂] F).isBigO_sub l x

end

section

variable [RingHomIsometric σ₂₁]

theorem isBigO_comp_rev {α : Type*} (f : α → E) (l : Filter α) : f =O[l] fun x' => e (f x') :=
  (e.symm.isBigO_comp _ l).congr_left fun _ => e.symm_apply_apply _

theorem isBigO_sub_rev (l : Filter E) (x : E) : (fun x' => x' - x) =O[l] fun x' => e (x' - x) :=
  e.isBigO_comp_rev _ _

end

end ContinuousLinearEquiv
```
