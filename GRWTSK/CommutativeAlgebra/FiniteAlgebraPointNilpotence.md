# Local nilpotence from an integral algebra image

Local attribution: grwtsk contributors.

Maintained source: [FiniteAlgebraPointNilpotence.lean](FiniteAlgebraPointNilpotence.lean).
Namespace: `GRWTSK.CommutativeAlgebra.FiniteAlgebraPointNilpotence`.

## Actual objects and statement

Let `O,B,C` be commutative rings, let `B,C` be `O`-algebras, and let
`K` be an `O`-algebra that is a field. Assume that the coefficient map
`O → K` is injective, represented by `[FaithfulSMul O K]`. Choose
actual algebra maps

\[
\psi:B\longrightarrow C,\qquad \sigma:B\longrightarrow K,
\]

and an element `p∈B` with `σ(p)=0`. The first theorem assumes a
nonzero polynomial `q∈O[X]` with `q(ψ(p))=0` and proves

\[
\exists b\in B,\quad \sigma(b)\ne0
\quad\text{and}\quad
\exists n\in\mathbb N,\quad \psi(bp^n)=0.
\]

The multiplier is explicitly constructed from a factor of the supplied
polynomial. The point `σ` need not factor through `ψ`. In particular,
the result applies when the point lies outside the quotient support;
the exponent zero is allowed.

The integral specialization assumes `IsIntegral O (ψ p)` and
`[Nontrivial O]`, so a monic nonzero annihilating polynomial exists.
The finite-image specialization assumes the actual subalgebra image
`ψ.range` is finitely generated as an `O`-module. This supplies
integrality of `ψ(p)`. It does not replace the algebra image with an
unspecified finite set or a presumed nilpotence bound.

## Exact graded source return

Let `A` be a commutative `O`-algebra with an integer grading
`𝒜 : ℤ → Submodule O A`, and let `I` be an ideal. The actual
degree-zero quotient image is the `O`-submodule

```lean
(𝒜 0).map (Ideal.Quotient.mkₐ O I).toLinearMap
```

The final theorem assumes that this submodule is finitely generated.
For `σ : 𝒜 0 →ₐ[O] K` and `p : 𝒜 0` with `σ p=0`, it proves

\[
\exists b\in A_0,\quad \sigma(b)\ne0,
\qquad \exists n\in\mathbb N,\quad bp^n\in I.
\]

This is the actual private `nilpotent_modulo_kernel` statement in
[LocLenQuotientWeightPieceLeOne.lean][source], with the finite-image
hypothesis `M2` expanded. The local specialization uses `Nontrivial O`
where the source assumes a domain. Homogeneity of `I`, a DVR,
completeness, characteristic zero, and algebraic closedness of `K`
are unnecessary for this particular implication. The later geometric
arguments retain their own hypotheses.

## Complete analytical proof

### 1. Separate the power of the root zero

Since `q` is nonzero, extract its full power of `X`:

\[
q(X)=X^n r(X),\qquad r(0)\ne0.
\]

The Lean proof uses the actual polynomial root multiplicity at zero.
Mathlib's factorization theorem gives `r` not divisible by `X`; its
`X_dvd_iff` identifies that with the nonvanishing constant coefficient
`r.coeff 0`. No division by `p`, `ψ(p)`, or another potentially zero
element occurs.

### 2. Evaluate the residual factor at the point

Set `b=r(p)∈B`. Evaluation commutes with the algebra map `σ`, so

\[
\sigma(b)=r(\sigma(p))=r(0),
\]

where the final constant is mapped from `O` to `K`. It remains nonzero
because the coefficient map is injective. This is the exact use of
the faithful coefficient action.

### 3. Evaluate the full relation in the target algebra

The given equation `q(ψ(p))=0` and the polynomial factorization give

\[
\psi(p)^n r(\psi(p))=0.
\]

Compatibility of polynomial evaluation with `ψ` identifies
`r(ψ(p))=ψ(b)`. Commutativity then yields `ψ(bp^n)=0`, as required.
The argument allows nilpotents and zero divisors in `B` and `C`.

### 4. Supply the relation from finite algebra image

If `ψ.range` is finitely generated as an `O`-module, every element of
that actual subalgebra is integral over `O`. Apply this to `ψ(p)`.
Integrality supplies a monic polynomial annihilating `ψ(p)`, and
nontriviality of `O` makes that monic polynomial nonzero. The preceding
three steps then apply.

