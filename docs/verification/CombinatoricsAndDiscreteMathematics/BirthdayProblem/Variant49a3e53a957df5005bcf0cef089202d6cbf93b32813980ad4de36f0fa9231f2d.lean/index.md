# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BirthdayProblem.Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae13c87dd05a8794fdfa5af34c5f14e71462117",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae13c87dd05a8794fdfa5af34c5f14e71462117`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.CardEmbedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.UniformOn` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [birthday](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/birthday--cf32e0f80531d6d8811392ad.md) | 28 | `result-track:cf32e0f80531d6d8811392ada82e42571d20df36375d1fbd9ba5cec0187ea71e` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/instance--d91dbd5ded126811caa1040a.md) | 46 | `declaration-track:d91dbd5ded126811caa1040aadda900c6fdbb749b0647052918d0277ba8fe510` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/instance--228f56c5697479a38021a721.md) | 49 | `declaration-track:228f56c5697479a38021a721a752d7831e3665d5e03c93dadeabc4b319f993eb` |
| 4 | `instance` | [measureSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/measurespace--c6e9798200e7cb604f1a0d86.md) | 54 | `declaration-track:c6e9798200e7cb604f1a0d86f049b4c925d841e6bd438a4be0a7eb661404090e` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/instance--b66baa95c6b20d228623f3ff.md) | 58 | `declaration-track:b66baa95c6b20d228623f3ff731f1a5941ab81440e2bcc31bf75d490790dcd44` |
| 6 | `theorem` | [FinFin.measure_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/finfin-measure-apply--644828e9c8800d30f151cf72.md) | 61 | `result-track:644828e9c8800d30f151cf72de98671cd77bf3cfb0b0fd594cc1a4fe42e31299` |
| 7 | `theorem` | [birthday_measure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant49a3e53a957df5005bcf0cef089202d6cbf93b32813980ad4de36f0fa9231f2d.lean/declarations/birthday-measure--1885267b8042f322ed2d7d99.md) | 66 | `result-track:1885267b8042f322ed2d7d99f38a50907abde685f0b20498892200fa5513901f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
