# Rank-one determinant representation of pickup energy

## Determinants preserve the same arithmetic obligation

[Gavrilova and Petrov, arXiv:2305.17747v3](https://arxiv.org/abs/2305.17747v3), Theorem 1.2, shows that determinant-shaped Grothendieck weights need not give determinantal correlations. Theorem 2.3 embeds those measures in a two-dimensional process, but Remark 2.5 rules out the naive diagonal correlation formula for certain adjacent configurations. Section 2.5 retains marginal coefficient extraction. These facts require a genuine correlation or observable-preserving adapter before a point-process theorem can be applied to the signed Möbius pickup.

For the literal Möbius inventory, set $c_n=\mu(n)$ and define

$$
Z(T)=\det\bigl(I+(H_Tc)c^{\mathsf T}\bigr).
$$

The Weinstein–Aronszajn identity gives the checked exact formula

$$
Z(T)=1+c^{\mathsf T}H_Tc=1+\mathcal E(T).
$$

Consequently $Z(T)\le1+C(1+T)^q$ is exactly the original energy bound. This representation alone has no determinantal point-process identification and supplies no arithmetic cancellation. It does not rule out other representations with independently proved estimates.

Finite Cauchy–Schwarz gives the unconditional allowance

$$
\mathcal E(T)\le N_T\mathcal D(T)\le2e^TT^2.
$$

The factor $N_T$ retains the full inventory and produces exponential growth. This upper allowance cannot serve as a polynomial witness. Energy positivity separately gives $\mathcal X(T)\ge-2T^2$, a lower bound in the opposite direction from P04.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean). Status: **historical-source-description**. Credit and evidence limits (artifact:gitblob:e717d9762d6031755bcd6e700ca0aa087232db0f). Earlier checks bind their recorded revisions; no new proof acceptance.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean`](../../../../../GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 2 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
