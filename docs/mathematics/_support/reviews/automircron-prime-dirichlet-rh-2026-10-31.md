# AutomircronKernel: prime-typed frames, reflected Dirichlet winding, and the actual Möbius causal source

Local attribution: grwtsk contributors. 2026-10-31.

## Requested source and nonnegotiable objective

The user supplied `Review RH Proof Paths.txt` and `Rewrite Mathematical Formalization Plan.txt`. The former identifies the exact unchanged causal response

  r_n(u) = 2 max(n^(-1/2) - exp(-u/2), 0), n>=1,

and original Möbius waveform F(u)=sum_{n<=exp(u)} mu(n)*r_n(u), its integrated complete signed Gram H(T)=int_0^T F(u)^2 du, and its original full ordered off-diagonal X(T). The birth-cell moment A_j=sum_{n=1}^j mu(n)/sqrt(n) combines with M_j and the real diagonal D_{j,0}, D_{j,1}, D_{j,2} to give

  p_j(x) = 4[(A_j-x M_j)^2 - sum_{n=1}^j mu(n)^2(n^(-1/2)-x)^2],
  x=exp(-u/2) on log j<=u<=log(j+1).

All ordered cross terms and zero-symbol squareful indices are retained. The endpoint quadrature E(T) has a source-candidate quarter-unit comparison with X(T). The missing RH-facing arithmetic estimate is a one-sided all-positive-rate upper bound for the signed endpoint sum on a set of affinely covering good scales (or dyadic bound D). A geometric/fiber model does not satisfy this target without a proved bound and a return map.

The radical-log identity in the second user file is a separate source topic. The current attached review says a signed-log-radical theorem already exists on main, though the shorter planning text records an older unresolved API probe. Nothing about the radical identity is assumed to cancel the causal Gram.

Current repository source read from `grwtsk/math/main` at baseline 1d70376fa7be2db482884324fb801271a22a2ea3; refreshed at publication:

* Actual response, Möbius and Gram: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`.
* The **already-existing** signed parity/d² fibers and classwise Abel cancellation: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`, blob `07dfdae4a60b05f5da55cc20882411c85444fa82`.
* The source Abel sample: `.../LogarithmicPickupSeries.lean`, blob `5506b20363b885d49107bc13f36c871cf92e853b`.
* Source five-moment/endpoint quadrature: `.../PickupEndpointQuadrature.lean`, blob `2606536c56bdcb33d120aeddfbcbeef793e31ba1`.
* Original residue-energy return: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/SignedWaveformEnergyResidueBridge.lean`, blob `ddb8620518968794c89cfa62a0b8f4c242c19f7a`.
* Existing *actual* dependent prime-typed carrier: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimeFiberFiniteTestTransport.lean`, blob `53efabe82d6a3bca895e125072c7efba65add1d1`. This source explicitly says it has not supplied a complete prime-to-original-observable typing.
* Related genuine causal mixed-tail: `LiouvilleDoubleAbelCausalKernel.lean`, blob `b102b4af07b0a1001424b084101c2cc16077181a`; issue #1531 keeps `KernelTailIdentity` visible and `UniformRectangularArithmeticSupplier` open.
* Source-dependent Putnam gap counting `MoebiusEndpointPutnamEnergyCounting.lean`, blob `e04dc68d2ca268d88d43725d0963c5414d216c6d`; dense signed core remains a supplier, not a theorem.

## Definitions in the proposed new typed interface

**AutomircronKernel** is a new research-interface name supplied by the user, not a previously established `Mathlib` declaration, physical kernel, or autonomous theorem prover. Its prime type is the existing `PrimeIndex={p:Nat // Nat.Prime p}`; the frame carrier is the dependent sum `Sigma (Fiber : PrimeIndex -> Type*)`. An automorphism is an equivalence *within each actual prime fiber*. It has a map from the typed state back to the original integer source label and a real signed Gram readout via the actual `pickupResponseGram`, including both Möbius coefficients. An **explicit** Gram defect measures the failure of a candidate frame to intertwine the unchanged source. The defect is zero if the original source index is preserved, but cannot be set to zero merely because the representation is called an automorphism.

The new no-go says: if the numerical source index is injective and the frame preserves that index, its action on states is the identity. Therefore a nontrivial source-preserving frame needs an index collision (multiple typed states for the same n) or an action with a *nonzero signed Gram defect*. This rules out the proposed strongest easy route to nontrivial RH cancellation by faithful source-index relabeling. Complete prime indexing of n>=2 and n=1 as a separate atom remain OPEN; no fake prime partition is used.

**flic** is the involutive reflection `v(a) -> v(-a)` on the exact residue readout axis `ZMod q`; it is *not* an involution of the original integer n or its causal weight.

**windDirichlet** is `sum_{a in ZMod q} chi(a) v(a)`, with the actual `Mathlib` type `DirichletCharacter ℂ q`. It is not a generic additive Fourier character: a Dirichlet character vanishes on nonunits. The full untwisted sum explicitly decomposes into units plus nonunits. The prime-dependent type, additive parity and d² axis, and Dirichlet modulus are not silently identified.

