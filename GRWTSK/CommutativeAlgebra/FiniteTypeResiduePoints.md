# Residue-field points and separation of a reduced Jacobson algebra

Local attribution: grwtsk contributors.

Maintained source: [FiniteTypeResiduePoints.lean](FiniteTypeResiduePoints.lean).
Namespace: `GRWTSK.CommutativeAlgebra.FiniteTypeResiduePoints`.

This module supplies the actual maximal-residue-field embeddings and
point-separation argument needed by the finite-type point-derivation
rigidity return. It reconstructs the private `et_point` result and the
Jacobson/reduced tail of the pinned [EtHolds.lean][external]. Its primary
generic theorem detects each nonzero element by an actual algebra map;
the all-points-zero conclusion follows from that detection statement.

## Actual mathematical objects and hypotheses

### Maximal residue fields

Let `E` and `K` be fields, with an `E`-algebra structure on `K`, and assume
that `K` is algebraically closed. Let `C` be a commutative `E`-algebra of
finite type. For every maximal ideal `m` of `C`, the module proves

\[
\exists\,\iota:C/m\longrightarrow K
\quad\text{an injective }E\text{-algebra homomorphism}.
\]

The formal domain is the genuine `Ideal.Quotient` type `C ⧸ m`, with its
induced `E`-algebra structure. Maximality gives this quotient an actual
field structure. No replacement residue object or abstract point
predicate is introduced. Reducedness of `C` is not required here.

### Generic separation

For the more general point-detection statement, `O`, `K`, and `C` are
commutative rings; `C` and `K` are `O`-algebras. Assume:

- `C` is Jacobson;
- `C` is reduced;
- for every maximal ideal `m` of `C`, there is an injective
  `O`-algebra map `C ⧸ m →ₐ[O] K`.

Then every `x ≠ 0` is detected by an actual point:

\[
x\ne0\quad\Longrightarrow\quad
\exists\,\xi:C\to_O K,\qquad \xi(x)\ne0.
\]

Consequently,

\[
\left(\forall\xi:C\to_O K,\ \xi(x)=0\right)
\quad\Longrightarrow\quad x=0.
\]

The target `K` in this generic theorem need not be a field. Its explicit
residue embeddings already provide the injectivity needed in the
argument. No finite-type assumption, characteristic assumption, or
finite point-set assumption is added to this generic statement.

The finite-type-over-a-field specializations obtain both Jacobsonness
and the residue embeddings from the first set of hypotheses, retaining
reducedness of `C`. All type universes are generalized from the source's
`Type` spelling to `Type*`.

## Primary analytical proof

### 1. Construct the residue-field embedding

Fix a maximal ideal `m`. The quotient `L = C/m` is a field. It remains
a finite-type `E`-algebra because the quotient map is surjective.
Zariski's lemma makes `L` finite-dimensional over `E`, hence algebraic.

An algebraic extension of `E` embeds over `E` into the algebraically
closed extension `K`. The proof uses Mathlib's actual algebraic-extension
embedding `IsAlgClosed.lift`. The resulting unital homomorphism is
injective because its domain is a field and its target is nontrivial.
It is an `E`-algebra map, so compatibility with the coefficient field is
part of the produced object.

The finite-dimensionality step is supplied by the root Mathlib theorem
`finite_of_finite_type_of_isJacobsonRing`; fields are Jacobson. This is
the precise Zariski-lemma input, not an assumption that the residue field
is already the base field. The target may be a larger algebraically
closed extension, and the proof does not choose a canonical embedding.

### 2. Find a maximal ideal that avoids a nonzero element

For a Jacobson ring, the Jacobson radical of a radical ideal equals that
ideal. Reducedness makes the zero ideal radical. Thus

\[
\bigcap_{m\text{ maximal}}m=\operatorname{Jac}(0)=0.
\]

If `x ≠ 0`, then `x` does not belong to that intersection. There is
therefore a maximal ideal `m` with `x ∉ m`. In the genuine quotient,

\[
\overline{x}\ne0\quad\text{in }C/m.
\]

This is the only place the combination of Jacobsonness and reducedness
enters the generic proof. No local reducedness or nilpotence conclusion
is substituted for this actual global intersection identity.

### 3. Compose the quotient with the embedding

Choose the supplied injective map `ι:C/m→ₒK`. Define

\[
\xi=\iota\circ q_m,
\qquad q_m:C\to C/m.
\]

Both maps preserve the `O`-algebra structure, so `ξ` is a genuine
`O`-algebra point. Since `ι` is injective and `q_m(x) ≠ 0`,

\[
\xi(x)=\iota(\overline{x})\ne0.
\]

