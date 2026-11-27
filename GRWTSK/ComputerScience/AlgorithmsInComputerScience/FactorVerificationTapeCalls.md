# Multiplication traces for certificate reconstruction

Local attribution: grwtsk contributors. Upstream authorship: OpenAI. Upstream code is Apache-2.0.

The unconditional source is Theorem `thm:uniform-main` in *The logarithmic exponent of integer multiplication on tapes*, November 24, 2026. The [solution entrypoint](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/Computability/NearSquareRoot/Main.lean) is Git blob `1934cd4d58920bfd90aca66fca114b87df5482f5`. The [worst-case specification](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/Computability/NearSquareRoot/UniformWorstCase.lean) is `4509743b5541d0ff2a1c374f11608d3da050d9c7`. The environment pins Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

All local names below are in `GRWTSK.IntegerFactorization.TapeCalls`. The concrete consumer is `GRWTSK.IntegerFactorization.WireCertificate.checkWith`, including failures while parsing, guarding, checking primality and comparing the final product.

| Local declaration | Supplier and consequence |
| --- | --- |
| `value_reverse_word` | The wire codec emits low bits first. Dividing by two and appending the low bit after reversal proves the upstream MSB-first `bitValue` reads the same natural, including leading zero padding. |
| `supplier_of_spec` | From `UniformWorstCaseSpec`, choose one finite-alphabet, finite-state, finite-tape rule, one attained worst-time function and one visited-space coefficient. Instantiate its full-width input theorem at each pair of natural operands. `Supplier.run` retains the initial configuration, steps through halt, blank-padded final output tape, exact double-width product and bound on visited pairs. |
| `fixedMachineSupplier` in `FactorVerificationTapeMachine.lean` | Apply the preceding deduction to `OAI.Computability.NearSquareRoot.uniformIntegerMultiplication`. No Weak ETH premise occurs in this source. |
| `Supplier.steps_le` | Every selected halting time belongs to the upstream set whose greatest element is the worst-time function at that width. |
| `Supplier.check_eq` | The supplier's exact binary product instantiates the existing full-domain caller-replacement theorem. Parsing, including trailing data, and every rejection return the same Boolean. |
| `tracedProduct_eq`, `products_length`, `call_count_le` | `productUsing` recursively multiplies each expanded prime with the product of the remaining suffix. Instrumenting that fold yields the same result and precisely the argument pairs recorded by the histogram. There is exactly one call per occurrence on a reconstruction path and zero on an early rejection. The guard bounds total occurrences by `n.log2`. |
| `Supplier.histogram_bound` | Sum the actual trace times, bound each by its attained width maximum, and group equal widths by multiplicity. The same caller cost is added on each side. |

For operands $a,b$ the chosen common width is the maximum of $1+\lfloor\log_2 a\rfloor$ and $1+\lfloor\log_2 b\rfloor$, with width one for zero. An admissible list can have the wrong product, so a bound using only the original input width would be invalid. Every suffix product still fits the conservative width `(n.log2 + 1)^2 + 1` by `WireCertificate.suffix_fits`. The function `calls` gives an input-specific width histogram. A malformed sequence may do zero work in multiplication while still incurring parsing cost.

The achieved bound covers stand-alone traces of the same selected rule invoked on fresh initial configurations. A whole verifier on a fixed bit machine still requires a costed caller that serializes inputs, reverses words, copies results from the tape, resets working tapes, checks primality and charges all remaining work to $R$. Physical scratch reuse needs its own space proof. A general asymptotic speedup also requires a matched-cost baseline. The declaration uses the unconditional upper bound and has no matrix or Fourier evaluator assumption.

A recursive import walk found 6 OAI source modules (27,355 bytes) for the exact `UniformWorstCaseSpec` and 2,326 OAI modules (12,174,419 bytes) for the proof-producing `Main`.

Compiling all six original specification modules in dependency order succeeded. Local Lean elaboration of the complete `FactorVerificationTapeCalls.lean` source against those objects and the certificate module succeeded, exit 0. The seven local queries for `value_reverse_word`, `supplier_of_spec`, `Supplier.steps_le`, `Supplier.check_eq`, `call_count_le`, `tracedProduct_eq` and `Supplier.histogram_bound` yielded a union of `propext`, `Classical.choice` and `Quot.sound`. The instrumentation theorem alone used only `propext`. This checks the conditional application to the actual upstream specification. The 2,326-module solution endpoint was not built in this run.

See [issue #1857](https://github.com/grwtsk/math/issues/1857) for exact source diagnostics. Independent mathematical review, the local endpoint build against the entire proof-producing provider closure, independent fresh kernel replay, transitive axiom audit and Comparator are outstanding.
