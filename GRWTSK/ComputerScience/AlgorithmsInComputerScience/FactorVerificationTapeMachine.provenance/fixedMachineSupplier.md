# `GRWTSK.IntegerFactorization.TapeCalls.fixedMachineSupplier`

Local attribution: grwtsk contributors. Upstream authorship: OpenAI, Apache-2.0.

Local source: [FactorVerificationTapeMachine.lean](../FactorVerificationTapeMachine.lean).

OpenAI's November 24, 2026 *The logarithmic exponent of integer multiplication on tapes*, Theorem `thm:uniform-main`, supplies `OAI.Computability.NearSquareRoot.uniformIntegerMultiplication`. Its source is [the pinned solution entrypoint](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/Computability/NearSquareRoot/Main.lean), blob `1934cd4d58920bfd90aca66fca114b87df5482f5`.

The local theorem applies `supplier_of_spec` to the unconditional machine. The caller receives one fixed finite tape rule, valid for all operand widths, and its actual whole-tape outputs. The six-module original specification closure and the local conditional bridge elaborated on Lean 4.34.1 at the original Mathlib pin. A fresh empty-kernel replay passed for the three named local conditional declarations `supplier_of_spec`, `Supplier.histogram_bound` and `Supplier.check_eq`, covering 17,040 constants. At the expanded caller source, the six named roots including read/write staging and operand widths passed fresh empty-kernel replay over 17,074 constants; details and axiom scope are in the call-site record. The 2,326-module proof endpoint, its independent fresh kernel replay, full axiom audit and Comparator execution are `NOT_RUN` in this implementation. See the [call-site analysis, declaration correspondence and verification scope](../FactorVerificationTapeCalls.md).
