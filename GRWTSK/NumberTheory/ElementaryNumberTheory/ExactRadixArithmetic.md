# Exact radix arithmetic: mathematical source record

Attribution: grwtsk contributors.

## Identity and consumer

- Repository: `grwtsk/math`.
- Path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ExactRadixArithmetic.lean`.
- Namespace: `GRWTSK.NumberTheory.ExactRadix`.
- Source SHA-256: `eeb9aef775aab274a7f7bc19d59d8722228676c1b9d8f6cab8e5fa56ec63d421`.
- Consumer: PGATN AT-002/AT-003; an exact natural-number reference semantics for the widening and unsigned integer routines in the separately maintained Rust reference implementation. An implementation correspondence is required before transferring these theorems to Rust execution.

## Statements and hypotheses

`radix128 = 2^128` and `radix128_ge_two` fix the physical digit radix. `split_exact` states, for every natural radix B and natural x, `x % B + B * (x / B) = x`, using Mathlib's exact division conventions. `mac_lt_square` assumes B>0 and a,b,r,c<B, all natural numbers, and concludes `a*b+r+c < B*B`. `mac_high_lt` concludes that the corresponding high quotient is below B.

The recursive algorithm theorems quantify over every B, every finite natural-number digit list, and every natural carry. `ofDigits_addCarry` decodes to the sum of the two input values and the initial carry; `ofDigits_mulDigit` decodes to a times the input value plus the carry; `ofDigits_mulDigits` decodes to the product. Their integer-value statements remain valid outside the canonical word domain; using the results as physical base-B words additionally requires B≥2, input word bounds and output word-bound/refinement proofs.

`ofDigits_normalize` preserves the decoded value, and `normalize_idempotent` makes a second canonical digit normalization inert. The source does not prove a signed Rust codec or an operational resource bound.

## Complete analytical argument and comparison

Euclidean division gives every local split exactly. The sharp widening estimate is `(B-1)^2+2*(B-1)=B^2-1`, attained when all four inputs are B-1. Therefore the local high quotient is a single base-B digit. `addCarry` decreases the sum of the two list lengths and emits the exact quotient/remainder at each step. Its base case uses `Nat.digits` to retain every terminal carry digit. Induction, the split identity, and distribution of multiplication by B prove the decoder invariant. The digit multiplier has the same induction. The full multiplier accumulates one digit row and a shifted recursive product; the two established invariants and distributivity prove its exact value.

A separate direct expansion of the finite product, `sum_i x_i B^i * sum_j y_j B^j = sum_(i,j) x_i*y_j*B^(i+j)`, explains the same semantics without relying on the specific recursion. Replacing each coefficient by its quotient/remainder preserves that expansion. This comparison is not a claim of prior-art novelty or independent external review.

The local two-word bound cannot be used for a whole unnormalized convolution column: three maximal products already exceed it when B>2. Nor can characteristic-two polynomial multiplication or truncated `u128` multiplication replace the integer multiplication interpreted here.

## Canonical sources

Pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Mathlib/Data/Nat/Digits/Defs.lean` and `Mathlib/Data/Nat/Digits/Lemmas.lean`, especially `Nat.ofDigits`, `Nat.digits`, `Nat.ofDigits_digits` and `Nat.ofDigits_cons`. These established radix definitions are imported rather than copied. The proof is elementary positional arithmetic; no new priority claim is made.

## Observed verification

On 2026-11-28, the exact source bytes above compiled at the canonical module path with Lean 4.34.1, binary commit `5045d0056413266e57c625dcd7c365b10e377c52`, and the pinned Mathlib revision. The transitive axiom audit passed with only `propext`, `Classical.choice` and `Quot.sound`; no placeholder axiom was present. `leanchecker --fresh` on the five-module PGATN verification bundle exited 0, reconstructing the relevant imported declarations in a fresh Lean kernel environment.

The detailed package verification manifest has SHA-256 `8c47a3c1016ccd44d83cf53a881788f03141de41e731f31d913c89a876967b5f`. Operational logs and the runner remain in the delivered PGATN verification package. This is same-kernel replay, not an independent implementation of Lean's checker. Independent external mathematical review and Rust refinement are not claimed.
