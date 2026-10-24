# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousMap.Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb8b2515241a4bf01b6d5bf0c90d53e705bd44fc`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.SecondCountableSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ContinuousMap.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmap-measurablespace--efb3c31c1013f705d26f6323.md) | 51 | `declaration-track:efb3c31c1013f705d26f6323a76173bd81350a6d05535cfdd6733bc981db0c7d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/instance--944c76ad1f89c3f0a930c304.md) | 53 | `declaration-track:944c76ad1f89c3f0a930c304d6d4e26636628e5905bb50a14fda990a7eca6c00` |
| 3 | `lemma` | [ContinuousMap.measurable_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmap-measurable-eval--97ffae1ae9f9ec161f7c1076.md) | 56 | `result-track:97ffae1ae9f9ec161f7c107615084e3f38b0fe013ca91f13b4ab7dde7c322008` |
| 4 | `lemma` | [ContinuousMap.iSup_comap_le_borel](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmap-isup-comap-le-borel--1cafeafe3ef23b8fa55208c3.md) | 62 | `result-track:1cafeafe3ef23b8fa55208c3807f781c4aaea7ae3fad1900bf130af6b74b4f83` |
| 5 | `theorem` | [borel_eq_iSup_comap_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/borel-eq-isup-comap-eval--e2a8584d84863b04546a3298.md) | 77 | `result-track:e2a8584d84863b04546a3298d095cd9db4d0ba55afc7887d53cb3be4c3100328` |
| 6 | `lemma` | [measurableSpace_eq_iSup_comap_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/measurablespace-eq-isup-comap-eval--6dd1b355bd5481bc939847b8.md) | 149 | `result-track:6dd1b355bd5481bc939847b846ac946a8683fa68d26fbe8add23036888ce3671` |
| 7 | `lemma` | [measurable_iff_eval](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/measurable-iff-eval--145c43446273fbe2cd3b45b2.md) | 155 | `result-track:145c43446273fbe2cd3b45b20b6840ec875f95fc9b2b9f7d52faa73a382f5a9e` |
| 8 | `def` | [continuousMapToFun](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmaptofun--696d53291e462975fe2c81c6.md) | 168 | `declaration-track:696d53291e462975fe2c81c6b92d3aab17296cfe2abfd99f9e6457b8aecc843b` |
| 9 | `lemma` | [continuousMapToFun_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmaptofun-apply--baabe3b9a8ec9efd6b2aab38.md) | 179 | `result-track:baabe3b9a8ec9efd6b2aab3833a88ab6f8b57f07b3ae24856b4b41d2043e7ac1` |
| 10 | `lemma` | [symm_continuousMapToFun_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/symm-continuousmaptofun-apply--13794b6f6df5e19d2c2fb744.md) | 183 | `result-track:13794b6f6df5e19d2c2fb7444a77f1fa96cf5f6f9cba5a20e7f2a2b5cd55188d` |
| 11 | `lemma` | [continuousMapToFun_apply_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/continuousmaptofun-apply-apply--21ec4745618cfcd9a0d9bed6.md) | 186 | `result-track:21ec4745618cfcd9a0d9bed6f0317476afd5d9965cf9ba60e70f03dadcf19368` |
| 12 | `lemma` | [symm_continuousMapToFun_apply_apply](../../../../../mathematics/Analysis/MeasureTheory/ContinuousMap/Variant972595ba4c9f6335f15ced3dd4a6a38fd9b8541a6d4fbbdfeb5e41d8fe5fdc0b.lean/declarations/symm-continuousmaptofun-apply-apply--772df8e35a09175d4c4ce675.md) | 189 | `result-track:772df8e35a09175d4c4ce675c51e60382c261ae6f01d991f485a131694d8e8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
