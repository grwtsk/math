# Verification target: GRWTSK.Algebra.LittleWedderburn.Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a53e20a6bbc1814282924aa43387965a16c76fbe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/index.md) · [Full source](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a53e20a6bbc1814282924aa43387965a16c76fbe`.

Source path: `GRWTSK/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Center` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.ClassEquation` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Cyclotomic.Eval` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InductionHyp](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/inductionhyp--9166dc6926acab2bbae8e9c1.md) | 58 | `declaration-track:9166dc6926acab2bbae8e9c1473f9e5d2d641ab6fa5904c39dd1a7ff7372d698` |
| 2 | `def` | [field](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/field--19657f73a795e482cb0f0b05.md) | 68 | `declaration-track:19657f73a795e482cb0f0b05e6963267d0129a0ef9f5a4634afdf57d20a5eb07` |
| 3 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/center-eq-top--03a249638962ca1f089bd845.md) | 76 | `result-track:03a249638962ca1f089bd84505ea97d15df2eae935ba194322f9fa14a540f1cb` |
| 4 | `theorem` | [center_eq_top](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/center-eq-top--bf906caf3fd90030da15c4f6.md) | 153 | `result-track:bf906caf3fd90030da15c4f6d5490ef0ce3ae65cf12189b92dae0fb52ff98482` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/instance--d485b393bb66eca9721546b6.md) | 177 | `declaration-track:d485b393bb66eca9721546b616b7e173318c367a131c25a08189b9f6c58c07ca` |
| 6 | `theorem` | [Finite.isDomain_to_isField](../../../../mathematics/Algebra/LittleWedderburn/Variant1e7a0f0af35124e6b3bca580ef9f4b72f7034f1580c7c605e724082d7f6cafe5.lean/declarations/finite-isdomain-to-isfield--0c1b5ea64a000b097bf940d4.md) | 184 | `result-track:0c1b5ea64a000b097bf940d4cf5512976911b549aa293bf658eebaf8288cc3a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
