# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1088f6d858e07df08db2ad27545e115645baf715",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1088f6d858e07df08db2ad27545e115645baf715`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.TruncLEHomology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.SingleFunctors` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [truncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncle--ac5b2725c7be86a70cbbe1eb.md) | 46 | `declaration-track:ac5b2725c7be86a70cbbe1eb021350ba10030b882b98a8b12272cd60fe851ac9` |
| 2 | `abbrev` | [truncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncge--44b819ddfd16d665acdae916.md) | 50 | `declaration-track:44b819ddfd16d665acdae916c613516b2018bb9a7e0a8b5411e1b5fd9bed1044` |
| 3 | `def` | [ιTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncle--05ed2166f081b7ce89b14461.md) | 54 | `declaration-track:05ed2166f081b7ce89b144619f1ce1c4b664746a41d96347834c3e239aadcf84` |
| 4 | `def` | [πTruncGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncge--7fd3c2224c9379a228112b74.md) | 58 | `declaration-track:7fd3c2224c9379a228112b74eee8fe4ee6712e6a0a04c37ef58a66147919b0b6` |
| 5 | `abbrev` | [truncLEMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/trunclemap--ee8d6190b95d20223445b1cd.md) | 66 | `declaration-track:ee8d6190b95d20223445b1cdc4e94ac49d61b717af7d7cfb4d925c031af89399` |
| 6 | `abbrev` | [truncGEMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncgemap--bc61d17032cc9fe966732baf.md) | 70 | `declaration-track:bc61d17032cc9fe966732baf45fec2789da2134f8d0881033010125fb270f1af` |
| 7 | `lemma` | [ιTruncLE_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncle-naturality--17d7004c455f1e988ae3db90.md) | 74 | `result-track:17d7004c455f1e988ae3db90008ffd78dfe6c969ca42e3d3e9f3d3db11d9eefe` |
| 8 | `lemma` | [πTruncGE_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/truncge-naturality--6da4a7227a5f9128f4d5b29e.md) | 79 | `result-track:6da4a7227a5f9128f4d5b29ec2e9f4c34f804aaf55c8bdf46dbf389e85157baf` |
| 9 | `abbrev` | [IsStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyge--c195308b0a309a18cc6cd49c.md) | 88 | `declaration-track:c195308b0a309a18cc6cd49c0457970c8d2fc22b1074c1212e821da460529c31` |
| 10 | `abbrev` | [IsStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyle--a73229bbe4788ddd4626e752.md) | 91 | `declaration-track:a73229bbe4788ddd4626e752b17b3d950cbc486080057f25927b2e60fba16cdd` |
| 11 | `abbrev` | [IsGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isge--f479999cd9d8749ec553219d.md) | 94 | `declaration-track:f479999cd9d8749ec553219df2f2cab374f32ea5370a9f4d9a9829974fa965c2` |
| 12 | `abbrev` | [IsLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isle--725c7ab2eb4d554288f11a3c.md) | 97 | `declaration-track:725c7ab2eb4d554288f11a3c5a372dd5dad9cd4b8a5aa053428cb9e883f53267` |
| 13 | `lemma` | [isZero_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/iszero-of-isstrictlyge--b5be57f75196c05c520eba91.md) | 99 | `result-track:b5be57f75196c05c520eba919e7b3ef77d83c9e7a6f9729e642d4fd1c71317f2` |
| 14 | `lemma` | [isZero_of_isStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/iszero-of-isstrictlyle--582e0b508aa033b7bd0538e2.md) | 104 | `result-track:582e0b508aa033b7bd0538e21dbd5ec8b9949042dd70629ece71091a16ff17ba` |
| 15 | `lemma` | [exactAt_of_isGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/exactat-of-isge--8074934b72089fe1e1f51493.md) | 109 | `result-track:8074934b72089fe1e1f5149363ab6d89bf927fd86d598787fd3b16ffb865b72c` |
| 16 | `lemma` | [exactAt_of_isLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/exactat-of-isle--08509fd40385a10fbc6aef0f.md) | 114 | `result-track:08509fd40385a10fbc6aef0fd72553990c6aeaaf6552ceda144b16c41e333fe4` |
| 17 | `lemma` | [isZero_of_isGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/iszero-of-isge--fbf2710d6f720b19688b1eff.md) | 119 | `result-track:fbf2710d6f720b19688b1eff2bb461e1cbd5871750b191e93c2a34140fe6f761` |
| 18 | `lemma` | [isZero_of_isLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/iszero-of-isle--5e0bc41ee6af31e274f2f14d.md) | 123 | `result-track:5e0bc41ee6af31e274f2f14d4d261ac129c57e733659cb2c3073c0a1660608fb` |
| 19 | `lemma` | [isStrictlyGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyge-iff--e1d42e12f929e9e5baac66e1.md) | 127 | `result-track:e1d42e12f929e9e5baac66e1823c2feb9833ac9412796382d85c9d318bdb6d31` |
| 20 | `lemma` | [isStrictlyLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyle-iff--3129aa997f41acde75d812c8.md) | 137 | `result-track:3129aa997f41acde75d812c802d568f769895048f540d92be181ecad76b0b955` |
| 21 | `lemma` | [isGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isge-iff--f31145e33d9c2f4d367b8be4.md) | 147 | `result-track:f31145e33d9c2f4d367b8be4acd8a4601f9cb04110ae90c4b59926d20bc991eb` |
| 22 | `lemma` | [isLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isle-iff--a14b2c6c608853133869e845.md) | 157 | `result-track:a14b2c6c608853133869e845a28e8aa281f18c99d67a7f43a5ebf32a10dea4bd` |
| 23 | `lemma` | [isStrictlyLE_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyle-of-le--90b02e08412fce33fe01d80b.md) | 167 | `result-track:90b02e08412fce33fe01d80bab83f456c1a98779ffcd22b3bd3ffc9ebc84ebe2` |
| 24 | `lemma` | [isStrictlyGE_of_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyge-of-ge--ec9dbe37c9ea06a537c34fd4.md) | 174 | `result-track:ec9dbe37c9ea06a537c34fd410de15cc363ed9d0135c4f6bc9f140f0012fa98f` |
| 25 | `lemma` | [isLE_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isle-of-le--ef201b6855b88f248cef654e.md) | 181 | `result-track:ef201b6855b88f248cef654ec3ddaa75d5ff4d3de50ae920d89d1bbe6d20be0b` |
| 26 | `lemma` | [isGE_of_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isge-of-ge--16ad260f314ef6a7ab1456fa.md) | 188 | `result-track:16ad260f314ef6a7ab1456faf43d9daf10ec9797edf6c4d8fd2c6028e9ac3e60` |
| 27 | `lemma` | [isStrictlyLE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyle-of-iso--1729de01e3d75e75539ed71f.md) | 201 | `result-track:1729de01e3d75e75539ed71fc546c3668e12399a1e73db5f5ed71aee8b36bdf8` |
| 28 | `lemma` | [isStrictlyGE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyge-of-iso--a06db1c35276fdbd6928af1f.md) | 204 | `result-track:a06db1c35276fdbd6928af1fd38267db04ed62886d877e36fd5767c5fe5299ae` |
| 29 | `lemma` | [isLE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isle-of-iso--d3dffa53afa1bd2e8bcf7c9a.md) | 207 | `result-track:d3dffa53afa1bd2e8bcf7c9a040fccea9dfb10d75ba47cf6e2ef2b9243694763` |
| 30 | `lemma` | [isGE_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isge-of-iso--af3f13d60ca26cf7c2def573.md) | 210 | `result-track:af3f13d60ca26cf7c2def5739f0305c71b15dbe7248216350d6af8e6cd05216f` |
| 31 | `lemma` | [exists_iso_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/exists-iso-single--1e8cac34ca3e52c6ebb02cc5.md) | 221 | `result-track:1e8cac34ca3e52c6ebb02cc5d61443ef57d871d4b5609a22063f57fc4ba65cea` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--90b4cc3d22d2c970d9773175.md) | 236 | `declaration-track:90b4cc3d22d2c970d97731754127c01418e478d7f16d20f1397efec45e9bbd3e` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--675c9d998149f74c9bd4f92c.md) | 242 | `declaration-track:675c9d998149f74c9bd4f92cae4dfe30ede95cfa6c396a56ef2d8e1bc7b0430b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--e98dffaa1dacad256aa9a950.md) | 250 | `declaration-track:e98dffaa1dacad256aa9a950586ed9ff09cc492163b7ffc7200c4ee754c4e76c` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--7a2ed73c81b1dc9b902d6077.md) | 252 | `declaration-track:7a2ed73c81b1dc9b902d6077e47ab427a50490063fd70672c8055a953ea22331` |
| 36 | `lemma` | [isIso_πTruncGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isiso-truncge-iff--85dcde6bc6019e0d6579dc68.md) | 254 | `result-track:85dcde6bc6019e0d6579dc680be84202e386247eaf3a6c3343e85931431eb778` |
| 37 | `lemma` | [isIso_ιTruncLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isiso-truncle-iff--a3d1f8c93bcd44847c5c1a84.md) | 257 | `result-track:a3d1f8c93bcd44847c5c1a8439f6d15fdc7cf90fae357854e045ae2c4f8ebc86` |
| 38 | `lemma` | [quasiIso_πTruncGE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/quasiiso-truncge-iff--dbab9ec138b407fc8f90fc69.md) | 260 | `result-track:dbab9ec138b407fc8f90fc69ba1f4e89262936964c73cffadbae8e931b7c4e18` |
| 39 | `lemma` | [quasiIso_ιTruncLE_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/quasiiso-truncle-iff--6914e416c8216b90fdd9e6b4.md) | 263 | `result-track:6914e416c8216b90fdd9e6b4657164e231ba1d90873cd18d0f641af880cce3b6` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--c0541fadb630458226a54fec.md) | 266 | `declaration-track:c0541fadb630458226a54fecb600f72d1061a6cedfe50718b04852f54a0aed49` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--7f7cdf232161b9bc6140f06a.md) | 270 | `declaration-track:7f7cdf232161b9bc6140f06aa538f8657afead96d3d88350f7f794326b82479a` |
| 42 | `lemma` | [quasiIso_truncGEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/quasiiso-truncgemap-iff--8d39de7fbe4483960d438bac.md) | 276 | `result-track:8d39de7fbe4483960d438bac0169d937d1ac7190b41528093d7b5ecc38a2c7f2` |
| 43 | `lemma` | [quasiIso_truncLEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/quasiiso-trunclemap-iff--f86aac3a0648d402acef49eb.md) | 286 | `result-track:f86aac3a0648d402acef49ebd40d5d57ed7410020b91e42a2d0cd742d2f83835` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--5cc27b5b99fd5daf82131aa3.md) | 304 | `declaration-track:5cc27b5b99fd5daf82131aa37c8bbfe89636974e8f37f90519855b855f9548a8` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/instance--bef6216b162553b7a28e6bf5.md) | 307 | `declaration-track:bef6216b162553b7a28e6bf5ba5e061edd0a5395e51299a00f60e2e1a8018956` |
| 46 | `lemma` | [isStrictlyLE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyle-shift--5882280e5db3f4819ab65d77.md) | 312 | `result-track:5882280e5db3f4819ab65d777c23315021c0c7bebd9fe9ba7681f5c101da1a1e` |
| 47 | `lemma` | [isStrictlyGE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isstrictlyge-shift--50b3bd5da7325821221c5a76.md) | 318 | `result-track:50b3bd5da7325821221c5a760df4f9e4b7a876f78ad7dc5c9f2345de8344f8f9` |
| 48 | `lemma` | [isLE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isle-shift--aba046f2bf59dec7bed15d29.md) | 328 | `result-track:aba046f2bf59dec7bed15d2914f800fa92542ca998edb4451fbb7708af08b5d7` |
| 49 | `lemma` | [isGE_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplex/Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521.lean/declarations/isge-shift--ebad729ad8c489d802f7a33e.md) | 335 | `result-track:ebad729ad8c489d802f7a33e2fd7711714d0e7f1250fab6c811c3cf1af4f98f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
