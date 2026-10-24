# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ab497ece5b8f3040761d53719de019192f8357d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ab497ece5b8f3040761d53719de019192f8357d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfClaims`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClaims.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalJets`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalJets.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HalfScriptProofs](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/halfscriptproofs--98887ca1160061dd63680650.md) | 24 | `declaration-track:98887ca1160061dd63680650186c666b6409f100f28abbf288830f65da7cfd34` |
| 2 | `theorem` | [half_scripts](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/half-scripts--0389e7b61661711b80d5c904.md) | 103 | `result-track:0389e7b61661711b80d5c904b5c5c28bd41aba666fa5b60b474661e78b4dd1d6` |
| 3 | `theorem` | [half_obligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/half-obligations--f87447f9aaad9968e28a6a7a.md) | 106 | `result-track:f87447f9aaad9968e28a6a7a883a3d1b16f18262d3550b18d0a75c75c27f53a4` |
| 4 | `theorem` | [block00](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block00--a83e81c743db66adfff8e3fc.md) | 110 | `result-track:a83e81c743db66adfff8e3fc172cfd8deb12168ccb08ed23615f979df2be2ee8` |
| 5 | `theorem` | [block01](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block01--afc158aafc9125d72a1fc8d9.md) | 114 | `result-track:afc158aafc9125d72a1fc8d9fa4c8c761bed78bc735e34481758d45ed0db90a5` |
| 6 | `theorem` | [block02](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block02--3a0c9cb60c764bb0ec4be854.md) | 118 | `result-track:3a0c9cb60c764bb0ec4be85474c8d67430cc669187d74b7875cc16c739ff5855` |
| 7 | `theorem` | [block03](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block03--cc987ce82cf5547a226142b2.md) | 122 | `result-track:cc987ce82cf5547a226142b2e5cb810e5b3e4b59d1cfa2ba3d305b4ca2401395` |
| 8 | `theorem` | [block04](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block04--0464dc2ae67fa0eca2e4ef95.md) | 126 | `result-track:0464dc2ae67fa0eca2e4ef95ef7d855699cae108e9995153a8632de327572c73` |
| 9 | `theorem` | [block05](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block05--f66efa621885adca875fe406.md) | 130 | `result-track:f66efa621885adca875fe4063550fb4150863f82267ec4ee05f7a617d88100bd` |
| 10 | `theorem` | [block06](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block06--9e96b0a610992e6dfb67e8c4.md) | 134 | `result-track:9e96b0a610992e6dfb67e8c42b201f9ad4b5c7b818646f41a1e1f1a4335e7cc1` |
| 11 | `theorem` | [block07](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block07--c3bd4ebbef5c5d5d416119ad.md) | 138 | `result-track:c3bd4ebbef5c5d5d416119add1e45ca9972b0b81da61ec42b46f9119daa7dad1` |
| 12 | `theorem` | [block08](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block08--9a27bb9ff8fd7ff68469996a.md) | 142 | `result-track:9a27bb9ff8fd7ff68469996a6890cb8ac36e171c4a6548cf721aedf9dc0bdd8f` |
| 13 | `theorem` | [block09](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block09--15b5462bf50af09142442488.md) | 146 | `result-track:15b5462bf50af091424424880dd3509cf4c55a488f91b814e2d376901273fa26` |
| 14 | `theorem` | [block10](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block10--748d779a59583093062ed439.md) | 150 | `result-track:748d779a59583093062ed43910d3a0a7723b47b2ec74ba32c1485c5a92c96660` |
| 15 | `theorem` | [block11](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block11--a45d5d178a3c49e03c180f72.md) | 154 | `result-track:a45d5d178a3c49e03c180f72249ba12fcd5ad58160561d676a64fb07aaf3b745` |
| 16 | `theorem` | [block12](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block12--c444a5b744452d15f1267c32.md) | 158 | `result-track:c444a5b744452d15f1267c32c213d11f5ac4602bc3b498cb4bac63dcf1e2b8d2` |
| 17 | `theorem` | [block13](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block13--4d3fcfc5678af9af56115239.md) | 162 | `result-track:4d3fcfc5678af9af56115239e7defc1b10a69bce693890197be20051bf5d621d` |
| 18 | `theorem` | [block14](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block14--c9b781093a82259957a87444.md) | 166 | `result-track:c9b781093a82259957a87444ffa4149cfa58e616af1129e1a157adf82a216c6d` |
| 19 | `theorem` | [block15](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block15--bb334565ee933b526ed4c699.md) | 170 | `result-track:bb334565ee933b526ed4c699019eba4b76c73f74e9576ad1c3ac3594c76e0ea1` |
| 20 | `theorem` | [block16](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block16--7b3143db3bf869c33fff43ac.md) | 174 | `result-track:7b3143db3bf869c33fff43ac93cf14e74d15464c425f54d81bafee7b6bd00ffc` |
| 21 | `theorem` | [block17](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block17--220d2d2cb005041d7b868ac8.md) | 178 | `result-track:220d2d2cb005041d7b868ac8784d0b51074567a5c4287adf200370e23854f51c` |
| 22 | `theorem` | [block18](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block18--fc616e11b119936c7f64b532.md) | 182 | `result-track:fc616e11b119936c7f64b532022f3c29158c2ffaa952802f361af603c646566f` |
| 23 | `theorem` | [block19](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block19--e3523b7408f3c7d529f7f595.md) | 186 | `result-track:e3523b7408f3c7d529f7f595ad8c42dd01bf39cd2ff9ab5719e004988e5f4b42` |
| 24 | `theorem` | [block20](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block20--1d334c5807211bad647d5158.md) | 190 | `result-track:1d334c5807211bad647d515832456fe93b86d8193d979c57bf513584798bef30` |
| 25 | `theorem` | [block21](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block21--3cda6d796889c705dc2ec539.md) | 194 | `result-track:3cda6d796889c705dc2ec539c177bbb8e894e93c3d1e5114130f0b476d0c8bc8` |
| 26 | `theorem` | [block22](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block22--7b40a3b710820ae341b466f9.md) | 198 | `result-track:7b40a3b710820ae341b466f90f3a08b462dca0d259f4ea16261024291b702cab` |
| 27 | `theorem` | [block23](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block23--34808a8a0c03fcaea5c6a3e1.md) | 202 | `result-track:34808a8a0c03fcaea5c6a3e1c61cc8b817b999944667a27eebf1883307a5a246` |
| 28 | `theorem` | [block24](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block24--90337ffddb1966b9152da73f.md) | 206 | `result-track:90337ffddb1966b9152da73f0c5264a76562ac9409f5b2dc517854902cf84aa5` |
| 29 | `theorem` | [block25](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block25--c8954669263a0197ea050641.md) | 210 | `result-track:c8954669263a0197ea0506415f314b468aa20c297dc80e00cac4db23b24903fa` |
| 30 | `theorem` | [block26](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block26--7a5da24a5f35c00cfc7eab4c.md) | 214 | `result-track:7a5da24a5f35c00cfc7eab4c505901fecb7c694c7f0e77f12e55b97ac180b3c8` |
| 31 | `theorem` | [block27](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block27--faa576d3f7535d0a35833d8b.md) | 218 | `result-track:faa576d3f7535d0a35833d8bbb1e951c507b6c9aeddd89de895b4c4ba134eba8` |
| 32 | `theorem` | [block28](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block28--a53258fe4f05e6cad1f0d158.md) | 222 | `result-track:a53258fe4f05e6cad1f0d1586a9cc357480595f88f92292b317f5b6e28e04951` |
| 33 | `theorem` | [block29](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block29--ceaf00b8cefde667552ba6b2.md) | 226 | `result-track:ceaf00b8cefde667552ba6b25adfffa8bfc3ccd1fbf8f97f16f2400170b53856` |
| 34 | `theorem` | [block30](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block30--a21aed805b101965a962fbc5.md) | 230 | `result-track:a21aed805b101965a962fbc5d43cb5d0b67e40259882c0ab99538c36f95445c4` |
| 35 | `theorem` | [block31](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block31--3092a9b13345da9a55d06c74.md) | 234 | `result-track:3092a9b13345da9a55d06c746185736b5cd2126c41124d4e69320f9a6efe2b6e` |
| 36 | `theorem` | [block32](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block32--48dfcdd834aff884038c2a95.md) | 238 | `result-track:48dfcdd834aff884038c2a958615a99db48bbb4e4572b12af184ef674b334edc` |
| 37 | `theorem` | [block33](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block33--03c1fd09e70186d61cfc7f38.md) | 242 | `result-track:03c1fd09e70186d61cfc7f385d6fe15996748ad27255e1b6134dd3a71442d12c` |
| 38 | `theorem` | [block34](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block34--d33a21a62f89b08021c4e9e2.md) | 246 | `result-track:d33a21a62f89b08021c4e9e2a09473a5a44a42e710d8c295c0e9888325c37c7f` |
| 39 | `theorem` | [block35](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block35--cc90fb65a0c4cd2221ada4b2.md) | 250 | `result-track:cc90fb65a0c4cd2221ada4b2a221463cac525cad0a3dcf3769c64ddad5ba9c3d` |
| 40 | `theorem` | [block36](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block36--efd50e449f4f979bf682965f.md) | 254 | `result-track:efd50e449f4f979bf682965f3643af2930af33191d8b3f4e7bf92e83219cdddf` |
| 41 | `theorem` | [block37](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block37--507d41547a5a3b56fce60986.md) | 258 | `result-track:507d41547a5a3b56fce60986d0d1f59430b68eddffc011aef7dab8292bb11125` |
| 42 | `def` | [BlockScriptProofs](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/blockscriptproofs--fbd0cb49a69717523f528c58.md) | 262 | `declaration-track:fbd0cb49a69717523f528c585a4b385da796e69d7e517ba9bdd97eafb6bd7318` |
| 43 | `theorem` | [block_scripts](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block-scripts--fb634a5f0fb54e4bceae2604.md) | 302 | `result-track:fb634a5f0fb54e4bceae2604c129cd4032566ce8c9a1aaeb506ba2861d284245` |
| 44 | `theorem` | [block_obligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/block-obligations--9e46a282de6e101384ad2be1.md) | 306 | `result-track:9e46a282de6e101384ad2be1dc6c661403e78c8ae34c3d6ff437466d9d3770e4` |
| 45 | `theorem` | [canonical_result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/canonical-result--6e4aebde9ae0e701f1e11c44.md) | 311 | `result-track:6e4aebde9ae0e701f1e11c4494170e2fc050acc407bbb830895cb9e115873f0c` |
| 46 | `theorem` | [original_success](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/original-success--e815f26f0f51d1ea380154c7.md) | 314 | `result-track:e815f26f0f51d1ea380154c7350899aefd72b4a48d108a6b48d0f7cfb3d4bf3b` |
| 47 | `theorem` | [regional_count_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/regional-count-one--f8bc5a9140106b5a36153c65.md) | 317 | `result-track:f8bc5a9140106b5a36153c6548a06856d26e86649b647839a0e9415e50ea3d64` |
| 48 | `theorem` | [complete_pair](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectHalfClosure.lean/declarations/complete-pair--1ec825ba52396baa5b1ddbd0.md) | 320 | `result-track:1ec825ba52396baa5b1ddbd094e8030b848d6e1d941b482b92e6e74473a38ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
