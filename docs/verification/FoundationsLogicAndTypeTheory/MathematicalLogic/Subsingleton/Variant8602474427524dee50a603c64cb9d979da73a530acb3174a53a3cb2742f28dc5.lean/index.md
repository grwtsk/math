# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d82c9902f6a3caaa9c6be0fc720c5ff2384a4aa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d82c9902f6a3caaa9c6be0fc720c5ff2384a4aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.CountablyGenerated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton--3a8eb88296397b73d9e756ef.md) | 23 | `declaration-track:3a8eb88296397b73d9e756ef1b9fd78031296dd50de2dc960cacaa7c942a8e65` |
| 2 | `theorem` | [HasBasis.subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/hasbasis-subsingleton-iff--25374b1a2fd9e997535f85fb.md) | 25 | `result-track:25374b1a2fd9e997535f85fb7bb60e9d048a059f95de16f83f01feec905d539c` |
| 3 | `theorem` | [Subsingleton.anti](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-anti--e1cab46955ef1e6fec9f4dea.md) | 29 | `result-track:e1cab46955ef1e6fec9f4deafa68be9d2694f7ba207d6df298fdf46885a045a6` |
| 4 | `theorem` | [Subsingleton.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-of-subsingleton--3cfa997d7c88455e4f75ae04.md) | 33 | `result-track:3cfa997d7c88455e4f75ae04e12b6fc8eb5ad7d0370d88a04d97d4022e422ab3` |
| 5 | `theorem` | [Subsingleton.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-map--481bb833a47ac6ff71f827f8.md) | 36 | `result-track:481bb833a47ac6ff71f827f8d6c2bcb2e9810d1d0ab3b731df66af17ed1a4f30` |
| 6 | `theorem` | [Subsingleton.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-prod--a8ac721672234dffeecc6546.md) | 39 | `result-track:a8ac721672234dffeecc654653c9ac494426d2d76ed8670ac2a019c12952ac89` |
| 7 | `theorem` | [subsingleton_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-pure--df0a64585947e7bd5978b17b.md) | 44 | `result-track:df0a64585947e7bd5978b17ba53a214225341fac17051b95970e9c7fcd813f45` |
| 8 | `theorem` | [subsingleton_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-bot--527f61b8b5ee80295169eeea.md) | 48 | `result-track:527f61b8b5ee80295169eeeae2e4110b7ed9111afa5fad083e8656262ce4dee1` |
| 9 | `theorem` | [Subsingleton.exists_eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-exists-eq-pure--aa21a774fc40ff945f5a377b.md) | 52 | `result-track:aa21a774fc40ff945f5a377b7829074d8fa229237273c25a0b508fc9b6b34d6d` |
| 10 | `theorem` | [subsingleton_iff_bot_or_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-iff-bot-or-pure--0d55aa452d1705e48fdb1f1a.md) | 59 | `result-track:0d55aa452d1705e48fdb1f1a46439f075df8500d40d004fbb378edb91a2d9ded` |
| 11 | `theorem` | [subsingleton_iff_exists_le_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-iff-exists-le-pure--66916c1f6074c319b73146ed.md) | 66 | `result-track:66916c1f6074c319b73146edada2d9e77433eeca5f07f1213f566da0d28643b8` |
| 12 | `theorem` | [subsingleton_iff_exists_singleton_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-iff-exists-singleton-mem--5e45fbb99588995a7a70f87b.md) | 71 | `result-track:5e45fbb99588995a7a70f87b7f3eba40983e76862e5a6bded61fe80813af3e0d` |
| 13 | `lemma` | [Subsingleton.isCountablyGenerated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant8602474427524dee50a603c64cb9d979da73a530acb3174a53a3cb2742f28dc5.lean/declarations/subsingleton-iscountablygenerated--abc9f1cb5d10bad27d055e89.md) | 77 | `result-track:abc9f1cb5d10bad27d055e89494e7d486c77a833cc995c2a9f221162785ba8da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
