# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "396fcfb891cd704812585f188504b88d8df1a486",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `396fcfb891cd704812585f188504b88d8df1a486`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sigma--7f43dcd6c2c46cc5ff9ef4af.md) | 63 | `declaration-track:7f43dcd6c2c46cc5ff9ef4af694191e335f3b73ac73204ced8d3fedad81d05fe` |
| 2 | `lemma` | [sigma_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sigma-indep-iff--7d1b5179622c0b858fafa662.md) | 114 | `result-track:7d1b5179622c0b858fafa6625d17e097715c974dce2c0906f5eb2140b0332920` |
| 3 | `lemma` | [sigma_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sigma-isbase-iff--a260877dcd8a678aaac5a0ad.md) | 117 | `result-track:a260877dcd8a678aaac5a0ad9e481d7c9bcf7917079300f9474c96cdba8561b6` |
| 4 | `lemma` | [sigma_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sigma-ground-eq--d244f2509eff36ff8b75df31.md) | 120 | `result-track:d244f2509eff36ff8b75df31f82c08654b54b4bcc51011f9c96b08da19b36c70` |
| 5 | `lemma` | [sigma_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sigma-isbasis-iff--9c82fcbf3493c08d4389bde0.md) | 122 | `result-track:9c82fcbf3493c08d4389bde0b4189ba090a8ec3938fa2f14ae5717f41706b666` |
| 6 | `lemma` | [Finitary.sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/finitary-sigma--9430bdef8fa783316a0f0133.md) | 145 | `result-track:9430bdef8fa783316a0f013372c5ea0f516fa817c79a9e4bb0f381d675157a35` |
| 7 | `def` | [sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum--44d776d23d604816dfb2724d.md) | 162 | `declaration-track:44d776d23d604816dfb2724d5e1548bdebf472ce2ecb5087c781fb5c0bfcd7c7` |
| 8 | `lemma` | [sum'_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-indep-iff--97ff25d25c6afd6c28cd64b4.md) | 165 | `result-track:97ff25d25c6afd6c28cd64b488df6e9737eff1ad32c01bbfa457b191de767d34` |
| 9 | `lemma` | [sum'_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-ground-eq--62cd6f952602e7dc9748e767.md) | 172 | `result-track:62cd6f952602e7dc9748e767c601aeb1722d5647f2af136f57e01e0ad5a9a131` |
| 10 | `lemma` | [sum'_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-isbase-iff--a627fb15a7111be69a3ad88e.md) | 177 | `result-track:a627fb15a7111be69a3ad88e32d2947338978122213eae85cb64ab062ff98b43` |
| 11 | `lemma` | [sum'_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-isbasis-iff--e966437b01b6a6eabb302203.md) | 184 | `result-track:e966437b01b6a6eabb3022039fe73eb7d7b5f134b1d619637a176b08effb31a7` |
| 12 | `lemma` | [Finitary.sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/finitary-sum--a63b26d1ac705bf8face6cb7.md) | 190 | `result-track:a63b26d1ac705bf8face6cb742864ffd710a2192f1ec1f491f78c493ca23da89` |
| 13 | `def` | [disjointSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsigma--d4703f8aa1e72fdac284fa98.md) | 205 | `declaration-track:d4703f8aa1e72fdac284fa98394613bc6fd1691f4b086874fdb72aa01ab90149` |
| 14 | `lemma` | [disjointSigma_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsigma-ground-eq--ba4f9cd2468562b77b37ee89.md) | 210 | `result-track:ba4f9cd2468562b77b37ee89fb4cec6ad99421ae81197e252fccbf925ac4d159` |
| 15 | `lemma` | [disjointSigma_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsigma-indep-iff--d03bbe621aaa21ba81000d81.md) | 213 | `result-track:d03bbe621aaa21ba81000d815ae83d73e4260c92d9de1ba706d70432e7241eb4` |
| 16 | `lemma` | [disjointSigma_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsigma-isbase-iff--0408ca35f905633078478be6.md) | 218 | `result-track:0408ca35f905633078478be6adcf5ff5d90776d94b35496df31f3bda602d200d` |
| 17 | `lemma` | [disjointSigma_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsigma-isbasis-iff--08b547c76c1f00612ebb2978.md) | 223 | `result-track:08b547c76c1f00612ebb2978499f1d8c759ebf319d06fd83f778765e63010b45` |
| 18 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum--1f22d3bac0ff3129d65cca7b.md) | 235 | `declaration-track:1f22d3bac0ff3129d65cca7ba5d7281829838ff5e0737029d531ae5e3971ab36` |
| 19 | `lemma` | [sum_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-ground--f053c7fb8e7eb1274286e444.md) | 240 | `result-track:f053c7fb8e7eb1274286e444bdb3b3e60b7c0102c191e544936c9af7d3a63507` |
| 20 | `lemma` | [sum_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-indep-iff--02f949fb5b5e01ac06b5b065.md) | 244 | `result-track:02f949fb5b5e01ac06b5b0655839c8a82fe12fdc77c421fe754ebd662816c440` |
| 21 | `lemma` | [sum_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-isbase-iff--27928befce7835460658a712.md) | 251 | `result-track:27928befce7835460658a7121286aae99560ab0d76c0111c437a466450038fdf` |
| 22 | `lemma` | [sum_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/sum-isbasis-iff--a742228f93b4ffbd51eac10c.md) | 258 | `result-track:a742228f93b4ffbd51eac10cb6f3d74f94faf7480b47887e2572448b8bba3628` |
| 23 | `def` | [disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum--79dbada4b953f908d01e011b.md) | 273 | `declaration-track:79dbada4b953f908d01e011b171204d3dcc1b1553e251b25586c33e41db20194` |
| 24 | `lemma` | [disjointSum_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum-ground-eq--23861505e3795b860d90a8a5.md) | 276 | `result-track:23861505e3795b860d90a8a585f8d069faef3746b6a618755921f27466a2e6c4` |
| 25 | `lemma` | [disjointSum_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum-indep-iff--166fc606dd411170acf8c1f5.md) | 279 | `result-track:166fc606dd411170acf8c1f5cbd0240add9f811fa0c7e4885e8d71e40fc37951` |
| 26 | `lemma` | [disjointSum_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum-isbase-iff--0c6f4d9c0d875d0c181b56dc.md) | 283 | `result-track:0c6f4d9c0d875d0c181b56dc580dcb855a7b974cf39dd183fc25ea22e647a266` |
| 27 | `lemma` | [disjointSum_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum-isbasis-iff--6503a01a1093c90f2a1fd43b.md) | 287 | `result-track:6503a01a1093c90f2a1fd43b64bb1aa7a8b3751cc178f9211f0dbfa2b49b7ad9` |
| 28 | `lemma` | [disjointSum_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/disjointsum-comm--0f1c386236ce47a4dc306a60.md) | 292 | `result-track:0f1c386236ce47a4dc306a604b68c15d798b8e5712bbb7c8d510860b659fa8cb` |
| 29 | `lemma` | [Indep.eq_union_image_of_disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/indep-eq-union-image-of-disjointsum--71185feb6493cb0046d85890.md) | 298 | `result-track:71185feb6493cb0046d85890710f9a8b40734f8c2732b0dc442a3f3799ebcdf7` |
| 30 | `lemma` | [IsBase.eq_union_image_of_disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant04e672f5e4b73c1efe9e65e253e72fd20850dc0a3158ca3558748832471758dc.lean/declarations/isbase-eq-union-image-of-disjointsum--aaecdb1370433429f37449f6.md) | 304 | `result-track:aaecdb1370433429f37449f6af271d81919aef5b3330bd19b1f668faa37c0db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
