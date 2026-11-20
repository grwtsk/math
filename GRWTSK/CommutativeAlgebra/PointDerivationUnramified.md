# Point derivations detect formal unramifiedness

Local attribution: grwtsk contributors.

Maintained source:
[PointDerivationUnramified.lean](PointDerivationUnramified.lean).
Namespace: `GRWTSK.CommutativeAlgebra.PointDerivationUnramified`.
Source base: `grwtsk/math@b09f7ac564b418c51d8062844bd3c9c81e3894db`.
Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

## Mathematical consumer and exact statement

The [graded slice tangent theorem](GradedSlicePointDerivation.md)
proves that every point derivation on the actual normalized and localized
slice vanishes, under the explicit `M4` hypothesis. This module supplies
the next implication: injective embeddings of maximal residue fields
turn that tangent statement into vanishing of the actual Kähler
differential module. Its consumer is
[FiniteTypePointRigidity](FiniteTypePointRigidity.md), which constructs
those embeddings and returns a finite point set and point separation
under the remaining finite-type and coefficient-inversion hypotheses.

Let `O`, `C`, and `K` be commutative rings, with `O`-algebra structures
on `C` and `K`. A point derivation at `ξ:C→ₐ[O]K` is an actual
`O`-linear map `D:C→ₗ[O]K` satisfying

\[
D(ab)=\xi(a)D(b)+\xi(b)D(a).
\]

Suppose the following two conditions hold:

1. For every maximal ideal `m` of `C`, there exists an **injective**
   `O`-algebra homomorphism `ι:C/m→K`.
2. At every point `ξ:C→ₐ[O]K`, every point derivation is zero.

If the actual `C`-module `Ω[C/O]` is finitely generated, then

\[
\Omega_{C/O}=0,
\qquad\text{hence}\qquad
\operatorname{Algebra.FormallyUnramified}(O,C).
\]

The finite-type specialization derives finite generation of the
differentials from `Algebra.FiniteType O C`. No noetherian hypothesis
on `O` or `C` is required. The stronger core assumes only
`Module.Finite C Ω[C⁄O]`.

The target `K` need not be a field, reduced, nontrivial, or algebraically
closed. Injectivity of the stated residue embeddings is retained.
The field used for linear-dual separation is the actual maximal
residue field `C/m`. The zero algebra is permitted; its lack of maximal
ideals introduces no gap in the finite-module argument.

## Primary analytical proof

### 1. Residue-valued linear maps are detected by point derivations

Write `Ω=Ω[C/O]` and let `d:C→Ω` be the universal derivation.
For an ideal `m` and an injective `O`-algebra map `ι:C/m→K`, take
an actual `C`-linear map

\[
F:\Omega\longrightarrow C/m.
\]

The quotient has its canonical `C`-module structure. Therefore

\[
\delta=F\circ d:C\longrightarrow C/m
\]

is a derivation. The maintained proof constructs this as
`F.compDer (KaehlerDifferential.D O C)`. Let `q:C→C/m` be the
quotient algebra homomorphism and set

\[
\xi=\iota\circ q,\qquad L=\iota\circ\delta.
\]

Applying the algebra homomorphism `ι` to the actual product rule for
`δ` gives

\[
L(ab)=\xi(a)L(b)+\xi(b)L(a).
\]

Thus the supplied tangent hypothesis gives `L=0`. Injectivity of `ι`
then gives `δ=0`. The elements `d(c)` span `Ω` as a `C`-module, so
the `C`-linear map `F` vanishes on a spanning set and is zero.

This part needs neither maximality of `m` nor finite generation of
`Ω`. It proves a separate public theorem for the genuine residue-valued
linear map, rather than assuming that point derivations detect all
differentials by definition.

### 2. Every maximal fiber of the differential module vanishes

Now take `m` maximal. The quotient `k=C/m` is a field, and the actual
quotient module

\[
V=\Omega/m\Omega
\]

is a `k`-vector space. If a class `\bar\omega` in `V` were nonzero,
linear-dual separation over the field `k` would give a `k`-linear
functional `φ:V→k` with `φ(\bar\omega)≠0`.

Compose `φ` with the quotient map:

\[
F:\Omega\longrightarrow V\xrightarrow{\ \varphi\ }k.
\]

After restricting scalars, this is exactly a `C`-linear map of the
kind handled in the first step. It must be zero, contradicting the
chosen nonzero value. Hence every class is zero and

\[
\Omega=m\Omega
\quad\text{for every maximal ideal }m.
\]

The Lean proof uses the equivalent formulation that every dual
functional kills every quotient class. `Module.forall_dual_apply_eq_zero_iff`
then kills that class. The quotient is literally
`Ω[C⁄O] ⧸ m • (⊤ : Submodule C Ω[C⁄O])`; it is not a replacement
vector space with an assumed detection property. No finite-dimensional
hypothesis is used in this dual-separation step.

