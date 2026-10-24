# Verification target: GRWTSK.Analysis.MeasureTheory.Inner.Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70ac499372c9df610dd5a092e23f0e686b48ffb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70ac499372c9df610dd5a092e23f0e686b48ffb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/inner--b0dc91bd3a99daa81a3ac906.md) | 26 | `result-track:b0dc91bd3a99daa81a3ac90665f307273af607a835226f36bffee487eeea5a00` |
| 2 | `theorem` | [re](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/re--13214e2bc04107488aae1d93.md) | 36 | `result-track:13214e2bc04107488aae1d9370a3eb16b7a8fc898f5034904b41ca82b071dee6` |
| 3 | `theorem` | [im](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/im--4d284fb3e358901d3f2dd388.md) | 41 | `result-track:4d284fb3e358901d3f2dd3883c7831aa6eb1794b0ed0c18036bc9103285fb453` |
| 4 | `theorem` | [inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/inner--070b6a7170cd934f48580482.md) | 46 | `result-track:070b6a7170cd934f485804824ab190af872ad42f60d16456aaff51f2c6a64193` |
| 5 | `lemma` | [inner_const](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/inner-const--56a313bc722c484fb6aad4ac.md) | 52 | `result-track:56a313bc722c484fb6aad4acd4c40cdeed5de6b343ab445e9e7d53938ced16a7` |
| 6 | `lemma` | [const_inner](../../../../../mathematics/Analysis/MeasureTheory/Inner/Variant0fce63fb3a52c4e5a44ab4615fc5a3b3fe5b353a7597216a5fb7d606ee5a2a3f.lean/declarations/const-inner--e2375aad7b02a58ba96fdd39.md) | 56 | `result-track:e2375aad7b02a58ba96fdd39f95837839ee44f7618a5b7049f5e28a63ab5d2bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
