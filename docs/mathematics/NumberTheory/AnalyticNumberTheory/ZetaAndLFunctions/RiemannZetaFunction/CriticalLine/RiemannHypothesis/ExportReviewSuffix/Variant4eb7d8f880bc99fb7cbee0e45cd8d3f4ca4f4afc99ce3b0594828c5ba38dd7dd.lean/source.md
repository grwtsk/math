# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExportReviewSuffix.Variant4eb7d8f880bc99fb7cbee0e45cd8d3f4ca4f4afc99ce3b0594828c5ba38dd7dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f5a9bfcd7e4daa0586a91199010c2a6f5f9cc2d` · SHA-256 `4eb7d8f880bc99fb7cbee0e45cd8d3f4ca4f4afc99ce3b0594828c5ba38dd7dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

open FormalResearch.RiemannHypothesis.SourceKapitzaResidualCoefficient

/- Independent inspection driver; use known supported printer CLI options. -/
#eval IO.println "BEGIN_TYPE:residualPrimeSquareInventory"
#check @residualPrimeSquareInventory
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareInventory"
#print axioms residualPrimeSquareInventory
#eval IO.println "END_EXPORT:residualPrimeSquareInventory"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff"
#check @residualPrimeSquareCoeff
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff"
#print axioms residualPrimeSquareCoeff
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff"

#eval IO.println "BEGIN_TYPE:mem_residualPrimeSquareInventory"
#check @mem_residualPrimeSquareInventory
#eval IO.println "BEGIN_AXIOMS:mem_residualPrimeSquareInventory"
#print axioms mem_residualPrimeSquareInventory
#eval IO.println "END_EXPORT:mem_residualPrimeSquareInventory"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareInventory_subset"
#check @residualPrimeSquareInventory_subset
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareInventory_subset"
#print axioms residualPrimeSquareInventory_subset
#eval IO.println "END_EXPORT:residualPrimeSquareInventory_subset"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_nonneg"
#check @residualPrimeSquareCoeff_nonneg
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_nonneg"
#print axioms residualPrimeSquareCoeff_nonneg
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_nonneg"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_le_proper"
#check @residualPrimeSquareCoeff_le_proper
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_le_proper"
#print axioms residualPrimeSquareCoeff_le_proper
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_le_proper"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_le_log"
#check @residualPrimeSquareCoeff_le_log
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_le_log"
#print axioms residualPrimeSquareCoeff_le_log
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_le_log"

#eval IO.println "BEGIN_TYPE:product_ge_twenty_five_of_mem"
#check @product_ge_twenty_five_of_mem
#eval IO.println "BEGIN_AXIOMS:product_ge_twenty_five_of_mem"
#print axioms product_ge_twenty_five_of_mem
#eval IO.println "END_EXPORT:product_ge_twenty_five_of_mem"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareInventory_empty_of_lt_twenty_five"
#check @residualPrimeSquareInventory_empty_of_lt_twenty_five
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareInventory_empty_of_lt_twenty_five"
#print axioms residualPrimeSquareInventory_empty_of_lt_twenty_five
#eval IO.println "END_EXPORT:residualPrimeSquareInventory_empty_of_lt_twenty_five"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five"
#check @residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five"
#print axioms residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_eq_zero_of_lt_twenty_five"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareInventory_twenty_five"
#check @residualPrimeSquareInventory_twenty_five
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareInventory_twenty_five"
#print axioms residualPrimeSquareInventory_twenty_five
#eval IO.println "END_EXPORT:residualPrimeSquareInventory_twenty_five"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_twenty_five"
#check @residualPrimeSquareCoeff_twenty_five
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_twenty_five"
#print axioms residualPrimeSquareCoeff_twenty_five
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_twenty_five"

#eval IO.println "BEGIN_TYPE:residualPrimeSquareCoeff_twenty_five_pos"
#check @residualPrimeSquareCoeff_twenty_five_pos
#eval IO.println "BEGIN_AXIOMS:residualPrimeSquareCoeff_twenty_five_pos"
#print axioms residualPrimeSquareCoeff_twenty_five_pos
#eval IO.println "END_EXPORT:residualPrimeSquareCoeff_twenty_five_pos"

#eval IO.println "BEGIN_TYPE:primeSquare_twenty_five_mem_one_twenty_five"
#check @primeSquare_twenty_five_mem_one_twenty_five
#eval IO.println "BEGIN_AXIOMS:primeSquare_twenty_five_mem_one_twenty_five"
#print axioms primeSquare_twenty_five_mem_one_twenty_five
#eval IO.println "END_EXPORT:primeSquare_twenty_five_mem_one_twenty_five"

```
