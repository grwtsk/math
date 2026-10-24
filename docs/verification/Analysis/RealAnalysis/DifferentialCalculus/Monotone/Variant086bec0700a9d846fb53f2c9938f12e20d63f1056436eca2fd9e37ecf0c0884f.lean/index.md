# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Monotone.Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9cce07405defc3251ae98785ba81a07564b34e8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9cce07405defc3251ae98785ba81a07564b34e8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.OneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Extension` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/macro-rules--64d5ab17a1ed16998af391a2.md) | 39 | `declaration-track:64d5ab17a1ed16998af391a20c0de75cd9fc162abe082a61c82af1acc6b16445` |
| 2 | `theorem` | [tendsto_apply_add_mul_sq_div_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/tendsto-apply-add-mul-sq-div-sub--d696312b7d0115fd2e1f047a.md) | 46 | `result-track:d696312b7d0115fd2e1f047ab6c876996594c641046ffdc8ad937ba2af2b4afc` |
| 3 | `theorem` | [StieltjesFunction.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/stieltjesfunction-ae-hasderivat--57f6ef465697073226b57b35.md) | 69 | `result-track:57f6ef465697073226b57b35204a419f9e0163a25dc73768a389ed81cf4e06f7` |
| 4 | `theorem` | [Monotone.ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/monotone-ae-hasderivat--3487487df7abcacbd7cd965c.md) | 138 | `result-track:3487487df7abcacbd7cd965ce8cf019b48999731e505ff8bf027ef84f7123d65` |
| 5 | `theorem` | [Monotone.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/monotone-ae-differentiableat--1a2e83bc90b49148a2b4de76.md) | 218 | `result-track:1a2e83bc90b49148a2b4de7605250c3921b91694c4590029a761c9c902643e5d` |
| 6 | `theorem` | [MonotoneOn.ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/monotoneon-ae-differentiablewithinat-of-mem--fda6223738b5337ae80184e4.md) | 227 | `result-track:fda6223738b5337ae80184e4e5bda4c625fb1f9b7a978b30c5646d7eea17c8c8` |
| 7 | `theorem` | [MonotoneOn.ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant086bec0700a9d846fb53f2c9938f12e20d63f1056436eca2fd9e37ecf0c0884f.lean/declarations/monotoneon-ae-differentiablewithinat--b62e6ea2346ea5f42b4571e2.md) | 250 | `result-track:b62e6ea2346ea5f42b4571e2b8442649a3a675e733d708f4bcee2e9ec9b718ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