The Lean proof constructs precisely
`ι.comp (Ideal.Quotient.mkₐ O m)`. If its value were zero, injectivity
of `ι` would imply `Ideal.Quotient.mk m x = 0`, and
`Ideal.Quotient.eq_zero_iff_mem` would contradict `x ∉ m`.

### 4. Obtain separation and the finite-type specialization

Suppose every point sends `x` to zero. If `x` were nonzero, Step 3
would provide a point with nonzero value, a contradiction. This proves
the all-points-zero return. Applying it to `x-y` also proves that the
evaluation map

\[
C\longrightarrow \prod_{\xi\in\operatorname{Hom}_{O\text{-alg}}(C,K)}K,
\qquad x\longmapsto(\xi(x))_\xi
\]

is injective. The imported audit checks this actual evaluation map.

A finite-type algebra over a field is Jacobson. Combining that result
with Step 1 gives the final two specialized theorems over `E`, with
`K` algebraically closed and `C` reduced.

One can instead prove that an element killed by every point belongs to
every maximal ideal and then intersect those ideals. That is the same
Jacobson/residue-embedding argument in the opposite order; it is not an
independent analytical proof. The source uses that direct intersection
order, while this reconstruction exposes the nonzero-point witness first.

## Missing-hypothesis checks

### An inadequate target can make the point set empty

Take `E = K = ℝ` and `C = ℂ`. The algebra `C` is reduced and finite
over `E`, but there is no `ℝ`-algebra map `ℂ→ℝ`: the image of `i`
would have square `−1` in `ℝ`. Hence the condition that every such
point kills `1` is vacuously true even though `1 ≠ 0`.

This is a counterexample to removing the adequate-target/residue-embedding
hypothesis. It is not a counterexample to a theorem whose `K` is
algebraically closed. The imported control spells out finite type and
reducedness of the actual complex algebra and proves the no-points
obstruction from `i²=−1` and nonnegativity of real squares.

### Nilpotents are invisible to field-valued points

Let `K` be algebraically closed and use the actual dual-number algebra

\[
C=K[\varepsilon]/(\varepsilon^2).
\]

It is finite-dimensional, hence finite type and Jacobson. The residue-field
embedding theorem applies even though `C` is not reduced. Nevertheless,
every field-valued algebra point kills `ε`, because its image squares to
zero in a field. The element `ε` is nonzero: its second coordinate in
the square-zero extension is one.

The imported control uses Mathlib's genuine `DualNumber K`; it verifies
finite type, Jacobsonness, the embeddings of all maximal residue fields,
the nonzero square-zero element, and its vanishing at every `K`-point.
This isolates reducedness in the separation theorem. The later formal
unramifiedness argument separately supplies reducedness for its own
consumer, so this example is not presented as a counterexample to that
combined theorem.

### Reducedness and residue embeddings do not replace Jacobsonness

Let `K` be algebraically closed and consider the local domain

\[
C=K[t]_{(t)}.
\]

Its unique maximal residue field is `K`, so the required residue embedding
exists. Every `K`-algebra point sends `t` to zero: if its value were
`a ≠ 0`, then `t-a`, which is inverted in this localization, would have
zero image. That contradicts preservation of units. Thus the nonzero
element `t` vanishes at every `K`-point.

Here `C` is reduced but not Jacobson: the intersection of its maximal
ideals is `(t)`, not zero. Consequently it is not finite type over `K`,
since finite type over a field would make it Jacobson. This is an
explicit analytical control; its local-ring construction is not claimed
as a compiled Lean fixture in this pass.

### The conclusions do not count points

The reduced finite-type algebra `K[T]` has a point `T↦a` for every
`a∈K`. The present results therefore do not assert that the set of points
is finite. The later rigidity return needs the separately proved
finite-dimensionality of the algebra to obtain finiteness of its
algebra-homomorphism set. The zero algebra is also allowed by the
statements: existence of a detecting point is conditional on a nonzero
element, and the all-points-zero conclusion is then valid vacuously.

## Consumer and source correspondence

The finite-type point-rigidity consumer first puts the fraction field
`E = FractionRing O` into the actual coefficient towers. The theorem
`exists_residueField_embedding` then supplies an `E`-embedding of each
maximal residue field. Restricting scalars gives the exact `O`-embedding
input for the Kähler-differential argument.

After that argument supplies formal unramifiedness, the field-based
theorems supply reducedness. Jacobsonness follows from finite type over
`E`, and `eq_zero_of_all_points` gives the source's separation conclusion
for the original `O`-algebra points. Thus this module supplies both ends
of that argument without assuming its intermediate differential result.

