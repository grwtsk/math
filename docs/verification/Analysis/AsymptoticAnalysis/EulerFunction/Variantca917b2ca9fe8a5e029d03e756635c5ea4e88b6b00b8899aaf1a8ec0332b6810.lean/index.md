# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.EulerFunction.Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a2c3ae7c982523f4f98af726dcf393b0dd1e44a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a2c3ae7c982523f4f98af726dcf393b0dd1e44a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Pentagonal.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pow_mul_prod_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/pow-mul-prod-bound--2a41293a8e0666cb1d4947b3.md) | 43 | `result-track:2a41293a8e0666cb1d4947b39c26229cd4928cf2465c4604f914789e6c082001` |
| 2 | `lemma` | [summable_norm_pow_mul_prod](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/summable-norm-pow-mul-prod--7d12f8885cbd4b418fe21765.md) | 55 | `result-track:7d12f8885cbd4b418fe21765c8ae571e4992aff76c7a0b6275ce36576f2bb10d` |
| 3 | `lemma` | [tsum_pow_mul_prod_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/tsum-pow-mul-prod-bound--b374871a76c596256f5f0a8f.md) | 63 | `result-track:b374871a76c596256f5f0a8fa3391fe61f6656697e114182b62290fe33557db8` |
| 4 | `lemma` | [multipliable_one_sub_pow_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/multipliable-one-sub-pow-add--fb35f56c94b5519d37fb1cce.md) | 74 | `result-track:fb35f56c94b5519d37fb1ccef2ec36ad18e90e8a370e9cc9b9fc9ac0c090aa17` |
| 5 | `def` | [eulerFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/eulerfunction--51512b3e9a43a912f0520f4c.md) | 88 | `declaration-track:51512b3e9a43a912f0520f4c5ce7cbf599dc97c3f24ad66627c8457381ddd824` |
| 6 | `theorem` | [eulerFunction_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/eulerfunction-def--ea3e1ae3a7b81a7d77bda363.md) | 92 | `result-track:ea3e1ae3a7b81a7d77bda363b0c40697acc5510056d4fe18e2a85f2224a4b687` |
| 7 | `theorem` | [eulerFunction_eq_tsum_pentagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/eulerfunction-eq-tsum-pentagonal--3d06f89b8ec720a13198f3f2.md) | 97 | `result-track:3d06f89b8ec720a13198f3f218d3c87beecfdd230bcca814ffdfe9e53593ce89` |
| 8 | `theorem` | [hasSum_eulerFunction_pentagonalSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/hassum-eulerfunction-pentagonalseries--ec0b1e7b22f6cffde759141e.md) | 103 | `result-track:ec0b1e7b22f6cffde759141ed7200e08e6f4f1fa02eb62935375e11bcc071843` |
| 9 | `theorem` | [hasSum_eulerFunction_pentagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/hassum-eulerfunction-pentagonal--6d64705e85bf30756bb2be3b.md) | 114 | `result-track:6d64705e85bf30756bb2be3b4de5b9f2044da488d4c068006b8d86fd58a5d243` |
| 10 | `theorem` | [hasSum_eulerFunction_pentagonal_pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/hassum-eulerfunction-pentagonal-pair--6bc649eac54c3fdff1b3b223.md) | 119 | `result-track:6bc649eac54c3fdff1b3b223e1d233721187de50ba84c7eaedb1331854561333` |
| 11 | `theorem` | [eulerFunction_eq_tsum_pentagonal_pair](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/eulerfunction-eq-tsum-pentagonal-pair--b52568996480610e178549d9.md) | 128 | `result-track:b52568996480610e178549d91c608d156c14809fd142620aa8ad1ad59ad47d56` |
| 12 | `theorem` | [eulerFunction_eq_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/eulerfunction-eq-tprod--22a0b49e36f96c021cb00e32.md) | 134 | `result-track:22a0b49e36f96c021cb00e32c8178689f9b1a8f786fa7d35a778feb0be0cf0f8` |
| 13 | `theorem` | [hasProd_eulerFunction](../../../../../mathematics/Analysis/AsymptoticAnalysis/EulerFunction/Variantca917b2ca9fe8a5e029d03e756635c5ea4e88b6b00b8899aaf1a8ec0332b6810.lean/declarations/hasprod-eulerfunction--b0b2f04c67ef8175a7c8ddf5.md) | 151 | `result-track:b0b2f04c67ef8175a7c8ddf50358e11fddbc5b1248e5e3457f916035a1b53a29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
