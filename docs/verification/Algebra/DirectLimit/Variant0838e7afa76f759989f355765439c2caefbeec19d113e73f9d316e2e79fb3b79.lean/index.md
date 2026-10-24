# Verification target: GRWTSK.Algebra.DirectLimit.Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb07608985a608234e3ff24c7b564174ef7d2f8d",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/index.md) · [Full source](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb07608985a608234e3ff24c7b564174ef7d2f8d`.

Source path: `GRWTSK/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--a0c325cd1837739eb50c6df4.md) | 56 | `declaration-track:a0c325cd1837739eb50c6df402380882d63e02fe343d254a17df2f7b10b941c5` |
| 2 | `theorem` | [one_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/one-def--6b099cb84ba30374eb205609.md) | 61 | `result-track:6b099cb84ba30374eb205609d1995098f1f8bad8f5350742df5071d601f41af7` |
| 3 | `theorem` | [exists_eq_one](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/exists-eq-one--d98b5e1cdc8fc3e24c14f1a1.md) | 64 | `result-track:d98b5e1cdc8fc3e24c14f1a128fa2034b3af89ce5d0268382ac17e816093e0d4` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--bfa13e4f08ee4bf28a389e3e.md) | 75 | `declaration-track:bfa13e4f08ee4bf28a389e3eb58064613071cea684e79586a73265ca505e347a` |
| 5 | `theorem` | [mul_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/mul-def--f31d9c54fc82f2886feae39d.md) | 78 | `result-track:f31d9c54fc82f2886feae39d6a12ada4c19570d848e079567f73ed87bcb6d198` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--c2996f43b03783458f902ad7.md) | 84 | `declaration-track:c2996f43b03783458f902ad763578222b0c7a5a0abea314c2fe02bbda7203263` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--7166234868eae04aeb67e51e.md) | 88 | `declaration-track:7166234868eae04aeb67e51e25eb481c3a4565ed74720434940040091fb7a520` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--559aece2e497b48d84075947.md) | 92 | `declaration-track:559aece2e497b48d840759479b10e9f9db6ad99dbd211881abf9add894a864a8` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--05d487370b9e77c65a2c3bd3.md) | 99 | `declaration-track:05d487370b9e77c65a2c3bd39af4aa2b60f505a317b9ec5be161717df08e7bdb` |
| 10 | `theorem` | [smul_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/smul-def--101b9a571de1981c9ed6dc56.md) | 102 | `result-track:101b9a571de1981c9ed6dc5616178519ea6e7a2f1847e9e7af6fcd2d13d88be0` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--b01acf54c19483c995ea6e97.md) | 107 | `declaration-track:b01acf54c19483c995ea6e976f9a1506c93704d6c5c620eb67425c9f061cc3c0` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--897dcf7b1d2c54f6e7d4f19d.md) | 115 | `declaration-track:897dcf7b1d2c54f6e7d4f19de7d4f0f24ff4ea9b7b28ec24695e94737db9b1b2` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--d8dd8e098176f072dc118b58.md) | 123 | `declaration-track:d8dd8e098176f072dc118b5837c89ba0483b4dbeb4d8386fc48af14d9dddec7b` |
| 14 | `theorem` | [npow_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/npow-def--4be920668a2d83c7619c2973.md) | 130 | `result-track:4be920668a2d83c7619c2973f5725e0315ac979adf995e467be1a342af2e6404` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--7029efb65818adbf7aa211a6.md) | 135 | `declaration-track:7029efb65818adbf7aa211a639e10f6d79a15c0e6d8b30f76122572f1f73fef3` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--409b691fc606fee9e46bbecc.md) | 142 | `declaration-track:409b691fc606fee9e46bbecc600e141790b4ef47cf5e0e3d0741c27d8fcc02a1` |
| 17 | `theorem` | [inv_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/inv-def--4257f41634dcd6ec73c98b2f.md) | 156 | `result-track:4257f41634dcd6ec73c98b2fb5622e19f6c741153d17b234c63a91bf135d2f79` |
| 18 | `theorem` | [div_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/div-def--05388c5cbfa9ec5e9225f07e.md) | 158 | `result-track:05388c5cbfa9ec5e9225f07e7a439883f52e9e3d5b23ed7cef47edd41b184a2d` |
| 19 | `theorem` | [zpow_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/zpow-def--8055cbf1e734ea03c80eb83d.md) | 161 | `result-track:8055cbf1e734ea03c80eb83dcab56d3b273a9b0b2751d7a6ee969f06b9d6e449` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--faecf0e248d4c1c78a6aa3d4.md) | 166 | `declaration-track:faecf0e248d4c1c78a6aa3d4d9b5211e879db8f1f5c45f7e88a94f19597c0e2c` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--6abf8185b7b06b5ee21df9e4.md) | 170 | `declaration-track:6abf8185b7b06b5ee21df9e49c667fe8f5a1be6644140a6adc1dd7284fd65131` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--56d409c7b37816ac5a153c6b.md) | 180 | `declaration-track:56d409c7b37816ac5a153c6b8a4a68d56a18faa93218abaabc374a8da9f7e2e5` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--c35f425b74c63eefd61fe84d.md) | 184 | `declaration-track:c35f425b74c63eefd61fe84df74f13b66a17cd5cda6b388313f44c0d2dd463fc` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--b2184e78df161d7e974a63b0.md) | 189 | `declaration-track:b2184e78df161d7e974a63b078ff87659db8498a7306cc18f34e889ac6934103` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--5771252a608b31c6f0738c64.md) | 195 | `declaration-track:5771252a608b31c6f0738c644e9b4afd591468a8ee606da9ae8f712d8c11fedb` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--723d326b0d01c25c159f2472.md) | 200 | `declaration-track:723d326b0d01c25c159f2472c8d05da3da32a5da4aadef0166c37272f3cb506a` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--1c2bc5eb378806f66cc628bb.md) | 209 | `declaration-track:1c2bc5eb378806f66cc628bb90ce15e15960519fea056a9389ad9732796369a8` |
| 28 | `theorem` | [inv₀_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/inv-def--3e8ecf5fd05fa8d1e34b7ee3.md) | 225 | `result-track:3e8ecf5fd05fa8d1e34b7ee36fba04dc09e581053c28e6ab616df8be91200883` |
| 29 | `theorem` | [div₀_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/div-def--27b345b31684b49ba8fca8a1.md) | 227 | `result-track:27b345b31684b49ba8fca8a1f21ef0e25339da6b9173d5e28f783b233f57ead3` |
| 30 | `theorem` | [zpow₀_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/zpow-def--e7ffc3bc363ba78d768f2b97.md) | 230 | `result-track:e7ffc3bc363ba78d768f2b97ecbec7580d817414717a1ef0a8b3dc1955c49a79` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--0e1f24ce63da3107a97a51f4.md) | 234 | `declaration-track:0e1f24ce63da3107a97a51f43e41c2f52fb4630dee0accacc812d1547edf10e6` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--cd2910124dcf1e4756171e1a.md) | 243 | `declaration-track:cd2910124dcf1e4756171e1abaafc6a5065ce4057c0caab269139bc61ea5b807` |
| 33 | `theorem` | [natCast_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/natcast-def--a78220ae8e55e4591b171342.md) | 248 | `result-track:a78220ae8e55e4591b171342b08e1fcf7f3df6aa9a16c3383cc8589634a27a17` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--e84ef7bed376804204eae4ea.md) | 258 | `declaration-track:e84ef7bed376804204eae4eadeed9f427ca6c8a10b7f2666434ede425cfb4815` |
| 35 | `theorem` | [intCast_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/intcast-def--3ed5e7e80cc074d367468c3d.md) | 266 | `result-track:3ed5e7e80cc074d367468c3d5d1e1ed76da006ef34dc88c0c9ee05640b6cdfbd` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--c3ece22790fa0ed7dc03b6b7.md) | 272 | `declaration-track:c3ece22790fa0ed7dc03b6b7e1a1a0d33964884a78a485cbe7db1e54976266d0` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--b00ea356ca1c1a4c853db377.md) | 276 | `declaration-track:b00ea356ca1c1a4c853db377fc194fbd9364281477912b383e8ded01281f7381` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--1934777c21d71d87d19b804b.md) | 281 | `declaration-track:1934777c21d71d87d19b804b281378f601fa9c29912798a2f3e576acd621f730` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--26dda592239acac396a8cee2.md) | 290 | `declaration-track:26dda592239acac396a8cee27843a2dfb6d22c20449a8221f7f0ce869b7a1520` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--0a9fbc4df74bbb504e10e500.md) | 295 | `declaration-track:0a9fbc4df74bbb504e10e5006ab20728b30ebf98f641fba71fdc5e15a24e9432` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--83a48c8fa95582aae0cc0696.md) | 299 | `declaration-track:83a48c8fa95582aae0cc069681a38a13587860bfec7e1fccb7c5e10f1d4a877c` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--7d8ce12cdb52f1fc249260f3.md) | 303 | `declaration-track:7d8ce12cdb52f1fc249260f35258023e4dfc6d5d5a5f4eaf8ddbc06501430cae` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--6fd1ac3a4ca409aa5a4dc080.md) | 312 | `declaration-track:6fd1ac3a4ca409aa5a4dc0800a8f4e7d8367628deca0bd59ebd4f1f6c5a8f749` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--4f106bf0b27c90f5be3bd7f6.md) | 317 | `declaration-track:4f106bf0b27c90f5be3bd7f6f677b8423921fa8d12404c4fa6ba9f6705e66e94` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--6e2106af195c8653aba83f70.md) | 321 | `declaration-track:6e2106af195c8653aba83f702f59e55a50eb6b59e16adaeec5eb88488a628b91` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--843715e19ca1fb91d230a00f.md) | 325 | `declaration-track:843715e19ca1fb91d230a00ff96ac40ca91f01101f856cd3d13dd8cbd845714d` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--8eefb6d7b8d554e3d841eda9.md) | 331 | `declaration-track:8eefb6d7b8d554e3d841eda965b6807a95eb0f44e8af0a5c781c754875cfad1e` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--95d14598f6fb144e90f45996.md) | 336 | `declaration-track:95d14598f6fb144e90f45996b5f85693ea9a6a58428c398db26ac6b9c85709f7` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--fc592eeceed1188d26dd9aec.md) | 342 | `declaration-track:fc592eeceed1188d26dd9aecf57827d6fd09589d5b48d6c388edc32cfbbdff0d` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--a415dc4b403666f1bb1635fa.md) | 349 | `declaration-track:a415dc4b403666f1bb1635faa4888f3f02b8b87d306c7f294cb109ae27f67d2e` |
| 51 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--7e02405e30c4cc613f14ecf9.md) | 355 | `declaration-track:7e02405e30c4cc613f14ecf9ac203d9ccba79697811fca8770d613998d860811` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--ca6d89076a5be4947938fbde.md) | 363 | `declaration-track:ca6d89076a5be4947938fbdeff483a9229cbdfc39fd758d89aff2ec3e0beda36` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--fa264f64119d82a1e64aff18.md) | 375 | `declaration-track:fa264f64119d82a1e64aff1884bfa1ca5758e4af58ef186069edb9452cd16a8f` |
| 54 | `theorem` | [nnratCast_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/nnratcast-def--612be3c153736479dbe0602a.md) | 385 | `result-track:612be3c153736479dbe0602a7502fa1814c5b4061d64f94a59e200a95ae8a60e` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--9f1e7492f0001866fd27d384.md) | 390 | `declaration-track:9f1e7492f0001866fd27d3841e6baf68f5efee1b44bd64d4ca5f1ed6342e80fa` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--07378cf0c8e795b398fd514c.md) | 398 | `declaration-track:07378cf0c8e795b398fd514cd7446bedda27d4bbfaf99b9333280932b83eb45f` |
| 57 | `theorem` | [ratCast_def](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/ratcast-def--95c5961dc658949198fd4a34.md) | 408 | `result-track:95c5961dc658949198fd4a34120474aeeeae61e5ac99475d374c7c795ca0adf2` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/instance--78e6cda2f712b7886a74637d.md) | 413 | `declaration-track:78e6cda2f712b7886a74637d5e07490d0793d56f82200ee3c48972839a585cd7` |
| 59 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/of--65aca1334b7d69ac70bb2ff9.md) | 429 | `declaration-track:65aca1334b7d69ac70bb2ff9ec3f111cbb2a5d6c2058b4adeb8eb2575dc19f91` |
| 60 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/of-f--f46b025b7f49cff4682390a9.md) | 437 | `result-track:f46b025b7f49cff4682390a9de33364f07adf2fc1515b594f75256f76ccd5993` |
| 61 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/lift--4666f2a32efb783c94c41c15.md) | 445 | `declaration-track:4666f2a32efb783c94c41c156cdc58a62efb0f06424e16b31f63ab7791d5b690` |
| 62 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/lift-of--615d846ab02cd89b386a8202.md) | 454 | `result-track:615d846ab02cd89b386a82020156d4f809975c3342a656d390fd8b6ef79935c4` |
| 63 | `def` | [of](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/of--3c9e19a6a56b2da3c4ec5937.md) | 464 | `declaration-track:3c9e19a6a56b2da3c4ec59371d6acb40d365334ec2ed12becc52d956f26d0e3b` |
| 64 | `theorem` | [of_f](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/of-f--a4aaceffe62dc7e77a2b7a76.md) | 471 | `result-track:a4aaceffe62dc7e77a2b7a76214d60bc57fb36fba355582e55ca548bdcc8935f` |
| 65 | `def` | [lift](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/lift--345cc3a92dc85b45d7eb9cc9.md) | 480 | `declaration-track:345cc3a92dc85b45d7eb9cc9d45e5c6c5cc726de72cd5030b5228e0e5ba900b9` |
| 66 | `theorem` | [lift_of](../../../../mathematics/Algebra/DirectLimit/Variant0838e7afa76f759989f355765439c2caefbeec19d113e73f9d316e2e79fb3b79.lean/declarations/lift-of--0db2704f4c68a61df64be314.md) | 490 | `result-track:0db2704f4c68a61df64be31426fb7f3ed2d93eca308204e85721f530ff7ab928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
