# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b42035f7aa8b9b1d191a52d9b0f0a895e382ef",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b42035f7aa8b9b1d191a52d9b0f0a895e382ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/finrange--bf91b47c25f642c266b3b04b.md) | 29 | `declaration-track:bf91b47c25f642c266b3b04b1efc225c7fbf914dce0b526f91bae9076f8d3d07` |
| 2 | `theorem` | [size_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/size-finrange--f83d8cb73d3fc97974833a91.md) | 31 | `result-track:f83d8cb73d3fc97974833a912e23d96db1bb802151906f9d46ec700c773e9f61` |
| 3 | `theorem` | [getElem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/getelem-finrange--b1e0d7599a391f210d7a3ae1.md) | 34 | `result-track:b1e0d7599a391f210d7a3ae1fdaa575c5ffd2f9a5ef2f90d6e3f90a411567923` |
| 4 | `theorem` | [finRange_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/finrange-zero--a298303b988b3fed9c662b61.md) | 38 | `result-track:a298303b988b3fed9c662b613f6837e4f8aa95bc758cfb9cbbf2da42e5cbc1ab` |
| 5 | `theorem` | [finRange_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/finrange-succ--35bae869b83d1926116db00a.md) | 40 | `result-track:35bae869b83d1926116db00a076fd1e358b5ce86f88ec6adf06e00a2de0e27a0` |
| 6 | `theorem` | [finRange_succ_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/finrange-succ-last--7612940f1239ef5d27800026.md) | 47 | `result-track:7612940f1239ef5d27800026bcb009817ddd2e4970196711465fc609214ee41f` |
| 7 | `theorem` | [finRange_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant9a424278567ae87afd983596364dbb8f2aeb6927a92d3e0e0e867acf0339d758.lean/declarations/finrange-reverse--890ac47d54ac9069162f1de7.md) | 58 | `result-track:890ac47d54ac9069162f1de733baef0a182522398b8cacf4418f090d182e688d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
