# Verification target: GRWTSK.Analysis.MeasureTheory.DomAct.Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70a5cd9637a049de6082b74d6db422d60c13725b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70a5cd9637a049de6082b74d6db422d60c13725b`.

Source path: `GRWTSK/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqFun` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--54651421ea1963f8f0c6d8ac.md) | 38 | `declaration-track:54651421ea1963f8f0c6d8ace293aa1a1868a6f6f73034471e408e0e0f6bbf96` |
| 2 | `theorem` | [smul_aeeqFun_aeeq](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/smul-aeeqfun-aeeq--fcef046b5a06e37a10cf3abb.md) | 42 | `result-track:fcef046b5a06e37a10cf3abb4d6c208f0f7042b18aebb64d5c8a05fbe660afa5` |
| 3 | `theorem` | [mk_smul_mk_aeeqFun](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/mk-smul-mk-aeeqfun--8fe0c5063e7a00081c76bb6b.md) | 47 | `result-track:8fe0c5063e7a00081c76bb6b05c0a7c4e1c52a52e78afd91717f8d82c2ad5875` |
| 4 | `theorem` | [smul_aeeqFun_const](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/smul-aeeqfun-const--11b309dac3996d60f78bfe08.md) | 53 | `result-track:11b309dac3996d60f78bfe08d1a40bc950de10eb45179d8fd8bcaa5b1e3b3c8b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--674a94e6d2dff1310fad4d09.md) | 57 | `declaration-track:674a94e6d2dff1310fad4d09c6ea2b947e9e76367e211cd823105f4deaa3459a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--9f18aac2a9c8858b6e509ab0.md) | 60 | `declaration-track:9f18aac2a9c8858b6e509ab0722fd318a84d1565524ca5da561a038885640a53` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--960c69b0390bf0916fcaadbb.md) | 64 | `declaration-track:960c69b0390bf0916fcaadbb12a29b07d171deb5a46708340e4c40b5eaa5bba8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--d1b5928ee68e506e51a979a9.md) | 69 | `declaration-track:d1b5928ee68e506e51a979a9c2f1cd35a502fa34c21e8ec5b6140f9b42ab310a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--36189160ac862f2c396a84af.md) | 73 | `declaration-track:36189160ac862f2c396a84afae302bde77933e2b8aa9f688b15cea3470e588f1` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--bdce4b89c121b417a43995f5.md) | 83 | `declaration-track:bdce4b89c121b417a43995f54f605de7ea095eb2cc82f23c786f7d5134ac9965` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--b5bef912959fa028a3682d70.md) | 89 | `declaration-track:b5bef912959fa028a3682d70d2c93bc7fae460ec8fd6d7b6f1ea26c35295a6d9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/DomAct/Variant28a398bbc1cd0a4c255b5366b86838d5c9a910b147700d636907a834e654631d.lean/declarations/instance--792016279d806eaa8786874d.md) | 93 | `declaration-track:792016279d806eaa8786874d32c99d23901f5b60877a6638cd2ce52bfe56ba39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