For the ACTUAL `A_j`, the parity and class-coordinate fibers are `classReciprocal d r a j`; the new module proves their finite reassembly into the original signed A_j, and its equality with `sampleResidue j + (sqrt j)^(-1) M_j`. The existing `classAbelSample_succ_sub` becomes a new **wound Abel increment**: multiplying the class increment by chi(a) and summing does not reintroduce the newest mu(j+1) coefficient that had already cancelled exactly. The physical right-end birth remains zero.

## The tested cancellation and its precise limits

For any modulus q>0, complex source fiber v and an actual Dirichlet character chi satisfying the pinned Mathlib predicate `chi.Odd` (equivalently chi(-a)=-chi(a) by `DirichletCharacter.Odd.eval_neg`), the finite residue reindexing gives

  windDirichlet(chi, flic(v)) = -windDirichlet(chi, v),
  windDirichlet(chi, v) + windDirichlet(chi, flic(v)) = 0.

This is a **new, exact signed reflection-sector cancellation lemma** (the source additionally proves `oddWind_of_mathlib_odd` and `odd_dirichlet_reflection_cancellation`) at the stated source-readout scope. It does not assume v(-a)=v(a). Nor does it imply windDirichlet(chi,v)=0, that the scalar A_j is small, or that the original complete signed cross-energy is reduced. The old original signed waveform still occupies the unweighted (trivial additive spectral) output; odd Dirichlet components alone cannot bound it. A genuine source arithmetic improvement would need an independently proved bound for the complete principal/symmetric sector plus its nonunit and mixed terms.

Numerical hostile controls with actual mu(n), n<=N, the exact class (n mod 2, floor(n/2) mod 9), and the odd mod-3 Dirichlet character inflated to 9 (zero on multiples of 3, ±1 on unit residue types):

| N | A_N | odd character wind | reflected-even odd wind | nonunit A component |
|---:|---:|---:|---:|---:|
| 3 | -0.28445705 | -1.28445705 | 0 | 1.00000000 |
| 8 | -0.70138683 | -0.83724345 | 0 | 1.03028382 |
| 20 | -0.91051173 | -0.08396412 | 0 | 0.52351799 |
| 50 | -0.82820727 | 0.82187353 | 0 | -0.30986241 |

These are floating-point diagnostics for finite N, not Lean validation or all-height bounds. Separate tests at N=1,2,3,5,8,12,20,32,50 checked the fiber sum A_N, M_N, actual response F(log N), ordered cross-density and odd-wind reflected-even cancellation; discrepancies were <1e-12. Their signed nonunit components show why a multiplicative character is NOT a complete source-basis without a retained correction.

A naive integer-label swap n=1 -> n=2 fails causal response intertwining already for u=log 3: the literal weights depend on n, not just on residue. Similarly, a physical Navier–Stokes spatial Fourier symmetry does not automatically act on the one-dimensional integer birth-time kernel of the RH source. A spiral/holonomy picture supplies no modulus-changing automorphism, Dirichlet functional equation or L-function return without explicit typed source maps, cocycles and defect bounds.

## Comparison of the four proposed research routes

1. Residue reflection: exact finite involution, and exact cancellation of the opposite-character projection; the original complete signed source still survives. No analytic rate gain.
2. Dirichlet winding: actual mathematical Dirichlet-character types are usable, and newest-coefficient cancellation survives each wind. Character support loses nonunits, so preserve their separate return. No Euler-product/GRH inference is asserted.
3. Holonomy: a path-dependent phase would require a loop space, a group action, cocycle law and explicit transport of the actual causal Gram. No such realization is established here; its defect must be retained.
4. Automorphic/prime frames: existing dependent prime fibers provide a typed carrier, but faithful numerical index-preserving automorphisms are necessarily trivial. A nontrivial symmetry must be justified on a richer arithmetic representation, with a source-bound return, not presumed from a name.

The genuinely new scoped findings are (i) the exact typed reflection/Dirichlet cancellation and wound Abel birth identity, and (ii) the faithful-index obstruction. The underlying finite reindexing and algebra are elementary; no independent-prior-art or priority claim is made. All original full ordered pairs, diagonal subtraction and endpoint curvature allowance stay unchanged. The old and new source proof candidates are not automatically kernel accepted.

## Toward the RH endpoint consumer

The needed next theorem is NOT another equivalence of residues. It is a proved one-sided quantitative estimate for the original signed endpoint sum (D), or an exact upper certificate U whose actual residual is bounded at every positive exponent on affinely covering scales. In the proposed frame route, one must bound the complete **principal/symmetric plus nonunit** source contribution and both orientations of every cross-fiber product after the original causal Gram, then pay any frame/intertwining defect and the old 1/4 endpoint approximation. A character-by-character bound on only odd/nonprincipal components is insufficient.

## Reproduction and evidence

New source candidates:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronPrimeKernel.lean`,
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronDirichletFrame.lean`.
Current observed main root pin: Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Dependencies are not migrated. New source publication commit/blobs must be established by GitHub readback. Source analysis and finite tests are DONE at described scope. New Lean compilation, expected-type consumer, fresh kernel checking, transitive axiom audit: **NOT_RUN**. No remote verification dispatch or acceptance claim.