| Local declaration | Source role and actual conclusion |
|---|---|
| `exists_residueField_embedding` | The private `et_point` endpoint: an injective coefficient-compatible homomorphism from each actual maximal residue field. |
| `exists_point_ne_zero_of_jacobson` | Exposes the maximal-ideal detection step implicit in the point-separation tail of `et_holds`. |
| `eq_zero_of_all_points` | The generic all-points-zero return, with Jacobsonness, reducedness, and maximal residue embeddings explicit. |
| `exists_point_ne_zero_of_finiteType` | Supplies the Jacobson and residue-embedding premises from finite type over a field and algebraic closedness of the target. |
| `eq_zero_of_all_points_of_finiteType` | The corresponding direct separation endpoint for a reduced finite-type field algebra. |

There are five public theorems, no private maintained helpers, and no new
object definitions. The implementation is original MIT-licensed source
attributed to `grwtsk contributors`, importing root Mathlib. No submitted
implementation or external custom tactic is copied or imported.

The comparison is pinned to
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The compared [EtHolds.lean][external] has SHA-256
`f2c5fbe52de89015a446afccc25c2637dd35794692d1c4ce82a8d55f77d26f80`.
This identifies the submitted mathematical source without attributing
its authorship to the repository's verification maintainers.

The root Mathlib revision is
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The used Zariski and
Jacobson results are in [Jacobson/Ring.lean][jacobson]; the algebraic
extension embedding is in [IsAlgClosed/Basic.lean][closed]. These are
existing primary dependencies, not newly established theorems of this
continuation.

## Exact-source verification

Verification source base:
`grwtsk/math@b09f7ac564b418c51d8062844bd3c9c81e3894db`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`;
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The final maintained source passed `--trust=0 -DwarningAsError=true`,
exit 0 with no diagnostics, in **31.973 seconds**. Its source SHA-256 is
`b83a0f173cd57ce06abbd5358b515c6a410acfaea6d0fd0f64c35a75bfc88128`;
the produced object SHA-256 is
`9feba70d00633926043383ec89b406f9e2a1f609abd1b2505b97ac8d95ca273c`.
The imported endpoint/axiom/control audit passed the same flags, exit 0,
in **55.508 seconds**. All five public theorem axiom reports are exactly
`[propext, Classical.choice, Quot.sound]`.

The audit checks the explicit maximal-residue-field target, injectivity
of the actual evaluation map into functions on the point set, the
all-points-zero field-algebra endpoint, and nonzero-element detection.
Its formal controls are the reduced finite-type complex algebra with
no real-valued point and the genuine dual-number algebra with a nonzero
element killed by every field point. The local-domain/Jacobson example
above remains an analytical control at its stated scope.

| Final verification artifact | SHA-256 |
|---|---|
| Imported endpoint audit source | `91144dbe4f8d3be944383184a7a78eddbe7628a31101623c4b811989a0ba8aee` |
| Imported endpoint audit log | `e2241463007a7870798d557cf5bb83613f905643b6978d2a4e9090c9a1085fdf` |
| Maintained-source log (empty) | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Recorded compilation environment | `0f16e93e990780c8723f4fe99223d968e50e4f6d42626cc682ff19cab6f8e35b` |

The source and produced object matched the successful source snapshot
and the imported audit's dependency identities before and after that
audit. No maintained source was changed to repair or weaken a control.

All three Lean attempts are retained with source snapshots, execution
records, and logs. No attempt was timed out or interrupted.

| Attempt | Result | Seconds | Source SHA-256 | Log SHA-256 |
|---|---|---:|---|---|
| Maintained source 1 | FAIL, exit 1 | 33.091 | `708aa402c39d74720530972ffbaecf93a7e9bcfc83178a855d6d08bc6048ea1b` | `728b98d836a9f16db2e5f8b9194df9cb03fda9a73c5b209d35f6d3829294c816` |
| Maintained source 2 | PASS, exit 0 | 31.973 | `b83a0f173cd57ce06abbd5358b515c6a410acfaea6d0fd0f64c35a75bfc88128` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| Imported audit 1 | PASS, exit 0 | 55.508 | `91144dbe4f8d3be944383184a7a78eddbe7628a31101623c4b811989a0ba8aee` | `e2241463007a7870798d557cf5bb83613f905643b6978d2a4e9090c9a1085fdf` |

The first maintained-source attempt failed with a single diagnostic:
`push_neg` is deprecated at the pinned Mathlib revision. Replacing it
with the supported `push Not` spelling produced the successful second
source check. The statements and analytical proof were unchanged.
There was no failed imported audit.

A separate read-only mathematical/source review found no mathematical
correction. This review is not another compiler run, an independent
analytical proof, or a replay with an independently implemented kernel.

Fresh full-dependency replay, an independently implemented kernel check,
and substitution into the external consumer are **NOT_RUN**. There is
no root-import or dependency-pin change in this module.

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CommutativeAlgebra/GradedModulesLength/EtHolds.lean
[jacobson]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/Jacobson/Ring.lean
[closed]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/IsAlgClosed/Basic.lean
