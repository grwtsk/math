# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothFunctions.Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ace864e66f99f33cf6676f77febc2ca7dedf8434",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ace864e66f99f33cf6676f77febc2ca7dedf8434`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.Structures` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instmul--03ce0b1ae44e9b54daece322.md) | 32 | `declaration-track:03ce0b1ae44e9b54daece322546cd8c7974876ac3def84bfb59c0b6f55abdd01` |
| 2 | `theorem` | [coe_mul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-mul--aa5bfdde5e6e8afcbb91a12c.md) | 37 | `result-track:aa5bfdde5e6e8afcbb91a12c9e3a5ee3cec1bb4ac33c0e019f4d8a967c9395c2` |
| 3 | `theorem` | [mul_comp](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/mul-comp--9b3e26cc9a5fad7f3993593f.md) | 42 | `result-track:9b3e26cc9a5fad7f3993593f86e204d444ca204501d4be083272fded44d5df49` |
| 4 | `instance` | [instOne](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instone--2c6f2e1e0be3f447c4992a47.md) | 47 | `declaration-track:2c6f2e1e0be3f447c4992a47266dc37d3d5685c10a9f4154f36d199581217ac6` |
| 5 | `theorem` | [coe_one](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-one--7c912dff67883511abd342bf.md) | 52 | `result-track:7c912dff67883511abd342bf9b4892145aedb71ccfa545746b424488b1bf6df0` |
| 6 | `instance` | [instNSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instnsmul--7e0bd18bb564b928f28fb757.md) | 56 | `declaration-track:7e0bd18bb564b928f28fb757d038178168b56087199c4451bc88620aad7c4626` |
| 7 | `instance` | [instPow](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instpow--839620230bf5dcc88aff3eb6.md) | 61 | `declaration-track:839620230bf5dcc88aff3eb637cea28353a15303c43996836709528ee8da5605` |
| 8 | `theorem` | [coe_pow](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-pow--733bf8000c9c93fc5d19c677.md) | 67 | `result-track:733bf8000c9c93fc5d19c6771fedc14bc4502fcdba91b1295960863cd0fcdde8` |
| 9 | `instance` | [semigroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/semigroup--1f9b02f9ed9fa27180a8f8ea.md) | 82 | `declaration-track:1f9b02f9ed9fa27180a8f8ea4310307021fba69f64c7eddb90e873d2fa32b1f9` |
| 10 | `instance` | [monoid](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/monoid--d0bc46d24ee851808624baa0.md) | 87 | `declaration-track:d0bc46d24ee851808624baa0bafbdec300c0c38e46bed96ea57ada9a34fc20ae` |
| 11 | `def` | [coeFnMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coefnmonoidhom--99ef3c55ade90beb329fc6c1.md) | 94 | `declaration-track:99ef3c55ade90beb329fc6c148077402cf67360c3d0bf00595d0cc8188a4cabd` |
| 12 | `def` | [compLeftMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/compleftmonoidhom--8b11ea17b4e7dce1e237b1aa.md) | 107 | `declaration-track:8b11ea17b4e7dce1e237b1aa1f0f2aa2e94929a8258a710ca93f77cfdd996207` |
| 13 | `def` | [restrictMonoidHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/restrictmonoidhom--4d1073139e3c4cf4af143963.md) | 123 | `declaration-track:4d1073139e3c4cf4af143963555cd0b57c946e42f4c7ce1818418f7b892f0fef` |
| 14 | `instance` | [commMonoid](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/commmonoid--162a58b2d4b6f2cf973546ea.md) | 132 | `declaration-track:162a58b2d4b6f2cf973546ea31cbe75c3c8d407ca657088973fc4549b552b056` |
| 15 | `instance` | [group](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/group--6ed46447274d65f691a94bc8.md) | 137 | `declaration-track:6ed46447274d65f691a94bc864f597fc690c91be276b14552aa3b8b7b5505e1b` |
| 16 | `theorem` | [coe_inv](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-inv--a615b093300b200fbd5c2475.md) | 146 | `result-track:a615b093300b200fbd5c2475b90a6d314a6f48435be5b70ef3fb198c463550b6` |
| 17 | `theorem` | [coe_div](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-div--e5e21de0fd83a85c676e3797.md) | 151 | `result-track:e5e21de0fd83a85c676e37975ff1cef5e1e3755bae974c8528492ec98a8e2aef` |
| 18 | `instance` | [commGroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/commgroup--77284bcd16aa4baf8c921b09.md) | 156 | `declaration-track:77284bcd16aa4baf8c921b09f0d24c662fc3356927e57a64258a4b33b6172da0` |
| 19 | `instance` | [semiring](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/semiring--566777d6413921720a15fa55.md) | 172 | `declaration-track:566777d6413921720a15fa5545542d70f94ed340020d216260dbd78f005ed57e` |
| 20 | `instance` | [ring](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/ring--ac32b35fe958505e5b81aca8.md) | 181 | `declaration-track:ac32b35fe958505e5b81aca860637014557e1d2f0c97815db9b6c43d0990f11e` |
| 21 | `instance` | [commRing](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/commring--43ba4bf7522811b31e217bf1.md) | 185 | `declaration-track:43ba4bf7522811b31e217bf1e0f6b03a53111ce4e644653df8378e6e3f004fd5` |
| 22 | `def` | [compLeftRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/compleftringhom--22ed107bfd5f5c42e0dd347e.md) | 193 | `declaration-track:22ed107bfd5f5c42e0dd347e0af2ba84eee43f70c908da618be36cd332cbd921` |
| 23 | `def` | [restrictRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/restrictringhom--eb3daa540b27b1daa882d118.md) | 205 | `declaration-track:eb3daa540b27b1daa882d118bd7b9a578e94951a4a74a727c9a1946ffd958fb9` |
| 24 | `def` | [coeFnRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coefnringhom--a43e77b5556b7af2355bddd3.md) | 215 | `declaration-track:a43e77b5556b7af2355bddd369b88e1ff4fa7c2d6e46d53da531a23084472f01` |
| 25 | `def` | [evalRingHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/evalringhom--dc57b5a37134e1ffb26a9e1c.md) | 221 | `declaration-track:dc57b5a37134e1ffb26a9e1c0ad18023ebe174dc064469baf1daf2c2d7a289a9` |
| 26 | `instance` | [instSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instsmul--12677910344d8028045863be.md) | 237 | `declaration-track:12677910344d8028045863be78d63b21d07872fc26280c2aaf11a539ae4d895a` |
| 27 | `theorem` | [coe_smul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coe-smul--71a9cd9440e8aee088940a75.md) | 242 | `result-track:71a9cd9440e8aee088940a75173af78ce67aaeebf8f23252d18fc21452f5e078` |
| 28 | `theorem` | [smul_comp](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/smul-comp--1118ced60eb53b47dc166739.md) | 247 | `result-track:1118ced60eb53b47dc166739cedcd935912786f7d0a703a327ee9abaf3e3b7a0` |
| 29 | `instance` | [module](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/module--e52747882e64815393c96346.md) | 251 | `declaration-track:e52747882e64815393c9634648fc64bc6aa194ebc9f951b3cd12542d57883f98` |
| 30 | `def` | [coeFnLinearMap](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coefnlinearmap--6fd6f85470e9f86461972452.md) | 257 | `declaration-track:6fd6f85470e9f86461972452f805439804715784d30376700ea2aeb590294e6b` |
| 31 | `def` | [C](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/c--9cd94d8be9a90e827937a5a1.md) | 278 | `declaration-track:9cd94d8be9a90e827937a5a1a344189459471332ae6919d4a2f553b47f002272` |
| 32 | `instance` | [algebra](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/algebra--5adb97130124707f06e2be41.md) | 285 | `declaration-track:5adb97130124707f06e2be41856096af53a5c83ff704fb56146f8f24a3618a4a` |
| 33 | `def` | [coeFnAlgHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/coefnalghom--487779184e28a3c9c260f870.md) | 293 | `declaration-track:487779184e28a3c9c260f8703202b7c68a25cff6140ac0b9c490d2f8736e1288` |
| 34 | `instance` | [instSMul'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/instsmul--ecceb35eaccb211a4343f848.md) | 313 | `declaration-track:ecceb35eaccb211a4343f84897685773e82d129925b547da95d0eb2e8a0c0976` |
| 35 | `theorem` | [smul_comp'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/smul-comp--7498e29066892e6acdc0ff58.md) | 319 | `result-track:7498e29066892e6acdc0ff58d3ad165c8c3a325d8f67c834e31b0790f2d7488d` |
| 36 | `instance` | [module'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/declarations/module--a1582d69ec2b44915e1692e4.md) | 326 | `declaration-track:a1582d69ec2b44915e1692e4cd9b66d298f956dd486b616f666c389c05550c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
