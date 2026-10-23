# Periodic cocycle data: necessary Livšic obstruction, not full Livšic rigidity

**Status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` for the new
Lean source. The finite exact-arithmetic preflight described below
is NOT Lean compilation, fresh kernel checking, or a transitive axiom audit.

## Reviewed paper identity and precise scope

Boris Kalinin, **“Livšic Theorem for matrix cocycles”**,
*Annals of Mathematics* **173** (2011), 1025–1042,
https://doi.org/10.4007/annals.2011.173.2.11.
The paper’s printed **Introduction, formula (1.1), page 1025**
states the **necessary** periodic-data condition for a coboundary.
**Theorem 1.1, page 1027**, proves a **sufficiency** result under
stronger dynamical and regularity hypotheses: a topologically
transitive homeomorphism of a compact metric space satisfying the
closing property, and an `α`-Hölder
`A:X→GL(m,ℝ)` with identity products along **every**
periodic orbit, admit an `α`-Hölder transfer
`C:X→GL(m,ℝ)` satisfying
`A(x)=C(fx)C(x)⁻¹`.

The current repository source formalizes only the **algebraic
necessity** of equation (1.1), plus elementary conjugacy
and obstruction consequences, not Kalinin’s sufficiency,
Hölder transfer construction or matrix growth estimates.
It is a local `source-proof-candidate`, not a
`PAPER_TO_LEAN_BRIDGE_PROVED` claim for Theorem 1.1.
No historical influence on any unpublished manuscript
is inferred by this mathematical comparison.

## The exact ordered-product convention

The already maintained
`GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct`
uses the newest factor on the left:

```text
P_A(n,x)=A(T^(n-1)x) · … · A(Tx) · A(x).
```

For a supplied **arbitrary group** `G`, carrier `S`,
self-map `T:S→S` and transfer function `B:S→G`,
the exact pure coboundary equation is

```text
A(x)=B(Tx)·B(x)^(-1).
```

It implies by exact telescoping that

```text
P_A(n,x)=B(T^[n]x)·B(x)^(-1).
```

At any **explicit** periodic basepoint `T^[n]p=p`,
this yields `P_A(n,p)=1`. Hence a witnessed
`P_A(n,p)≠1` refutes the existence of **any**
global pure transfer function `B`.
The periodic point, its length, and the
nonidentity product are essential inputs;
no periodic point is conjured for arbitrary `T`.

The repository’s **different**, existing gauge convention is

```text
A^B(x)=B(Tx)^(-1)·A(x)·B(x).
```

At a closed orbit its product is
`P_{A^B}(n,p)=B(p)^(-1)P_A(n,p)B(p)`.
Consequently the predicate `P=1` is gauge invariant,
even though the actual group element can change by
conjugation in a noncommutative group. This result
requires **the literal closing premise**, not just
an almost-return, an image collision, or equality
of scalar traces.

## Source identity, declarations, and dependency

- Owning module:
  `GRWTSK.LinearAlgebra.PeriodicCocycleData`,
  file `GRWTSK/LinearAlgebra/PeriodicCocycleData.lean`.
- First routine main source commit:
  `153ee97c6f1a12b9e98a18f72e961f8d6227b2e7`;
  exact Git blob:
  `11ca2a896e8844dcb483ce9c910c1bb07ae857e1`.
- Fully qualified definitions/theorems with that namespace:
  `IsPureCoboundary`, `cocycleProduct_one`,
  `pureCoboundary_product`,
  `pureCoboundary_periodic_identity`,
  `nontrivial_periodic_product_not_coboundary`,
  `periodic_gauge_product_conjugate`,
  `periodic_gauge_product_one_iff`,
  `periodic_nontrivial_persists_under_gauge`,
  `no_gauge_trivializes_nontrivial_period`.
- Exact direct repository import:
  `GRWTSK.LinearAlgebra.CocycleProduct`, blob
  `464093299328bd804948a8959e603224418264f7`,
  supplying `cocycleProduct`,
  `cocycleProduct_succ`, `cocycleGaugeTransfer`
  and `cocycleProduct_gauge`. The new file also
  imports `Mathlib.Tactic`. Transitive dependencies
  include `GRWTSK.LinearAlgebra.OrderedProductDeterminant`
  and pinned Mathlib.
- Pinned source/toolchain:
  `leanprover/lean4:v4.33.0`; Mathlib
  `db584cd6d46c92f209a44c0f1c829460d327499d`.
  The actual complete transitive environment and
  trust closure require independent execution.

## Independent finite checks, with no proof promotion

An off-kernel Python computation enumerated all
`6³×6³=46,656` combinations of three-step
coefficients and gauges in the noncommutative
symmetric group `S₃`:

- all `46,656` exact product/conjugacy equalities passed;
- all `38,880` cases with nonidentity original
  periodic product remained nonidentity after gauge;
- all `216` pure coboundary coefficient triples
  had identity monodromy;
- an explicit noncentral gauge can conjugate the
  periodic product to a **different element** without
  making it the identity.

The local script is retained **outside canonical math**
under `/mnt/data/periodic_cocycle_preflight.py`,
SHA-256
`12da87112c3b9bde1ccd97fb750aa604ec92acef50cf8f2ce5a26040b0a65048`.
This is finite independent algebraic evidence, not
Lean kernel evidence or a durable remote acceptance receipt.

## Where this sits in the Farey chain

The earlier
`GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction`
gives a real finite obstruction to extending one
`LR` scalar return eigenchannel to all L/R turns.
The current source supplies a **reusable periodic-data
necessity interface** with exact gauge order, suitable
for a future realization of a Farey/continued-fraction
*base dynamics*. But no formal theorem in this
module identifies the left-shear finite orbit with
a Livšic hyperbolic base orbit, instantiates a
nonperiodic Sturmian cocycle, or constructs an
admissible bounded/Hölder gauge.

Specific still-missing bridges:

1. An actual source-defined nonperiodic shift/rotation,
   correct chronological cocycle and an exact
   comparison to genuine Farey frames and transfer matrices.
2. A class of admissible gauges retaining periodic
   products and, if useful, boundedness/temperedness.
3. For **Kalinin’s sufficient direction**, all of:
   topologically transitive compact metric
   homeomorphism, closing property, `α`-Hölder
   `GL(m,ℝ)` cocycle, vanishing periodic data
   for **every** periodic pair `(p,n)`,
   and a constructed `α`-Hölder transfer.
4. Source-preserving analytic operator and spectral
   comparison (not merely finite algebra), plus
   the separate arithmetic hypotheses of any
   Sarnak, Dirichlet `L`-function or RH result.

No converse theorem, general matrix unitarizability,
Sturmian spectral gap, Möbius orthogonality, prime
density bound, nonsofic theorem or RH result is claimed.

## Verification and stopping gate

No `lean`, `lake` or `leanchecker` is available
in the present interactive runtime. No module-target
build, direct elaboration, fresh kernel replay or
transitive `#print axioms`/unsafe audit for this new
file has succeeded or even executed here.
Source inspection and the off-kernel enumeration
do not establish an accepted Lean theorem.
Keep these statuses **PENDING** until exact-commit
runner outputs and real receipts exist.

Do not force-push, merge unrelated work, weaken
hypotheses, bypass declined remote authorization,
or write execution machinery/receipts into
`grwtsk/math`. Verification operations and receipt
storage belong in the separately controlled
`grwtsk/noeaaeue` workflow.
