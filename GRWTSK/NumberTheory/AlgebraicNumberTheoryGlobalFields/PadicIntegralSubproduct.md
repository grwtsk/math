# Integral factors and selected p-adic products

Local attribution: grwtsk contributors.

Maintained source: [PadicIntegralSubproduct.lean](PadicIntegralSubproduct.lean).
Namespace: `GRWTSK.NumberTheory.PadicIntegralSubproduct`.

## The local norm comparison

Let `p` be prime and use Mathlib's actual normed algebraic closure
`PadicAlgCl p`, whose norm extends the usual norm on `ℚ_[p]`. In
particular, `‖p‖ = 1/p`. Let `O,S` be finite index types, let
`f : O → S → ℂ` consist of algebraic integers, and fix an abstract field
equivalence `ι : PadicAlgCl p ≃+* ℂ`. For each `o`, choose a finite set
`X o` of objects and a class map `cl o : X o → S` that is injective.
The maintained theorem proves

\[
\left\|\iota^{-1}\!\left(\prod_{o\in O}\prod_{s\in S}f_{o,s}\right)\right\|_p
\le
\prod_{o\in O}\prod_{r\in X_o}
\left\|\iota^{-1}(f_{o,\operatorname{cl}_o(r)})\right\|_p.
\]

The exact Lean endpoint is:

```lean
theorem adicNorm_prod_le_prod_of_injective_classes (p : ℕ) [Fact p.Prime]
    (ι : PadicAlgCl p ≃+* ℂ) (O S R : Type*) [Fintype O] [Fintype S]
    (f : O → S → ℂ) (hint : ∀ o s, IsIntegral ℤ (f o s))
    (X : O → Finset R) (cl : ∀ o, ↥(X o) → S)
    (hcl : ∀ o, Function.Injective (cl o)) :
    ‖ι.symm (∏ o, ∏ s, f o s)‖ ≤
      ∏ o, ∏ r : ↥(X o), ‖ι.symm (f o (cl o r))‖
```

Injectivity is required separately within each orbit `o`. The same class
may occur in different orbits: the complete product includes a separate
copy for each orbit. The finite index families retain multiplicities;
they are not replaced by sets of distinct factor values. Empty families
are allowed, and no nonzero-factor hypothesis is needed for this norm
comparison.

## Analytical proof

### 1. Algebraic integrality survives the field map

An integral complex factor `f` satisfies a monic polynomial with integer
coefficients. Every unital ring map fixes integers and preserves finite
sums, products, and powers. Applying the map `ι.symm` to that polynomial
equation shows that `ι.symm f` satisfies the same monic equation in
`PadicAlgCl p`. The implementation uses `IsIntegral.map` with the map's
integer-algebra-homomorphism structure.

This transports algebraic identities and integrality. It does not
transport the complex norm. Indeed, for a prime integer `p`, an abstract
field equivalence fixes `p`, but its complex norm is `p` and its p-adic
norm is `1/p`. An isometry assertion would be false.

### 2. Integral p-adic factors lie in the valuation integer ring

Write `K = PadicAlgCl p` and let

\[
V=\{x\in K:\|x\|_p\le1\}
\]

be the integer ring of its actual valuation. If `x` is integral over
`ℤ`, its monic equation also has coefficients in `V`, by the canonical
map from `ℤ` to `V`. Thus `x` is integral over `V`. A valuation integer
ring is integrally closed in its ambient field, so `x` belongs to `V`.
Consequently `‖x‖≤1`.

The Lean proof applies `IsIntegral.tower_top`, then Mathlib's
`Valuation.Integers.isIntegral_iff_v_le_one` to
`Valuation.integer.integers`. The valuation used is `Valued.v` on the
actual `PadicAlgCl p`; its nonnegative-real value is definitionally the
norm `‖x‖₊`. The final cast converts the conclusion to a real inequality.
The [pinned Mathlib valuation result][mathlib-integral] supplies the
integral-closure argument.

This is a different local proof construction from the particular
[submitted norm supplier][external-norm], which argues from the leading
term of a monic polynomial. That alternative can be understood
directly: if `‖x‖>1`, the leading term `x^n` has greater norm than every
lower term `a_i x^i`, since integer coefficients have norm at most one
and `i<n`. The ultrametric inequality prevents the lower terms from
cancelling the leading term. Both arguments use standard valuation
mathematics; this comparison establishes neither novelty nor independent
foundations, and the valuation-ring method is not claimed to be absent
elsewhere in the submission. The imported Mathlib integral-closure
lemma itself uses a monic-polynomial argument, so this is a different
organization of the local proof, not an independent proof chain.

