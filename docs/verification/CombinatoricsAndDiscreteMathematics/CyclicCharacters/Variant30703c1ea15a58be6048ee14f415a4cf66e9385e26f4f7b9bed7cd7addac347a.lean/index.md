# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CyclicCharacters.Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f970ba70d1eef2141b3aeb3e891de7fc25f8e0b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_02ba69e230364621` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_143519467ea15a13` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_2f57ce7ce804bfc6` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_9d51bf74a19cefa9` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_c6db419b9a8344dc` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclicCharacter_normSq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cycliccharacter-normsq--e31c9a01561174b7d39cf6b3.md) | 28 | `result-track:e31c9a01561174b7d39cf6b3473130160eeb90a32e393b9f192854f7a565d0f0` |
| 2 | `theorem` | [cyclicCharacter_conj_mul_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cycliccharacter-conj-mul-self--5167588b43878403dc7ca996.md) | 34 | `result-track:5167588b43878403dc7ca996f495ed4a989919cd1432e2b8fe02126fb4e75c59` |
| 3 | `theorem` | [cyclicCharacterCoefficient_projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cycliccharactercoefficient-projector--28e064cd990f07fb9f7f75b9.md) | 39 | `result-track:28e064cd990f07fb9f7f75b98bf0a5d06951d2e65496c83134cf68a823ed30ce` |
| 4 | `theorem` | [cyclicCharacterProjector_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cycliccharacterprojector-idempotent--6eee1b95333a62c0910eec42.md) | 76 | `result-track:6eee1b95333a62c0910eec4287148dc1a14b1f6a3f23ab86f4f2038cde3e243f` |
| 5 | `theorem` | [conj_cyclicCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/conj-cycliccharactercoefficient--741a65da88e74aeb8a1c8121.md) | 88 | `result-track:741a65da88e74aeb8a1c812158d8a314927a5cb4f81202fa161cd839090db2c1` |
| 6 | `theorem` | [conj_natCast_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/conj-natcast-inv--26b9fd90bce705d3b313e441.md) | 102 | `result-track:26b9fd90bce705d3b313e4418d52e9d7868fc55e57dc28c3c77a8de25fdaa1dc` |
| 7 | `theorem` | [cyclicInnerProduct_projector_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cyclicinnerproduct-projector-left--4a8c8659cdbf445407c38e61.md) | 106 | `result-track:4a8c8659cdbf445407c38e61ba48e8f6ed11c1ce95b6e14838a8e3bb90c358c7` |
| 8 | `theorem` | [cyclicInnerProduct_projector_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cyclicinnerproduct-projector-right--aea964f4e145967ac07799c9.md) | 136 | `result-track:aea964f4e145967ac07799c90473a0587b43a64d9c50ca7e0941d96d4fd6e06a` |
| 9 | `theorem` | [cyclicCharacterProjector_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CyclicCharacters/Variant30703c1ea15a58be6048ee14f415a4cf66e9385e26f4f7b9bed7cd7addac347a.lean/declarations/cycliccharacterprojector-selfadjoint--ab3ccf47e849a3b10158976f.md) | 168 | `result-track:ab3ccf47e849a3b10158976f76490aa7dc52316432cf24dcb41df22b42fdd061` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
