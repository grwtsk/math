# Verification target: GRWTSK.Analysis.Body.Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5806db0255b51397e5f4fe6f3c367fbc617308",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/index.md) · [Full source](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5806db0255b51397e5f4fe6f3c367fbc617308`.

Source path: `GRWTSK/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexBody](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/convexbody--d36643adf1c58dc113a91923.md) | 52 | `declaration-track:d36643adf1c58dc113a91923703eea193895dbc7201aa559437230c5db6be10a` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--e45cda2bc1eccfcd8d5db296.md) | 65 | `declaration-track:e45cda2bc1eccfcd8d5db29657130f0af593922a3c27f8598e1fd7355d935cb9` |
| 3 | `theorem` | [convex](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/convex--f2d16e5a6a9f5fab1346308c.md) | 72 | `result-track:f2d16e5a6a9f5fab1346308c05b1e33856328e81aad56973936ce6ba5d1a21fb` |
| 4 | `theorem` | [isCompact](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/iscompact--dea3c52aa56dc2a5e7eab84f.md) | 76 | `result-track:dea3c52aa56dc2a5e7eab84f5c4644133b6d5185ce8033314b41b925fcf0e824` |
| 5 | `theorem` | [isClosed](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/isclosed--3d3d47e4927cf5c9b4a20eb6.md) | 81 | `result-track:3d3d47e4927cf5c9b4a20eb6d31cf6b4be7a08dc85482ea714ded2315715aeee` |
| 6 | `theorem` | [nonempty](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/nonempty--95e0675d087ddf9870020f1c.md) | 84 | `result-track:95e0675d087ddf9870020f1ca04c80ad855a173abd4c078de719ed7589feb7b4` |
| 7 | `theorem` | [ext](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/ext--1eb01f97a0b19d88d3600abf.md) | 89 | `result-track:1eb01f97a0b19d88d3600abf4987a92316c243939e31ac1400f66aac9313cc6a` |
| 8 | `theorem` | [coe_mk](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-mk--fe2233baf7987d4dd5a1e846.md) | 94 | `result-track:fe2233baf7987d4dd5a1e846aa682c855e80696840d671ee81dca8c5c61beed0` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--28fccc0ebc02c6053f272871.md) | 104 | `declaration-track:28fccc0ebc02c6053f272871044a1a1d837cbf5fa86679ab89e57e6263f73653` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--47b4547dda3d8c9424b6bfdc.md) | 109 | `declaration-track:47b4547dda3d8c9424b6bfdc903450ca7918f6af543423dfea2bbd2a70cb7f16` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--ef6ad143d9eb370429f0a228.md) | 112 | `declaration-track:ef6ad143d9eb370429f0a2281884a69e619a9eb0319741a5f0bc65708b758732` |
| 12 | `theorem` | [coe_nsmul](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-nsmul--a84d7ccd1d2b862c6a9b858f.md) | 116 | `result-track:a84d7ccd1d2b862c6a9b858faa73c8e97b2549ebd655322135561064bd3855b9` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--f4ed7a8c05faafbf4e3784c0.md) | 120 | `declaration-track:f4ed7a8c05faafbf4e3784c03b2081f4c7b5b6a0e7f3ff568bae491bef0e657b` |
| 14 | `theorem` | [coe_add](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-add--dbcfd066550063cf72663ccc.md) | 124 | `result-track:dbcfd066550063cf72663ccc202dbd382ff5d566f763da846a068711909e153f` |
| 15 | `theorem` | [coe_zero](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-zero--b32fdd6ed9c8ca631d46dca5.md) | 129 | `result-track:b32fdd6ed9c8ca631d46dca5f8b8f528f63fca592c0ecc6defca562483167a6b` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--626606c22ef7b67bff363f2c.md) | 133 | `declaration-track:626606c22ef7b67bff363f2cc5e7e54d6c6e5af5a8c7025ed67b79c61d57f196` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--c7c69b4130fc0036a0001669.md) | 136 | `declaration-track:c7c69b4130fc0036a000166986478964bb1a60f28e08d5e53f314fc1c28829a1` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--132c7fcf2df85312a6c77800.md) | 143 | `declaration-track:132c7fcf2df85312a6c77800267fef1ad7f20323fe01a10939e69b2459f86a92` |
| 19 | `theorem` | [coe_smul](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-smul--ca09cbcaefa94efce94b2cdf.md) | 147 | `result-track:ca09cbcaefa94efce94b2cdf22b5942c7eb099c2f122d5361eb0ab7a80bbbd8b` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--bfb2ba2b72b15d368a7c6f25.md) | 153 | `declaration-track:bfb2ba2b72b15d368a7c6f25d6d2a4776888a408b41b3df83a2b5d26e778006b` |
| 21 | `theorem` | [coe_smul'](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/coe-smul--a507f61f1ef18783114b3e4c.md) | 157 | `result-track:a507f61f1ef18783114b3e4c08384c30fb32fa618d735d0d798d1fed898e1338` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--cf55f051f004efd17e46a11b.md) | 163 | `declaration-track:cf55f051f004efd17e46a11b1030c24d0b01be73c2d8f303796a0e1351c2b363` |
| 23 | `theorem` | [bounded](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/bounded--916369cad7f56f19637a8289.md) | 173 | `result-track:916369cad7f56f19637a828953670e234f6a62b1df37c98d59de7f0304b7bf70` |
| 24 | `theorem` | [hausdorffEdist_ne_top](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/hausdorffedist-ne-top--6ce149bb87de7ddf4dd81485.md) | 177 | `result-track:6ce149bb87de7ddf4dd814852eea2583961d11d810dc7f8369b39ab0e9ac538b` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--358310038b39c9f6b01723e7.md) | 184 | `declaration-track:358310038b39c9f6b01723e7118427d9f1e5e4bc5f68e45c8ad3561f5c5ca8fa` |
| 26 | `theorem` | [hausdorffDist_coe](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/hausdorffdist-coe--f306c9cba570df98f587266d.md) | 192 | `result-track:f306c9cba570df98f587266dce1e7940134b5c08ce6db71e91980d1bb9894ade` |
| 27 | `theorem` | [hausdorffEdist_coe](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/hausdorffedist-coe--5864cdb3ed62dee6241d9738.md) | 197 | `result-track:5864cdb3ed62dee6241d9738ceafaf7068c3d5881f55be7700acd95c8fb44391` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Body/Variant9ee22111c3ebd4998db526addd2b468749e93bba9f42c4192412f2e45d9ae637.lean/declarations/instance--f9a62b339278c874c84465fa.md) | 209 | `declaration-track:f9a62b339278c874c84465fa6d1e54d0b5d94c451600294edbfb908a269cb5b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
