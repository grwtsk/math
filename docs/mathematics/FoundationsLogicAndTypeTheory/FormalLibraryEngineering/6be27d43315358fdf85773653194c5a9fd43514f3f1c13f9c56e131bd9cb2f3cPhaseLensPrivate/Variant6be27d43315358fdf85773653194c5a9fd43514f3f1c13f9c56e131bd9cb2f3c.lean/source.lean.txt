import FormalResearch
open Lean Elab Command
elab "phase_audit_private " input:str : command => do
  let name := input.getString.splitOn "." |>.foldl (fun n s =>
    match s.toNat? with
    | some k => Name.num n k
    | none => Name.str n s) Name.anonymous
  let id := mkIdent name
  elabCommand (← `(command| #print $id:ident))
  elabCommand (← `(command| #print axioms $id:ident))

phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.sqrt_nat_pow"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.log_div_sqrt_cube_le"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.prime_inv_sqrt_le_three_quarters"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.higher_prime_weight_le"
