# primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion

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

File: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirichletQuadraticClusterReturn.lean`

SHA-256: `09ffa022a42611c93c6aaa8c981ed365372870db12e7412b581b7ba5d0289e2c`

Declaration: `GRWTSK.NumberTheory.DirichletQuadraticClusterReturn.primitive_dirichlet_critical_strip_of_quadratic_chart_exhaustion`

## Exact target and quantified premise

Target: for every positive modulus N (represented by NeZero N), every
primitive complex Dirichlet character chi modulo N, and every s with
0<re(s)<1, LFunction(chi,s)=0 implies re(s)=1/2.
The conductor-one case is included. The source is the analytic continuation
`DirichletCharacter.LFunction`, not the totalized naive `LSeries`.

Premise: for every such N,chi and every natural radius n, every zero s in
the open strip with norm(s)<n belongs, after the specified coordinate change,
to a SourceChart of the actual function z -> LFunction(chi,1/2+i*z),
whose quadratic Hermite form is nonnegative. SourceChart contains an open
domain, a real center and discriminant, a positive multiplicity exponent,
an analytic nonvanishing unit, and equality with that powered quadratic
throughout the domain. It is not merely a list of guessed zero locations.

## Complete proof

Given s, choose n>norm(s) using the Archimedean property. Apply the universal
coverage premise to obtain a chart. The Hermite criterion implies d>=0.
The actual source equality and nonzero unit imply Q(z)^m=0 and hence Q(z)=0.
The quadratic criterion gives im(z)=0. The coordinate z=(im(s),1/2-re(s))
therefore yields re(s)=1/2. The file separately proves the coordinate inverse
and the local chart return before assembling the all-character statement.

Comparison locator: preceding note section 9, P5.6, specialized to powered
quadratic charts and the explicit open critical-strip source. This is a
conditional interface and elementary local-to-global consequence, not a
new analytic proof of the coverage premise or a proof of GRH.

## Arithmetic identity and limitations

Pinned upstream source: Mathlib/NumberTheory/LSeries/DirichletContinuation.lean
at the recorded Mathlib revision; definition DirichletCharacter.LFunction.
The published spectralCoordinate, spectralCoordinate_im_eq_zero_iff, and
criticalStripStatement are reused from GRWTSK.NumberTheory.WeilNegativeWitness
at main revision 66dd3f2ae220125c08559b79920588742104be86, blob
35111c956a8c68047199e1fb2aab9ca24848004d. This preserves the concurrent
RP-OC-02 source target rather than creating an incompatible replacement.
No completed-L-function normalization is silently identified with this source.
Conductor and gamma normalization, analytic cancellation at completed-zeta
poles, boundary nonvanishing, and equivalence to the preceding note's entire
completed-source target remain separate obligations. No normalization by a
possibly zero central value is used.

The premise remains universal in the modulus, primitive character, radius and
zero. Finitely many certified windows cannot establish it. No suitable arithmetic
family, chart-construction algorithm, contour completeness theorem or general
higher-cluster Hermite criterion is supplied. The positive exponent admits
repeated roots; this is not an assumption of global simplicity.

## Reproduction boundary

In a clean checkout of the publication commit, keep the recorded toolchain and
locked dependencies, obtain their normal build artifacts, then run:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DirichletQuadraticClusterReturn
```

Expected acceptance is a successful Lean build with no unresolved proof holes;
that result has not been observed here. A fresh replay and transitive axiom audit
are additional checks, not inferred from publication or from a build exit status.
Any later receipt must identify the exact commit and declaration. No verification
workflow or dependency version was added or changed for this publication.
