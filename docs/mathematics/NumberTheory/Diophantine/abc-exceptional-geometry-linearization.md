# ABC exceptional-set geometry linearization

Issue: #417. Stacked parent: draft PR #416 at
`30de583ca78cc19d42137e23d8589d1e4def36b2`.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / LATTICE_ESTIMATE_OPEN**.

## Source

This adapter follows the opening algebraic step in Proposition 4.1 of
Christian Bernert, Tim Browning, Jared Duker Lichtman, and Joni Teräväinen,
*Bounds on the exceptional set in the abc conjecture*, arXiv:2410.12234v2
(2026).

The existing anatomic-box architecture and its attribution are inherited
unchanged from PR #413 and the proposition statement layer in PR #416.

## Existing box equation

For parameters

```text
p = (a₀,b₀,c₀,A,B,C) : Parameters d
```

and a point `q ∈ boxFinset p`, the repository already stores

```text
totalA(q) + totalB(q) = totalC(q),
```

where

```text
totalA = a₀ ∏ᵢ aᵢ^(i+1),
totalB = b₀ ∏ᵢ bᵢ^(i+1),
totalC = c₀ ∏ᵢ cᵢ^(i+1).
```

Lean coordinates are zero-based, so `i.val+1` is the source-paper index.

## Selected and complementary monomials

For a selected finite set `I : Finset (Fin d)`, define

```text
selected(I,x)   = ∏_(i∈I)  xᵢ^(i+1),
complement(I,x) = ∏_(i∈Iᶜ) xᵢ^(i+1).
```

The complement is literal inside the finite type `Fin d`. Mathlib's finite
complement-product identity gives

```text
complement(I,x) * selected(I,x) = monomial(x).
```

No division, truncation, or asymptotic argument is used.

## Proposition 4.1 variables

For selected sets `I,I',I''`, the source defines

```text
a' = a₀ * complement(I,a),   x = selected(I,a),
b' = b₀ * complement(I',b),  y = selected(I',b),
c' = c₀ * complement(I'',c), z = selected(I'',c).
```

The finite partition identities give exact reconstructions

```text
a' * x = totalA,
b' * y = totalB,
c' * z = totalC.
```

Substitution into the inherited box equation yields

```text
a' * x + b' * y = c' * z.
```

This theorem is proved first for `q ∈ boxFinset p` and then inherited by the
strict `paperBoxFinset` from PR #416 using its subset theorem. No alternative
additive-triple or box source is introduced.

## What remains open

The paper next uses additional facts not supplied by this increment:

1. positivity of all selected variables and coefficients in the exact form
   needed by the lattice theorem;
2. `gcd(a',b',c')=1` and `gcd(x,y,z)=1`;
3. the Heath--Brown primitive lattice-point estimate

   ```text
   O(1 + XYZ / max(|a'|X, |b'|Y, |c'|Z));
   ```

4. divisor-fibre lifting from one `(x,y,z)` to the selected monomial
   coordinates;
5. summation over complementary coordinates and exponent bookkeeping;
6. the complete Proposition 4.1 bound.

The linear equation is therefore an input to the geometry-of-numbers proof,
not the proof itself.

## Hostile boundaries

The following mutations are rejected:

- treating Lean index `i.val` as the paper exponent instead of using
  `i.val+1` in the monomial;
- using a non-complementary or overlapping coordinate partition;
- introducing a second additive equation rather than reusing `boxFinset`;
- claiming primitivity from the equation alone;
- calling the algebraic reconstruction a lattice-point estimate;
- inferring Proposition 4.1, the exceptional-set theorem, or abc from this
  finite identity.

## Verification boundary

The source contains closed proof scripts for the finite product partition,
three coordinate reconstructions, and two linear-equation adapters. They have
not been parsed or elaborated at the exact head. No Lean/Lake/native run,
kernel acceptance, generated-declaration reconciliation, transitive axiom or
native audit, repository test, or independent mathematical review has
occurred.
