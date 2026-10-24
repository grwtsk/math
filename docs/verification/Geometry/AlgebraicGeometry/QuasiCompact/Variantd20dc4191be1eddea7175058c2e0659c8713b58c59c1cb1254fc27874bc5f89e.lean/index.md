# Verification target: GRWTSK.Geometry.AlgebraicGeometry.QuasiCompact.Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa71222fc54dd579398a04fd027505d40186d781",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa71222fc54dd579398a04fd027505d40186d781`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean.json)

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
| 1 | `lemma` | [quasiCompactCover_shrink_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/quasicompactcover-shrink-iff--3875e2832105b685e199a01d.md) | 41 | `result-track:3875e2832105b685e199a01dfc3e1f64a49a0692edbb880cd159890c084b41c9` |
| 2 | `def` | [qcCoverFamily](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/qccoverfamily--e337b5bbdbac013efd1e670e.md) | 47 | `declaration-track:e337b5bbdbac013efd1e670e852e6d583179e452bedbb02ab4ddc7b99f551316` |
| 3 | `def` | [qcPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/qcprecoverage--166a4cb1281415709df8f24c.md) | 57 | `declaration-track:166a4cb1281415709df8f24cb64008d4fcad4d38857dac15e20fc47ce6d6d51c` |
| 4 | `lemma` | [presieve₀_mem_qcPrecoverage_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/presieve-mem-qcprecoverage-iff--dadcaad526657a3906dd2bef.md) | 61 | `result-track:dadcaad526657a3906dd2befe0facf45d3a6ffdd955931c92a7b13aee3403615` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--9f4fecfad7ddecd957182332.md) | 67 | `declaration-track:9f4fecfad7ddecd957182332c6b9bf79c9422ed6db5060769fa76257b6cf4750` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--bc6f8440dac1d1f96302bc36.md) | 71 | `declaration-track:bc6f8440dac1d1f96302bc365fc3af5e83782d5ecb8be6b2a01a594a71be398d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--565bb28ee2a33638a58f87e4.md) | 79 | `declaration-track:565bb28ee2a33638a58f87e477c97a7853dd61f51747ac6d8ce9ebb4d340f7a2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--ae0921789a5024ab77c1d2ad.md) | 84 | `declaration-track:ae0921789a5024ab77c1d2add387989e3ca3ad76f8b75ed22ff30b7dc4356244` |
| 9 | `lemma` | [bot_mem_qcPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/bot-mem-qcprecoverage--6b2319c6ab4e81a4852a54ac.md) | 89 | `result-track:6b2319c6ab4e81a4852a54acdff1dda234ff6cf63655c1647da4c8655479771f` |
| 10 | `lemma` | [precoverage_le_qcPrecoverage_of_isOpenMap](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/precoverage-le-qcprecoverage-of-isopenmap--3cd689e68650e084fe3439d3.md) | 95 | `result-track:3cd689e68650e084fe3439d3a799ded1f679ae105c63bc36e529997082e8fee8` |
| 11 | `lemma` | [zariskiPrecoverage_le_qcPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/zariskiprecoverage-le-qcprecoverage--72a2715a30264bd1d9638bf2.md) | 102 | `result-track:72a2715a30264bd1d9638bf283cb049e944be47fd56ca48771659f244e0a91d7` |
| 12 | `lemma` | [Hom.singleton_mem_qcPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/hom-singleton-mem-qcprecoverage--f4b806d0ba0cd829bb3b1763.md) | 106 | `result-track:f4b806d0ba0cd829bb3b1763cc36e2db42ebac6a4031eb79d6ee4875f197a289` |
| 13 | `abbrev` | [propQCPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/propqcprecoverage--4a538db4f24cae91c2dce898.md) | 120 | `declaration-track:4a538db4f24cae91c2dce89871d5827d89300c06338621ee1d08a3b227b15b7e` |
| 14 | `lemma` | [propQCPrecoverage_le_precoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/propqcprecoverage-le-precoverage--8726867db555af13cc3052eb.md) | 124 | `result-track:8726867db555af13cc3052ebad80d2ba37ec1d9a944d11bce556aa57bb361bd4` |
| 15 | `lemma` | [propQCPrecoverage_monotone](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/propqcprecoverage-monotone--4f9c195168d73f9777d115f4.md) | 127 | `result-track:4f9c195168d73f9777d115f4ff01f51d4704d6dcd34200fc67fc2bbf78622819` |
| 16 | `lemma` | [zariskiPrecoverage_le_propQCPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/zariskiprecoverage-le-propqcprecoverage--fe955212095ad580c5787bf2.md) | 133 | `result-track:fe955212095ad580c5787bf2678c494b49ed9a21a5733b2cd10a30474ebfb704` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--0742ed76cd6ccb327ec5dd95.md) | 139 | `declaration-track:0742ed76cd6ccb327ec5dd95daa826ce073c97d80085bf7fce36c6c24439edc8` |
| 18 | `lemma` | [bot_mem_propQCPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/bot-mem-propqcprecoverage--eed0eeda67b3c2b4ec8f5c65.md) | 144 | `result-track:eed0eeda67b3c2b4ec8f5c6597d4614e5ce73fe2761651845dc3603033ba0d22` |
| 19 | `abbrev` | [Cover.forgetQc](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/cover-forgetqc--8c993f428febffd8e96262ea.md) | 149 | `declaration-track:8c993f428febffd8e96262ea870aca8e6934bf915c1b4b120afaa5261e22bf0c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--32e13008f6ca652d7a071ec9.md) | 154 | `declaration-track:32e13008f6ca652d7a071ec9bc39c828260f14dde1d1846f65af26b11163f3a5` |
| 21 | `def` | [Cover.ofQuasiCompactCover](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/cover-ofquasicompactcover--2bae40a530a3795e378d5d33.md) | 160 | `declaration-track:2bae40a530a3795e378d5d336b866878baacb740d32a161cdcc1f80f8e99ea3c` |
| 22 | `def` | [Cover.qculift](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/cover-qculift--970d60e70de3821228a5d36c.md) | 168 | `declaration-track:970d60e70de3821228a5d36c98589af2ce897f70db8f3ef753e5cb9e45b111af` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--d1ea81c75a2b8cb1fe90c765.md) | 176 | `declaration-track:d1ea81c75a2b8cb1fe90c7659a99aa8188ae6cddf9979ec1af25785f7e58fe8d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/instance--865d7bcb98ad93b3c16b6928.md) | 180 | `declaration-track:865d7bcb98ad93b3c16b6928fe2d58b5e5fecd21f92347cd66b22794f5c10c88` |
| 25 | `lemma` | [mem_propQCPrecoverage_iff_exists_quasiCompactCover](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/mem-propqcprecoverage-iff-exists-quasicompactcover--f120d75c6abe1be5a19c4699.md) | 189 | `result-track:f120d75c6abe1be5a19c4699b56c71d7164730b064d623c404221739dc293efa` |
| 26 | `lemma` | [Hom.singleton_mem_propQCPrecoverage](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/hom-singleton-mem-propqcprecoverage--91a0437cdb3ab8aa69ef1eeb.md) | 199 | `result-track:91a0437cdb3ab8aa69ef1eeb6c18ba81e93021c03517a744b71046f8c6bdef08` |
| 27 | `abbrev` | [propQCTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/propqctopology--609fdfb527db7438e1133fe7.md) | 206 | `declaration-track:609fdfb527db7438e1133fe75f67a515a05622c8b9d1616d67b4cf85f749a193` |
| 28 | `lemma` | [bot_mem_propQCTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/bot-mem-propqctopology--32f28bbea40d92819fb3e68e.md) | 209 | `result-track:32f28bbea40d92819fb3e68e3fc78a571aca571effbaee7d8caf478ee26d8664` |
| 29 | `lemma` | [Hom.generate_singleton_mem_propQCTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/hom-generate-singleton-mem-propqctopology--1efe8c440bd6a03852fe4d5c.md) | 214 | `result-track:1efe8c440bd6a03852fe4d5c315cb7c66043793801193cb93f46f85c68505231` |
| 30 | `lemma` | [Cover.mem_propQCTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/cover-mem-propqctopology--635101db78791ec187b44f24.md) | 221 | `result-track:635101db78791ec187b44f24e2eab89e2d47e3c07ee928c47f3108384d0ba652` |
| 31 | `lemma` | [zariskiTopology_le_propQCTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/declarations/zariskitopology-le-propqctopology--f5a855bf5a71f9d5ca49bc10.md) | 227 | `result-track:f5a855bf5a71f9d5ca49bc105736a86cde326249e0c1d8af46a20f6ff17cb6d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