### 3. Omitting factors of norm at most one increases the product

For one orbit, injectivity identifies the selected indices with a finite
subset `T⊆S`. The complete norm product factors as

\[
\prod_{s\in S}\|f_s\|_p
=\left(\prod_{s\in T}\|f_s\|_p\right)
 \left(\prod_{s\in S\setminus T}\|f_s\|_p\right).
\]

Each factor of the second product lies in `[0,1]`, so that product is at
most one. Multiplication by the nonnegative selected product yields the
required inequality. This proof also covers zero factors and empty
subsets, without division. The implementation constructs the image
finite set with `Finset.univ.map` and uses
`Finset.prod_le_prod_of_subset_of_le_one₀`.

Apply this inequality to each orbit. Norms are nonnegative, so
multiplication preserves the inequalities. Multiplicativity of the norm
and preservation of the full product by `ι.symm` give precisely the
nested endpoint above.

## Natural scaling and the arithmetic consumer

Every natural integer `q` is integral over `ℤ`, hence `‖q‖_p≤1`. For
every natural exponent `e` and every `x` in the p-adic field,

\[
\|q^e x\|_p=\|q\|_p^e\|x\|_p\le\|x\|_p.
\]

This inequality requires neither `p∤q` nor `q≠0`; it also covers `e=0`
with the usual convention for powers. When `p∤q`, the rational p-adic
norm of `q` is exactly one. Mathlib's norm-extension theorem transfers
this equality to `PadicAlgCl p`, giving the exact normalization
`‖q‖_p=1` and thus exact cancellation of the scale.

The distinction matters for the [submitted arithmetic consumer][consumer],
`UpperTheory.GalN.V.Win.frobenius_trace_norm_nonzero_log_bound`. Its
integral factors are the actual scaled trace differences

\[
f_{o,s}=q^e(t_s-E(q,e,z_o)),\qquad
E(q,e,z)=q^{-e}z+1+q^ez^{-1}.
\]

The [integer-witness theorem](EisensteinTraceIntegerWitness.md) derives a
nonzero integer equal to their complete product. Applying the present
subproduct theorem bounds that integer's p-adic norm by the selected
scaled trace differences. The all-prime scaling inequality then bounds
this by the selected unscaled differences. If the source's original
`p∤q` hypothesis is retained, the last comparison is an equality.

This proves the local norm mechanism; it does not construct the
admissible-representation classifier or its injective class map. Those
remain inputs supplied by the arithmetic route. Removing coprimality
from this particular inequality does not remove it from other
representation, deformation, or threshold hypotheses. No global RH or
Dirichlet-GRH conclusion follows from this finite product lemma alone.

## Declaration correspondence

The six declarations below have the common fully qualified prefix
`GRWTSK.NumberTheory.PadicIntegralSubproduct.`

| Declaration | Maintained role |
|---|---|
| `norm_le_one_of_isIntegral_int` | An element of the actual p-adic field integral over `ℤ` has norm at most one. |
| `norm_prod_le_prod_of_injective` | A generic normed-field product comparison for factors of norm at most one and an injective finite selection. |
| `adicNorm_prod_le_prod_of_injective` | Transports integral complex factors through a ring map and applies the finite comparison. |
| `adicNorm_prod_le_prod_of_injective_classes` | Exact nested class-selection counterpart of the submitted theorem. |
| `norm_natCast_eq_one_of_not_dvd` | Exact natural-scale normalization under `p∤q`. |
| `norm_natCast_pow_mul_le` | Natural-power scale inequality for all primes and all natural bases. |

The submitted theorem is
`UpperTheory.adicNorm_prod_le_prod_of_injective_classes` in
[AdicNormProdLeProdOfInjectiveClasses.lean][external]. Its `Qbar p` is
definitionally `PadicAlgCl p`, by the abbreviation in
[Formalism.ConjugateSelfDual.Statement][alias]. Thus the maintained
statement uses the actual submitted mathematical field, rather than an
abstract replacement norm. The local statement permits arbitrary type
universes; the submitted types are in `Type`. The integral, finite, and
per-orbit injectivity hypotheses and the indexed product conclusion are
otherwise the same.

