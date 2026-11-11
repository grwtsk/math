# allRootsReal_quadratic_iff

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

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.allRootsReal_quadratic_iff`

## Statement and argument

For real c,d, every complex zero of Q(z)=(z-c)^2-d has imaginary part zero
if and only if d>=0. Quantification is over every complex z, not a supplied
root list. At d=0 the root is permitted to be repeated.

For z=x+iy, the zero equation implies (x-c)^2-y^2=d and 2(x-c)y=0.
If d>=0 and y were nonzero, x=c would force -y^2=d, a contradiction.
For d<0, z=c+i*sqrt(-d) is an explicitly constructed nonreal zero.
The source implements these two directions with real/imaginary projections
and Mathlib's Real.sq_sqrt and Real.sqrt_pos. This is an elementary quadratic
consequence, not a newly proved Hermite--Sylvester theorem.

Comparison locator: preceding note section 5, P5.3, restricted to the
centered monic quadratic; also section 6, P5.4's local quadratic factor.
Alternative check: direct factorization at +/-sqrt(d) for d>=0 and at
+/-i*sqrt(-d) for d<0. This mathematical comparison was written here;
it was not an independent computer replay or independent review.

## Consumers and controls

Consumers are the Hermite criterion and SourceChart.im_eq_zero_of_zero.
quadratic_eq_two_factors retains both factors even at coincidence.
square_parameter_real permits a real double collision; negative_parameter_not_real
rejects d=-1. Central roots are not removed. No global simplicity is assumed.
The generic high-degree criterion and contour-moment extraction remain open here.

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
