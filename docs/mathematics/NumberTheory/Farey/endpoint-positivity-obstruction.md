# Farey endpoint positivity: certificate preservation versus rational roots

**Source-bound status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. This is an elementary repository-authored algebraic counterexample, **not an imported theorem from a paper**. The mathematical provenance is the local Farey certificate interface; no published result, priority, or external bridge is claimed. The [paper-to-Lean reference policy](../../../reference/literature/reading-background/paper-to-lean-provenance.md) applies when a published theorem or method is imported in later work.

## Exact source and dependency

- **Main integration commit:** [`5fd924ba17aa4d88d2465fdd2f3662fa7e2129d1`](https://github.com/grwtsk/math/commit/5fd924ba17aa4d88d2465fdd2f3662fa7e2129d1).
- **New source:** [`GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean`](https://github.com/grwtsk/math/blob/5fd924ba17aa4d88d2465fdd2f3662fa7e2129d1/GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean), blob `28d8456db1dc7c6243b51275b8216e3f1ff89c71`.
- **Direct repository import:** `GRWTSK.NumberTheory.Farey.ResolvableQuintic`, blob `7caef4b022e35202eef471aae2730dff6b518f70` at the integration commit; indirect dependency `Mathlib` at revision `db584cd6d46c92f209a44c0f1c829460d327499d` under Lean `leanprover/lean4:v4.33.0`.
- **Public root:** the new standalone module is **not** imported by `GRWTSK.lean`; root promotion needs independent acceptance.
- **Verification receipts:** none. No executable Lean/Lake toolchain was available in this authoring session.

## Local mathematical statements and exact hypotheses

For `I : Cell`, `q c : Polynomial ℚ`, and the existing definition

```lean
PolynomialResolves c I =
  (c.eval I.left ≤ 0 ∧ 0 ≤ c.eval I.right)
```

the candidate declaration

```lean
GRWTSK.NumberTheory.Farey.polynomialResolves_mul_of_nonneg_at_endpoints
```

assumes **only** `0 ≤ q.eval I.left`, `0 ≤ q.eval I.right`, and `PolynomialResolves c I`. Its conclusion is `PolynomialResolves (q * c) I`. Algebraically this uses `mul_nonpos_of_nonneg_of_nonpos` at the left endpoint and `mul_nonneg` at the right endpoint. It is **one-way**, not an equivalence at a vanishing endpoint.

The counterexample declaration

```lean
GRWTSK.NumberTheory.Farey.exists_endpoint_positive_factor_with_extra_rational_root
```

has explicit existential witnesses `q, c, I, x`, strictly positive `q` at the two endpoints, both polynomial endpoint-sign certificates, and `(q*c).eval x = 0` with `c.eval x ≠ 0`. It uses the genuine determinant-one `Cell` with endpoints `0/1 < 1/1`, and:

```text
q(X) = X² − X + 3/16
c(X) = X − 1/2
x = 1/4
```

| x | q(x) | c(x) | (q·c)(x) |
|---|---:|---:|---:|
| 0 | 3/16 | −1/2 | −3/32 |
| 1/4 | 0 | −1/4 | 0 |
| 1/2 | −1/16 | 0 | 0 |
| 3/4 | 0 | 1/4 | 0 |
| 1 | 3/16 | 1/2 | 3/32 |

All fractions in the table were recomputed using exact rational arithmetic outside Lean. These are **finite computations**, not a kernel proof. In particular, `q(0)` and `q(1)` are positive, yet `q(1/4)=0`, so global positivity cannot be inferred from endpoint data. The product has an additional rational root at `1/4` that `c` lacks.

## Dependency and nonclaim ledger

- **Existing source-level comparison:** `polynomialResolves_mul_iff_of_pos_at_endpoints` assumes strictly positive factor evaluations **at both endpoints** and returns an equivalence of oriented sign certificates. Its consumer `resolvableEye_mul_iff_of_pos_at_endpoints` refers to exactly those certificates, not root existence.
- **Existing rational-root comparison:** `eval_mul_eq_zero_iff_of_pos` assumes the factor is strictly positive **at the very evaluation point `x`**. This is not discharged by endpoint positivity.
- **Existing Record4239 application:** `positiveQuadratic_eval_pos` for `X²+1` has the **stronger global positivity** needed to preserve rational zero sets. The new counterexample does **not** invalidate this specialized application, nor does it provide local 2-descent characters or a Mordell–Weil rank-32 proof.
- **Unresolved premises:** Farey completeness and rational root existence from signs alone; arithmetic spectral cancellation; any Sarnak/disjointness limit; Rank32 independence; compilation, fresh kernel checking and complete transitive axiom acceptance.
- **Relationship:** `LOCAL_IDENTITY_SOURCE_CANDIDATE` for the forward sign theorem, `OBSTRUCTION_AT_SCOPE` for the explicitly authored rational witness **only after kernel acceptance**; until then the example is `FINITE_COMPUTATION_ONLY` plus unverified Lean source. No external paper-to-Lean bridge is claimed.

## Acceptance target (not yet executed)

On the exact integrated main revision and pinned toolchain, execute:

```bash
lake build --wfail GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls
lake env lean GRWTSK/NumberTheory/Farey/ResolvableQuinticEndpointControls.lean
```

Then import the module in a temporary audit file, run `#check` and `#print axioms` on the two public theorem declarations, run the pinned fresh kernel checker, and audit all transitive `sorryAx` / additional axioms, generated and unsafe declarations. Report the **exact SHA and source blobs, commands, stdout/stderr and exit codes**, including any compiler diagnostics or repairs. Static inspection, off-Lean rational arithmetic, a queued validation issue, and the above proposed commands do not establish successful elaboration.
