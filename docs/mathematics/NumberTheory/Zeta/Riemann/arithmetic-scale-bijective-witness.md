# Arithmetic scale bijection and the zero-free threshold screw

## Status

`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PORT_BLOCKED / WEIL_TIGHTENING_NOT_CONSTRUCTED`

This packet advances issue #463 on the exact head of draft PR #450. It is an additive, isolated source packet. It does not alter a public aggregate import and does not admit the pinned external theorem.

## 1. Common arithmetic carrier without the prime number theorem

Let

\[
D=\bigoplus_{p\ \mathrm{prime}}\mathbf Z e_p
\]

be the finitely supported prime-exponent lattice. Lean keeps the two interpretations type-distinct at the interface:

```lean
ArithmeticLogScale := FreeAbelianGroup {p : ℕ // Nat.Prime p}
PAdicScaleFamily   := {p : ℕ // Nat.Prime p} →₀ ℤ
```

Mathlib's canonical free-abelian-group coordinate theorem supplies the additive equivalence

```lean
logarithmicToPAdicFamily :
  ArithmeticLogScale ≃+ PAdicScaleFamily.
```

For each prime `p`, the local coordinate

```lean
pAdicExponent p : ArithmeticLogScale →+ ℤ
```

reads the coefficient of `e_p`. The primary insertion

```lean
pPrimaryEmbedding p : ℤ →+ ArithmeticLogScale
```

satisfies the exact split identity

```lean
(pAdicExponent p).comp (pPrimaryEmbedding p) = AddMonoidHom.id ℤ.
```

A different prime basis vector has zero `p`-coordinate. Thus one coordinate is a split projection; the all-prime finite family is the bijective object.

The Archimedean realization is the additive map

\[
(n_p)_p\longmapsto\sum_p n_p\log p,
\]

implemented as `archimedeanLogRealization`. The sum is finite by construction. This packet does not need a prime-counting estimate or the prime number theorem.

The packet deliberately does not claim an extension of a local coordinate to a nonzero additive map `ℝ → ℤ`. It also does not use or prove injectivity of the real-valued realization. The exact bijection formalized here is the common prime-coordinate carrier; a later literal identification with `log(ℚ_{>0})` may be added through a separately audited unique-factorization bridge, still without PNT.

## 2. The critical consumer is an exact theorem equivalence

The inherited raw predicate is

```lean
def RiemannZetaZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → riemannZeta s ≠ 0.
```

PR #438 already supplies

```lean
RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ)
  ↔ _root_.RiemannHypothesis.
```

The new `ScaleIndexedIffWitness` packages two independent fields:

1. the arithmetic scale equivalence; and
2. the zero-free-consumer equivalence.

`rawHalfPlaneRHBijectiveWitness` fills those fields at `1/2`. The word “bijective” refers to the exact additive scale equivalence and, separately, to the proposition-level `Iff`. Neither field constructs the other. In particular, coordinate algebra does not prove zeta nonvanishing.

## 3. A replayed seven-eighths theorem remains regional

PR #450 records the pinned declaration

```lean
OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re
```

but the local review is not admission-ready. Toolchain alignment, Mathlib alignment, dependency closure, trust-profile review, a clean pinned build receipt, and a local adapter remain absent. Therefore no `AcceptedExternalRawHalfPlanePort (7 / 8)` exists in this packet.

If all gates and the local theorem term are later supplied, the accepted port can construct

```lean
ScaleIndexedRegionalWitness ((7 : ℝ) / 8)
```

containing both the regional theorem and the strict inequality

\[
\frac12<\frac78.
\]

That witness cannot be projected backward through threshold monotonicity. A smaller threshold is stronger. The controls retain a toy zero at `3/5`: it is absent from the region right of `7/8` but present in the region right of `1/2`. This is a direction-of-implication control, not a model of the zeta function.

## 4. The Weil positive screw is typed as the missing implication

The new interface

```lean
structure WeilPositiveScrewTightening (σ : ℝ) where
  positiveScrewStatement : Prop
  regionalToCritical :
    positiveScrewStatement →
    RiemannZetaZeroFreeRightHalfPlane σ →
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ)
```

expresses the exact missing screw. A name, source citation, positivity slogan, scale bijection, or regional theorem is not enough. A future supplier must provide:

1. a precise positivity proposition;
2. a proof of that proposition;
3. an audited implication transporting the regional theorem to the critical half-plane.

Once those terms are supplied, `ScaleIndexedRegionalWitness.toRiemannHypothesis` composes the tightening implication with the inherited `1/2 ↔ RH` theorem. The composition is conditional and introduces no new analytic premise by concealment.

The existing Weil/source routes in issues #158, #197, #207, #215, #219, and route ledger #334 remain responsible for constructing a concrete instance. No such instance is defined here.

## 5. Dependency graph

```text
finite prime-exponent lattice
        │
        ├── all-prime additive equivalence ───────────────┐
        │                                                  │
raw ZF(>1/2) ── inherited Iff ── canonical RH             │
        │                                                  │
        └──────── ScaleIndexedIffWitness ◀─────────────────┘

pinned external source metadata
        │
        ├── replay + trust + local adaptation still open
        │
        ▼
future accepted ZF(>7/8) port
        │
        ├── all-prime additive equivalence
        ├── strict threshold gap 1/2 < 7/8
        ▼
ScaleIndexedRegionalWitness
        │
        ├── proved positive-screw premise
        └── proved regional-to-critical implication
        ▼
raw ZF(>1/2) ── inherited Iff ── canonical RH
```

## 6. Verification boundary

The source packet requires exact-head elaboration, declaration-type reconciliation, transitive import and axiom review, hostile-control replay, and an immutable receipt. No Lean or Lake process was run while constructing this increment. Static text checks are not kernel evidence.

The external seven-eighths declaration still requires an independent clean replay and trust packet at its pinned source revision. Even full acceptance of that declaration supplies only the regional theorem. The Weil tightening implication is a separate open analytic supplier.

## Nonclaims

This packet claims no PNT result, no literal real-line-to-integer homomorphism, no injectivity of the real realization, no accepted external theorem, no cross-version proof transport, no transitive trust closure, no concrete Weil positivity theorem, no zero-free estimate at `1/2`, no RH proof, and no merge or execution authority.
