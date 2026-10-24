import GRWTSK.Algebra.LinearAlgebra.GaugeState
open GRWTSK.LinearAlgebra.GaugeState GRWTSK.Algebra
universe u v
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  X (n+1) = A n • X n ↔ gaugeState B X (n+1) = gaugeTransfer A B n • gaugeState B X n :=
  gaugeState_step_iff A B X n
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  gaugeState B X n = (B n)⁻¹ • X n := rfl
