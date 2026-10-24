# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt03.Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97bee8c57e76afe95f7510ad450fedff0130eb6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97bee8c57e76afe95f7510ad450fedff0130eb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/quadratic--6ef0d48b10b60332f50be0a8.md) | 16 | `declaration-track:6ef0d48b10b60332f50be0a8ee0e1d84e5b8408b90601387294b81824a3ed56b` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/hasnegativedirection--2b5bdddbf13d5c7ed332f88b.md) | 19 | `declaration-track:2b5bdddbf13d5c7ed332f88bc3939a738672096eb4e5f74d191b6c4ede86acb6` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/pullback--bfaef6505d4d265540ffc708.md) | 22 | `declaration-track:bfaef6505d4d265540ffc708988e13412b1dc960fbe379310f3b9cc122895b2d` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/quadratic-pullback--70a4ce0dbfe68980d8889275.md) | 25 | `result-track:70a4ce0dbfe68980d8889275d42de3eeebf752d3f7e929a7a9dc2d6041ce64ea` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/pullback-ishermitian--bca573d947b648b7668698d2.md) | 31 | `result-track:bca573d947b648b7668698d2de8f645d9770d979fe16dfae56d4043c929b01c1` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/invertible-psd-iff--ac413c9301534dfa061ff44c.md) | 35 | `result-track:ac413c9301534dfa061ff44c51dad8be4a743f53f6facdca4c675334941b34b1` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/unitary-psd-iff--1e1e24d92921941518ee61ce.md) | 39 | `result-track:1e1e24d92921941518ee61ce040ecb24d90be36eceb8d2c1434eb7c347fc9553` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/inverse-negative-witness--dd37f9be3701d8ea199e23fc.md) | 44 | `result-track:dd37f9be3701d8ea199e23fccef376be429171e018f6bf791c0a1710720476fc` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/invertible-negative-iff--07ff570d5dad9a282b099684.md) | 50 | `result-track:07ff570d5dad9a282b099684a5919a93c48a1dbf85af147cc7dc939200c03b2b` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/negative-not-psd--5743689e403e1c0f148f96bc.md) | 59 | `result-track:5743689e403e1c0f148f96bcce4149e70741440317747111fb1a35a858386bde` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/hermitian-negative-iff-not-psd--a2c0d98d319aa6b62e8916ac.md) | 66 | `result-track:a2c0d98d319aa6b62e8916ac3f0a9a1fd4d43b78cbe0ed9a9b7252dd180e366f` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/pullback-one--8f4b62b298a11da48a5c378f.md) | 78 | `result-track:8f4b62b298a11da48a5c378f1a35baf06b0584c579e15574e8e14ce52489d154` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/pullback-mul--974aa0c0b8f4b7717789fbeb.md) | 82 | `result-track:974aa0c0b8f4b7717789fbeb49de4bb57b7ed366d6de2daf1312305dfcef82f2` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/grouptransport--9e833f589c9075042d89edc9.md) | 87 | `declaration-track:9e833f589c9075042d89edc904d2e06cdb377bb837ed4d77ba55739e48d5dafa` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/grouptransport-one--5d093d4ed0c20c7bade3c326.md) | 90 | `result-track:5d093d4ed0c20c7bade3c3267f7508c2b3f6acd32ca4b5fb92a4630d87729788` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/grouptransport-mul--cdb199e356f7194b4c39e932.md) | 94 | `result-track:cdb199e356f7194b4c39e93287214ac4df41dec8ee755547242337a6eeb281c5` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/congruenceaction--98666d859495f10ec31f3625.md) | 101 | `declaration-track:98666d859495f10ec31f36259be6e5a561b045a9eca240b4917c468b5e7f8a20` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/group-negative-iff--df147719f3b243ab0e888ea7.md) | 107 | `result-track:df147719f3b243ab0e888ea770173c6a8ec8f517a7e3e6b65cc61736bf240c2a` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/group-orbit-not-psd--9cf408845130817fc5a2eaee.md) | 112 | `result-track:9cf408845130817fc5a2eaeef9bb9ef1e9e2fa75f899c2b815c772a871a63185` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/sourcepreserving--b607a3705357252bcb32cffa.md) | 118 | `declaration-track:b607a3705357252bcb32cffacb2ed2f9eb1818f4651b5d88176035c835a22497` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/correctedsource--01584cd00740f6552b9f91be.md) | 123 | `declaration-track:01584cd00740f6552b9f91be32aa8ab4a1af4b71dd589834206f630ba75be607` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/lossysource--439684f33828c089244dcfae.md) | 129 | `declaration-track:439684f33828c089244dcfae7f2d0f08911e3d6711270d4d77b7ebb55ff602d2` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/sourcepreserving-psd-iff--fdd39194c0b407ba2213e108.md) | 134 | `result-track:fdd39194c0b407ba2213e10877945a0c27f6248e62fb51c9238f007f689c87c4` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/sourcepreserving-negative-iff--5aa31736f36fe09f959b9d70.md) | 139 | `result-track:5aa31736f36fe09f959b9d70c848a37c5c919da128ce4c224888d07d1c0dabfe` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/correctedsource-quadratic-defect--7a6abefad972b2833b3353dc.md) | 144 | `result-track:7a6abefad972b2833b3353dca503fdcf34f88924d90b252b149bb82414af4c65` |
| 26 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/indefinite--3c3ead8a929495e325c5ad7a.md) | 154 | `declaration-track:3c3ead8a929495e325c5ad7a2d3397ed64d41a3f88903a950d759fd5194595f8` |
| 27 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/swap--98675879d466803802cdd774.md) | 155 | `declaration-track:98675879d466803802cdd7749ceafa81eb6dbd9793f31503eb7813069210d9bf` |
| 28 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/imaginaryshear--60658a2ca029a8777fafb1c4.md) | 160 | `declaration-track:60658a2ca029a8777fafb1c494c37522b017b285f7903842423769f0613989c1` |
| 29 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/projection--12632237baa640f71b51fa91.md) | 166 | `declaration-track:12632237baa640f71b51fa91fa1d661489834ba4071bce1dbe9a12c1f708f27a` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/indefinite-hermitian--0571a984ff3a70f532d719a3.md) | 168 | `result-track:0571a984ff3a70f532d719a3bd87c02556639fd61a90323214f3c889f3517182` |
| 31 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/indefinite-negative--37253585a704af49ec09607d.md) | 171 | `result-track:37253585a704af49ec09607d99485c006a18d63610311a1bd63beae1650c06be` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/swap-still-indefinite--0162e0f78cd619053249cb6c.md) | 175 | `result-track:0162e0f78cd619053249cb6c3517fd29dd20a6235c77c1eed2a948351817d85f` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/shear-actual-negative-value--0e26a25b35cab0bb03eb41ea.md) | 180 | `result-track:0e26a25b35cab0bb03eb41eaa43cf3073ba2ca0a7ea31efa7e969a638ca7fbd4` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/shear-still-indefinite--df8f7d3ce54aa9b1c5c61c14.md) | 185 | `result-track:df8f7d3ce54aa9b1c5c61c14b765782c56247692f229818db6fcf430d56a6d1f` |
| 35 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/projected-indefinite--80604aa11c6e13cb5dc9306b.md) | 191 | `result-track:80604aa11c6e13cb5dc9306b817c16cb50ac6fd58a71815f4c9dbff5844422cd` |
| 36 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/projection-psd--58732f9d9b9654c0b7a46476.md) | 195 | `result-track:58732f9d9b9654c0b7a46476fa121375e5ed090974070df4418aa20f0333298a` |
| 37 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/lossy-projection--61f51c5ed118b9c4411531da.md) | 202 | `declaration-track:61f51c5ed118b9c4411531dace6b0217347e7b71022e994647cb3fde81bdfef6` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/singular-psd-does-not-reflect--ab29a50e8bf26675eae9d074.md) | 207 | `result-track:ab29a50e8bf26675eae9d074eb788e267fffc7fffcf33ea20614e6164c1f1b93` |
| 39 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean/declarations/correction-changes-sign--e23cb7399179f0f531a3bd17.md) | 211 | `result-track:e23cb7399179f0f531a3bd1748eafb8e19ad27f56c7dedd5476760f919adb3fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
