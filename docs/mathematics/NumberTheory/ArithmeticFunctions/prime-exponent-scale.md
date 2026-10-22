# PNT-free rational scale lattice

Issue: #467  
Parent: #126  
Base revision: `5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c`  
Base tree: `8aa3904165d91f97952789fa6c0042636a40cc10`

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
NO_PNT_OR_RH_CLAIM
```

## Bounded theorem layer

The increment isolates the finite prime-exponent group

\[
D=\bigoplus_{p\ {\rm prime}}\mathbf Z e_p
\]

and the two exact realizations

\[
L_\infty((n_p)_p)=\sum_p n_p\log p,
\qquad
V_p((n_q)_q)=n_p.
\]

The source drafts the positive-rational reconstruction

\[
(n_p)_p\longmapsto \prod_p p^{n_p}
\]

and its inverse through rational \(p\)-adic valuations. The resulting
multiplicative/additive equivalence is

\[
\mathbf Q_{>0}^{\times}
  \simeq
\bigoplus_p\mathbf Z.
\]

Every product and sum is finite because the exponent vector is a `Finsupp`.
No prime-number theorem, prime enumeration asymptotic, Euler-product
convergence, or zero-free estimate occurs.

## Algebraic scale projectors

For every prime \(p\), the coordinate and projector are

\[
\pi_p((n_q)_q)=n_p,
\qquad
E_p((n_q)_q)=n_p e_p.
\]

The source drafts:

\[
E_p^2=E_p,
\qquad
E_pE_q=0\quad(p\ne q),
\qquad
x=\sum_{p\in\operatorname{supp}x}E_p x.
\]

Transport through the logarithmic realization gives the corresponding
algebraic projectors on

\[
\Lambda=L_\infty(D)\subset\mathbf R.
\]

“Direct sum” here is algebraic.

## Radial local realization

The local radial representative is

\[
\Theta_p(t)=p^{\pi_p(t)}.
\]

It satisfies

\[
\Theta_p(t+u)=\Theta_p(t)\Theta_p(u)
\]

and has valuation

\[
v_p(\Theta_p(t))=\pi_p(t).
\]

This is only the value-group/radial component. It forgets the \(p\)-adic
unit, ramification, conductor, residue character, Gauss-sum data, and every
other part of a full local or Hecke object.

## Product formula

For an exponent vector \(x=(n_p)_p\), the source drafts the finite identities

\[
\exp L_\infty(x)\prod_{p\in\operatorname{supp}x}p^{-n_p}=1
\]

and

\[
L_\infty(x)
=
-\sum_{p\in\operatorname{supp}x}\log(p^{-n_p}).
\]

Through the positive-rational equivalence these are the rational product
formula

\[
|r|_\infty\prod_p |r|_p=1.
\]

This is a finite identity for each rational \(r\), not an asymptotic theorem.

## Euclidean topology obstruction

For a fixed prime \(p\), set

\[
r_n=1+p^{-(n+1)}.
\]

Then

\[
\log r_n\to0
\]

in the ordinary real topology, but

\[
v_p(r_n)=-(n+1).
\]

Hence the coordinate

\[
\pi_p:\Lambda\to\mathbf Z
\]

is discontinuous when \(\Lambda\) carries the subspace topology inherited from
\(\mathbf R\) and \(\mathbf Z\) is discrete.

The source also drafts the algebraic theorem that every additive homomorphism

\[
\mathbf R\to\mathbf Z
\]

is zero. Thus no nonzero prime coordinate extends to all real logarithmic
scales as an additive map.

The real scalar extension of the logarithmic combination is not injective.
The explicit nonzero kernel vector is

\[
(\log3)e_2-(\log2)e_3.
\]

Therefore integral or rational independence of prime logarithms must not be
promoted to real-linear independence.

## Three fixed phases plus one dynamic channel

The downstream shape is not a symmetric four-coordinate phase tuple.

The first three fixed phase positions form the oriented triangular base. The
fourth is one witness **channel**, whose internal finite index type may depend
on the triangle state and on a stage or cutoff:

\[
\sum_{x:\mathrm{TriangleState}}\mathrm{WitnessIndex}(x)
\]

or, stagewise,

\[
\mathrm{WitnessIndex}(n,x)
  \longrightarrow
\mathrm{WitnessIndex}(n+1,x).
\]

This has several consequences:

1. the fourth channel is not a fourth triangle vertex;
2. its dimension need not equal one;
3. changing dimension does not define a fixed-rank vector bundle without
   strata, stabilization, or transition data;
4. an \(S_4\)-symmetric four-phase argument is not available from the shape
   alone;
5. any future quadratic, quartic, Hodge, or \(K\)-theoretic bridge must retain
   the dependent witness fiber and every rank-changing map.

The present increment records only this nonconflation boundary. It does not
construct the source-faithful prime-power witness channel.

## Proof classification

Imported mathematics:

- finite support and free additive coordinates from `Finsupp`;
- natural-number factorization;
- Mathlib rational \(p\)-adic valuation and norm conventions;
- elementary properties of real logarithm and powers.

Repository-specific source drafts:

- named prime-exponent, logarithmic-scale, coordinate, projector, radial, and
  topology-obstruction interfaces;
- a positive-rational equivalence adapter;
- the dependent three-plus-one shape record and varying-size control.

No theorem-level novelty is claimed for the classical factorization or product
formula.

## Evidence

Static source review only. No Lean or Lake process was run. No declaration was
elaborated, kernel checked, trust audited, or externally replayed.

The control module includes:

- the exponent vector of \(12/5=2^2\cdot3\cdot5^{-1}\);
- exact coordinate and projector checks;
- a concrete near-one valuation at \(p=2\);
- the nonzero real scalar-extension kernel vector;
- a witness channel with fiber cardinalities one and two;
- the proof-level distinction between `Fin 3` and `Fin 4`.

These are source fixtures until elaborated.

## Next obstruction

The next bounded mathematical object is the source-faithful prime-power module

\[
K^{(\{(p,m):p\ {\rm prime},\ m\ge1\})}.
\]

It must retain one atom at \(p^m\) separately from \(m\) copies of the atom at
\(p\), because a general explicit-formula test need not satisfy

\[
f(m\log p)=m f(\log p).
\]

Only after that source is formalized should a dynamically sized fourth witness
channel and a quadratic/Weil comparison be attempted.

The general dependent-channel types are maintained in
`GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel` and imported by the
arithmetic topology layer. Their namespaces and mathematical interfaces are unchanged.
