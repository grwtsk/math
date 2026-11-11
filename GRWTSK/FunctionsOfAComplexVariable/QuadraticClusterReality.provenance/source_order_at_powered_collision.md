# source_order_at_powered_collision

Attribution: grwtsk contributors.

Status: authored Lean source candidate. Successful elaboration, fresh kernel replay,
transitive axiom audit, independent analytical review and independent reproduction:
**NOT_RUN**. No novelty claim; novelty of the overall research program is UNASSESSED.
The presence of a proof term in this file is not a claim that Lean accepted it.

Coordination: https://github.com/grwtsk/math/issues/1809

## Sources and pins

- Canonical repository inspected: grwtsk/math at `bb75ebe3151f242c8c9b1244ac38565d24ac93df`.
- Lean toolchain: `leanprover/lean4:v4.34.1`.
- Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`; dependency versions and root imports are unchanged.
- grwtsk contributors, *Typed Mathematical Architecture and Zero-Distribution-Dependent
  Continuity*, edition 1.0, 2026-11-10, section 20.1, RP-OC-05 (PDF page 52,
  printed page 43). Uploaded PDF SHA-256:
  `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
- The preceding written, unreviewed development is `research-note.md` from
  `rp-oc-05-2026-11-10-v1`, SHA-256
  `5cb033379f0cafdd540bbab75bde1383eaa21443dd14a195bff238c9ca7b55de`.
  This records its source identity, not a claim that that earlier unpublished
  research package has been committed or independently checked.
- Noe main checked at `0126ba445446dea25047a89884df1adf6b10251a`:
  the prescribed `noe-proof-automation/SKILL.md` path returned 404. No dependent
  proof automation, remote execution, scheduling or cross-chat messaging was invoked.

## Maintained source

File: `GRWTSK/FunctionsOfAComplexVariable/QuadraticClusterReality.lean`

SHA-256: `3db49544fad61663e5afda2fb34e443b4fbda7e9db6f77fb9b2f286db211a572`

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.source_order_at_powered_collision`

## Statement and argument

For real c, natural m, and a complex function u analytic and nonzero at c,
the analytic order at c of u(z)*(((z-c)^2)^m) is 2*m. In particular m=1
has order two, while the support of the zero divisor locally has one point.
No conversion from a set cardinality to an analytic order is used.

Use the canonical AnalyticOrderTransport.order_mul_nonzero_right to remove
only the analytic multiplier known nonzero at the same point. Flatten the
power to (z-c)^(2*m), then use Mathlib analyticOrderAt_centeredMonomial.
The source also retains the direct order-two specialization.

Exact reused source:
GRWTSK/FunctionsOfAComplexVariable/AnalyticOrderTransport.lean at the base pin,
blob `930cad7ce9c6b64663bf02bfa0745919fffdbcc6`.
Mathlib source: Mathlib/Analysis/Analytic/Order.lean at the pinned revision.
This is reuse of existing order calculus, not a new paper formalization or a
claim that the imported local source candidate has been independently checked.

Comparison locator: preceding note sections 4-6 (P5.2-P5.4). An elementary
polynomial factor calculation gives the same multiplicity, but has not been
run as an independent verification. The hypotheses exclude a vanishing unit;
removing that hypothesis changes the order. m=0 correctly yields order zero.

## Consumer and limitations

This is the multiplicity component of the powered-quadratic source chart.
The chart representation retains a positive exponent, so it imposes neither
global simplicity nor an arbitrary maximum multiplicity. General mixed
clusters, local identity transport through arbitrary charts, and contour
recovery of exponents are not established by this lemma.

## Reproduction boundary

In a clean checkout of the publication commit, keep the recorded toolchain and
locked dependencies, obtain their normal build artifacts, then run:

```sh
lake build GRWTSK.FunctionsOfAComplexVariable.QuadraticClusterReality
```

Expected acceptance is a successful Lean build with no unresolved proof holes;
that result has not been observed here. A fresh replay and transitive axiom audit
are additional checks, not inferred from publication or from a build exit status.
Any later receipt must identify the exact commit and declaration. No verification
workflow or dependency version was added or changed for this publication.
