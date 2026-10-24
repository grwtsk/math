# Verification target: GRWTSK.Algebra.DirectLimit.Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be118d425ec298978c160bf4a00e64f50566d4ef",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be118d425ec298978c160bf4a00e64f50566d4ef`.

Source path: `GRWTSK/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--e9fbfd3def1753938703d756.md) | 64 | `declaration-track:e9fbfd3def1753938703d756f154f7e14178014a136db31110131c1cec75493d` |
| 2 | `theorem` | [one_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/one-def--242504c749a8fb36a2447035.md) | 69 | `result-track:242504c749a8fb36a2447035c4e22efd4ce333673477c245c1702eee62ea912c` |
| 3 | `theorem` | [exists_eq_one](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/exists-eq-one--9d58f7bb8e257e0efa06d728.md) | 72 | `result-track:9d58f7bb8e257e0efa06d728ee94f649ce5719a34222f33e22b5c166f5e5ab0e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--c302e70a48a503b7996bc750.md) | 83 | `declaration-track:c302e70a48a503b7996bc750255e8957308f2240582bb0fac27939902a32fbe0` |
| 5 | `theorem` | [mul_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/mul-def--672de97e80784b3fd0505208.md) | 86 | `result-track:672de97e80784b3fd0505208c584b0204a42e592a5bc442a818a08595fde0fb0` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--804d3370e122b1d9c7f5cc5c.md) | 92 | `declaration-track:804d3370e122b1d9c7f5cc5c812544fad61002397442cf9f7ddfad56ef772f9d` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--d45d2ad10e64b994523cb0a6.md) | 96 | `declaration-track:d45d2ad10e64b994523cb0a67e9a1b42a427ab570105d2c693e07d77dbba0fc4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--880a2184ef89a8fcd7a956dc.md) | 100 | `declaration-track:880a2184ef89a8fcd7a956dc78b4ac5e68c96f608b84bec7c029534834c61b9a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--fb06b8c35faf576c298d5124.md) | 107 | `declaration-track:fb06b8c35faf576c298d5124674c393881c2bd11ea6875a9fc68efa38fcd1c64` |
| 10 | `theorem` | [smul_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/smul-def--4871dd46a460e71ea43b20c7.md) | 110 | `result-track:4871dd46a460e71ea43b20c77079085d56ee1a07330a85fae47a927279cea55c` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--39dcf5ca92355fb30afedcf8.md) | 115 | `declaration-track:39dcf5ca92355fb30afedcf8364fd096cc88bb43170eb56ed17dccc214a78dbf` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--cf012967ca084ac04f6da0d6.md) | 123 | `declaration-track:cf012967ca084ac04f6da0d6f4847698d64e03b5e42de4260fd88ed591d50d50` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--d13b19bdd49eae5de03ec1d9.md) | 131 | `declaration-track:d13b19bdd49eae5de03ec1d91c4e8322cd68a17ca572f666dd6008d75c58055d` |
| 14 | `theorem` | [npow_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/npow-def--9b43f8f37c5e6b9e61e30a19.md) | 138 | `result-track:9b43f8f37c5e6b9e61e30a1921825efc669155ee2180b2d580204ba5cd970fe5` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--9276322a1c0a2c0389cae9cb.md) | 143 | `declaration-track:9276322a1c0a2c0389cae9cb74839c3daffabf81c32ac759143054cb3819458e` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--98048a2c9daac4e7c2e9d463.md) | 150 | `declaration-track:98048a2c9daac4e7c2e9d463869a33d5d5f00b7f681da7c24eeea23b22703645` |
| 17 | `theorem` | [inv_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/inv-def--d28b4e009e0259506cc9967d.md) | 164 | `result-track:d28b4e009e0259506cc9967d3beb9fb2a2ce8c82312a4c3b1a954671be0710d2` |
| 18 | `theorem` | [div_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/div-def--34741a9adc9f99b9d71840d3.md) | 166 | `result-track:34741a9adc9f99b9d71840d3cf401aa318b293b99d5567191e143e40d70eb15a` |
| 19 | `theorem` | [zpow_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/zpow-def--7fc7417557bcc2aaf95edf7a.md) | 169 | `result-track:7fc7417557bcc2aaf95edf7a1715403e36e6a01aa4f5a38452d1c694814983bb` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--bbce782d271571e145be448a.md) | 174 | `declaration-track:bbce782d271571e145be448a6740c5f25e898652f7fe0e856c3a376115c61ef9` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--137ca925d9c87b35db4b1fbc.md) | 178 | `declaration-track:137ca925d9c87b35db4b1fbce471cdcb303cb8fbef659b480e7ba232d9393c8a` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--98006c5c5ef47942c3eb3175.md) | 188 | `declaration-track:98006c5c5ef47942c3eb31757d61cac3932feddb541cc333b1d3ac75451d4555` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--56549a968852ee03acc5d8f7.md) | 192 | `declaration-track:56549a968852ee03acc5d8f76a12815e708497b334242e70725955868dc16b28` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--27a39f265e0fe7933f8e4db3.md) | 197 | `declaration-track:27a39f265e0fe7933f8e4db3912c9d8d0abb5e179afc20a643634c46320e89a8` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--6933b00163e91ac5d83b43b4.md) | 203 | `declaration-track:6933b00163e91ac5d83b43b42eb6ac180c53b80b433bacba809dcca4317e6809` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--da1cca8073adb1488caa2d3e.md) | 208 | `declaration-track:da1cca8073adb1488caa2d3eb7f21312f45ef02ff50753c82c00dc46d8b6841b` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--8449a9e07b8331bfb11ca462.md) | 217 | `declaration-track:8449a9e07b8331bfb11ca462d1988d52e0b401ae4c0c05b1391b1a4bdb279979` |
| 28 | `theorem` | [inv₀_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/inv-def--fe90badf9a4e59f4e79503d1.md) | 233 | `result-track:fe90badf9a4e59f4e79503d120283d0e502c00b30b33b3a9cee3419e1381643a` |
| 29 | `theorem` | [div₀_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/div-def--90233ff1c90448ee531ad042.md) | 235 | `result-track:90233ff1c90448ee531ad0424bdf7f94ca979fb8462331f2b868646878239df1` |
| 30 | `theorem` | [zpow₀_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/zpow-def--4ecd610dc46bc437caabdd7b.md) | 238 | `result-track:4ecd610dc46bc437caabdd7b45806b1f4b38cef0ef728d6ad8eb72c3a8ff8964` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--338394c5e24a64f11304c827.md) | 242 | `declaration-track:338394c5e24a64f11304c827483f7330536b4ba2d21c973317e9765f383c5e12` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--d7256a8990e0bc4c90c71d68.md) | 251 | `declaration-track:d7256a8990e0bc4c90c71d6809a549456b1890f72a30e2021c530b5bd45fcc83` |
| 33 | `theorem` | [natCast_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/natcast-def--3258744a01da1485526439c2.md) | 256 | `result-track:3258744a01da1485526439c25e0fe540f189ee9ff9afe749db11a68c6cc06386` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--6ef116303ad6dacc15448ebc.md) | 266 | `declaration-track:6ef116303ad6dacc15448ebc008e42d08cb093b9137e873012cb81d17de06514` |
| 35 | `theorem` | [intCast_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/intcast-def--c4f17b5c96d9b44591e57fb3.md) | 274 | `result-track:c4f17b5c96d9b44591e57fb39e7ca9f611254b0e3843ee09c7444af506d0c0da` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--802ac4e57828e18da6344522.md) | 280 | `declaration-track:802ac4e57828e18da634452220bbd4707899aad886ef9595dd916175106577e4` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--bd80080e043da8a53388345c.md) | 284 | `declaration-track:bd80080e043da8a53388345cd8773606b42780be3263754ed59e66c6ad2b61fd` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--9746278b7904affea399130c.md) | 289 | `declaration-track:9746278b7904affea399130c5265bd752b09cd4c921ece1161769c5b81b0e8b0` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--44e6345054fee658956a4a2a.md) | 298 | `declaration-track:44e6345054fee658956a4a2adceb8f2e574e95abc6b7975e17ea932f77eea6ac` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--f7838db452f30a3f382ff261.md) | 303 | `declaration-track:f7838db452f30a3f382ff261442b42d0251f6028b29c07b022a4a352303d5323` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--1a55b5bfb9ee847c8bc35914.md) | 307 | `declaration-track:1a55b5bfb9ee847c8bc35914dbf46f873ee7b2fbccdeaa846cb724ea8195013b` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--17b3f02ecfeadee40f187c0d.md) | 311 | `declaration-track:17b3f02ecfeadee40f187c0dee2ae1222b8534a7ea051e81fb41ed93c94c591c` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--4bdc7b3a2bb989f798efff2b.md) | 320 | `declaration-track:4bdc7b3a2bb989f798efff2bcec65b0a74c9b451f840334011d5ff850cbd9205` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--8b2b2701be3a741c0b58c3e5.md) | 325 | `declaration-track:8b2b2701be3a741c0b58c3e5b9832895dda20ffc640b18c90ebca333e458a02c` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--92961d5daab7a5ec267e5d08.md) | 329 | `declaration-track:92961d5daab7a5ec267e5d08780fbc83338ea395132a7f88b900e8244db865c9` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--3bb4a7facd6e5931cad24f40.md) | 333 | `declaration-track:3bb4a7facd6e5931cad24f40c159dceb2202fd2df7a065307643b97b041edc35` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--bc4cb3a35b5e1489bfea3e82.md) | 339 | `declaration-track:bc4cb3a35b5e1489bfea3e82f5763fd1ee664a9acae415e66f591af6ea3422f2` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--b9380c59664de61d19c33903.md) | 344 | `declaration-track:b9380c59664de61d19c3390316e16324bc8d1d66366537d5202b6c3836727f44` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--0306efe4d7b6d4fee92bd129.md) | 350 | `declaration-track:0306efe4d7b6d4fee92bd12904f40f95aa90abc53ce45d8c4d2c8907ce131e00` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--7d092114a52f42d6115e7378.md) | 357 | `declaration-track:7d092114a52f42d6115e73785d6510286c9ff00d8ba3c6cf662e30b5613fffcd` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--6843ccb6d2fa19f89f7632cf.md) | 363 | `declaration-track:6843ccb6d2fa19f89f7632cf1c1ea0d979174a6f235c33b50211099771349c3a` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--eb672ac0138c4bc382eaf5ac.md) | 371 | `declaration-track:eb672ac0138c4bc382eaf5aca15fb6edd5fe9d3e576a3e14effb3935b656e154` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--ed81c0d5d5e484583b34e018.md) | 383 | `declaration-track:ed81c0d5d5e484583b34e01864f83ef027d1e5c2c1fb57529b9fa3f67a7a7776` |
| 54 | `theorem` | [nnratCast_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/nnratcast-def--1718ae6852101b06c462b9d6.md) | 393 | `result-track:1718ae6852101b06c462b9d6c87afbed87926d0f0c3dbe4eb27d44e9cbdb9d08` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--e23833e5182a8b3f80b29f97.md) | 398 | `declaration-track:e23833e5182a8b3f80b29f977153d2ad56bc802eb216c0d3a70b8b65a2e5eb4a` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--a97fcb3baea78ea9b31a49b9.md) | 406 | `declaration-track:a97fcb3baea78ea9b31a49b9a2d1c7c3abb76d3181f0dcc6d73e1e6e9176e0a1` |
| 57 | `theorem` | [ratCast_def](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/ratcast-def--efad3269acf993ff7498943d.md) | 416 | `result-track:efad3269acf993ff7498943d2142d76efea61d261e69e1533fef7d39299747c6` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/instance--56416c8a1e9631d4f84db186.md) | 421 | `declaration-track:56416c8a1e9631d4f84db1868f5c52ee79a22dd1721a4a04d4e55b3973ec11c0` |
| 59 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/of--74fc7df2bb9cf21adc9b7584.md) | 437 | `declaration-track:74fc7df2bb9cf21adc9b75841d26f16771f05affe1350a59d76e37e027510747` |
| 60 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/of-f--25e9b3427e10f1fbe4ee5945.md) | 445 | `result-track:25e9b3427e10f1fbe4ee5945b1f646a7b84d1f34d1e1c47701ec55d5a3abb3a8` |
| 61 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/lift--ed73f5065c8362e5081a14b3.md) | 453 | `declaration-track:ed73f5065c8362e5081a14b33c8766b180b4f20198e791d904965f342bf0961f` |
| 62 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/lift-of--5982fe1be6daf1cbfc666ae9.md) | 462 | `result-track:5982fe1be6daf1cbfc666ae9fdc9694f5db712611d4ad7d50b46aa1387eeddfc` |
| 63 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/of--3173445050b6b21643f75568.md) | 472 | `declaration-track:3173445050b6b21643f75568e719ccdbd830199cc48f8aa8426ccd5879fb4ef9` |
| 64 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/of-f--8ea7c953b5ec86897b902486.md) | 479 | `result-track:8ea7c953b5ec86897b902486769b76f66d9118da31e60f09f60878e4b59741cd` |
| 65 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/lift--34f7fe876a1924ac8317ccc4.md) | 488 | `declaration-track:34f7fe876a1924ac8317ccc49a694dc698a65739cfa0dd8a3a4d2c29bfea8014` |
| 66 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant62b43e45359988b8483d1aa258f1c224f7b679cdb3ce046a4d1ce7c23541f23e.lean/declarations/lift-of--370b488ed373348d21aab0a8.md) | 498 | `result-track:370b488ed373348d21aab0a8e6e2888acba6d66ebd075141044c536b81dc827f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
