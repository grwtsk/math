# quadratic_circle_margin

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

Declaration: `GRWTSK.Analysis.ComplexAnalysis.QuadraticClusterReality.quadratic_circle_margin`

## Statement and argument

For z complex and t real, if norm(z)=2 and abs(t)<=1, then norm(z^2-t)>=3.
The triangle inequality gives norm(z^2)<=norm(z^2-t)+norm(t); complex
norm multiplicativity gives norm(z^2)=4, and norm((t:complex))=abs(t)<=1.
Subtract the latter bound. No root-finding calculation enters the argument.

Comparison locator: preceding note section 3, P5.1's hostile family z^2-t.
Together with the same module's d>=0 reality criterion, this exhibits a
uniform boundary margin while real-rootedness changes as t crosses zero.
The existing theorem negative_parameter_not_real rejects t=-1. This is the
precise obstruction to inferring real-rootedness from contour safety alone.

## Unproved step

The formal norm bound does NOT invoke Rouche's theorem or prove the contour
zero count. Analytic zero counting, completeness and parameter-cell
variation remain separate obligations. The written mathematical comparison
to Rouche is standard but is not a fresh Lean proof in this source.

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
