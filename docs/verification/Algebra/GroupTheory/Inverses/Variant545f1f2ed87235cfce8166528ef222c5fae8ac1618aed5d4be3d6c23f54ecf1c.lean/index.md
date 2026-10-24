# Verification target: GRWTSK.Algebra.GroupTheory.Inverses.Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80c0842dde14b45020c4f2a7184900875a6f71b0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80c0842dde14b45020c4f2a7184900875a6f71b0`.

Source path: `GRWTSK/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/instance--e58667f9af77326a4d5c26ae.md) | 37 | `declaration-track:e58667f9af77326a4d5c26ae12d6fba4432b7c8df9c1986c1249fa5cca0a50c7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/instance--b8487258efae04462a3c1c75.md) | 44 | `declaration-track:b8487258efae04462a3c1c75913ba0b815370242111e5b378b32161f03e11c2d` |
| 3 | `theorem` | [IsUnit.Submonoid.coe_inv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/isunit-submonoid-coe-inv--08338cea75fc8d36c0695cf9.md) | 49 | `result-track:08338cea75fc8d36c0695cf99e07a9304be8af4db27577053e18fe265803fb8a` |
| 4 | `def` | [leftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinv--2982688fc2d0978e441186e0.md) | 60 | `declaration-track:2982688fc2d0978e441186e004fc08be2301f2c124a5e963c35d4fe15b1c963e` |
| 5 | `theorem` | [leftInv_leftInv_le](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinv-leftinv-le--467383292f37b83d7b50c7a0.md) | 67 | `result-track:467383292f37b83d7b50c7a09ccc3d96e2d303c04d95ac3a5e3816c2a005f3b7` |
| 6 | `theorem` | [unit_mem_leftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/unit-mem-leftinv--22c0fa31a0b91a662b4dcd86.md) | 73 | `result-track:22c0fa31a0b91a662b4dcd86b3039ffb3dfcaa618c10db8b7926f52bcd772af9` |
| 7 | `theorem` | [leftInv_leftInv_eq](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinv-leftinv-eq--f8cfc28dc5a8df67fb50d0ba.md) | 77 | `result-track:f8cfc28dc5a8df67fb50d0ba41352e5e934e5eb0a8a043edeb998d3bd8a83d0c` |
| 8 | `def` | [fromLeftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv--b84f0709a16a8715cbbc3a32.md) | 91 | `declaration-track:b84f0709a16a8715cbbc3a32a8ec2b4b78ca1cfd6776d7a437365417a95e8e92` |
| 9 | `theorem` | [mul_fromLeftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/mul-fromleftinv--aa5a3c74358596b5bc619a23.md) | 94 | `result-track:aa5a3c74358596b5bc619a235320dadc6da23bb2871270bfead60de7a57fd39a` |
| 10 | `theorem` | [fromLeftInv_one](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv-one--67da16531271627f883ed239.md) | 98 | `result-track:67da16531271627f883ed239edc794fba40f718f25fe1b6bc4826eab37ddfd74` |
| 11 | `theorem` | [fromLeftInv_mul](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv-mul--ff95f53df89f31f63614d448.md) | 108 | `result-track:ff95f53df89f31f63614d448e810ca4c162a4e59eb62ab0d083bc56826b17110` |
| 12 | `theorem` | [leftInv_le_isUnit](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinv-le-isunit--f2f797dc03ab10e307cc5a7a.md) | 112 | `result-track:f2f797dc03ab10e307cc5a7a7542a504dc33e3f258bc91a4cea4b40760d842ee` |
| 13 | `theorem` | [fromLeftInv_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv-eq-iff--2342081abe28da2fa0cadbf8.md) | 116 | `result-track:2342081abe28da2fa0cadbf8bfbb7f7944162555f7fe5f5ceeb61999efbed5e0` |
| 14 | `def` | [fromCommLeftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromcommleftinv--358da0f63728fd43026050a8.md) | 124 | `declaration-track:358da0f63728fd43026050a865aef5934a6fcaf92a4f07a884887bf4d675059d` |
| 15 | `def` | [leftInvEquiv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinvequiv--b4f44ded418e1bc62c9a2524.md) | 137 | `declaration-track:b4f44ded418e1bc62c9a25247f854256e1908da7eb7c77a6088ce802a1962221` |
| 16 | `theorem` | [fromLeftInv_leftInvEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv-leftinvequiv-symm--ce991c527fa0e15183a5c811.md) | 150 | `result-track:ce991c527fa0e15183a5c81186ed099a5b9e9901d6efe171150df58507149716` |
| 17 | `theorem` | [leftInvEquiv_symm_fromLeftInv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinvequiv-symm-fromleftinv--8bbc802f08e6ba38474f5f8b.md) | 154 | `result-track:8bbc802f08e6ba38474f5f8b5bae005ac207c44eccbbd0e3aa30d495d4bc3e9e` |
| 18 | `theorem` | [leftInvEquiv_mul](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinvequiv-mul--24baa05f6f3eafd66aa50cb5.md) | 159 | `result-track:24baa05f6f3eafd66aa50cb564e5fc3354ce31e5215893c363c7b95354ed8cd6` |
| 19 | `theorem` | [mul_leftInvEquiv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/mul-leftinvequiv--e75ce84492f31f4e3f0ebb35.md) | 163 | `result-track:e75ce84492f31f4e3f0ebb353f2be478964d71bf9275f902fbc5f8534faa2625` |
| 20 | `theorem` | [leftInvEquiv_symm_mul](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinvequiv-symm-mul--00c2dbadcc3ded3e3937bdbd.md) | 167 | `result-track:00c2dbadcc3ded3e3937bdbd942d0d7ae90edf7233fdbf19c06ec3fb7acc6e8f` |
| 21 | `theorem` | [mul_leftInvEquiv_symm](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/mul-leftinvequiv-symm--7277c549343d7ce6fd3c389f.md) | 172 | `result-track:7277c549343d7ce6fd3c389f0e43f2002a5ce1e30420b69677c2a861075b45ba` |
| 22 | `theorem` | [leftInv_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinv-eq-inv--92f8ce627988f91c6ebcd0aa.md) | 185 | `result-track:92f8ce627988f91c6ebcd0aa62e4dfdc5a03d2c8a901ee1e21476f124c8b7f57` |
| 23 | `theorem` | [fromLeftInv_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/fromleftinv-eq-inv--10cc08dfc5e951a111e0f697.md) | 192 | `result-track:10cc08dfc5e951a111e0f6972578ea89236ff0ca14c220ec6697ab569b160408` |
| 24 | `theorem` | [leftInvEquiv_symm_eq_inv](../../../../../mathematics/Algebra/GroupTheory/Inverses/Variant545f1f2ed87235cfce8166528ef222c5fae8ac1618aed5d4be3d6c23f54ecf1c.lean/declarations/leftinvequiv-symm-eq-inv--b31cae5c0e1309d5fa21da2e.md) | 202 | `result-track:b31cae5c0e1309d5fa21da2ef2358e33f3573017040524032f1949631d619044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
