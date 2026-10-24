# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RearrangementCausalLoss.Variant1d3989fe8173cb78a34d1560e79f18c7d437bfc2f35a271adb0702b5e50da570

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1068ee3dbeb9814d5a17b7ae6bd312ca5a2cb6d4` · SHA-256 `1d3989fe8173cb78a34d1560e79f18c7d437bfc2f35a271adb0702b5e50da570`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# Complete value-distribution queries do not recover chronological reserves

Batch 05 AC05-14 keeps the superlevel distribution and scalar debt separate
from physical order. The literal signed two-panel packets (-a,a) and (a,-a)
agree on every value-only finite query, hence on every threshold count and
scalar total, but their positive causal maxima are zero and a. An arbitrary
decoder of all such queries cannot recover both causal maxima when a>0.
This is a finite information countermodel; neither packet is the prime path.

Human order/shape distinction: grwtsk contributors. Local complete-query hostile
control and Lean proofs: OpenAI Codex. Mathlib finite sum laws remain upstream.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.RearrangementCausalLoss

open scoped BigOperators

/-- The negative first in this module, with the following exact parameterization.

def negativeFirst (a : ℝ) : Fin 2 → ℝ := ![-a, a]
-/
def negativeFirst (a : ℝ) : Fin 2 → ℝ := ![-a, a]
/-- The positive first in this module, with the following exact parameterization.

def positiveFirst (a : ℝ) : Fin 2 → ℝ := ![a, -a]
-/
def positiveFirst (a : ℝ) : Fin 2 → ℝ := ![a, -a]
/-- The queries in this module, with the following exact parameterization.

def queries (f : Fin 2 → ℝ) : (ℝ → ℝ) → ℝ := fun φ => ∑ i, φ (f i)
-/
def queries (f : Fin 2 → ℝ) : (ℝ → ℝ) → ℝ := fun φ => ∑ i, φ (f i)
/-- The causal maximum in this module, with the following exact parameterization.

def causalMaximum (f : Fin 2 → ℝ) : ℝ := max (max (f 0) (f 0 + f 1)) 0
-/
def causalMaximum (f : Fin 2 → ℝ) : ℝ := max (max (f 0) (f 0 + f 1)) 0

theorem all_value_queries_agree (a : ℝ) :
    queries (negativeFirst a) = queries (positiveFirst a) := by
  funext φ
  simp only [queries, negativeFirst, positiveFirst, Fin.sum_univ_succ, Fin.sum_univ_zero,
    Matrix.cons_val_zero, Matrix.cons_val_succ, add_zero]
  exact add_comm _ _

theorem every_threshold_count_agrees (a t : ℝ) :
    (∑ i : Fin 2, if t ≤ negativeFirst a i then (1 : ℝ) else 0) =
      ∑ i : Fin 2, if t ≤ positiveFirst a i then (1 : ℝ) else 0 :=
  congrFun (all_value_queries_agree a) (fun x => if t ≤ x then 1 else 0)

theorem same_signed_total (a : ℝ) :
    (∑ i : Fin 2, negativeFirst a i) = 0 ∧ (∑ i : Fin 2, positiveFirst a i) = 0 := by
  simp [negativeFirst, positiveFirst, Fin.sum_univ_succ]

theorem different_causal_maxima {a : ℝ} (ha : 0 ≤ a) :
    causalMaximum (negativeFirst a) = 0 ∧ causalMaximum (positiveFirst a) = a := by
  simp [causalMaximum, negativeFirst, positiveFirst, max_eq_right (neg_nonpos.mpr ha),
    max_eq_left ha]

theorem no_value_query_decoder {a : ℝ} (ha : 0 < a) :
    ¬ ∃ decode : ((ℝ → ℝ) → ℝ) → ℝ,
      decode (queries (negativeFirst a)) = causalMaximum (negativeFirst a) ∧
        decode (queries (positiveFirst a)) = causalMaximum (positiveFirst a) := by
  rintro ⟨decode, hn, hp⟩
  rw [(different_causal_maxima ha.le).1] at hn
  rw [(different_causal_maxima ha.le).2, ← all_value_queries_agree a, hn] at hp
  exact ha.ne' hp.symm

end GRWTSK.RiemannHypothesis.Conversation.RearrangementCausalLoss
```
