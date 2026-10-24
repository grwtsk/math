/-
# Uncompiled individually reviewed candidate: ReciprocalKernelConsumerProbe

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: 476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b
Organized source SHA-256: c03415f28a3416dcd9556c3e7144a5e0be6c21f64b12ba18537836f677bfd472
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.010.040 integration; editorial placement only.
All nine diagnostics are retained as explicit audit requirements. The three
original example types/proofs are retained as named theorems for direct auditing.
These requirements have not run and supply no fresh checker or axiom-query result.
All retained statements, explicit premises and proof/definition text are exact copies.
Namespace, candidate imports and any explicit ambient-context edits are receipted.
Original dependency selection, elaboration and proof checking remain unreplayed.
This candidate is outside the public umbrella. Lean and Lake have not been invoked.
-/

import GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Basic

namespace GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Checks.Audit.ConsumerProbe
open GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Basic MeasureTheory Set
-- Audit requirement: #check kernel_integrable
-- Audit requirement: #check kernel_integral_quarter
-- Audit requirement: #check sum_bounds
-- Audit requirement: #check frequency_sum_bounds
-- Audit requirement: #print axioms kernel_zero_sum
-- Audit requirement: #print axioms kernel_integrable
-- Audit requirement: #print axioms kernel_integral_quarter
-- Audit requirement: #print axioms sum_bounds
-- Audit requirement: #print axioms frequency_sum_bounds
theorem kernel_zero_sum_at_quarter : (∑' n : ℕ, kernel 0 (n + 1 / 4)) = 0 := kernel_zero_sum _
theorem kernel_integrable_at_quarter (b : ℝ) : IntegrableOn (kernel b) (Ioi (1 / 4)) :=
  kernel_integrable b (1 / 4) (by norm_num)
theorem kernel_one_at_quarter : kernel 1 (1 / 4) = 64 / 17 := by norm_num [kernel]

end GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Checks.Audit.ConsumerProbe
