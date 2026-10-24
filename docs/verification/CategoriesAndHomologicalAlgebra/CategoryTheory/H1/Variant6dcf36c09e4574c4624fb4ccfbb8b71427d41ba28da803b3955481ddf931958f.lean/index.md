# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.H1.Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5504cbdcc4a4c0a96066b9a6fbfaab07e873e6e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5504cbdcc4a4c0a96066b9a6fbfaab07e873e6e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/zerocochain--45164c6052266cb134fc814d.md) | 66 | `declaration-track:45164c6052266cb134fc814d8e9e13e720ab7485dfb23e4867881c8e1dd917ea` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--4ba81e746ead08ca4e569a4e.md) | 68 | `declaration-track:4ba81e746ead08ca4e569a4e87cfc96a4649fc5643d3fb80e7d2fad4cc933ae7` |
| 3 | `lemma` | [one_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/one-apply--d4ca72b8ad9d1dffced7cb9e.md) | 73 | `result-track:d4ca72b8ad9d1dffced7cb9ee690397d5004c0f8ff8cfb98e00e37f135ad4a5a` |
| 4 | `lemma` | [inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/inv-apply--7527e72af0d36ebb6708b129.md) | 76 | `result-track:7527e72af0d36ebb6708b129026b94d0c52ddf1018ee3c0cb9a7d01123474a19` |
| 5 | `lemma` | [mul_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/mul-apply--a9252fa02adf9c363c96c68a.md) | 79 | `result-track:a9252fa02adf9c363c96c68aa08a4b677ec1485020f09718585d5d77dfb36b1f` |
| 6 | `structure` | [OneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecochain--d5b8f8695a0e558fa26c5b90.md) | 89 | `declaration-track:d5b8f8695a0e558fa26c5b9017882527d2da848e57cd2c348d4e74ee2ba870f2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--00b818bddf0ccdb62db9bf2f.md) | 99 | `declaration-track:00b818bddf0ccdb62db9bf2f83fb26c7ea7cf7078cada338287b8bf26f5d97ae` |
| 8 | `lemma` | [one_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/one-ev--a6c46f7665cf0fa504a201d6.md) | 103 | `result-track:a6c46f7665cf0fa504a201d6e4311903decd88454c024864c821019c3e96f14e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--a052f9575b0e600eb5a58a9e.md) | 108 | `declaration-track:a052f9575b0e600eb5a58a9e716f8cf5ae9fea9d2a482552dd8921de5a82538e` |
| 10 | `lemma` | [mul_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/mul-ev--97d975aab7f8fdcc33c49dbb.md) | 112 | `result-track:97d975aab7f8fdcc33c49dbb846701efbd8ff283eead5afb644bb797575f14f9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--c138c5e98d2e9710f3e96c33.md) | 115 | `declaration-track:c138c5e98d2e9710f3e96c33e9a0e63ad89d7c8ae823128489d3e09a34bba0a5` |
| 12 | `lemma` | [inv_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/inv-ev--977dd347055bf78f7c569161.md) | 119 | `result-track:977dd347055bf78f7c569161470ce4f2003c9d3f5edc968898bb135e7f5722a5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--92a38918ec41d4aae6ab0ee8.md) | 122 | `declaration-track:92a38918ec41d4aae6ab0ee8581e3398dc50362e63d851b63261850e2c702552` |
| 14 | `structure` | [OneCocycle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecocycle--75e63682807b315b4475e707.md) | 131 | `declaration-track:75e63682807b315b4475e7077686bd595bf1a88c5770e798cf1b214e62993313` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--53de82a59a9d0b2d0613dbdd.md) | 137 | `declaration-track:53de82a59a9d0b2d0613dbdda30b935d6e52eda15aa147178a83459782ed7a4f` |
| 16 | `lemma` | [one_toOneCochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/one-toonecochain--4e66979bf95d93b3966d25b4.md) | 141 | `result-track:4e66979bf95d93b3966d25b41dcf905d618944bd206eaa1c8601a80c13e26971` |
| 17 | `lemma` | [ev_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/ev-refl--7016b493bc4daad8dad7f903.md) | 144 | `result-track:7016b493bc4daad8dad7f903f88d14b5037b11216156f9752e6cdc184a986cd2` |
| 18 | `lemma` | [ev_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/ev-symm--bf44f56f256e613b77355dd6.md) | 148 | `result-track:bf44f56f256e613b77355dd65545378ffbbff89f9c68fe523427b7fa96ec1316` |
| 19 | `def` | [OneCohomologyRelation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecohomologyrelation--82c477d5627f6e2712f24423.md) | 159 | `declaration-track:82c477d5627f6e2712f24423115a4b77f1209491ef51258836d709c6425341a8` |
| 20 | `lemma` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/refl--df5e01217829672729d31c73.md) | 165 | `result-track:df5e01217829672729d31c73990fc806b7f6295c018d3751e84cdb2641476e47` |
| 21 | `lemma` | [symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/symm--772858c13ceae6a64388c9e5.md) | 167 | `result-track:772858c13ceae6a64388c9e544873d75ced7ae0ce6f853a216031310184151e1` |
| 22 | `lemma` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/trans--b4a5ed0f6e7788258c34f525.md) | 173 | `result-track:b4a5ed0f6e7788258c34f52581b09148d2771faee53cd0c085d1993fb554486e` |
| 23 | `def` | [IsCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/iscohomologous--19aaf8976f807aab10b05aab.md) | 185 | `declaration-track:19aaf8976f807aab10b05aab80ff0c3584a11a3d02f088db20a8ef28217efdfe` |
| 24 | `lemma` | [equivalence_isCohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/equivalence-iscohomologous--52ec3117b081ca2d2310390a.md) | 190 | `result-track:52ec3117b081ca2d2310390a80d566ea8371b66d2f2802e4cae648ddf3e49420` |
| 25 | `def` | [H1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/h1--3bfdeba819ad9466d2cc8031.md) | 205 | `declaration-track:3bfdeba819ad9466d2cc80317a8a019c9e184b6528e450f73337298d2497fe92` |
| 26 | `def` | [OneCocycle.class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecocycle-class--6035e1703403e174404f87f4.md) | 208 | `declaration-track:6035e1703403e174404f87f48c17f00b757e09325966668770bcf4557663d52c` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/instance--21bacb896f99bee23432a592.md) | 210 | `declaration-track:21bacb896f99bee23432a59236cb2f823ab60b66cb4921ac08a961128d14a618` |
| 28 | `lemma` | [OneCocycle.class_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecocycle-class-eq-iff--7a82e3296627d8b1fbaaff70.md) | 213 | `result-track:7a82e3296627d8b1fbaaff7041fac6936a933b16f97592c49bab610ab2692290` |
| 29 | `lemma` | [OneCocycle.IsCohomologous.class_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/declarations/onecocycle-iscohomologous-class-eq--a763af0637083f68e5679189.md) | 217 | `result-track:a763af0637083f68e567918995ef9812c860bdbbaae55b98f0fbd5141c334e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
