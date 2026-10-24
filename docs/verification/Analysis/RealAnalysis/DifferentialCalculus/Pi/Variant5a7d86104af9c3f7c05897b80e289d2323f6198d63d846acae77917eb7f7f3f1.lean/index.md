# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240e09e3dfb2de4dffeb0e37110746e95d6ebdfa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240e09e3dfb2de4dffeb0e37110746e95d6ebdfa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/declarations/hasfderivat-update--bdf7c2696e71bc889e163edb.md) | 24 | `result-track:bdf7c2696e71bc889e163edbb36a4c43f4f697be8908104e6efe7e85698cd94d` |
| 2 | `theorem` | [hasFDerivAt_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/declarations/hasfderivat-single--b298fe1439f1a95e06190d62.md) | 39 | `result-track:b298fe1439f1a95e06190d62ef98f7ab82477144e5798f1f0376d0843d83125d` |
| 3 | `theorem` | [fderiv_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/declarations/fderiv-update--5cb16c1047ae625166d9676c.md) | 43 | `result-track:5cb16c1047ae625166d9676c488c84d99d15a843c464d1dc9e7db5a1da62eb8a` |
| 4 | `theorem` | [fderiv_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Variant5a7d86104af9c3f7c05897b80e289d2323f6198d63d846acae77917eb7f7f3f1.lean/declarations/fderiv-single--a798cc92d93446cad3ae2f1b.md) | 47 | `result-track:a798cc92d93446cad3ae2f1b0ac1528f776b019d82fb9f52af9bee7f63b1d4d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
