# hermiteNonnegative_iff_allRootsReal

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

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.hermiteNonnegative_iff_allRootsReal`

## Statement and argument

The quadratic form H(x,y)=2*x^2+4*c*x*y+2*(c^2+d)*y^2 is nonnegative
for all real x,y exactly when all complex roots of (z-c)^2-d are real.
This is the Newton-sum matrix [[2,2c],[2c,2(c^2+d)]] written as its
quadratic form; the source does not claim an elaborated Matrix.PosSemidef API.

The complete primary argument is H=2*(x+c*y)^2+2*d*y^2. Thus d>=0 is
sufficient; the test vector (-c,1) gives H=2*d and proves necessity.
The root criterion in the same module closes the equivalence. At d=0 the
form is singular and is accepted: strict positive definiteness is not assumed.

Comparison locator: preceding note section 5, P5.3, degree-two specialization
of the classical Hermite--Sylvester criterion. The full cited general theorem
is not reproduced or verified in this module. The negative test vector is a
separate algebraic falsification check, not independent analytical review.

## Scope and source return

This is a local root-location form, not the arithmetic Weil form. No pole,
prime-power, gamma, conductor or parity term is discarded by replacing one
with the other: no such replacement is made. SourceChart requires equality
to the actual source on an open domain with an analytic nonzero multiplier
and a positive integral power of Q. The arithmetic consumer uses that identity.
Contour moments and the validation of such source charts are unproved obligations.

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
