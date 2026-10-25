# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MaxPowDiv.Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acc0743305ff1c533d9a7480b764b6167ac5e5cf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acc0743305ff1c533d9a7480b764b6167ac5e5cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/maxpowdiv--c94c32a2c056081718a2b29f.md) | 37 | `declaration-track:c94c32a2c056081718a2b29f4ef6d60d278194e63b58e2736a8a0e80ba7da11e` |
| 2 | `theorem` | [go_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/go-eq--f094820cf369c1647585b585.md) | 52 | `result-track:f094820cf369c1647585b58515e84a977f56d80b14c4f624b8be40c6f169b26a` |
| 3 | `theorem` | [go_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/go-succ--d6b9c7c6d8da52c5a8fa1fd9.md) | 58 | `result-track:d6b9c7c6d8da52c5a8fa1fd98c846a6a7995d40e1c6faa9ab2b4de0d10f62eb8` |
| 4 | `theorem` | [zero_base](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/zero-base--91e97672c8ce53d1bde8bb18.md) | 68 | `result-track:91e97672c8ce53d1bde8bb186a0c9491d64abc1a3f5100668b5b75288b89451f` |
| 5 | `theorem` | [zero](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/zero--8a46c071bab09be623cdf93d.md) | 74 | `result-track:8a46c071bab09be623cdf93dd0fe221c689609c037a11488f1de696cc660eebf` |
| 6 | `theorem` | [base_mul_eq_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/base-mul-eq-succ--7014f6e905b6ce21a7c35fd2.md) | 79 | `result-track:7014f6e905b6ce21a7c35fd2c6db0d467e927a96d9806fefbdf54ef01b0379e0` |
| 7 | `theorem` | [base_pow_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/base-pow-mul--049f31e0159961d10b4cd743.md) | 88 | `result-track:049f31e0159961d10b4cd743b39b2d600ac874ec99ef3ba23647567d9350efe1` |
| 8 | `theorem` | [pow_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/pow-dvd--237adcde67b3024a5b91e387.md) | 97 | `result-track:237adcde67b3024a5b91e38747257a2bd124a9fdab94d0d424d4fe28003f1cd4` |
| 9 | `theorem` | [le_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant264955c562e7bdff0a4fef143613e6dac024a8e7ec48c71080d2afc5a9ce567c.lean/declarations/le-of-dvd--fdf9e26b760de03673c1f1df.md) | 111 | `result-track:fdf9e26b760de03673c1f1df835ce06dc98e42663bfee8928a6ceb0d829c92d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
