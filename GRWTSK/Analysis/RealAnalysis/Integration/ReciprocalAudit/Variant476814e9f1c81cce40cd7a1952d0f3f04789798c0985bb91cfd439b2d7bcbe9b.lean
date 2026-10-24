import FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.Analysis.ReciprocalKernel MeasureTheory Set
#check kernel_integrable
#check kernel_integral_quarter
#check sum_bounds
#check frequency_sum_bounds
#print axioms kernel_zero_sum
#print axioms kernel_integrable
#print axioms kernel_integral_quarter
#print axioms sum_bounds
#print axioms frequency_sum_bounds
example : (∑' n : ℕ, kernel 0 (n + 1 / 4)) = 0 := kernel_zero_sum _
example (b : ℝ) : IntegrableOn (kernel b) (Ioi (1 / 4)) :=
  kernel_integrable b (1 / 4) (by norm_num)
example : kernel 1 (1 / 4) = 64 / 17 := by norm_num [kernel]
