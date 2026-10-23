# Typed critical-strip witnesses over compact binary group squares

Issue: [#435](https://github.com/grwtsk/math/issues/435)  
Pinned base: `grwtsk/math@5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c`  
Evidence state: `SOURCE_DRAFT`  
Formal status: mathematical definitions and prose proofs; no Lean declaration, elaboration, kernel check, trust audit or external replay is asserted.

## Scope and conservative interpretation

This note classifies a proposed transport mechanism. It does not construct an
arithmetic family of \(L\)-functions or supply a new Riemann-hypothesis
criterion.

The phrase **compact plain** is interpreted as a compact Hausdorff parameter
space \(K\). The ordinary Euclidean plane \(\mathbb R^2\) is not compact. If a
plane was intended, one must separately select a compact planar domain, a
compactification, or a compact surface and prove that it is the parameter
space actually used.

The phrase **null geodesic loop** is interpreted purely mathematically as a
null-homotopic loop in a path groupoid, together with trivial holonomy for the
selected transport functor. No Lorentzian metric, lightlike tangent, geodesic
equation, causal structure or physical spacetime is assumed.

The phrase **same interpolator** means one functorial, source-bound family of
maps. It does not mean several unrelated maps that happen to share a name or
formula.

## 1. Critical-strip and \(L\)-data

Write

\[
\mathcal S=\{s\in\mathbb C:0<\operatorname{Re}s<1\},
\qquad
\mathcal C=\{s\in\mathbb C:\operatorname{Re}s=\tfrac12\}.
\]

The critical line is a proper subset of the critical strip.

An `LDatum` at a parameter \(x\in K\) consists of:

\[
(D_x,P_x,L_x,N_x),
\]

where:

- \(D_x\subseteq\mathbb C\) is the declared analytic or meromorphic domain;
- \(P_x\subseteq D_x\) is the declared pole set;
- \(L_x:D_x\setminus P_x\to\mathbb C\) is the selected normalized function;
- \(N_x\) records the source, completion, Euler or gamma normalization,
  conductor, character or representation data, and every other identity
  needed to determine which \(L\)-function is meant.

Calling an object an \(L\)-function requires an independent arithmetic or
literature source. The abstract record alone supplies no Euler product,
functional equation, analytic continuation or arithmetic provenance.

A **critical-strip witness** is the dependent tuple

\[
w=(x,s,h_D,h_P,h_{\mathcal S},h_0)
\]

with

\[
s\in D_x,\qquad s\notin P_x,\qquad s\in\mathcal S,\qquad L_x(s)=0.
\]

Its fiber at \(x\) is denoted \(W_x\). A **critical-line witness** replaces
\(s\in\mathcal S\) by \(s\in\mathcal C\). These are different types.

A strip witness proves only that one declared zero lies in the open strip. It
does not prove that the zero lies on the critical line, that all zeros have
been represented, or that the supplied function is the Riemann zeta function.

## 2. Typed analytic interpolator

For a path \(\gamma:x\to y\), a typed analytic interpolator contains a map

\[
\tau_\gamma:D_x\longrightarrow D_y
\]

and the following separately named properties on the region used:

1. **domain compatibility**
   \[
   \tau_\gamma(D_x)\subseteq D_y;
   \]

2. **pole compatibility**
   \[
   s\notin P_x\Longrightarrow \tau_\gamma(s)\notin P_y;
   \]

3. **strip preservation**
   \[
   s\in\mathcal S\Longrightarrow \tau_\gamma(s)\in\mathcal S;
   \]

4. **forward zero transport**
   \[
   L_y(\tau_\gamma(s))=u_\gamma(s)L_x(s)
   \]
   for a declared multiplier \(u_\gamma\);

5. **exact zero transport**, when claimed, consisting additionally of
   \(u_\gamma(s)\ne0\), an inverse map on the selected domain, and the matching
   inverse identity;

6. **identity and composition**
   \[
   \tau_{\mathrm{id}_x}=\mathrm{id}_{D_x},\qquad
   \tau_{\delta\circ\gamma}=\tau_\delta\circ\tau_\gamma;
   \]

7. **source and normalization preservation**, or an explicit theorem relating
   the two normalizations.

Forward zero transport does not require \(u_\gamma(s)\ne0\): a zero at the
source still maps to a zero. Reflecting a target zero back to the source does
require nonvanishing and inverse data. The two directions must not be
collapsed.

These fields induce a map

\[
T_\gamma:W_x\longrightarrow W_y.
\]

The induced witness maps are the **same interpolator** only when the identity
and composition laws hold and all maps use the same source and normalization
profile.

## 3. Uniform binary square of group morphisms

Let

\[
\square=[1]\times[1]
\]

be the four-object category with vertices \(00,01,10,11\). A group-valued
binary square is a functor \(G:\square\to\mathbf{Grp}\), displayed as

\[
\begin{array}{ccc}
G_{00} & \xrightarrow{h_0} & G_{01}\\
{\scriptstyle v_0}\downarrow && \downarrow{\scriptstyle v_1}\\
G_{10} & \xrightarrow{h_1} & G_{11}.
\end{array}
\]

Functoriality is the commutative-square identity

\[
v_1\circ h_0=h_1\circ v_0.
\]

A **strictly uniform** square has one group \(G\) at all four vertices and
selected endomorphisms \(H,V:G\to G\) satisfying

\[
V\circ H=H\circ V.
\]

A square is uniform up to identification when explicit group isomorphisms
\(G_{ij}\cong G\) transport it to such a square. Equal cardinality, matching
labels or isomorphic abstract groups do not supply those identifications.

Suppose \(G_{ij}\) acts on the domain and witness fiber at vertex \(ij\). The
interpolator is group-compatible when each edge \(e:a\to b\) satisfies

\[
T_e(g\cdot w)=G(e)(g)\cdot T_e(w).
\]

This equivariance is separate from strip preservation, zero preservation and
bijectivity.

## 4. Classification theorems

### Theorem 1 — critical-strip witness transport

Let \(w\in W_x\). If \(\tau_\gamma\) has domain compatibility, pole
compatibility, strip preservation and forward zero transport, then

\[
T_\gamma(w)\in W_y.
\]

**Proof.** Write the point component of \(w\) as \(s\). Domain compatibility
puts \(\tau_\gamma(s)\) in \(D_y\); pole compatibility excludes \(P_y\); strip
preservation puts it in \(\mathcal S\); and

\[
L_y(\tau_\gamma(s))
 =u_\gamma(s)L_x(s)
 =u_\gamma(s)\cdot0
 =0.
\]

Each field of the target witness is therefore supplied. \(\square\)

This theorem is a transport theorem for an already supplied zero. It is not an
existence theorem for zeros.

### Theorem 2 — binary-square path independence

Let \(T\) be one functorial witness interpolator on the binary square. If the
two composites represent the same square morphism, then

\[
T_{v_1}\circ T_{h_0}
=
T_{h_1}\circ T_{v_0}:W_{00}\longrightarrow W_{11}.
\]

**Proof.** Both sides are the functorial image of the same composite morphism
in \(\square\). \(\square\)

Thus the two forward boundary paths produce the same transported witness.
This is equality of forward composites, not yet a loop-holonomy theorem,
because the four edge maps need not have inverses.

### Theorem 3 — groupoid transport is bijective

Let \(\Pi\) be a groupoid and let

\[
T:\Pi\longrightarrow\mathbf{Set}
\]

be a witness-transport functor. For every morphism
\(\gamma:x\to y\), the map

\[
T_\gamma:W_x\to W_y
\]

is bijective, with inverse \(T_{\gamma^{-1}}\).

**Proof.** Functoriality gives

\[
T_{\gamma^{-1}}\circ T_\gamma
 =T_{\gamma^{-1}\circ\gamma}
 =T_{\mathrm{id}_x}
 =\mathrm{id}_{W_x}
\]

and similarly

\[
T_\gamma\circ T_{\gamma^{-1}}
 =\mathrm{id}_{W_y}.
\]

Hence \(T_{\gamma^{-1}}\) is a two-sided inverse. \(\square\)

The source of bijectivity is the groupoid structure plus functoriality. It is
not compactness and it is not the nullity of a particular loop.

### Theorem 4 — null-loop invariance

Let \(\Pi_1(K)\) be the fundamental groupoid of a topological space \(K\), and
let \(T:\Pi_1(K)\to\mathbf{Set}\) be a witness local system. If a loop
\(\ell:x\to x\) is null-homotopic relative to its basepoint, then

\[
T_\ell=\mathrm{id}_{W_x}.
\]

**Proof.** A null-homotopic loop represents the identity morphism of
\(\Pi_1(K)\), and a functor preserves identities. \(\square\)

A null loop therefore fixes witnesses. It does not by itself construct the
local system, prove the analytic interpolation identities, or show that an
arbitrary independently supplied map is invertible.

### Theorem 5 — canonical fiber bijections on a simply connected base

Assume \(K\) is path connected and simply connected, and let
\(T:\Pi_1(K)\to\mathbf{Set}\) be a witness local system. For every
\(x,y\in K\), transport along any path from \(x\) to \(y\) gives a bijection

\[
W_x\cong W_y
\]

independent of the selected path.

**Proof.** Path connectedness supplies a path. Theorem 3 makes its transport
bijective. Any two paths with the same endpoints differ by a null loop because
\(K\) is simply connected; Theorem 4 makes the resulting transports equal.
\(\square\)

Compactness is not used in this proof. A compact closed disk is one possible
base satisfying the hypotheses, but compactness alone is insufficient.

### Theorem 6 — square commutativity and boundary holonomy

Assume all four edge transports of the binary square are bijections. Put

\[
p=T_{v_1}\circ T_{h_0},
\qquad
q=T_{h_1}\circ T_{v_0}:W_{00}\to W_{11}.
\]

Define the boundary holonomy at \(00\) by

\[
\Omega=q^{-1}\circ p.
\]

Then

\[
p=q
\quad\Longleftrightarrow\quad
\Omega=\mathrm{id}_{W_{00}}.
\]

**Proof.** If \(p=q\), then \(q^{-1}p=q^{-1}q=\mathrm{id}\). Conversely,
\(q^{-1}p=\mathrm{id}\) implies \(p=q\) after composing on the left by \(q\).
\(\square\)

This is the precise setting in which a commutative square becomes a null
boundary loop. The inverse paths are legitimate only because bijectivity was
already supplied.

### Theorem 7 — zero square defect does not imply edge bijectivity

Let every vertex group be \((\mathbb Z,+)\). Take

\[
h_0(n)=h_1(n)=2n,
\qquad
v_0(n)=v_1(n)=n.
\]

Then

\[
v_1\circ h_0=h_1\circ v_0,
\]

so the square commutes exactly. Nevertheless \(h_0\) and \(h_1\) are not
surjective, because no integer maps to \(1\).

Hence:

\[
\text{commutative square}
\not\Longrightarrow
\text{bijective edges}.
\]

The square has zero forward-path defect, but its horizontal arrows cannot be
reversed inside \(\mathbf{Grp}\). Calling this equality a “null loop” without
first passing through actual isomorphisms would silently assume the missing
inverse.

### Theorem 8 — compactness and bijectivity are independent

Compactness of \(K\) does not imply bijectivity of an interpolator. Use the
one-point compact space and the nonbijective doubling homomorphism from
Theorem 7.

Conversely, bijective transport does not imply compactness of \(K\). The
constant identity local system over the noncompact space \(\mathbb R\) has
bijective transport along every path.

Therefore compactness is a topological property of the parameter object,
whereas bijectivity is a property of the selected transport maps. Any theorem
using both must carry both hypotheses.

### Theorem 9 — strip location is not critical-line location

The inclusion

\[
\mathcal C\subset\mathcal S
\]

is strict; for example \(1/4\in\mathcal S\setminus\mathcal C\). Consequently,

\[
\text{critical-strip witness}
\not\Longrightarrow
\text{critical-line witness}.
\]

An interpolator that preserves \(\mathcal S\) need not preserve
\(\mathcal C\). A line-preservation theorem must separately prove

\[
\operatorname{Re}s=\tfrac12
\Longrightarrow
\operatorname{Re}\tau_\gamma(s)=\tfrac12.
\]

Even line preservation for represented witnesses is not RH. An RH-facing
consumer additionally needs an exact theorem that the represented source is
the complete nontrivial zero divisor of the Riemann zeta function, with
multiplicity and normalization preserved.

## 5. Classification lattice

The following properties are deliberately noncoercible.

| Classification | Exact content | Does not imply |
|---|---|---|
| `STRIP_WITNESS` | One supplied zero lies in \(\mathcal S\) | critical-line location or zero completeness |
| `FORWARD_ZERO_TRANSPORT` | Source zeros map to target zeros | reflection of target zeros |
| `EXACT_ZERO_TRANSPORT` | Forward and inverse zero transport on the selected domain | global zero-divisor exhaustivity |
| `SQUARE_COHERENT` | Two forward square composites agree | any edge is injective or surjective |
| `GROUPOID_BIJECTIVE` | Every path map has the inverse path map | null holonomy for non-null loops |
| `NULL_HOLONOMY` | A selected loop acts as identity | existence of the interpolator |
| `CANONICAL_FIBER_BIJECTION` | Simply connected path transport is path independent | holomorphic or arithmetic interpolation |
| `COMPACT_PARAMETER` | The parameter base is compact | connectedness, simple connectedness or bijectivity |
| `CRITICAL_LINE_WITNESS` | One represented zero has real part \(1/2\) | all zeta zeros lie there |
| `GLOBAL_ZERO_EXHAUSTIVE` | Every relevant zero is represented with multiplicity | critical-line location |
| `RH_CONSUMABLE` | Exact zeta identity, exhaustive zeros and line theorem reach a named RH criterion | unconditional RH unless all premises are discharged |

## 6. Dependency graph

The valid dependency path is:

```text
source-identified L-data
  + domain/pole data
  + one critical-strip zero
    -> CriticalStripWitness

typed analytic interpolator
  + strip preservation
  + forward zero identity
    -> transported CriticalStripWitness

functorial restriction to a binary square
  + equality of square composites
    -> square path independence

path-groupoid functor
    -> bijective path transport

null-homotopic loop
  + path-groupoid functor
    -> identity holonomy

path connected + simply connected
  + path-groupoid functor
    -> canonical fiber bijections

complete zeta zero-divisor source
  + critical-line transport/exhaustion theorem
  + exact RH-facing consumer
    -> possible RH implication
```

No reverse arrow is implicit.

## 7. Failure and obstruction cases

The classification must return an explicit obstruction when any of the
following occurs:

- the family has no exact arithmetic \(L\)-function source;
- \(\tau_\gamma\) exits the declared domain or crosses a pole;
- strip preservation is unproved;
- only forward zero transport is known but a reverse conclusion is requested;
- the square maps commute but one edge is not invertible;
- a boundary “loop” uses formal inverse arrows that do not exist;
- the parameter space is compact but disconnected or not simply connected;
- a topological local system is supplied without holomorphic compatibility;
- a finite binary square is promoted to a global parameter-family theorem;
- represented zeros are not proved exhaustive;
- the critical strip is substituted for the critical line;
- a family-level statement is reported as RH without an exact zeta consumer.

## 8. Taxonomy and repository placement

The theorem exposition belongs here because its analytic consumer is an
\(L\)-function zero witness. Its mathematical facets are separately related
to:

- analysis, for analytic domains, zero sets and the critical strip;
- group theory, for the group-valued square and equivariance;
- general topology, for compactness and path connectedness;
- homotopy theory, for the fundamental groupoid and null loops.

These are `relevantTo` associations. They are not subject-specialization,
implication or equivalence edges. The current taxonomy pilot has no canonical
Number Theory subject record, so the repository path must not be converted
into an invented taxonomy parent.

The companion
[taxonomy proposal](../../../taxonomy/proposals/typed-critical-strip-witness-classification.md)
records those associations without turning them into proof edges.

## 9. RH consequence and next obstruction

Current RH consequence: **none**. The classification proves only abstract
conditional transport and obstruction theorems.

The exact next obstruction is:

> Construct one nontrivial, source-identified analytic family of arithmetic
> \(L\)-functions with a functorial interpolator that preserves the declared
> normalization, poles, critical strip and complete zero divisor, or prove
> that no such interpolator can inhabit the selected interface.

For the initial zeta-only program, the conservative specialization is a
singleton family. Any nontrivial family generalization remains deferred until
an actual analytic transport or obstruction theorem is supplied.

## Nonclaims

This note does not prove analytic continuation, a functional equation, an
Euler product, a common moduli space of \(L\)-functions, a spectral
realization, holomorphy from topology, bijectivity from compactness,
bijectivity from square commutativity, critical-line location from strip
location, GRH, or the Riemann Hypothesis.
