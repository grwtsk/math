# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.EffectiveArithmeticSource.Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f9eb67358ca74165f09deb63799b4ff6396522",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f9eb67358ca74165f09deb63799b4ff6396522`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.EffectivePresentation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UniformityModel](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/uniformitymodel--7d54fd566d9ecf892220b3b1.md) | 24 | `declaration-track:7d54fd566d9ecf892220b3b1328e8d158f40f04db5a550bfb296a4f86568c90b` |
| 2 | `structure` | [EffectiveResourceModel](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/effectiveresourcemodel--6be4389c068783e886bbdffd.md) | 32 | `declaration-track:6be4389c068783e886bbdffd1de0b4d5b33f6c628f99600916558a7663f889b2` |
| 3 | `structure` | [EffectiveArithmeticSource](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/effectivearithmeticsource--84d20cbc7a18ba8a3d351e2d.md) | 43 | `declaration-track:84d20cbc7a18ba8a3d351e2dd951c6dfc13313f67d5e4e89687aa24bb52c1e57` |
| 4 | `structure` | [EffectiveArithmeticMorphism](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/effectivearithmeticmorphism--522ceaeadbc42102f03b76a0.md) | 59 | `declaration-track:522ceaeadbc42102f03b76a0badb9c670136090a4df3f371591760e7fd9bcd78` |
| 5 | `def` | [identity](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/identity--0aa62f0389b49769d6f7660b.md) | 95 | `declaration-track:0aa62f0389b49769d6f7660b372e1ede11f52947728baee2a039bf0098ee8c97` |
| 6 | `def` | [comp](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/comp--06ecfbf49501e62f963370fc.md) | 116 | `declaration-track:06ecfbf49501e62f963370fc371658f7d217667ba711b1ae4e91bc0c31b2de97` |
| 7 | `theorem` | [comp_cost](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/comp-cost--3ff1570a3f822aa7a80e1025.md) | 158 | `result-track:3ff1570a3f822aa7a80e10255fc2eeac76b6567ccc76e825c4da2fb573245b2d` |
| 8 | `theorem` | [comp_advantageLoss](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/declarations/comp-advantageloss--6dab69cdadb625205fb12f51.md) | 169 | `result-track:6dab69cdadb625205fb12f51df455ee44dfe5a4ad28ed4dc1b54788f53ca7eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
