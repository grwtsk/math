# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.EffectiveArithmeticSource.Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0220456f39e10def696594c7ec2a51cc257d8d4b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0220456f39e10def696594c7ec2a51cc257d8d4b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.EffectivePresentation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UniformityModel](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/uniformitymodel--98e29532cce6efcc4de7729a.md) | 16 | `declaration-track:98e29532cce6efcc4de7729aa09e012cd02eea13857b329341201be6c31a4ee0` |
| 2 | `structure` | [EffectiveResourceModel](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/effectiveresourcemodel--2f344b0df0c955014da9dfda.md) | 24 | `declaration-track:2f344b0df0c955014da9dfdac298aa80f33d524766f6cda1c735afdd415bfd77` |
| 3 | `structure` | [EffectiveArithmeticSource](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/effectivearithmeticsource--842a595d848df01625b42fe7.md) | 35 | `declaration-track:842a595d848df01625b42fe72754a00176f8338a2de39220b9b03c9a8dc8eb3c` |
| 4 | `structure` | [EffectiveArithmeticMorphism](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/effectivearithmeticmorphism--d49bb6534598c4d45ccc44d9.md) | 51 | `declaration-track:d49bb6534598c4d45ccc44d9edbfdf80e079b4919b3f39b2b7b5f8ef9923ebd2` |
| 5 | `def` | [identity](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/identity--e74f1e172633bda52808116e.md) | 87 | `declaration-track:e74f1e172633bda52808116e3fe9435573b01cfc1fe4178053f16456395d304e` |
| 6 | `def` | [comp](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/comp--499a666d12a42c101863563b.md) | 108 | `declaration-track:499a666d12a42c101863563b4bf687545217957e3ae93d60bc0475438348e966` |
| 7 | `theorem` | [comp_cost](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/comp-cost--3cc28ca476461a263d42f5b4.md) | 150 | `result-track:3cc28ca476461a263d42f5b487c8986e1fe4e7e555fc3c23b829f698fb3b013e` |
| 8 | `theorem` | [comp_advantageLoss](../../../../mathematics/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant7b047fa454455633f63f03aefc49f5aa1d67599be923eeb46ddfaf49b690f1c1.lean/declarations/comp-advantageloss--a96c1de4dbac164dc9a9ac11.md) | 161 | `result-track:a96c1de4dbac164dc9a9ac1142b063f7dcb200194ca238e9873c2efec2c26cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
