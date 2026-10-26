# K₀-shaped / radical collision and weighted diffusion type completeness

Local mathematical attribution: **grwtsk contributors**.

## Exact sources and scope

- `GRWTSK/Algebra/KTheory/GrothendieckPort.lean`: joint feature and collision-boundary source introduced in commit `46c575de6a7652b9ce250c8060f4a31c19b97957`, Git blob `d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f`.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean`: weighted diffusion/type-completeness source introduced in commit `d18bd7288827ea335adccef417b0b2d20627de29`, Git blob `8e3d6a28fbeac5c08e7c5b09c36dd12f05bd2284`.
- Toolchain: `leanprover/lean4:v4.33.0`; Mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Verification:** source written and static lexical inspection only. Lean compilation, elaboration, fresh kernel checking, and transitive axiom audit **NOT_RUN**; no execution receipt or theorem acceptance is claimed.

## Collision obstruction

For a source type `S`, a stable-object commutative monoid `M`, radical feature type `R`, and exact type label `T`, select

```text
κ : S → GrothendieckKZero M
ρ : S → R
τ : S → T
fingerprint(s) = (κ(s), ρ(s)).
```

The two `JointCollision` theorems establish the exact implication

```text
κ(a) = κ(b) ∧ ρ(a) = ρ(b) ∧ τ(a) ≠ τ(b)
  → ¬∃ decode : (GrothendieckKZero M × R) → T,
       ∀ s, decode (fingerprint(s)) = τ(s).
```

This is an information-loss / **type identifiability** obstruction. It does not prohibit probabilistic coverage of all types. The `GrothendieckKZero` here is the existing universal monoid group completion; no C*-algebra, analytic K₀ group, Kasparov product, or spectral projection correspondence is constructed by the theorem. The `ρ` field is an explicitly provided feature. Arithmetic `rad(n)=∏_{p∣n}p`, ideal radicals, and polynomial root collisions are **different types** and require separate exact adapters and collision witnesses. Arithmetic program #127 supplies relevant obligations but is not silently imported.

## Quantitative finite diffusion

In the pre-existing `RootHeatState` finite setting, take a finite root carrier `V`, type labels `τ : V → T`, nonnegative rational heat `h`, and a nonnegative column-stochastic rational transition matrix `P`. For each type `t`, define type heat

```text
H_h(t) = sum over v with τ(v)=t of h(v).
```

The new finite theorem proves, for each source/target pair `s,v`,

```text
P(v,s) * h(s) ≤ H_(P h)(τ(v)).
```

Under the **explicit** steering supplier

```text
ε > 0
∀ t : T, ∃ s v : V,
  τ(v)=t ∧ ε ≤ P(v,s)*h(s),
```

the entire next state satisfies `H_(P h)(t) ≥ ε > 0` for every type. If the same steering certificate is supplied at each time `n ≥ N`, the proof transfers complete positive type support to every subsequent time `n+1`. The source also proves that complete type support forces the type-label map `τ` to be surjective; a missing type cannot be created by heat evolution on a fixed carrier.

These are **conditional** and **finite rational** results, not a theorem that a particular weighted arithmetic sieve satisfies the supplier. In particular:

- `FiniteAdmissibleSampler.lean` supplies real Gibbs probabilities and positive admissible edges, while `RootHeatState` uses rational column-stochastic transitions. The normalization, coefficient-field, orientation, and support transport between them still need explicit proof.
- A weighted number-theoretic sieve (squarefree/Möbius/radical labels) must provide actual nonnegative weights and quantified lower bounds. Signed Möbius terms cannot be used as probability masses without a proved positive representation.
- `SearchSoficLanguage` separates state completeness from transition and finite-word language completeness. Reaching every **type label** does not prove every source state, admissible transition, word, or source identity has been discovered.
- Asymptotic mixing or `ε`-uniform steering has **not** been derived from mere stochasticity. Irreducibility, aperiodicity or another quantitative minorization supplier must be established for the selected graph and parameter regime.
- K/radical collisions remain obstructions to **exact type decoding** even when every type has positive heat.

## Dependency frontier

```text
K₀-shaped class + typed radical/support
  → exact joint collision witness
  → no exact decoder from compressed features

finite weighted sieve + carrier/type map
  → actual nonnegative normalized transition
  → quantified weighted steering lower bound
  → positive type heat for all declared types
  → eventual type coverage (conditional)

type coverage + collision separation + source/admissible-edge completeness
  → candidate complete, identifiable typed search
  → still requires separately proved representation/consumer adapters
```

The smallest missing supplier is an explicit lower bound for the selected weighted sieve that remains valid over the relevant increasing search heights/time horizon. A finite stochastic kernel, K-class, squarefree support label, or sample path alone does **not** provide such a bound.

All proofs in this increment are original elementary source-level deductions from the named definitions, rather than claims imported from a specific paper. No historical influence is inferred from a structural resemblance. Operational execution receipts belong in `grwtsk/noeaaeue`, not the mathematical source repository.