### 3. Finite generation and Nakayama kill the global module

The module argument is proved separately for any finite module `M`
over a commutative ring `R`. Assume

\[
M=mM\quad\text{for every maximal ideal }m\subset R.
\]

If `Ann_R(M)` were proper, choose a maximal ideal `m` containing it.
The finite-module determinant form of Nakayama, applied to `M=mM`,
provides `r∈R` such that

\[
r-1\in m,\qquad rM=0.
\]

The second statement says `r∈Ann_R(M)⊆m`. Subtracting `r−1` from
`r` puts `1` in `m`, contradicting maximality. Thus the annihilator
is the whole ring. Its unit acts by zero, so `M=0`.

The actual Mathlib input is
`Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul`.
The module conclusion is `Subsingleton M`. Applying it to the finite
module `Ω` gives the exact data in
`Algebra.FormallyUnramified O C`.

An alternative presentation localizes `Ω` at each maximal ideal,
uses local Nakayama, and then uses vanishing of all maximal
localizations to kill `Ω`. It shares the same differential detection
and Nakayama inputs; it is not an independent mathematical proof or a
second independent verification.

## Hypothesis checks and scope boundaries

### Injective residue embeddings cannot be replaced by arbitrary maps

Let `O=ℚ`, `C=ℚ[X]`, and let `K` be the zero ring. Every residue
quotient has an `O`-algebra map into `K`, and every point derivation
with values in `K` is zero. Nevertheless `Ω[C/O]` is nonzero: the
ordinary polynomial derivation has value `1` on `X` and factors
through the universal derivation.

Thus existence of residue homomorphisms without injectivity would
make the proposed implication false. The imported audit compiles the
actual maps into `PUnit`, the zero point-derivation assertion, and
failure of formal unramifiedness for `ℚ[X]`.

The separate [residue-point record](FiniteTypeResiduePoints.md) also
checks the field-target obstruction: a reduced finite-type algebra
such as `ℂ/ℝ` can have no `ℝ`-valued points. The appropriate
algebraically closed target supplies compatible residue embeddings
in the later rigidity theorem.

### Finite generation is a genuine input to the module step

As a `ℤ`-module, `ℚ` is nonzero and is divisible by every nonzero
integer. For each prime `p`,

\[
p\mathbb Q=\mathbb Q,\qquad
\mathbb Q/p\mathbb Q=0.
\]

Since the maximal ideals of `ℤ` are the prime ideals `(p)`, all its
maximal residue fibers vanish while the module does not. The audit
checks the stronger divisibility statement for every nonzero integer
and checks `1≠0` in `ℚ`; the classification of the maximal ideals
is the stated analytical link to the maximal-fiber formulation.

This is a counterexample to dropping finite generation from the module
lemma. It is not presented as a counterexample to the entire algebra
criterion: `ℚ`, viewed as a `ℤ`-algebra, already has zero differentials.

### Relative formal unramifiedness does not imply absolute reducedness

Take the identity algebra `O=C=ℤ/4ℤ`. Its relative differential
module is zero, so it is formally unramified over itself. Yet `2`
is a nonzero nilpotent element. Both assertions are compiled controls.
The general conclusion here is therefore kept as formal unramifiedness.

The later [field-rigidity return](FiniteTypePointRigidity.md) uses the
actual fraction field of a coefficient domain before obtaining
reducedness and finite dimension. In general that finiteness is over
the fraction field, not over the original coefficient ring.

## Source correspondence and implementation scope

The mathematical source is the private `et_unram` in
[EtHolds.lean][et], pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
Its SHA-256 is
`f2c5fbe52de89015a446afccc25c2637dd35794692d1c4ce82a8d55f77d26f80`.
The source's `PtDer` carrier is in [ResMapBijective.lean][point],
SHA-256
`20e63b53f95a2cd6e41afdd9ed4269a42e59ae5fc934ab620109a7fd6fbbed2e`.
The downstream `hder` and `et_holds` application is in
[SliceHolds.lean][slice], SHA-256
`94ad21402a77fc958c4f53d9b543be425bc82a6b82f966e3245dcfa41d7a20ab`.

The local source is an original MIT implementation attributed to
`grwtsk contributors`, using root Mathlib's actual differential,
quotient, dual, and module objects. No external submitted module or
implementation is copied or imported. The source repository locates
the mathematical submission; it does not attribute manuscript
authorship to its verification maintainers.

