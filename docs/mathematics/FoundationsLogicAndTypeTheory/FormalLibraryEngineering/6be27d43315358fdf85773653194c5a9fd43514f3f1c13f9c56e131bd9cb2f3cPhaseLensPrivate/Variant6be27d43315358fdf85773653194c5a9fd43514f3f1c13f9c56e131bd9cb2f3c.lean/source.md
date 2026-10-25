# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3cPhaseLensPrivate.Variant6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc70a83808f37e37312f64eea32553323332fde` · SHA-256 `6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
