# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMoment.Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a735a74cd7d037f0dd38188cf6c5ce466041f6d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a735a74cd7d037f0dd38188cf6c5ce466041f6d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/integermoment--ad08cc51dcbbb0b53c8ba0f9.md) | 19 | `declaration-track:ad08cc51dcbbb0b53c8ba0f97bc6f8945e57755c7924d34d76cf95649fb00814` |
| 2 | `def` | [higherMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/highermoment--7ef31d1db3ff39bddfbb2c97.md) | 22 | `declaration-track:7ef31d1db3ff39bddfbb2c978d49b73bac18f16c8d4ae7637953ce1bd59fa2a1` |
| 3 | `def` | [geometricRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/geometricratio--d3403dec04a1a60e87392508.md) | 26 | `declaration-track:d3403dec04a1a60e8739250815ff78b12deef488dacefea32299e42bc3b0b112` |
| 4 | `def` | [exponentMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/exponentmoment--4461b01c1ef53d7cccdd49bf.md) | 29 | `declaration-track:4461b01c1ef53d7cccdd49bf140cbf5095d3855e83a74dd2c0625d96e2d4f0e4` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/integermoment-nonneg--a289a8a3c6f5bbc69213bd20.md) | 31 | `result-track:a289a8a3c6f5bbc69213bd20103dc0dde4789b6686c16e9c5ab74f30d323c0e5` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/highermoment-nonneg--50928ddab4b97df3dd7a6470.md) | 35 | `result-track:50928ddab4b97df3dd7a6470d093f347dd5708ecef0984773cfbf634ffe6f0ac` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/geometricratio-pos--9278a14f524b3219bf0d639a.md) | 39 | `result-track:9278a14f524b3219bf0d639a0338643c7158e3916d5fb2845eedda69a213ae3b` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/geometricratio-lt-one--66cc75c2713667d22cef5bca.md) | 41 | `result-track:66cc75c2713667d22cef5bcaedab8c6c017d832048e8b5a668de1aa321549dba` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/exponentmoment-nonneg--18f57ea3b698129fe707fd53.md) | 44 | `result-track:18f57ea3b698129fe707fd534209bd08475be7933310e600ddda4536d4332170` |
| 10 | `theorem` | [integerMoment_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/integermoment-le--e8cd7b906c0966865c4e19e2.md) | 47 | `result-track:e8cd7b906c0966865c4e19e24e1777115d2a0d1e347c5a0344a721fb490994da` |
| 11 | `theorem` | [integerMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/integermoment-summable--0a873fd893b53feec19d5c25.md) | 66 | `result-track:0a873fd893b53feec19d5c253751c309b3432c2aa25bbf3267451a594bc3776c` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/exponentmoment-summable--04a757a746e499bcd44725ac.md) | 70 | `result-track:04a757a746e499bcd44725ac13c57d69f192df13ba54528be839d9372e4e1b46` |
| 13 | `theorem` | [halfPower_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/halfpower-pow--388a3cd06d2d335b9eb5f25b.md) | 83 | `result-track:388a3cd06d2d335b9eb5f25b2b5b4405285514bc80a40d8ec5d2610561250c27` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/highermoment-factorization--cfe0e13005594d9e32a25511.md) | 90 | `result-track:cfe0e13005594d9e32a25511b523f2ee5b5fdd1a2bf42079716f226a1e8df82f` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/highermoment-le-product--432087b13f2ee4aeb09cc1d8.md) | 105 | `result-track:432087b13f2ee4aeb09cc1d8ed6a49877c1e0d27bcc61e0eeb3f5a4bef813d63` |
| 16 | `theorem` | [higherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/highermoment-summable--e9619a67ad8788c15188fb74.md) | 116 | `result-track:e9619a67ad8788c15188fb7483398cc4351112de0770886da7e4c71ec434dd53` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/primehighermoment-summable--14b2a69114196e386ed92137.md) | 127 | `result-track:14b2a69114196e386ed92137107a85693cd4d97d9ad8b2bf894d785369fd9a10` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/loglocation-sq-ge-one--88a62e45435a4c3c84994bc7.md) | 140 | `result-track:88a62e45435a4c3c84994bc7d1023e14dcb6630015a2f74ea4377c14684a2717` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/higherweight-le-moment--3f4d75865396383383f0e239.md) | 151 | `result-track:3f4d75865396383383f0e23957f4d8ba5eb25ba61859176d3357bc7974943138` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMoment/Variant697879fb07608deaac3ffbb9a9575d7b26a642bf6d8e406849fd4ade68135f4f.lean/declarations/primehigherweight-summable--c97e299265c4b418c2536b69.md) | 156 | `result-track:c97e299265c4b418c2536b6955a7143fb02823ccd966daa4134d6e30e527a66a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