| Fully qualified declaration suffix | Exact role |
|---|---|
| `subsingleton_of_maximal_smul_top` | General finite-module Nakayama return from all maximal fibers. |
| `residue_linearMap_eq_zero_of_pointDerivations` | Actual residue-valued linear-map detection by the universal derivation and an injective embedding. |
| `kaehler_le_maximal_smul_of_pointDerivations` | Vanishing of the actual maximal differential fibers by residue-field dual separation. |
| `formallyUnramified_of_finite_differentials` | Stronger criterion retaining only finite generation of the differential module. |
| `formallyUnramified_of_pointDerivations` | Exact finite-type `et_unram` return, generalized to a commutative target ring. |

All five declarations are public theorems in the namespace stated
above. There are no new definitions or private theorem helpers.
Algebraic closedness and coefficient faithfulness are not hidden in
this module; they belong to the later construction of residue points.

## Exact-source verification

Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The final maintained source passed
`--trust=0 -DwarningAsError=true`, exit 0 with no diagnostics, in
**11.374 seconds**. Source SHA-256:
`5130fba38d8639efca97bed5fca91e2c82dc64f3c390a0d4e555944c995a3f03`.
Produced object SHA-256:
`46174dc80976ad72fd0baf036dfaabec1e4687aa62754fbcb64b5400bdb1fadc`.

The imported endpoint/axiom/control audit passed the same flags,
exit 0, in **61.820 seconds**. Its source SHA-256 is
`f3a78e740191da913775bf0e001c30da3da0cb501ce22e3820db6ac655f2fa6b`;
its log SHA-256 is
`056a35e92c848f58f9ddcef6c99e86ddc27422605f61ab1ff6160815bb40969c`.
All five public theorem queries report exactly `propext`,
`Classical.choice`, and `Quot.sound`. There is no `sorryAx` or new
axiom declaration.

The audit reconstructs the source's actual point-derivation submodule
and checks the full `PtDer = ⊥` version of `et_unram`. It also checks
the stronger finite-differential-module endpoint with a commutative
target ring, the actual zero-ring residue homomorphisms and vanishing
point derivations for `ℚ[X]`, the polynomial derivation witnessing
failure of formal unramifiedness there, divisibility of the nonzero
`ℤ`-module `ℚ`, and the formally unramified identity algebra with a
nonzero nilpotent in `ℤ/4ℤ`. All compiled controls described above
are included in this passing imported audit.

Every attempt is retained with its exact source snapshot, command,
elapsed time, log, and before/after source and dependency identities:

| Attempt | Actual result | Explanation |
|---|---|---|
| Maintained source 1 | **FAIL**, exit 1, 33.279 s | An annihilator theorem needed explicit ring/module parameters; the `compDer` application needed definitional unfolding; the quotient-zero criterion needed rewriting rather than a partially inferred implication; two instance bindings triggered style warnings. |
| Maintained source 2 | **PASS**, exit 0, 11.374 s | Final source and object identities above; no diagnostics. |
| Imported audit 1 | **FAIL**, exit 1, 61.214 s | All five axiom queries and both main endpoints passed. Scratch controls had a structure-literal parser error, an unnecessary-simplification warning, and an unavailable integer scalar-action lemma name. |
| Imported audit 2 | **PASS**, exit 0, 61.820 s | Final complete imported audit and controls. |

The repairs changed neither theorem hypotheses nor mathematical
conclusions. Source 1 SHA-256:
`ddd02dd7797199d503e921af9d3b4e71df0a1eb159976b90b7402ae731802140`;
its failure log SHA-256:
`104c075facbdf07bae2ef5f8b4cd2e456c18ab4ddd687cbf2f6f934372920f8b`.
Audit 1 SHA-256:
`3ab16c45d57e011d86f727ccce76339817633a1a3f1fed3ca3bc965834ce8833`;
its failure log SHA-256:
`8d02a73a0abcbdfc2b75a40320d52fc16cf84124cfb7138c4051da518350199a`.
There were no timeouts or interrupted checks in this module's run set.

The source and object imported by the final audit match the final
maintained source and its produced object above. Both remain unchanged
across the audit. The shared verification-environment SHA-256 is
`0f16e93e990780c8723f4fe99223d968e50e4f6d42626cc682ff19cab6f8e35b`.
A fresh dependency-identity check verified the compiler, all nine
package heads and tracked source cleanliness, and unchanged root
imports, toolchain, and dependency configuration; its record SHA-256
is `d317d7a7ebfccecf8607534a3eb83cde96eaf6b62adb767fc43b818090f1fff0`.
Separate read-only mathematical/source and saved-evidence review
checks the argument and recorded identities; it does not constitute
another compiler or kernel execution.

Fresh full-dependency proof replay, independently implemented kernel
checking, and substitution into the external geometric consumer are
**NOT_RUN**. No root import or dependency pin changes are part of this
module.

[et]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/EtHolds.lean
[point]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/ResMapBijective.lean
[slice]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/SliceHolds.lean
