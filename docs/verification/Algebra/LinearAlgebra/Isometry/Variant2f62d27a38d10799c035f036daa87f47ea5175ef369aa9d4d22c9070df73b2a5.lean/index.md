# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometry.Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a128d66866339ef5c54a7701a3efeb0ba08480ee",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a128d66866339ef5c54a7701a3efeb0ba08480ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean.json)

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
| 1 | `structure` | [Isometry](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/isometry--5fe2e32fdea7258a31105e44.md) | 49 | `declaration-track:5fe2e32fdea7258a31105e445b75b5ad9aeb497644427772f4e32e217d2866bf` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/instfunlike--a1d15c764341f68d329f1b18.md) | 63 | `declaration-track:a1d15c764341f68d329f1b1836fab550acba71d11c042bfc41ea5be0480fc414` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/instlinearmapclass--6b4dfe745194d64b9faf8fb2.md) | 67 | `declaration-track:6b4dfe745194d64b9faf8fb2150dedecd7780e7436182ddac81a9b2243bfeab6` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/tolinearmap-injective--3558b79af6680761df055af0.md) | 71 | `result-track:3558b79af6680761df055af0847222302cec7cf70d248eea6692d0743b9aafcb` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/ext--12d8f3a2d43afbb27e510287.md) | 76 | `result-track:12d8f3a2d43afbb27e510287aab9d0b1d389b8533cac969a43856ffd3c79595b` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/simps-apply--008321d3cf1ab6e19ac608a7.md) | 80 | `declaration-track:008321d3cf1ab6e19ac608a70c1d69b7822e457d526f8b9f88d4dedb4bb3a426` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/map-app--70b3de22326bb6ce938347ca.md) | 85 | `result-track:70b3de22326bb6ce938347caefc5d5e0f2ecbe22fb83f0fe95513701eb3afdfd` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/coe-tolinearmap--56387f4c3293969a77db9983.md) | 89 | `result-track:56387f4c3293969a77db998332bcafeac100e42d15f8bd398a1679ee7e6e89a1` |
| 9 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/id--113a4c63a2f71f1287d2b30e.md) | 94 | `declaration-track:113a4c63a2f71f1287d2b30e58074cf4370bdbfd53af54bb9d19c97d30ee5696` |
| 10 | `def` | [ofEq](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/ofeq--47f1c5ddc33b6c2cbf6b88e2.md) | 100 | `declaration-track:47f1c5ddc33b6c2cbf6b88e2c5f43335d9dcfec806a11e0b21c8b584db1a4a40` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/ofeq-rfl--b2062b88093f3479f7fdaf46.md) | 105 | `result-track:b2062b88093f3479f7fdaf46607b484d79aaf0f0472354746df2c9be25c984f2` |
| 12 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/comp--1ad820bcf11aae5adebd9772.md) | 109 | `declaration-track:1ad820bcf11aae5adebd9772e5d935830782454b0e517d28c0b398c70ce215e9` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/tolinearmap-comp--563c670133733bddd1dc85ea.md) | 115 | `result-track:563c670133733bddd1dc85ea30980ac72cec741e77c2f37c39189ddbc5f7542f` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/id-comp--803ced10aa37ce21d790019f.md) | 120 | `result-track:803ced10aa37ce21d790019fda37f2b56fffd834d3911d6a4df87c99e4e67e81` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/comp-id--f80f40d5bd85743740dbc494.md) | 124 | `result-track:f80f40d5bd85743740dbc4947af1d0fced372ab6aeca86930217c4a4d9ef10ba` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/comp-assoc--6af397c735afc6a6694b0787.md) | 127 | `result-track:6af397c735afc6a6694b07871eac4205bc3ada6b6be84b15a1e3efed9a6e02ea` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/instance--45e8bb221ea85379c75d5362.md) | 132 | `declaration-track:45e8bb221ea85379c75d53620d6c591f5fd430d9c3ddcc83c2d52d3876a7a581` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/haszeroofsubsingleton--2a684326f97a47558daea3e2.md) | 136 | `declaration-track:2a684326f97a47558daea3e260bf492c9b717b4648fc7bed01b099f5e0fd41fb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2f62d27a38d10799c035f036daa87f47ea5175ef369aa9d4d22c9070df73b2a5.lean/declarations/instance--6176884d6976a226f936c164.md) | 144 | `declaration-track:6176884d6976a226f936c164518e2ea87353cd15925b2de9f3282cee5f3fa987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
