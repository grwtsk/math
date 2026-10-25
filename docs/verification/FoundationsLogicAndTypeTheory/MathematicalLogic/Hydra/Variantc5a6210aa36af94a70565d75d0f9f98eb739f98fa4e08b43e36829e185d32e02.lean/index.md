# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hydra.Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "168288a4cfe065cccb1c35970bce184536efff87",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `168288a4cfe065cccb1c35970bce184536efff87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand--f03a172e85511c03790e94d5.md) | 64 | `declaration-track:f03a172e85511c03790e94d542f2755a887ecfa80f17856fa99dc8334cf10337` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-le-invimage-lex--555cbd5f6301567c069ccaf5.md) | 70 | `result-track:555cbd5f6301567c069ccaf55e086e1a3083e4f77170c1c1739f47483968427d` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-singleton--b614ee33181e4142cb151d87.md) | 85 | `result-track:b614ee33181e4142cb151d879b961dc495e24aea1f8c3030e66221e97586a49f` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-singleton-singleton--8dd3cbade9ac9cc935c01c87.md) | 89 | `result-track:8dd3cbade9ac9cc935c01c87a4176c582f5b11ce89e90ed2f03f5c61511b9a5f` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-add-left--3bf1668bee376e3b98b3a164.md) | 93 | `result-track:3bf1668bee376e3b98b3a164227d29515008be885d67ebdaa0b7b0bfb5c77203` |
| 6 | `theorem` | [cutExpand_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-iff--fb40c161374f8a36b1975cbb.md) | 97 | `result-track:fb40c161374f8a36b1975cbb77b0ee0c3a74130fe0b9e2fc83209bba981a58ab` |
| 7 | `theorem` | [not_cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/not-cutexpand-zero--cd441463d62002fa79f5a20f.md) | 109 | `result-track:cd441463d62002fa79f5a20fc8d84b9f6a16fdec90626f69aa43a850d768793a` |
| 8 | `theorem` | [cutExpand_fibration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/cutexpand-fibration--a9c39d5e0bc29893fbbf2b4f.md) | 117 | `result-track:a9c39d5e0bc29893fbbf2b4f3ee1e8cadb35a3c24b212688bfe2b65717a93378` |
| 9 | `theorem` | [acc_of_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/acc-of-singleton--51f51d532e308468d6d5864b.md) | 137 | `result-track:51f51d532e308468d6d5864b677e2bc1b88bc84d150db4e375848d2e6947076c` |
| 10 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CutExpand.Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.Acc.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va--e1e027798537e7d2b93f75de.md) | 149 | `result-track:e1e027798537e7d2b93f75de6893cd4ba10b1380077b3406b41a8570c1f329b1` |
| 11 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CutExpand.Variant54196d8bafe482347db2609d8c6222d85510859d0f43c2ba1358d9bcef2799c0.WellFounded.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cutexpand-va--b5ffbe3576fcfd9937459ce0.md) | 161 | `result-track:b5ffbe3576fcfd9937459ce0682c0c29073f38eb199496fa2507b4a30762577c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
