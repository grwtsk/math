# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.Basic.Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b74624a3749216d0284cbde59c4c8d947490519e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b74624a3749216d0284cbde59c4c8d947490519e`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon--ad7b444f4f6c57cfd1772744.md) | 44 | `declaration-track:ad7b444f4f6c57cfd1772744c69df733039d8f1ff21da114dd712eae0826b799` |
| 2 | `def` | [IsIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat--c67e1a2b89695424b39c316a.md) | 49 | `declaration-track:c67e1a2b89695424b39c316a13d38b34c4244f368697e05cf832a495f16539b2` |
| 3 | `def` | [IsIntegralCurve](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurve--986c10898524b106eacddb8d.md) | 54 | `declaration-track:986c10898524b106eacddb8d9cced04fc5862094161c2976e81bf1f7c7b66b76` |
| 4 | `lemma` | [IsIntegralCurve.isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurve-isintegralcurveon--50458a8fda2c83629f92cb8c.md) | 59 | `result-track:50458a8fda2c83629f92cb8c60eaba1701ebb39267139728784b314c01f61dcb` |
| 5 | `lemma` | [isIntegralCurveOn_univ](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-univ--b925dcadd364a1df7e862423.md) | 62 | `result-track:b925dcadd364a1df7e862423c29fa4350858cb4cab57f9275494c98b8ef1cb97` |
| 6 | `lemma` | [isIntegralCurveAt_iff_exists_mem_nhds](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat-iff-exists-mem-nhds--7b65718fee5e9e3e43ffafb0.md) | 66 | `result-track:7b65718fee5e9e3e43ffafb0829a3411074362dd339b860ce01d12e6d9705b07` |
| 7 | `lemma` | [isIntegralCurveAt_iff_exists_pos](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat-iff-exists-pos--185284a1818d4a91cbc770e6.md) | 81 | `result-track:185284a1818d4a91cbc770e6bcb583bbb0b77f608d663282f4c58a2aa58c104f` |
| 8 | `lemma` | [IsIntegralCurve.isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurve-isintegralcurveat--8b5515abe22c60021719119d.md) | 87 | `result-track:8b5515abe22c60021719119d737abe34292be2714d1652cffbbf8898459b4d83` |
| 9 | `lemma` | [isIntegralCurve_iff_isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurve-iff-isintegralcurveat--7cd2ce998c6484b343730f16.md) | 92 | `result-track:7cd2ce998c6484b343730f1645a2bfe38d5430e2f147ede98c5bcd59d7865109` |
| 10 | `lemma` | [IsIntegralCurveOn.mono](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-mono--c062c158b8ece776c6968e79.md) | 98 | `result-track:c062c158b8ece776c6968e7945362e5eac0ab17d54a675d100f7299619ce951b` |
| 11 | `lemma` | [IsIntegralCurveAt.hasDerivAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat-hasderivat--28e33a146fa05998988d01b6.md) | 101 | `result-track:28e33a146fa05998988d01b6874845436b9879a45c8f5c9b40b8f74655ab8310` |
| 12 | `lemma` | [IsIntegralCurveOn.isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-isintegralcurveat--45706e144c445cb8bdc95f0a.md) | 106 | `result-track:45706e144c445cb8bdc95f0a2d005af8431b6b9bb40cb916a36b399779ba8df0` |
| 13 | `lemma` | [IsIntegralCurveAt.isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat-isintegralcurveon--3457d4a5c9d364e4f72ccb5b.md) | 110 | `result-track:3457d4a5c9d364e4f72ccb5b9c4f3ffffa695accc9cee4377d1f5b0cbe21a4df` |
| 14 | `lemma` | [isIntegralCurveOn_iff_isIntegralCurveAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-iff-isintegralcurveat--0ec9b8f17851bdff8e1c0aad.md) | 116 | `result-track:0ec9b8f17851bdff8e1c0aaddc9b794b13efa64ee66a1efbc72260bbd7a78385` |
| 15 | `lemma` | [IsIntegralCurveOn.continuousWithinAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-continuouswithinat--7b45dbe7fee23c2f5b66356e.md) | 120 | `result-track:7b45dbe7fee23c2f5b66356e4ee4080ac0d284578ea398af6403589aa8a2bd58` |
| 16 | `lemma` | [IsIntegralCurveOn.continuousOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveon-continuouson--4013fb96f603157b9b6dca26.md) | 123 | `result-track:4013fb96f603157b9b6dca2684a0ac6a0483a9c753a7a7103696066806f21097` |
| 17 | `lemma` | [IsIntegralCurveAt.continuousAt](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurveat-continuousat--a6f3edd7c29761ea7a2c1fc5.md) | 126 | `result-track:a6f3edd7c29761ea7a2c1fc52c0d95d96ed07f13af7abe5560fa66b1dd97bdfb` |
| 18 | `lemma` | [IsIntegralCurve.continuous](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/Basic/Variant81012212aa96b2f96f4e27ba177a2baf01064fe6a165b5c5c98b9f27789505b6.lean/declarations/isintegralcurve-continuous--961528faca2991f588eb661a.md) | 131 | `result-track:961528faca2991f588eb661a498c864d24fc9c74a16c8005d94efc566872beec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
