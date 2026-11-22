# Square prime coordinates, group convolution, and an explicit positive Walsh spectrum

Source: [SquarePrimeFourierAddress.lean](SquarePrimeFourierAddress.lean).
Issue: [math #1846](https://github.com/grwtsk/math/issues/1846).

## Precise mathematics

The existing primary code C=ker H inside F₂^16 has cardinality
4096=2^12=64². The canonical beacon numbering is used to map to
`Fin 64 × Fin 64`; no arbitrary nonpersistent equivalence is assumed.
For any finite k, the exact product equivalence establishes a
2^k × 2^k square. Finite-stage growth is not infinite physical memory.

For x,y∈C, define d_H(x,y)=wt(x−y) and the integer-scaled kernel
K(x,y)=2^(16−d_H(x,y)). The new source proves that translating both
x and y by the same element of the actual beacon additive group
does not change K. Therefore the spatial matrix is convolutional
rather than an arbitrary dense 4096×4096 matrix.

## Full analytic spectral theorem — proved on paper, still NOT Lean-formalized

Characters χ_u(c)=(-1)^(u·c) are indexed by u mod C⊥.
C⊥ is the row space of the original four-bit parity-check matrix
and contains precisely 16 words. Orthogonality gives

  1_C(c)=(1/16) Σ_{v∈C⊥}(-1)^(v·c).

Consequently the eigenvalue of convolution with k(c)=2^(16−wt(c))
on the character χ_u is

  λ_u = Σ_{c∈C} k(c)χ_u(c)
      = (1/16) Σ_{v∈C⊥} Σ_{c∈F₂^16}
                        2^(16−wt(c))(-1)^((u+v)·c)
      = (1/16) Σ_{v∈C⊥} Π_{j=0}^{15}
                        (2+(-1)^((u+v)_j))
      = (1/16) Σ_{v∈C⊥} 3^(16−wt(u+v)) > 0.

The product identity follows independently in each binary coordinate:
weight 0 contributes 2; weight 1 contributes 1 with the character sign.

By Fourier inversion/orthogonality,

  Σ_{c,d∈C} f(c)K(c,d)f(d)
    = (1/4096) Σ_{u∈C^} λ_u |Wf(u)|²,

strictly positive for every nonzero real f. This is a coding-theory/
finite-Fourier theorem for the actual 16D atlas, not a theorem about
zeta, Dirichlet L-functions, or the signed Weil quadratic functional.

The normalized kernel k_ρ(c,d)=ρ^{d_H(c,d)} (0<ρ<1) should be
preferred for dimension-compatible embeddings. The integer scale
factor 2^16 in this file is dimension-dependent and would NOT remain
unchanged under an embedding to 64D.

## Independent exact-arithmetic tests and computational relevance

The script `scripts/verify_prime_walsh_kernel_16d.py` computes all
4096 Walsh eigenvalues using exact integers and checks the sixteen-term
dual-code identity for each. Expected minimum 6151, maximum 2696571,
28 distinct eigenvalues. Four different feature signals satisfy the
quadratic identity exactly, with direct pairwise controls when sparse.
The systematic parity encoder agrees with the increasing 16-bit
frozen-code order.

The full kernel action can be evaluated using a 4096-point Walsh
butterfly in O(4096·12) instead of O(4096²) dense arithmetic.
Optimizing a permutation of actual prime IDs remains a hard discrete
assignment problem. Mittelmann–Peng (SIAM J Optimization 2010)
establish SDP lower-bounding methods for related Hamming-distance QAP:
https://epubs.siam.org/toc/sjope8/20/6 .

## Limits and review

- The full 4096-element code C contains a weight-one element
  (the zero syndrome port). It is NOT a distance-four code.
  The 2048-element even-parity subcode has minimum distance four,
  useful for a smaller high-priority set.
- A PSD spatial kernel gives NO source-faithful signed Weil inequality
  without a separate exact L-function/explicit-formula comparison.
- Original prime IDs, versioned geometric placement, and mathematical
  proof objects remain different types; no claim of GPU/RAM locality.
- Source proof candidate; new Lean compilation, transitive axiom audit,
  independent kernel replay and mathematical review NOT_RUN.
- Root Lean 4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.


## Source boundaries
The complete Walsh eigenvalue theorem is proved algebraically in the adjacent mathematical exposition and exhaustively checked by independent finite integer computation. The newly authored Lean source proves a smaller kernel-translation invariant and square-addressing result, not the full positivity theorem. For Lean status, record NOT_RUN until the pinned toolchain executes.
