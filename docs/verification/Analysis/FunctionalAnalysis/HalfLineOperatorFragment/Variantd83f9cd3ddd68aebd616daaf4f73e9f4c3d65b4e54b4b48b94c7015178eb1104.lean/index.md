# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HalfLineOperatorFragment.Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4cebb0a4ffcdfb13d2e205c0258a95ee826602",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4cebb0a4ffcdfb13d2e205c0258a95ee826602`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfConvolution](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution--8f56ac45a38da131e38e1afb.md) | 18 | `declaration-track:8f56ac45a38da131e38e1afb13db5e0d822c2c2d48cf17be053b969ab03b85cf` |
| 2 | `theorem` | [halfConvolution_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution-apply--c21c8419a29cf55d62bef2a4.md) | 21 | `result-track:c21c8419a29cf55d62bef2a4b173baef7424659b58a382e81ef3343e78532550` |
| 3 | `theorem` | [halfConvolution_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution-apply-norm-le--5e7bd8d1377f3d87bc74e9c5.md) | 25 | `result-track:5e7bd8d1377f3d87bc74e9c5d5f9fb64a99c2fb77b9920976a83ab9930d682ae` |
| 4 | `theorem` | [halfConvolution_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution-norm-le--3625de34c53607c0b6fbd30a.md) | 32 | `result-track:3625de34c53607c0b6fbd30aecd40687c9c5c634fd9c253326d8cf1ddb45e541` |
| 5 | `theorem` | [halfConvolution_sub_kernel](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution-sub-kernel--15de71cdbcfb5a1e3080cee6.md) | 37 | `result-track:15de71cdbcfb5a1e3080cee686e10a68c8d731afa792deb6a262cd9609ef3510` |
| 6 | `theorem` | [halfConvolution_norm_sub_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/halfconvolution-norm-sub-le--41043a589a98cd521119f097.md) | 46 | `result-track:41043a589a98cd521119f0970403fb7b34fe1f62cddd78c642ca185e969a8d03` |
| 7 | `def` | [sourceOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceoperator--0bcd6c1e77e66c05a77bb7e1.md) | 51 | `declaration-track:0bcd6c1e77e66c05a77bb7e1596d93ae616eb8748ac1ae5e71e6db4739acd6b8` |
| 8 | `theorem` | [sourceOperator_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceoperator-apply--385e4287c73529b0b7a6c802.md) | 53 | `result-track:385e4287c73529b0b7a6c802e57b09b7dcd1bbc8eb54735b03011e5c13e0984c` |
| 9 | `theorem` | [sourceOperator_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceoperator-apply-norm-le--63f9652c375d7e85450e5862.md) | 57 | `result-track:63f9652c375d7e85450e5862a6b8278b7e8da405f662bdd7fe6ba3f109d1d741` |
| 10 | `theorem` | [sourceOperator_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceoperator-norm-le--3a86dd77473de243f177a118.md) | 61 | `result-track:3a86dd77473de243f177a1181eade98c967b03ac7a7d8bab250d769a6083215a` |
| 11 | `def` | [sourceEnergy](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy--29d6055feab1eca7225f2f86.md) | 65 | `declaration-track:29d6055feab1eca7225f2f86d97bfaaa64a863947e5606985a08c6f63c88afad` |
| 12 | `theorem` | [sourceEnergy_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-apply--ce9d5478b05a58289bab6289.md) | 67 | `result-track:ce9d5478b05a58289bab6289ae1effed84ae514393fb3ba0c00c5fd3f2ad9ee4` |
| 13 | `theorem` | [sourceEnergy_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-ispositive--6f49f99ad88925efa356d66b.md) | 70 | `result-track:6f49f99ad88925efa356d66b8f66d7a410b9fd9b65aea35303c7c44ae63ba946` |
| 14 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-isselfadjoint--a4c0b42c05f9b436df69c03d.md) | 73 | `result-track:a4c0b42c05f9b436df69c03de2f2ae76a15d3b99703ec48051c14702f3b9a17c` |
| 15 | `theorem` | [sourceEnergy_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-inner--01e55d17f6ce186b605f8dfa.md) | 76 | `result-track:01e55d17f6ce186b605f8dfa05f00a1dc4fd74c6e88af4d51471980ff3d814e6` |
| 16 | `theorem` | [sourceEnergy_re_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-re-inner--f00a22e616f91b7187d42800.md) | 81 | `result-track:f00a22e616f91b7187d42800fc692c07d63ef09f5b3312e9015dca798e09d98b` |
| 17 | `theorem` | [sourceEnergy_kernel](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-kernel--bd48b0afa8367a085ab65bd3.md) | 86 | `result-track:bd48b0afa8367a085ab65bd38d3fdb05d1912f95b9ced1a8aa8a78217e806393` |
| 18 | `theorem` | [sourceEnergy_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/HalfLineOperatorFragment/Variantd83f9cd3ddd68aebd616daaf4f73e9f4c3d65b4e54b4b48b94c7015178eb1104.lean/declarations/sourceenergy-norm--a589f285f78a86c45769c34a.md) | 89 | `result-track:a589f285f78a86c45769c34a02ea65bec3bb9be151546ebb5cce466d04b392cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
