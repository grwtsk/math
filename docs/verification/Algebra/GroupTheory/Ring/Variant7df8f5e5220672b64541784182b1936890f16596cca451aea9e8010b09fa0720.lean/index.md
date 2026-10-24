# Verification target: GRWTSK.Algebra.GroupTheory.Ring.Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "133b3ec01d94c8c82eabbd899c3b672915b99dea",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `133b3ec01d94c8c82eabbd899c3b672915b99dea`.

Source path: `GRWTSK/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--c38c7161e381b21898def7f6.md) | 37 | `declaration-track:c38c7161e381b21898def7f6bbaed46f359e13ecf6f5e9228ff10ca428be87af` |
| 2 | `theorem` | [coe_add](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/coe-add--3b8fbd50080e2ab1d6e184da.md) | 41 | `result-track:3b8fbd50080e2ab1d6e184da1004a87efa39d37e680d0dce832ee1b35c441dfa` |
| 3 | `instance` | [addSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addsemigroup--c90d74d0ea50f704af867187.md) | 44 | `declaration-track:c90d74d0ea50f704af8671876efe1a79642582cffc419b52d41779ddd1293168` |
| 4 | `instance` | [addCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addcommsemigroup--2fa3f28f58c78d2b325fec0a.md) | 47 | `declaration-track:2fa3f28f58c78d2b325fec0aef220acb9c1db9681ba0bb82e650a2d8972bb12f` |
| 5 | `instance` | [addLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addleftcancelsemigroup--16b4e32d65b84618126d8480.md) | 51 | `declaration-track:16b4e32d65b84618126d8480bce263b14f5eed34f3c14e59b8911c5bd75fd771` |
| 6 | `instance` | [addRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addrightcancelsemigroup--4608f776fe647aeaa7de2574.md) | 55 | `declaration-track:4608f776fe647aeaa7de2574c67b927caa834d2719264510763d78b02e6fa420` |
| 7 | `instance` | [addLeftStrictMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addleftstrictmono--e15e374c5565323e0b92bcb8.md) | 59 | `declaration-track:e15e374c5565323e0b92bcb8d5fb703f1bef03cfa6ccb2c8a438874d52f91e1b` |
| 8 | `instance` | [addRightStrictMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addrightstrictmono--cd1ab9088aa10100021dcc7e.md) | 62 | `declaration-track:cd1ab9088aa10100021dcc7ef84e95502d06d99a02f0d6932c60ed64a4c2f292` |
| 9 | `instance` | [addLeftReflectLT](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addleftreflectlt--2b1bceddcf9acf9aa0365b81.md) | 65 | `declaration-track:2b1bceddcf9acf9aa0365b81700ae52f3b95ae86ffb57a98900d7410279473d1` |
| 10 | `instance` | [addRightReflectLT](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addrightreflectlt--279a6d77935a73e06908249d.md) | 68 | `declaration-track:279a6d77935a73e06908249da1fac2e344dcc5f8263eb356f9c980010a7ec1c5` |
| 11 | `instance` | [addLeftReflectLE](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addleftreflectle--c1008609937eaab60d5f6f48.md) | 71 | `declaration-track:c1008609937eaab60d5f6f4852d3fc56bdcebd269040604a089d71ac957cc721` |
| 12 | `instance` | [addRightReflectLE](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addrightreflectle--829a9c3124a2116ccbbef071.md) | 74 | `declaration-track:829a9c3124a2116ccbbef071053728023e10408609556c392f256666a8a41401` |
| 13 | `instance` | [addLeftMono](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/addleftmono--cd39c9ce8329b22bcfc3a71c.md) | 79 | `declaration-track:cd39c9ce8329b22bcfc3a71c196585ca06d11cd952fed8c66aa219f4935eefb4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--3ab773484c1347419a7f68ca.md) | 87 | `declaration-track:3ab773484c1347419a7f68cada1372fc7ebff444e881d5262fa38323b20f6aed` |
| 15 | `theorem` | [val_mul](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/val-mul--931450421ceab5f7d1032bd6.md) | 91 | `result-track:931450421ceab5f7d1032bd6ca7f738a48c815604f5194444c0a36fdf0477b82` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--ee14f1097c2fbc4be1d208df.md) | 94 | `declaration-track:ee14f1097c2fbc4be1d208dfdf4f6ba60d064f17491d13f3171d963e4732b6f7` |
| 17 | `theorem` | [val_pow](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/val-pow--0ea861f3845d4a977b6f5c0a.md) | 98 | `result-track:0ea861f3845d4a977b6f5c0ac0f27b05c8b309e386644b4b3f5b8ed3e71077ab` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--3773aa2bb300680ee6b043cf.md) | 102 | `declaration-track:3773aa2bb300680ee6b043cffacb4cf37d913045ebbf40743d75926d4011eab8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--55cfbb385724f475e98244ce.md) | 105 | `declaration-track:55cfbb385724f475e98244cea39c9116b5887accee18a4c93d937023b4cddc7a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--289c90b38da3975f8f2196f9.md) | 108 | `declaration-track:289c90b38da3975f8f2196f97381f57342d8016fd7d36a88f6225d3698bc8020` |
| 21 | `theorem` | [val_one](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/val-one--d80eed7d4a4c26d685db430e.md) | 112 | `result-track:d80eed7d4a4c26d685db430ed4db36b5c8b7c445d3d6d1fb3288f4a1857c0650` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/instance--48a09212e3a479a8cda78e5d.md) | 115 | `declaration-track:48a09212e3a479a8cda78e5dcbf13af087be314a5441b5e37d99af778a41520e` |
| 23 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/commmonoid--2bd7a37797907262841f5b48.md) | 122 | `declaration-track:2bd7a37797907262841f5b4811c62e207b5639633b5b513c9cfbc0a918c292be` |
| 24 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/isorderedmonoid--12f5723d8d42412a1278ff09.md) | 126 | `declaration-track:12f5723d8d42412a1278ff093c9b6196a9f111fa3f61a26fce75a73703540a59` |
| 25 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Ring/Variant7df8f5e5220672b64541784182b1936890f16596cca451aea9e8010b09fa0720.lean/declarations/isorderedcancelmonoid--de341b0f713fee1781f97cef.md) | 133 | `declaration-track:de341b0f713fee1781f97cefd887c1c4ed35ddb139d4397b53796306cad5d563` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
