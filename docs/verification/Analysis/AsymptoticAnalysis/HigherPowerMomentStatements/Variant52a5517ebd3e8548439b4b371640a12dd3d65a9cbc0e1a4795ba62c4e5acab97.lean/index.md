# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMomentStatements.Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95dbaf4a1b0b86be461d1395233cc71f2e3c0043",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95dbaf4a1b0b86be461d1395233cc71f2e3c0043`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean.json)

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
| 1 | `def` | [integerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/integermoment--7daad3f805d6ae65ee07c3d2.md) | 19 | `declaration-track:7daad3f805d6ae65ee07c3d258a1083f3fe906a566a95c525f06776d946a57eb` |
| 2 | `def` | [higherMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/highermoment--5bb7228066bf892e1754bffe.md) | 22 | `declaration-track:5bb7228066bf892e1754bffeac58f4eb151e0774746e25aefa9b1538d102847f` |
| 3 | `def` | [geometricRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/geometricratio--b9c088b6a0ef1af3c11091de.md) | 26 | `declaration-track:b9c088b6a0ef1af3c11091debd672ca6c3f42b0083a15575cd28f965e6790f49` |
| 4 | `def` | [exponentMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/exponentmoment--f59dc30598318a40c526436d.md) | 29 | `declaration-track:f59dc30598318a40c526436d4be70c02227462f50eac0243c40f1e95ce5ddb96` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/integermoment-nonneg--8d0295f473e8ac05d84ee372.md) | 31 | `result-track:8d0295f473e8ac05d84ee372bb962cd8cfcc3b02bf26cca0818b1aeadfbbf85d` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/highermoment-nonneg--07c7e297105776a750effcf0.md) | 35 | `result-track:07c7e297105776a750effcf099475d124edeb567c5a1e6c52996b325c8003020` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/geometricratio-pos--8fff6ed7c58062f2537a0549.md) | 39 | `result-track:8fff6ed7c58062f2537a0549e7ef13d9d845e853f4b0a7bbf94aa5ada364ae83` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/geometricratio-lt-one--2a133688cf41401324123d06.md) | 41 | `result-track:2a133688cf41401324123d06196a829b852153930d3376da114ed0b6eff6631f` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/exponentmoment-nonneg--0abcc011e48a7eed5ff2fa99.md) | 44 | `result-track:0abcc011e48a7eed5ff2fa992995be2972c67e2cae8cdfc032fe5ed55fc0f004` |
| 10 | `theorem` | [integerMoment_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/integermoment-le--27142dcdcb7cba5fdd25bb98.md) | 47 | `result-track:27142dcdcb7cba5fdd25bb985f62fb8b387905202adf39e8124f37f5730ae8ad` |
| 11 | `theorem` | [integerMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/integermoment-summable--9ef9f163947a2693c2fe73de.md) | 66 | `result-track:9ef9f163947a2693c2fe73defa69b315cbbcb01c1bf933589662e5c18c4c1f0a` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/exponentmoment-summable--2f840fe3bdd8fc54d2584340.md) | 70 | `result-track:2f840fe3bdd8fc54d25843405739e7d380edf01f0d019d162f9dc3e8d0c3cdeb` |
| 13 | `theorem` | [halfPower_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/halfpower-pow--0e61677980a072a358f3014f.md) | 83 | `result-track:0e61677980a072a358f3014f1f56b188362ba2e2f340b35fa223c8128e953834` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/highermoment-factorization--7dd5e85eb43cdf88899776f8.md) | 90 | `result-track:7dd5e85eb43cdf88899776f8ccdc0a6ae1fd0e16e66a077a8494dc80cb46a0b1` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/highermoment-le-product--dd5c70b1d99bd9e7f1996cc1.md) | 105 | `result-track:dd5c70b1d99bd9e7f1996cc1d270d181c6b637f8c1db592e956837e4c8745112` |
| 16 | `theorem` | [higherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/highermoment-summable--125bb329bac4eeeeb4d7307f.md) | 116 | `result-track:125bb329bac4eeeeb4d7307ff32f8db7491c05669a7e816bfd3f5e4a52a220eb` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/primehighermoment-summable--870e5ed4d078320c37aef603.md) | 127 | `result-track:870e5ed4d078320c37aef60331d80682725b61f833ab956d77b63d17ffb5d636` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/loglocation-sq-ge-one--238c6a2bc217bc4edf0eaf9b.md) | 140 | `result-track:238c6a2bc217bc4edf0eaf9b20d3d1ec380baacbe6d05df8380fcaa076aaafe9` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/higherweight-le-moment--0254ebee75bfcaa3e8b30102.md) | 151 | `result-track:0254ebee75bfcaa3e8b30102af174cd817423598b0909161627b7bab2f9a8dc2` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/primehigherweight-summable--fe72f89973c968f9fb921d06.md) | 156 | `result-track:fe72f89973c968f9fb921d0671ffa4e98dda0573c4062b99a8533ba84738a6b1` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--8818e983158d1c371970b866.md) | 168 | `declaration-track:8818e983158d1c371970b866446b11062538f7e9079b66cada7809174ecc6e11` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--c29f085fa23fa15d4940f54e.md) | 170 | `declaration-track:c29f085fa23fa15d4940f54e13f3419d9810cb5c6c5605fd5a6212e8a86156cd` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--9bac37abca7760fa4b44b236.md) | 172 | `declaration-track:9bac37abca7760fa4b44b236237247cc569a53c0aa9fffb528b6a1ac9ddce3a0` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--b3dd00601925a1f381f9f3bb.md) | 174 | `declaration-track:b3dd00601925a1f381f9f3bb9abad321aa9ea3437ca850ec70d4a08e02f7e982` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--94c15b18ca08bf17b1304109.md) | 176 | `declaration-track:94c15b18ca08bf17b1304109a0bfc20e3d24a4d68459b659f3612ea29c1bc5f5` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--491386c918da6abcb5a2c88d.md) | 179 | `declaration-track:491386c918da6abcb5a2c88dd910bb72953de5929b7ab95420986992ba599c82` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--95f35130450a05a00c5dae66.md) | 182 | `declaration-track:95f35130450a05a00c5dae66a5319b49f9946fff792224afca0fc88dfa9f3a10` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--3c61e74671b18807d96f8eae.md) | 185 | `declaration-track:3c61e74671b18807d96f8eaecdcb8c13ab8f59a47fe1433114d140ce93bd03a2` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--3a6ca31e1b40cccd3ed4e0db.md) | 188 | `declaration-track:3a6ca31e1b40cccd3ed4e0db462aa805c5bf155fb387839e7d54d0d47ff5a835` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--e3731aaa5814692e98842471.md) | 191 | `declaration-track:e3731aaa5814692e98842471bf27223635415dbff149b024f711bee66a6c76f2` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--1878d3ef1d2b73984d1a9dd8.md) | 195 | `declaration-track:1878d3ef1d2b73984d1a9dd86d234b17f5abe30fecf18a87dd786848773d0374` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--4a829039e705b812b68df243.md) | 198 | `declaration-track:4a829039e705b812b68df243a9ce8d49d9c15b6b985c9a18e545fc59ece8ef8f` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--c7fd6f8561cfdce7f24834e8.md) | 201 | `declaration-track:c7fd6f8561cfdce7f24834e84e426c30bb916e2056a5debbe23c25a8f243d705` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--1ee0474f401dc9be139dbef6.md) | 206 | `declaration-track:1ee0474f401dc9be139dbef6a1ac7e72df2ca1e7551d68ce51a77628829247ac` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--bb3c9168c99bb7d296955f69.md) | 210 | `declaration-track:bb3c9168c99bb7d296955f69866b1e8cfa11c42770569d89f95146d6668616de` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--1599b2a830e80ec91af065a8.md) | 215 | `declaration-track:1599b2a830e80ec91af065a800a9971e1f8c6c774c7bc722f47a5d5beec05db8` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--538677d9b0d055b8e9ee31ab.md) | 221 | `declaration-track:538677d9b0d055b8e9ee31abc49c2b1db3de564d4d6c506d2f958bc6aa9e2c34` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--6be64c29a0c007ce1ff9d20b.md) | 225 | `declaration-track:6be64c29a0c007ce1ff9d20b49e7dd8aafca50be0d89648eadb79ac404f91d7f` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/declarations/example--939dd492dc8403d1457734e5.md) | 229 | `declaration-track:939dd492dc8403d1457734e5af78c14aa1c7ba8bafd357ebc90c07ed6165ae93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
