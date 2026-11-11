# half_second_derivative_of_source_identities

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

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.half_second_derivative_of_source_identities`

## Exact conditional statement

For real u,v,a,Fzz,Ftz,Ftt with u!=0, assume
Fzz=2*u, Ftz=-2*u*v and Ftt=2*u*v^2-u*a.
Then (Ftz^2-Ftt*Fzz)/Fzz^2=a/2.

Expand the numerator: (-2*u*v)^2-(2*u*v^2-u*a)*(2*u)=2*u^2*a.
The denominator is 4*u^2 and is nonzero. Field simplification gives a/2.
The companion collision_hessian_pos_iff shows that the numerator's sign
is the sign of a because 2*u^2>0.

Comparison locator: preceding note section 6, P5.4. In that analytic setting
u=U(t0,x0), v=c'(t0), a=d''(t0), and the displayed identities follow by
differentiating F=U*((z-c(t))^2-d(t)) at a tangent double collision.
This module proves ONLY the algebra after those three identities are supplied.
Its free real variables are not silently identified with actual derivatives.
It does not prove Weierstrass preparation, the derivative identities,
F_t=0, or a sign assertion for any arithmetic source.

## Countermodels and consumer

For z^2-t^2 one has u=1,v=0,a=2 and the numerator is 4;
for z^2+t^2, a=-2 and the numerator is -4. For z^2-t^3, a=0,
so second-order information is inconclusive. These are written algebraic
comparisons, not a claimed new run of the earlier Python controls.
The consumer is a local source collision certificate after actual analytic
factorization and derivative evidence have been constructed.

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
