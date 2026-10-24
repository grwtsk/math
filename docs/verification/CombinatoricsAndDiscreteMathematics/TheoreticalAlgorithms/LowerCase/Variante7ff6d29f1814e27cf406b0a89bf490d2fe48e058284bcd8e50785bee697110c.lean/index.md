# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowerCase.Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4cb106390ebe1f6aa663bad491f148af2c0e739",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4cb106390ebe1f6aa663bad491f148af2c0e739`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Modify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLowerCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/islowercase--35d4e34eae3ee16480747596.md) | 33 | `declaration-track:35d4e34eae3ee164807475966f0e5dc02105badedcada6af1385eaa7df8f93f8` |
| 2 | `theorem` | [Char.toLower_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/char-tolower-eq-self-iff--1eb11854575406b09eabbaac.md) | 36 | `result-track:1eb11854575406b09eabbaac1de5096cf83fa51caa87cf7f63b350460345795e` |
| 3 | `theorem` | [String.toLower_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/string-tolower-eq-self-iff--67eaf1a6d37f8411f86b93a0.md) | 40 | `result-track:67eaf1a6d37f8411f86b93a0b7519841107b1f4afb52db0b5f77b3be0ff03af3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/instance--70ae490d17cc1f68c0a80f69.md) | 46 | `declaration-track:70ae490d17cc1f68c0a80f69fe28555ee64a0992ba44c18af282cdaa3803ca92` |
| 5 | `theorem` | [Char.toLower_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/char-tolower-idempotent--9e064f9a0c1f6cbface00f91.md) | 52 | `result-track:9e064f9a0c1f6cbface00f915f2192977b42e10c53e366bcd890efd2360384a6` |
| 6 | `theorem` | [isLowerCase_toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/islowercase-tolower--6631f33dec8678792c476116.md) | 66 | `result-track:6631f33dec8678792c4761160eb65eee52167985947a1e58fe4b8b83f0733f95` |
| 7 | `theorem` | [isLowerCase_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c.lean/declarations/islowercase-empty--016f94d25e2d402e1f97ae50.md) | 71 | `result-track:016f94d25e2d402e1f97ae50995c7ea54f1633e97fb8fc65fb348a31191b9f4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
