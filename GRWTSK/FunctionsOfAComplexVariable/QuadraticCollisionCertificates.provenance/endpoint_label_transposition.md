# endpoint_label_transposition

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

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates.endpoint_label_transposition`

## Exact fixture

Let x(t)=1-2*t, w(t)=x(t)+i*(1-x(t)^2), and p(t)=w(t)^2, t in [0,1].
The maintained source keeps w and p as explicit polynomial functions.
It proves continuity, w(t)!=0, p(t)!=0, p(0)=p(1)=1,
and w(0)=1, w(1)=-1. The nonvanishing proof is direct: if w=0,
its real part forces x=0 but then its imaginary part is 1, a contradiction.

Both +/-w(t) solve z^2-p(t)=0. The actual complex derivative is 2*z,
which is nonzero at w(t). Thus the root beginning at +1 ends at -1.
With rootLabel(c,w,b) equal to c+w for false and c-w for true,
rootLabel(0,w(1),b)=rootLabel(0,w(0),!b): the endpoint permutation is a swap.

Comparison locator: preceding note section 10, P5.7; the mandatory z^2-t
fixture in monograph section 20.1. Algebraic endpoint evaluation is a second
written check; no new independent runtime replay is claimed.

## Scope

This proves an explicit continuous nonvanishing parameter loop and its root
lift identities, not a general covering-space lifting theorem or an integer
winding-number computation. The parameter is complex in the interior, so
real-parameter reality preservation is not asserted along this loop.
The function-valued traversal and its endpoint effect remain distinct objects.

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
