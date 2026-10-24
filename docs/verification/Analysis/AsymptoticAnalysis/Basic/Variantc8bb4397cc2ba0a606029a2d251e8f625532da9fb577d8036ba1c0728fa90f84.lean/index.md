# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1020fc49a2d170b4b6e687b4a9f48d93f69e84af",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1020fc49a2d170b4b6e687b4a9f48d93f69e84af`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean.json)

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
| 1 | `def` | [PMF.](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/pmf--c6095830eea28899a1104d80.md) | 46 | `declaration-track:c6095830eea28899a1104d801e70d76d0c3087a526cd75f6b0e324f852e311de` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/instfunlike--f2228ae85160382cc9c4a79d.md) | 52 | `declaration-track:f2228ae85160382cc9c4a79d394e465b2b531d9b17bc7ec90a2b4d69709b77d0` |
| 3 | `theorem` | [ext](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/ext--3cb7bb713a7138f39e9e4136.md) | 57 | `result-track:3cb7bb713a7138f39e9e41367b8b8f4dfbb68c677f8628646c8e4a4e45cb2665` |
| 4 | `theorem` | [hasSum_coe_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/hassum-coe-one--62062df9c37bf351a12c6c41.md) | 60 | `result-track:62062df9c37bf351a12c6c41fc0976f115727330cec85d5a2213c88f9d9fc741` |
| 5 | `theorem` | [tsum_coe](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tsum-coe--d55a801a46e5c8f434b7d9e2.md) | 64 | `result-track:d55a801a46e5c8f434b7d9e20f10b0349b1c956ab68999fe004c855c25482fc1` |
| 6 | `theorem` | [tsum_coe_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tsum-coe-ne-top--6f3dabc60f33742711961098.md) | 67 | `result-track:6f3dabc60f337427119610987bfcc04f35f5b1a7d3993d0fcb63e7cf4d6eaba7` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tsum-coe-indicator-ne-top--7add61a1134a44e5a7986948.md) | 70 | `result-track:7add61a1134a44e5a798694854cabf56a033cde43f208b28a14db5ec4f63e3c2` |
| 8 | `theorem` | [coe_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/coe-ne-zero--b4cc70ede5938c517f9a59e6.md) | 76 | `result-track:b4cc70ede5938c517f9a59e620369fec96117ab349ab0dfe804f019198328ac5` |
| 9 | `def` | [support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/support--6ab855b2986d94bee72dcf4c.md) | 80 | `declaration-track:6ab855b2986d94bee72dcf4cf30fba4b1cc6ee8f588b06ce665e9e806f346933` |
| 10 | `theorem` | [mem_support_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/mem-support-iff--f5ad2b292bd37c8241462152.md) | 84 | `result-track:f5ad2b292bd37c82414621526ae67a5a7ee91213dac16c217c6693f95937054b` |
| 11 | `theorem` | [support_nonempty](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/support-nonempty--d6bdfcf14d093b72483fe2c8.md) | 87 | `result-track:d6bdfcf14d093b72483fe2c8d467a8b532fa6e33d391c2c69027dcbe24d8cff0` |
| 12 | `theorem` | [support_countable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/support-countable--e24f4a88ea69548e38d97e0b.md) | 91 | `result-track:e24f4a88ea69548e38d97e0ba5ebf03f75bdfa48fd3c777ab0daf5d1ab7ae7d3` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/apply-eq-zero-iff--59046437ad127d5693d197c4.md) | 94 | `result-track:59046437ad127d5693d197c4690ac09bb06517f8917909b2048a4ebef9764292` |
| 14 | `theorem` | [apply_pos_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/apply-pos-iff--dbfeac22a4317fc3233dd33f.md) | 97 | `result-track:dbfeac22a4317fc3233dd33f038d325fac8e3f0339e909f010a9e5f52897e8fa` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/apply-eq-one-iff--97b39c48b34858e6974b3af8.md) | 100 | `result-track:97b39c48b34858e6974b3af8ba97432144eab71aea354f3acf237b23a183bcbc` |
| 16 | `theorem` | [coe_le_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/coe-le-one--76363970b43db83000c0388e.md) | 121 | `result-track:76363970b43db83000c0388e2252f7f9d4feedd31487541f335cdfe4c741505c` |
| 17 | `theorem` | [apply_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/apply-ne-top--e08f89cc58f060c6710cc10b.md) | 126 | `result-track:e08f89cc58f060c6710cc10b0cff12537610b591d26b91a005aac8380dc65c36` |
| 18 | `theorem` | [apply_lt_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/apply-lt-top--962a1aede6b8bf91753a9930.md) | 129 | `result-track:962a1aede6b8bf91753a99309eac97bc119059314d2bc2aa9dcc7b1576272e99` |
| 19 | `def` | [toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure--3a4b4ddd92ca885cbbaa387b.md) | 138 | `declaration-track:3a4b4ddd92ca885cbbaa387b23cc5d9481a08ca5f7fe2c8aa3d4ba80e747ec6d` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply--68ea3c4a926ddab1ff6930a6.md) | 143 | `result-track:68ea3c4a926ddab1ff6930a6d2062163c7df24866a9571892dd2ea4a07bdc358` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-caratheodory--b6e9f52dd9cbdd65ec45e726.md) | 147 | `result-track:b6e9f52dd9cbdd65ec45e7262c7643bf934a9be8930f20c8398d0b8f7cd0280d` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-finset--b1791971a31820730c2294c1.md) | 154 | `result-track:b1791971a31820730c2294c1267e5a51e15bc546d817929923d51133874eca49` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-singleton--aa1c63ea01f714a5642a98f1.md) | 159 | `result-track:aa1c63ea01f714a5642a98f1669210c7688dd05c1b0c47618df21341e66907fd` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-injective--19ac9f0abab5f2cecc291bc7.md) | 164 | `result-track:19ac9f0abab5f2cecc291bc7637de76d292ed14c1e1543450898a13041983f21` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-inj--1600e1623b25413323e2db99.md) | 169 | `result-track:1600e1623b25413323e2db9974fb8d98b315acbc7d3dbbd71edf62edc35192cb` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-eq-zero-iff--624f9a5e77542318ed303de6.md) | 172 | `result-track:624f9a5e77542318ed303de62a2a95c68ba0a446bb80e2a91f5126b7ee696140` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-eq-one-iff--acbbcb3704fc5ec8c3daef5b.md) | 176 | `result-track:acbbcb3704fc5ec8c3daef5b30d4bc0ce79d57b475d2b678e311a6159d9e39b2` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-inter-support--09965304086330ab001d94e3.md) | 190 | `result-track:09965304086330ab001d94e37c672da93a93ff7675e08a9c98cd24c58e4c7b43` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-mono--c4e0d5688044426bafcc1a47.md) | 195 | `result-track:c4e0d5688044426bafcc1a47db75297040c33a172fb20df27b53e288cbe31caf` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq--3f17a0b7b120878786428642.md) | 199 | `result-track:3f17a0b7b120878786428642e137fb2a7819421c260e0c5af499dc8de0b50b7f` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-fintype--6c37387f4c109bf9dee93113.md) | 205 | `result-track:6c37387f4c109bf9dee93113f699ff720da5c6d1bc05fd3c9388811fbd3e0cd4` |
| 32 | `def` | [toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure--c7c4c23653c33a66d9b29c98.md) | 214 | `declaration-track:c7c4c23653c33a66d9b29c98dd020bb9e03baa2d9db343df284adeaeb8047636` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tooutermeasure-apply-le-tomeasure-apply--6876b30d3cef930fc220cfa8.md) | 219 | `result-track:6876b30d3cef930fc220cfa85bb6e4ac95761520068b4f4937e0b15b62a33433` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply--8961ea4b93b1db0b65c2b77e.md) | 222 | `result-track:8961ea4b93b1db0b65c2b77e4ed351adfd61a8f1a8c25fe81a6e726d66e97576` |
| 35 | `theorem` | [toMeasure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply--5fda029f766e822af7fbf674.md) | 226 | `result-track:5fda029f766e822af7fbf674877ed301be22d0a44436c31a16c6b57e051d9600` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-singleton--775a85cf25d82c7faa17daee.md) | 229 | `result-track:775a85cf25d82c7faa17daee6d5f45368f7da672f86d50ba3d1a88cf1a20c54f` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-zero-iff--84ab9cdbc82804b10af98bf3.md) | 233 | `result-track:84ab9cdbc82804b10af98bf3e5a0ae278caeec95fc8a709d9c1d7f6bb9aa4336` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-one-iff--68134d47fbc68948aeba6804.md) | 237 | `result-track:68134d47fbc68948aeba68046dd45a4d048b5ff5fb03f208d9bc1bee00a34f3a` |
| 39 | `theorem` | [toMeasure_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-mono--7ba145219e34fc03d310de3a.md) | 240 | `result-track:7ba145219e34fc03d310de3a0b37220882d82a0d173f22056963e2fca14fb6e4` |
| 40 | `theorem` | [toMeasure_apply_inter_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-inter-support--ca3a186fb95a932257ccb841.md) | 246 | `result-track:ca3a186fb95a932257ccb8410219c2c79402b956d5420258e3a3c48642eb2752` |
| 41 | `theorem` | [restrict_toMeasure_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/restrict-tomeasure-support--353b1e5957a9a256d460c562.md) | 251 | `result-track:353b1e5957a9a256d460c5624bce1ae1f888637a3061552498e4967a394bcdcf` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-of-inter-support-eq--d315c46df91037246ea46193.md) | 255 | `result-track:d315c46df91037246ea4619381ce4f9ce1566582c46363e3ca3649ed6fea0623` |
| 43 | `theorem` | [toMeasure_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-injective--6f281128e7c47b2f89d42a19.md) | 264 | `result-track:6f281128e7c47b2f89d42a191eb549e6fee962ae677993dcc982f917e9399be7` |
| 44 | `theorem` | [toMeasure_inj](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-inj--ad07c857af2756242175652c.md) | 271 | `result-track:ad07c857af2756242175652cafe60903b0a92733e9adc848ca459fe31b3a3c72` |
| 45 | `theorem` | [toMeasure_apply_eq_toOuterMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-tooutermeasure--fa8ebcc258fc9fccabc9bc1a.md) | 274 | `result-track:fa8ebcc258fc9fccabc9bc1ab039d0377cd77128c441b1f5ede51a2c9ba3470b` |
| 46 | `theorem` | [toMeasure_apply_finset](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-finset--29207fd7b982b0227cca0878.md) | 280 | `result-track:29207fd7b982b0227cca0878adcd8c016fa453516b2fc838a1b57db881f66b3c` |
| 47 | `theorem` | [toMeasure_apply_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-eq-tsum--a700bb73718d2d1cd91d7eb2.md) | 283 | `result-track:a700bb73718d2d1cd91d7eb24e0336e2f82db5665118e626a97e74e23f4236f4` |
| 48 | `theorem` | [toMeasure_apply_fintype](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-apply-fintype--96f8f3651371162e4dad7c7f.md) | 287 | `result-track:96f8f3651371162e4dad7c7fd7a62c16b27e5303b052269befbabd1e03ab6323` |
| 49 | `def` | [toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/topmf--710fc36a2ba8018e96af81c5.md) | 305 | `declaration-track:710fc36a2ba8018e96af81c55d53d4488d8e48b467841f43cb806458f8c1bdef` |
| 50 | `theorem` | [toPMF_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/topmf-apply--26057f14f4beb012211dc32d.md) | 318 | `result-track:26057f14f4beb012211dc32dbf7565e5584b2552e4622c5152cbfcd0f9871c6d` |
| 51 | `theorem` | [toPMF_toMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/topmf-tomeasure--f15b32a2f7eddf56eb24cf33.md) | 321 | `result-track:f15b32a2f7eddf56eb24cf3324caae5d7d18d1c0bf3eda8a35489c36f04a33e3` |
| 52 | `instance` | [toMeasure.isProbabilityMeasure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-isprobabilitymeasure--630cdca185d67236f5625c25.md) | 333 | `declaration-track:630cdca185d67236f5625c25b9840b16e4871fb78b9c623921174bb10b1a15d1` |
| 53 | `theorem` | [toMeasure_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-topmf--e7e7a25f6b21befd3eabf6dd.md) | 342 | `result-track:e7e7a25f6b21befd3eabf6dd09736541fad060f74e628978b9c3a8486713b3ce` |
| 54 | `theorem` | [toMeasure_eq_iff_eq_toPMF](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/tomeasure-eq-iff-eq-topmf--98ee62d90aed79b310208449.md) | 346 | `result-track:98ee62d90aed79b3102084499b9ae05abda3880981dc71efe5a7ba5e5a7d9153` |
| 55 | `theorem` | [toPMF_eq_iff_toMeasure_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantc8bb4397cc2ba0a606029a2d251e8f625532da9fb577d8036ba1c0728fa90f84.lean/declarations/topmf-eq-iff-tomeasure-eq--e161ec226a9d7e1f276a23e3.md) | 349 | `result-track:e161ec226a9d7e1f276a23e35622952db3a05aef9ff9a3f9a5904cca1dc15a29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
