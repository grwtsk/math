# Finite additive-character projector

For a positive natural modulus `q`, let `χ_q = ZMod.stdAddChar : ZMod q → ℂ` be Mathlib's canonical additive character. Define the normalized full-frequency average

\[
E_q(x)=q^{-1}\sum_{k\in\mathbb Z/q\mathbb Z}\chi_q(kx),
\qquad
P_q(u,v,w)=E_q(\bar u+\bar v-\bar w).
\]

The reciprocal is taken in `ℂ`, and each natural coordinate is cast into `ZMod q` before addition and subtraction. Thus the phase uses ring subtraction, not truncated natural-number subtraction. For every residue `x`, `E_q(x)` is one when `x = 0`, and zero otherwise. No primality assumption is needed.

Let `u,v,w ∈ Finset.Icc 1 M` and assume `2*M < q`. Then

\[
P_q(u,v,w)=\begin{cases}1&u+v=w,\\0&u+v\ne w.\end{cases}
\]

Indeed, `u+v ≤ 2*M < q` and `w ≤ M < q`. Equality of their residues is therefore equality of the natural numbers. Character orthogonality gives the indicator after multiplication by the explicit reciprocal `q⁻¹`. The formal statements retain the closed cube and strict no-wrap bound separately from the unconditional modular indicator.

## Controls and normalization

The weaker bound `q > M` does not prevent wraparound: with `M = 3`, `q = 4`, the tuple `(3,3,2)` satisfies the modular equation but not the integer equation. Removing `q⁻¹` makes the zero-phase character sum equal to `q`, rather than one. With `q = 8`, `d = 2`, and the same tuple, the scaled phase vanishes modulo eight while the unscaled phase does not. Thus multiplication by `d` cannot be silently cancelled in a modular equation.

For `(u,v,w) = (1,1,3)` and `q = 8`, the ring-valued phase gives projector zero. The truncated natural expression `u+v-w` would instead be zero and would give average one. The finite controls also cover a composite modulus and the empty cube `M = 0`.

## Source and verification scope

[Formal source](../../../../../GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean). The canonical character and primitivity are from Mathlib's `Analysis/SpecialFunctions/Complex/CircleAddChar.lean`, by David Loeffler. The character-sum orthogonality theorem `AddChar.sum_mulShift` is from `NumberTheory/LegendreSymbol/AddCharacter.lean`, by Michael Stoll. Both retain Apache-2.0 licensing. The new source uses these exact results and finite residue arithmetic; it makes no originality claim for character orthogonality.

The [scaled joint-moment application](../../../NumberTheory/Diophantine/PrimitiveAdditiveTriples/additive-character-moments.md) keeps the equation in the unscaled variables. Selected pinned replay (artifact:gitblob:e829a06e7c0514db063c75cc9553341150dbe3cf), owned-declaration audit and hostile controls are distinct from repository-wide source-layout admission. Cached dependency objects are reused; Mathlib sources are not rebuilt. No analytic estimate or arithmetic-conjecture implication is proved here.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. Original additions: MIT. Lean and Mathlib retain their upstream credits and licenses.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean`](../../../../../GRWTSK/Analysis/Fourier/FiniteAdditiveProjector.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
