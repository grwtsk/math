# Signed Möbius cutoff decomposition


Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex. MIT local contributions; Mathlib retains upstream credit and Apache-2.0 licensing.

For a commutative ring arithmetic function \(f\), an actual inverse relation \(f*g=1\), and natural closed cutoff \(U\), let \(f_{\le U}(n)=f(n)\mathbf1_{n\le U}\) and \(f_{>U}=f-f_{\le U}\). The exact convolution identity is
\[
f=f_{>U}*f_{>U}*g-f_{\le U}*f_{\le U}*g+2f_{\le U}.
\]
For the actual Möbius function, \(g=\zeta\). All constituent cutoffs remain closed. Above \(U\), the last coefficient vanishes. At or below \(U\), it is retained. Pointwise multiplication is not Dirichlet convolution.

The complete truncated output channels have both signs. Their outputs may be squareful even though the original Möbius coefficient then vanishes. The exact squareful cancellation and its weighted finite return retain those outputs. Restriction to squarefree outputs is valid only through that checked return, not by deleting terms of an energy estimate. Complex casts preserve the complete cutoff, signed difference and convolution coefficients.

## Sources and evidence

[MoebiusTruncation](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusTruncation.lean), [truncated coefficients](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean), [squareful return](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean), [squarefree weighted return](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean), and [complex casts](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean) have their own public source replay in the scoped receipt (artifact:gitblob:f72fbb68db984a168ddd5e028ae87559b79cc6d1). The identities do not assert a polynomial energy or local defect budget, and do not provide an unconditional RH witness.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean`](../../../../GRWTSK/NumberTheory/ArithmeticFunctions/SquarefreeMoebiusSum.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
