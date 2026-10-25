# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equipartition.Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "decc33db35f2934270360fab7f53d7ee1f9fc785",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `decc33db35f2934270360fab7f53d7ee1f9fc785`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Equitable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition--df9c6d682925ec207c0ff115.md) | 42 | `declaration-track:df9c6d682925ec207c0ff1156c9b75a303c870b39bcd93f949e8ec78ad82104a` |
| 2 | `theorem` | [isEquipartition_iff_card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-iff-card-parts-eq-average--0a494c0cb3c37bf46c1dab95.md) | 45 | `result-track:0a494c0cb3c37bf46c1dab952bf2ebc09e0a678a037f2a69deb9dfd6053e458e` |
| 3 | `lemma` | [not_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/not-isequipartition--48f4106fb380b36235e32740.md) | 52 | `result-track:48f4106fb380b36235e32740558a42c9256a7daf589fd8915da4480b168f12bb` |
| 4 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEquipartition.Variant464af88b8bff3db57d0173da00dc4470c6f8f026b3ddfdb380f629a220173f46.Set.Subsingleton.isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isequipartit--89a98068596784500f2c95a9.md) | 55 | `result-track:89a98068596784500f2c95a9d070be8090097f42437b0e38b638f68aea77fabf` |
| 5 | `theorem` | [IsEquipartition.card_parts_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-card-parts-eq-average--0773e3eac0c89d8894fa73e1.md) | 59 | `result-track:0773e3eac0c89d8894fa73e15349ccda5c9d2dd029e4f2fcc30e5e793d7de8f2` |
| 6 | `theorem` | [IsEquipartition.card_part_eq_average_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-card-part-eq-average-iff--81f851f2dbe72d2f93270fbd.md) | 63 | `result-track:81f851f2dbe72d2f93270fbdcc8c0eddf813e27e23e320c5ee197676600bce64` |
| 7 | `theorem` | [IsEquipartition.average_le_card_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-average-le-card-part--76eed9348f6d1e29f521fe6f.md) | 70 | `result-track:76eed9348f6d1e29f521fe6fc7253e2a2653c85ecafe441bc7c1cdb92ce04032` |
| 8 | `theorem` | [IsEquipartition.card_part_le_average_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-card-part-le-average-add-one--35f720099b527d09961fdea9.md) | 75 | `result-track:35f720099b527d09961fdea9edabcb00c735558ded1d623d44dd2e63511c652d` |
| 9 | `theorem` | [IsEquipartition.filter_ne_average_add_one_eq_average](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-filter-ne-average-add-one-eq-average--41ea2ac19784d5949454b611.md) | 80 | `result-track:41ea2ac19784d5949454b6114bbeb731e32c98c1d5b02a44d1c4e2e4b42bc213` |
| 10 | `theorem` | [IsEquipartition.card_large_parts_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-card-large-parts-eq-mod--4ed2775ec621d7ef33bdf002.md) | 88 | `result-track:4ed2775ec621d7ef33bdf002b302ffafe716b8286b16467da43e2dfc82cd2c00` |
| 11 | `theorem` | [IsEquipartition.card_small_parts_eq_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-card-small-parts-eq-mod--bfc8eddd81684a3c3e5192c2.md) | 100 | `result-track:bfc8eddd81684a3c3e5192c299758452822aa1cbda48dd3202d7cd6a7e4e116f` |
| 12 | `theorem` | [IsEquipartition.exists_partsEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-exists-partsequiv--b2d00643dab51cba4455f86d.md) | 109 | `result-track:b2d00643dab51cba4455f86d2e902fecc38472f3604e89e0f2923a461608dad2` |
| 13 | `theorem` | [IsEquipartition.exists_partPreservingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/isequipartition-exists-partpreservingequiv--1e9b9c0d4ef3f75b10c47fc5.md) | 132 | `result-track:1e9b9c0d4ef3f75b10c47fc59f6a6e21c926f90a3bf9f641dbcf13155cd2fcae` |
| 14 | `theorem` | [bot_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/bot-isequipartition--064e6f05c8d3967ef60a24ed.md) | 166 | `result-track:064e6f05c8d3967ef60a24ed53086f753aa777f284b8102ab8307332029f76ef` |
| 15 | `theorem` | [top_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/top-isequipartition--3b6d5040cd6599d0959c6b14.md) | 169 | `result-track:3b6d5040cd6599d0959c6b148f1a8aec59b17c6545ac2b0e9faff15c358759c7` |
| 16 | `theorem` | [indiscrete_isEquipartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/declarations/indiscrete-isequipartition--fded53b6c1d1ac6d5dc2f0e0.md) | 172 | `result-track:fded53b6c1d1ac6d5dc2f0e0c05b8b4ba7cfaf13e7816698856e3c642f7ba25a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
