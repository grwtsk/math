# Verification target: GRWTSK.Topology.GeneralTopology.Ideals.Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46f7fd440c87cd19a2b853573e2e5fb4c18a86a8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46f7fd440c87cd19a2b853573e2e5fb4c18a86a8`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Units` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofset--5a224a0c6b6518fa637cb1f5.md) | 89 | `declaration-track:5a224a0c6b6518fa637cb1f548ebc37d79361e5c32f015e46c7e83c258c72be3` |
| 2 | `theorem` | [idealOfSet_closed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofset-closed--37dc7c3bb5314e706dbfab4b.md) | 96 | `result-track:37dc7c3bb5314e706dbfab4b6eb7eb6af48d806ca1c2f355cb7740d0585c58a5` |
| 3 | `theorem` | [mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/mem-idealofset--785764da6e5322399d86e455.md) | 105 | `result-track:785764da6e5322399d86e45597a28e923609262cd4b9ba47212642e3e3869362` |
| 4 | `theorem` | [not_mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/not-mem-idealofset--083b9cf64e988ee454248a37.md) | 110 | `result-track:083b9cf64e988ee454248a378098cc9f40cf1897031633276377208b1774f06e` |
| 5 | `def` | [setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setofideal--ef38f39bc2dafc05375127b4.md) | 116 | `declaration-track:ef38f39bc2dafc05375127b4c39b6b6ebffc60fb9f7163c0fb25926dd038ffb7` |
| 6 | `theorem` | [not_mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/not-mem-setofideal--49db4073b54082017be758ae.md) | 120 | `result-track:49db4073b54082017be758ae946fe170dd6b78b5f5f6e107cfdfe512c19aae77` |
| 7 | `theorem` | [mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/mem-setofideal--bc9965cecfe7688b4ca60636.md) | 125 | `result-track:bc9965cecfe7688b4ca60636077ce82265028820f0d9b0e3a5547cc4700f3f86` |
| 8 | `theorem` | [setOfIdeal_open](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setofideal-open--1cd87c0c3ffbe0433d00be42.md) | 130 | `result-track:1cd87c0c3ffbe0433d00be420d299ec1dbff57e7808df2f4d831a9fbd9f13fd0` |
| 9 | `def` | [opensOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/opensofideal--1e5f82b380d71163d07b8b06.md) | 139 | `declaration-track:1e5f82b380d71163d07b8b06e85082953eb0f63800141ea76e8d13fb2dd65435` |
| 10 | `theorem` | [setOfTop_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setoftop-eq-univ--85184d49a86ada7e06ba0f7e.md) | 144 | `result-track:85184d49a86ada7e06ba0f7efd3d67c1ec8164615fc2b845120aa8a93fe6ed74` |
| 11 | `theorem` | [idealOfEmpty_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofempty-eq-bot--30974c9c370eb8bdaa9cad44.md) | 149 | `result-track:30974c9c370eb8bdaa9cad4400e7168e3b6d99161a42a724bb21646c4a105be2` |
| 12 | `theorem` | [mem_idealOfSet_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/mem-idealofset-compl-singleton--5c0cde9a91e7fc6f0b2382b9.md) | 156 | `result-track:5c0cde9a91e7fc6f0b2382b9846f595f8a6e300c44493a34356a179bfb7cdf65` |
| 13 | `theorem` | [ideal_gc](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/ideal-gc--27226d562613ae28d75940de.md) | 163 | `result-track:27226d562613ae28d75940de07cc269fe6a198bacff824d66ae56ab3c9fb8ca1` |
| 14 | `theorem` | [exists_mul_le_one_eqOn_ge](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/exists-mul-le-one-eqon-ge--31e96e1b7034e8a8280b2271.md) | 183 | `result-track:31e96e1b7034e8a8280b2271592ad6f45262ef8449e91834709c080dc555afcd` |
| 15 | `theorem` | [idealOfSet_ofIdeal_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofset-ofideal-eq-closure--81554c9e82f7682c8752cf0f.md) | 199 | `result-track:81554c9e82f7682c8752cf0fab8c71c587b20f56e6cd2549ab70b50e3834a9a8` |
| 16 | `theorem` | [idealOfSet_ofIdeal_isClosed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofset-ofideal-isclosed--6956f294f08f35ce4dfd6f63.md) | 306 | `result-track:6956f294f08f35ce4dfd6f639625344215a48c2be1659a1e988b9ffe74ccc368` |
| 17 | `theorem` | [setOfIdeal_ofSet_eq_interior](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setofideal-ofset-eq-interior--593077ea69051bfa146ad225.md) | 314 | `result-track:593077ea69051bfa146ad225db2df080b9279e75fe5f60937a1d4bc707a213df` |
| 18 | `theorem` | [setOfIdeal_ofSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setofideal-ofset-of-isopen--482cae01b8bda1cb1d78562c.md) | 337 | `result-track:482cae01b8bda1cb1d78562c8b9e9aafc1f9892262519f7892d5f1e6ea63c591` |
| 19 | `def` | [idealOpensGI](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealopensgi--fe6906e100dd95cddccdea6e.md) | 346 | `declaration-track:fe6906e100dd95cddccdea6ec3a030d97984ea085fe410567b19a0c5f0bcb6bf` |
| 20 | `theorem` | [idealOfSet_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealofset-ismaximal-iff--6952bc4c2588a34118d72cf3.md) | 361 | `result-track:6952bc4c2588a34118d72cf34d20c8ab1a1a6b9a92332d5c20139a10bdab32af` |
| 21 | `theorem` | [idealOf_compl_singleton_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/idealof-compl-singleton-ismaximal--570fd16107248d9546a86969.md) | 369 | `result-track:570fd16107248d9546a86969882b2bc72554e3c6290d7820731f094a6735a5d8` |
| 22 | `theorem` | [setOfIdeal_eq_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/setofideal-eq-compl-singleton--954c1e04a56721465e8d77b0.md) | 375 | `result-track:954c1e04a56721465e8d77b00ede983a9747fc12f09e794a4271b9181ad20dcd` |
| 23 | `theorem` | [ideal_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/ideal-ismaximal-iff--d17893d52d355d1c1d15a304.md) | 383 | `result-track:d17893d52d355d1c1d15a30410a1c0c655da746ba5f0d731fc633d542b981cc8` |
| 24 | `def` | [continuousMapEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/continuousmapeval--1e2c0add3480c2ced75fb855.md) | 417 | `declaration-track:1e2c0add3480c2ced75fb855e0708ca196e6ed31dad3f17aacaa4a556d0596ec` |
| 25 | `theorem` | [continuousMapEval_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/continuousmapeval-apply-apply--1e26221d4ccbf45a32f0aa20.md) | 428 | `result-track:1e26221d4ccbf45a32f0aa20ee14573309a56fa1501cf87274ee8db0a983141c` |
| 26 | `theorem` | [continuousMapEval_bijective](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/continuousmapeval-bijective--8d7f2cb8830e19fd5d06bc72.md) | 436 | `result-track:8d7f2cb8830e19fd5d06bc72f368136e4fe7f4a9152c2acb3005e90d6f26b3c6` |
| 27 | `def` | [homeoEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Varianta127333bd50dc89b10615541a236f89c3072e22eafb612a6b646426637431851.lean/declarations/homeoeval--79ff8bfc1114d3fc8914dfd5.md) | 456 | `declaration-track:79ff8bfc1114d3fc8914dfd5c503fa8749b5905d31b32b6f9bd9a2847e9f8222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