Mathematical correspondence pin:
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The relevant source SHA-256 digests are:

| Pinned source | SHA-256 |
|---|---|
| [Nested product theorem][external] | `3b6597409c8a93feb3c63955963d74c274b42dce51fca4c23429ff06f0e84b00` |
| [`Qbar` abbreviation][alias] | `8d249d25b306976cf622c4c79137456f46ee90aac3271b3647ee7cb217219dae` |
| [Monic-polynomial norm supplier][external-norm] | `8278dac02e5f7c63a57437e34e3020d4983eae95d0fed663940bc2bb239f286a` |
| [Frobenius trace-count consumer][consumer] | `f5f12124c715c51e4c7333d198f450ed138ab3f79c3b2f7d2891279f736ff53b` |

The local implementation is original, MIT licensed, and attributed to
`grwtsk contributors`. It imports no submitted Lean module and copies
no submitted implementation. Mathlib retains its upstream authorship
and licensing. The external repository identifies the compared source;
the verification mirror is not attributed as its author.

## Controls and source-bound verification

Source base: `grwtsk/math@d398a7cbc4e86691a1fdf5cf2cacf958e6568786`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`e0716a7c1d5708e1f0ee344cb9777542e194ff4934dd10931b6fc619d6e68e5c`.

- Maintained source compilation with `--trust=0` and
  `-DwarningAsError=true` passed, exit `0`, with no diagnostics, in
  84.203 seconds. An earlier ordinary compile of the same final bytes
  passed in 66.411 seconds.
- The final imported audit used the same trust and warning flags and
  passed, exit `0`, in 10.317 seconds. It restated the full nested
  endpoint independently and queried every public declaration's
  transitive axioms. All six lists contain exactly `propext`,
  `Classical.choice`, and `Quot.sound`; no additional axiom was reported.
- At `p=2`, the audit proves that omitting the singleton factor `1/2`
  gives the false target `2≤1`, and proves that this factor is not
  integral over `ℤ`. Thus dropping integrality would break the result.
- At `p=2`, it proves that the integral singleton factor `2`, selected
  twice, gives the false target `1/2≤1/4`. Thus injectivity cannot be
  discarded merely because the factors are integral.
- It verifies strict scale inequality for `q=2,e=1,x=1`, the general
  scale inequality at base zero, and exact unit normalization at
  `p=2,q=3`.
- Final audit SHA-256:
  `520ccb7f0dd8bfa67812716762ef1adbb1da26e68a637685e6a024a8303993a0`.

A separate agent reviewed the mathematical construction and confirmed
the actual field alias, per-orbit multiplicities, nonnegative product
comparison, integral transport, and the distinction between exact unit
normalization and the all-prime scale inequality. This is analytical
review of the local argument, not an independently implemented kernel
check or a review of the full submission.

Development failures are retained rather than relabeled as unperformed
checks. The first source attempt failed in 22.206 seconds: the
nonnegative-real notation scope was absent, and the pinned Mathlib's
real-product inequalities require the `₀`-suffixed API. Adding that
scope and choosing those real nonnegative product lemmas repaired the
implementation without changing its mathematical hypotheses. The first
scratch audit failed in 24.706 seconds on numeral-versus-natural-cast
elaboration for `2` and `0`. The second audit failed in 65.244 seconds
because broad simplification reduced an auxiliary norm-extension
equality to `True`. An explicit algebra-map cast and restricted
simplification repaired that audit. No run timed out. Failed source and
audit snapshots, hashes, commands, and logs remain outside the
maintained tree in this run's `tmp/padic_subproduct/` directory.

Fresh replay of the full dependency closure, an independently
implemented kernel check, and compilation of the external automorphic
consumer with these local declarations substituted are `NOT_RUN`.
The reported checks use the pinned existing dependency objects. Source
compilation, exact-target comparison, axiom auditing, and analytical
review do not replace those unperformed checks or establish acceptance
of the whole submitted proof.

With the pinned dependencies available:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/PadicIntegralSubproduct.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/BuildingsResidueChars/AdicNormProdLeProdOfInjectiveClasses.lean
[alias]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/ConjugateSelfDual/Statement.lean
[external-norm]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AbelianVarietyTheory/Proofs/SatakeParameters/ExistsEmbeddingPadicAlgClPlace.lean
[consumer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[mathlib-integral]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Valuation/Integral.lean
