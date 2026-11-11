# reality_of_even_factor_certificate

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

File: `GRWTSK/FunctionsOfAComplexVariable/QuadraticCollisionCertificates.lean`

SHA-256: `25879c3580af02d466da8619cd4cddd1b92d395ad84e076611b7d144135760dd`

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.reality_of_even_factor_certificate`

## Statement and proof

For real c,d,x,a,r,B and natural k, assume
  d=(x^k)^2*(a+r), abs(r)<=B, B<=a.
Then every complex zero of (z-c)^2-d is real.

The absolute-value bound gives r>=-B, hence a+r>=a-B>=0.
Multiply by the nonnegative square (x^k)^2, and apply the exact quadratic
reality criterion. Equality is admitted, so singular positive-semidefinite
cases and collisions are not discarded.

Comparison locator: preceding note section 7, P5.5's sufficient even-power
remainder budget, specialized to a quadratic discriminant. This proof uses
an exact supplied remainder bound, not a numerical tolerance or a claim that
a Taylor coefficient is zero. The same inequalities also give a direct
real-arithmetic cross-check; independent execution/review was not performed.

## Missing analytic and arithmetic premises

A genuine Taylor factorization with the asserted vanishing order, an explicit
neighborhood, and a validated bound for its remainder still have to be supplied
for each source. A failed budget is unresolved, not a proof of a negative
minor. No arbitrary-degree principal-minor theorem or universal collision
classification is claimed in this increment.

## Reproduction boundary

In a clean checkout of the publication commit, keep the recorded toolchain and
locked dependencies, obtain their normal build artifacts, then run:

```sh
lake build GRWTSK.FunctionsOfAComplexVariable.QuadraticCollisionCertificates
```

Expected acceptance is a successful Lean build with no unresolved proof holes;
that result has not been observed here. A fresh replay and transitive axiom audit
are additional checks, not inferred from publication or from a build exit status.
Any later receipt must identify the exact commit and declaration. No verification
workflow or dependency version was added or changed for this publication.