### 5. Identify the degree-zero quotient image

For the graded specialization, use the actual composite

\[
\psi:A_0\hookrightarrow A\longrightarrow A/I.
\]

The proof constructs the first inclusion as an algebra homomorphism,
including its compatibility with the coefficient map. It proves that
the underlying `O`-submodule of `ψ.range` equals the displayed
degree-zero quotient image. This equality transfers the supplied finite
generation hypothesis to the general finite-image theorem. Finally,
`ψ(bp^n)=0` is exactly membership `bp^n∈I` by the kernel description
of the ideal quotient map.

## Consumer and remaining geometry

In the source length-one proof, this theorem first makes elements of
`ker σ` locally nilpotent modulo `I`. The source also applies it to
degree-zero quadratic pairings of homogeneous elements. It then needs
a separate reduction from nilpotence to actual local vanishing.

The [dehomogenization theorem](GradedDehomogenization.md) and its
[localization return](GradedDehomogenizationLocalization.md) now supply
the algebra following a genuine slice relation: multiplication by a
power of the dehomogenizing element is converted to a degree-zero
multiplier nonzero at `σ`. Producing the slice relation still requires
the actual tangent/rigidity and reduced-slice argument. These local
lemmas do not assume that input has been established.

The eventual length bound at most one also needs cyclicity and
annihilation by the local maximal ideal. After those inputs are proved,
the localized piece is a quotient of the residue field. This module
establishes the finite-image nilpotence input, not that complete
length-one conclusion, the Herbrand valuation comparison, `OneCharU_s`,
or RH/Dirichlet GRH. The [arithmetic audit](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md)
records the remaining exact source chain.

## Alternative comparison and hostile cases

One can obtain the monic relation for a finite algebra by applying
the determinant trick to a finite generating family and a matrix
expressing multiplication by `ψ(p)`. The maintained proof uses Mathlib's general
finite-subalgebra integrality theorem instead. Both approaches share
the decisive residual-polynomial argument and are not independent
foundational proofs. No novelty claim is made.

The two principal hypotheses have concrete failure tests:

- **A polynomial relation is necessary.** Take `O=K=ℚ`,
  `B=C=ℚ[X]`, `ψ=id`, `σ=eval₀`, and `p=X`. If `σ(b)≠0`, then
  `b≠0`; since the polynomial ring is a domain, `bX^n≠0` for every
  natural `n`. Thus the conclusion fails without the nonzero
  annihilating polynomial, integrality, or a hypothesis supplying it.
  A zero polynomial would annihilate everything and supply no useful
  replacement for `q≠0`.
- **Faithful coefficients are necessary.** Take `O=B=C=ℤ`, `ψ=id`,
  `K=𝔽₂`, `σ` reduction modulo two, and `p=2`. This element is
  integral and the algebra is finite over `O`, but `σ(b)≠0` implies
  `b≠0`, so `b2^n` cannot vanish in `ℤ`.
- **The point need not descend to the target.** Take `B=ℚ[X]`,
  `C=ℚ`, `ψ=eval₁`, `σ=eval₀`, and `p=X`. The multiplier `b=1−X`
  satisfies `σ(b)=1` and `ψ(b)=0`, so `n=0` is a valid witness. This
  is legitimate localization outside the quotient's support.

The exact formal control scope is recorded below.

## Declaration provenance

All declaration suffixes have the namespace given at the start.

| Declaration | Mathematical role |
|---|---|
| `exists_point_nonzero_mul_pow_map_eq_zero_of_polynomial` | Constructs the multiplier from a nonzero annihilating polynomial. |
| `exists_point_nonzero_mul_pow_map_eq_zero_of_isIntegral` | Supplies that polynomial from integrality of the actual image element. |
| `exists_point_nonzero_mul_pow_map_eq_zero_of_fg_range` | Supplies integrality from finite generation of the actual algebra image. |
| `exists_point_nonzero_mul_pow_mem_of_fg_degree_zero_image` | Exact graded quotient-image return corresponding to the source's private nilpotence lemma. |

The mathematical comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.

