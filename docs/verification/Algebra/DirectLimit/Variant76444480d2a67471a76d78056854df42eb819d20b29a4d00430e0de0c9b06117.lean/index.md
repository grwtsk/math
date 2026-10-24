# Verification target: GRWTSK.Algebra.DirectLimit.Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7`.

Source path: `GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DirectedSystem](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem--806b03f7d2c276265c2726e9.md) | 48 | `declaration-track:806b03f7d2c276265c2726e9b2568e9d79f753084a3718e4af210505313ca64c` |
| 2 | `theorem` | [DirectedSystem.map_self](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem-map-self--0f2b216f327b51337d5e646c.md) | 56 | `result-track:0f2b216f327b51337d5e646c71a15a21da6aa26b296efc867dc410d47f216913` |
| 3 | `theorem` | [DirectedSystem.map_map](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem-map-map--354e3028d5e01ba821f035b5.md) | 58 | `result-track:354e3028d5e01ba821f035b58e75668c508b2525dfcce1e8f3f9c20eaa09d17f` |
| 4 | `theorem` | [DirectedSystem.map_self](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem-map-self--721ca460e261b3e448baaf85.md) | 72 | `result-track:721ca460e261b3e448baaf85df6234ab2da489abb7cedfb61e17c58193e78cb2` |
| 5 | `theorem` | [DirectedSystem.map_map](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem-map-map--0c8641319233eccda6defdfe.md) | 79 | `result-track:0c8641319233eccda6defdfe966bf25f718f67ff962488dbcb130d9ea625de88` |
| 6 | `def` | [DirectLimit](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directlimit--9d49627d497a6f7da77f0466.md) | 87 | `declaration-track:9d49627d497a6f7da77f04669ae50060a0e14c4b3294702ef524ff629544a6dd` |
| 7 | `instance` | [addCommGroup](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/addcommgroup--7814c232cab79318711c6a44.md) | 97 | `declaration-track:7814c232cab79318711c6a448136cebc3c373804aebc425d0b012cc1a2adf3a5` |
| 8 | `instance` | [module](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/module--12e95b0b3e78a650e64ad1f4.md) | 100 | `declaration-track:12e95b0b3e78a650e64ad1f4d6686706443b873e1307a8e0efc74f51405bb149` |
| 9 | `instance` | [inhabited](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/inhabited--fe464c74af4470a68d689f7b.md) | 103 | `declaration-track:fe464c74af4470a68d689f7b065404ffdea42bfc160ac9b4161bbbe74a6da01a` |
| 10 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of--bb8d32b7111c36667befb728.md) | 109 | `declaration-track:bb8d32b7111c36667befb72896bc476f6fcb4c28e5124dc4d18f97dd7c058745` |
| 11 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-f--28a82fac72c7b1d88b1214a3.md) | 116 | `result-track:28a82fac72c7b1d88b1214a35014f3240cb9184f1f61ee17bee795ca0f50f914` |
| 12 | `theorem` | [exists_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/exists-of--fcf9f3be415cecc1eff7afe4.md) | 122 | `result-track:fcf9f3be415cecc1eff7afe4030e8081862c2979386b5f97bf9d15a95d6908e9` |
| 13 | `theorem` | [induction_on](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/induction-on--a03f7b8f36d8a888f3285923.md) | 136 | `result-track:a03f7b8f36d8a888f32859236168df3bbefd2382d0571f2203be939a093715e1` |
| 14 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift--f8dadda1f4e527bdcde4ca6d.md) | 151 | `declaration-track:f8dadda1f4e527bdcde4ca6d60be86b95532d4daf64a2c9a2a82c681e1aa04e9` |
| 15 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-of--89ca4a2f4cdf9adf08310ad3.md) | 160 | `result-track:89ca4a2f4cdf9adf08310ad3dafb28b521dba207e0d6118e722a762c3deb8ed1` |
| 16 | `theorem` | [lift_unique](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-unique--48e70c9aaf2f6ea75ed9dd7e.md) | 164 | `result-track:48e70c9aaf2f6ea75ed9dd7e5804fc5e1e5870a9df6551c909edef1838d25ed1` |
| 17 | `def` | [totalize](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/totalize--3a3fc72d13ecbb0e75cf9dc9.md) | 180 | `declaration-track:3a3fc72d13ecbb0e75cf9dc91fecf2d260cfa2581cc252baefc5f3a8a6756ba5` |
| 18 | `theorem` | [totalize_of_le](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/totalize-of-le--ceb402d8387e5c2b85d023a3.md) | 186 | `result-track:ceb402d8387e5c2b85d023a388f74a9f0496a03a93fbe87676acf1562fae22ec` |
| 19 | `theorem` | [totalize_of_not_le](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/totalize-of-not-le--771832749c929271d0fdb3d5.md) | 190 | `result-track:771832749c929271d0fdb3d5bef16a2849f5eb60905f75fa536216aaf13fc4db` |
| 20 | `theorem` | [toModule_totalize_of_le](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/tomodule-totalize-of-le--254d89b2ced93ba106fa1bc8.md) | 200 | `result-track:254d89b2ced93ba106fa1bc8ce8dce1c9c2f91d94352d22d30f7d177d7bc0e1b` |
| 21 | `theorem` | [of.zero_exact_aux](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact-aux--0dad7048b766e4254ab510a4.md) | 212 | `result-track:0dad7048b766e4254ab510a483c9decf71e65810b051a17dc64b4f77fc73de21` |
| 22 | `theorem` | [of.zero_exact](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact--75bba1260b03fd478397b794.md) | 254 | `result-track:75bba1260b03fd478397b79483169591ccbb65792028e052f9ac081ec4a77053` |
| 23 | `def` | [DirectLimit](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directlimit--c1bb7e891a577f43747d901f.md) | 277 | `declaration-track:c1bb7e891a577f43747d901ff6de7095956020a3d387044e72fc22398eec9856` |
| 24 | `theorem` | [directedSystem](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directedsystem--3918f4ba2677ff169131fc4c.md) | 285 | `result-track:3918f4ba2677ff169131fc4cf5bf8c3014753f6466828857a482a924f560cf91` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/instance--a2f04765faf7d41928678293.md) | 292 | `declaration-track:a2f04765faf7d419286782935791da73c3c0409d0b52f2ff1d8fcb73b5e0070f` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/instance--e68625c2d074556ba0ea6abf.md) | 295 | `declaration-track:e68625c2d074556ba0ea6abf82efd533f5400f76de3908f0e932c5b2963b930a` |
| 27 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of--e72f24d077a8e54103a6aaa6.md) | 299 | `declaration-track:e72f24d077a8e54103a6aaa63524ab0d6cb510339ecd8c5c188e025ab343b0e7` |
| 28 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-f--cf1f9f87996fd0ff60db6aef.md) | 306 | `result-track:cf1f9f87996fd0ff60db6aef20692a4aa6420187a9e90ac1c1e795319c3a079d` |
| 29 | `theorem` | [induction_on](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/induction-on--2d5f695d4aa01086e366218b.md) | 311 | `result-track:2d5f695d4aa01086e366218bec8718165cf553e5f843bb03fcacbc2c97c1178e` |
| 30 | `theorem` | [of.zero_exact](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact--b7f90d77ae5aae3276181d43.md) | 318 | `result-track:b7f90d77ae5aae3276181d4320f7b02761cc2227f4a8a58828c00838f0acb575` |
| 31 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift--7360f614cccb085c6ea90200.md) | 334 | `declaration-track:7360f614cccb085c6ea902002cd1b6b7992ffdb62188b09207c9b4a3707111fe` |
| 32 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-of--15307ed4b965aaa2a527d8d9.md) | 342 | `result-track:15307ed4b965aaa2a527d8d916ec94e60184aae540b088c8b75870c2dbe67c5e` |
| 33 | `theorem` | [lift_unique](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-unique--d619163a0a3163f056020e3e.md) | 346 | `result-track:d619163a0a3163f056020e3e0077526163315e072826bc6683626df60fc51535` |
| 34 | `def` | [DirectLimit](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/directlimit--c4da6dcc09bfcae592a0f46d.md) | 366 | `declaration-track:c4da6dcc09bfcae592a0f46dd34499468bdf14ffab625ba26d893255dc0188e2` |
| 35 | `instance` | [commRing](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/commring--c5312eeb536bba119c731b71.md) | 378 | `declaration-track:c5312eeb536bba119c731b714590ca45e6ca36182e3ca6d5d02d106ad70b11a1` |
| 36 | `instance` | [ring](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/ring--13ffb899161c106e08b094f1.md) | 381 | `declaration-track:13ffb899161c106e08b094f19d5683ad20982c7af4e28deb2197cca268c4c43f` |
| 37 | `instance` | [zero](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/zero--efe2db7e42413d827e693848.md) | 385 | `declaration-track:efe2db7e42413d827e693848d879e0d38acdea5ef707bf06688eddc557ecb97d` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/instance--f8d61cfe2e7653a6e8d5b495.md) | 389 | `declaration-track:f8d61cfe2e7653a6e8d5b49580b39a8a39119a8c26220b17e8119fcc0244fdbf` |
| 39 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of--b9a2ba565dbe9fa7d16384a7.md) | 393 | `declaration-track:b9a2ba565dbe9fa7d16384a7801c252c8d9aeba73146d001724febc3a53b9133` |
| 40 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-f--bf02884b270ecb7aa4d44e68.md) | 406 | `result-track:bf02884b270ecb7aa4d44e683266a6fb922084f6140f5fbf429cd275a10be195` |
| 41 | `theorem` | [exists_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/exists-of--ba047043d3defc4fb96086c9.md) | 412 | `result-track:ba047043d3defc4fb96086c90d0df32a015cb2a7a585e7b49eaed03155ba4b99` |
| 42 | `theorem` | [Polynomial.exists_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/polynomial-exists-of--611bd3aab259edf71383d8b2.md) | 447 | `result-track:611bd3aab259edf71383d8b2aaa64d7c9f42da543a9895a787193564e4c4901b` |
| 43 | `theorem` | [induction_on](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/induction-on--37ff6915656073db2f673db8.md) | 467 | `result-track:37ff6915656073db2f673db8ba39a8b87f47a58855a492aeb8af962782e10a45` |
| 44 | `theorem` | [of.zero_exact_aux2](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact-aux2--a072d732c5726ee783abdfef.md) | 483 | `result-track:a072d732c5726ee783abdfef849e68d952e5074bb4fcae2f1e998e8dbfa982fc` |
| 45 | `theorem` | [of.zero_exact_aux](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact-aux--23db0a3754d2253f490f8424.md) | 514 | `result-track:23db0a3754d2253f490f8424ffa18f5b4b35c8139c8dae2f0267c55ff0c3ab3b` |
| 46 | `theorem` | [of.zero_exact](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-zero-exact--0eb30f5c5f076a2d0d37915e.md) | 613 | `result-track:0eb30f5c5f076a2d0d37915e2aa813dbc3d23fb5a1fa151ae036354ddc26ad69` |
| 47 | `theorem` | [of_injective](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/of-injective--265bd71d54ab249ec96b83b1.md) | 627 | `result-track:265bd71d54ab249ec96b83b154d119acf98f02262512b20a70a9f8f3dd88ffae` |
| 48 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift--101bdb42cfd90a33a54c9735.md) | 655 | `declaration-track:101bdb42cfd90a33a54c97355c83ef8c38c4598917297acc69dee2b121e1f011` |
| 49 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-of--5fed27b8fc14ccf37fb402c1.md) | 674 | `result-track:5fed27b8fc14ccf37fb402c1d3e82209f69888f5ee9ea145d5dfe86530197cf1` |
| 50 | `theorem` | [lift_unique](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/lift-unique--f64d5a5c001c1272b32ad20d.md) | 678 | `result-track:f64d5a5c001c1272b32ad20db0cd73c07a791cd5747066f5e519a52676006b4e` |
| 51 | `instance` | [nontrivial](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/nontrivial--c95c733bcf5f8096bbd80934.md) | 699 | `declaration-track:c95c733bcf5f8096bbd809342256c2fd462c29827a6c5d2be008d728f35478fe` |
| 52 | `theorem` | [exists_inv](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/exists-inv--5c4d8ae2969d3de4d0400e93.md) | 710 | `result-track:5c4d8ae2969d3de4d0400e939b9fa0d94ff0d060d3c6048f9887b5a9d0a57a47` |
| 53 | `def` | [inv](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/inv--75794f55a65ba8c6dfccda36.md) | 723 | `declaration-track:75794f55a65ba8c6dfccda369c0bc44410d1c66224952aaa596b243c4e0619ec` |
| 54 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/mul-inv-cancel--8e883c7f31758c3c13c43668.md) | 727 | `result-track:8e883c7f31758c3c13c436689ad5aa1eb2ec9df3c37bb724c9a02a52f50c2219` |
| 55 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/inv-mul-cancel--dc96ba9cc4e995ad92000afa.md) | 731 | `result-track:dc96ba9cc4e995ad92000afa38b34dba783ab9c932bfc2d492e41e1a23148930` |
| 56 | `def` | [field](../../../../mathematics/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/declarations/field--db595474775f731eafb89f77.md) | 740 | `declaration-track:db595474775f731eafb89f770abd1f89556cdfa3825af9d28d4e002e96936384` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