| Pinned source | Correspondence | SHA-256 |
|---|---|---|
| [LocLenQuotientWeightPieceLeOne.lean][source] | Private `nilpotent_modulo_kernel`, and its uses in local annihilation and cyclicity. | `fbd4cd271111e957575ff3514a0be7b74ca6d0be0c2dc48fe3e852ca8e7a0116` |
| [OrbitVanishingLocal.lean][conditions] | `M2` is exactly finite generation of the degree-zero quotient image. | `ba2f665873fc0708b75fcd3ae2cfc5ea127d7f159f58d39d012df5483fc15913` |
| [ToDegInjective.lean][objects] | Degree-zero ring, quotient-piece and localization objects used by the consumer. | `af6ef0b972e029cff93e557ee5e94d33f623e296189f9c7cc95cb03456edca2d` |

The source proves this argument directly inside the graded setting.
The local implementation separates the general polynomial, integral,
finite-image, and graded returns. It is original MIT-licensed source,
attributed to `grwtsk contributors`, and imports only root Mathlib.
No submitted implementation is copied or imported. Mathlib's upstream
authorship and licensing are retained. The comparison repository is a
source locator, not an attribution of the submitted mathematics to its
verification maintainers.

## Exact-source verification

Source base: `grwtsk/math@bc258a0ff05033c88fa4f03c41c008b7bc656a32`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Both final checks used stock Lean with
`--trust=0 -DwarningAsError=true` and the saved pinned dependency
environment. The maintained source passed with exit 0 and no diagnostics
in **4.342 seconds**. A separate imported audit passed with exit 0 in
**3.810 seconds**. It restates the actual graded `M2` endpoint without
a local predicate alias and queries all four public theorem axioms.
Every query reports exactly

```text
[propext, Classical.choice, Quot.sound]
```

The imported audit formally checks both failure examples above, the
explicit `n=0` witness outside the quotient support, and a concrete
application of the integral-image theorem with distinct evaluations at
zero and one. The polynomial control uses the actual polynomial ring;
the coefficient control uses the actual map `ℤ → ZMod 2`.

| Final artifact | SHA-256 |
|---|---|
| Maintained source and successful source snapshot | `5899803e10424bede95df25297b4cf786de12eb3883933dfd7d9b241a6f33296` |
| Produced and imported `.olean` | `38a5cf9a939a0b4ed0146889ad3abcfb38bfe6556ee4b715846e94dd3813ca17` |
| Successful imported audit | `bb0a9a4b83f89b52782f3ecb9becabc049808bdbd00b02beb864b6087be2e192` |
| Successful imported audit log | `573f180dacd5ec3bd482930e69f94c776c7d9a19e8b10f186c2c7caeafcc6d0b` |
| Saved verification environment | `d00f2e091fd82bbf07c46a203e8af8adbebdfc4086c4ebbf0faec0c53cac4ef4` |

The source and object were unchanged across their recorded checks.
The module contains four public theorems, no private theorem helpers,
and no new definitions. No root import or dependency pin changed.

### Retained failed attempts

All three earlier failures terminated with exit 1; none timed out.
Their exact snapshots and logs remain in the scratch evidence folder
`tmp/deh_advance_verification`. No failure is reclassified as `NOT_RUN`.

| Attempt | Seconds | Source SHA-256 | Diagnosis and repair |
|---|---:|---|---|
| `nilpotence_source1` | 3.509 | `527d64599cf6d6d9fdda7b714712a0a9f6537e9fd1a6ed2bec2fc998dad7be61` | The graded specialization requested a scalar-tower instance not supplied by the root environment; the preceding three generic proofs elaborated. |
| `nilpotence_source2` | 3.581 | `7bdbbd2277fbd1d6b8523c3784a6b98fd753621e3ecc753b02418672ed2b8e5d` | A source-style tower constructor encountered the `Submodule.smul`/`Algebra.toSMul` instance diamond. The final proof constructs the genuine degree-zero inclusion algebra map explicitly, with definitional field proofs. |
| `nilpotence_audit1` | 6.778 | `f0a651ccbf91bbd18738e26f2ad5a32932a8cc1330bcf4ed27f547424aa198b7` | All four axiom reports and the raw endpoint elaborated. The scratch modulo-two control needed its algebra-map expression reduced explicitly to `(2 : ZMod 2)=0`; the corrected control is decided directly. |

The successful source and audit keep the original mathematical
statements. The elaboration repairs add no hypotheses, admitted facts,
or arithmetic trust shortcuts to the maintained module.

Fresh full-dependency replay, an independently implemented kernel check,
and rebuilding the external arithmetic consumer with the local theorem
substituted are **NOT_RUN**.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/LocLenQuotientWeightPieceLeOne.lean
[conditions]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/OrbitVanishingLocal.lean
[objects]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/ToDegInjective.lean
