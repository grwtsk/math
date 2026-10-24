# Verification target: GRWTSK.Algebra.LinearAlgebra.Length.Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "046e9c403ccabeb328b69cedd3130d17e00f7cdd",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `046e9c403ccabeb328b69cedd3130d17e00f7cdd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.KrullDimension` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteLength` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Module.length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length--b602b86c442a6357b454b4d9.md) | 28 | `declaration-track:b602b86c442a6357b454b4d9351db4abbc2abc9e5bd0d65e307cb70f0c312092` |
| 2 | `lemma` | [Module.coe_length](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-coe-length--7e146bdb991207f0d68de28a.md) | 31 | `result-track:7e146bdb991207f0d68de28aca56c48f5fcf52f8fe2833c84381df0228e7632b` |
| 3 | `lemma` | [Module.length_eq_height](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-height--94ef02f11cc6ee17b56e7653.md) | 35 | `result-track:94ef02f11cc6ee17b56e7653a61ff1fc6943e11c70e9f6b3cd2af316d0df51f0` |
| 4 | `lemma` | [Module.length_eq_coheight](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-coheight--6d811c484dfb02553fa99561.md) | 39 | `result-track:6d811c484dfb02553fa99561d4fa8912ea17acf802ed9889343212b5904588ab` |
| 5 | `lemma` | [Module.length_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-zero-iff--2a4ab8431f2aee4a33ecd894.md) | 45 | `result-track:2a4ab8431f2aee4a33ecd89482b97472eeb7a36ac44ef5c771a65cf4ec0f22e4` |
| 6 | `lemma` | [Module.length_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-zero--3c9f8b6ee7898fe8392a6412.md) | 50 | `result-track:3c9f8b6ee7898fe8392a64125a2f6673e6036558cf56c023a00105cd1f37f7f7` |
| 7 | `lemma` | [Module.length_eq_zero_of_subsingleton_ring](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-zero-of-subsingleton-ring--e216c75c8f98fa0cf570c68a.md) | 54 | `result-track:e216c75c8f98fa0cf570c68aece09199ce7e6da7d7658be2b59a796f8eb3a172` |
| 8 | `lemma` | [Module.length_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-pos-iff--e7648f49f3829c2dc7f50a82.md) | 58 | `result-track:e7648f49f3829c2dc7f50a821652862ad194b57c3bef50651a09a55f65fc3b6a` |
| 9 | `lemma` | [Module.length_pos](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-pos--301fcfc82cafe50930c85f50.md) | 61 | `result-track:301fcfc82cafe50930c85f507e83d5df9796193ed43cd2edf76bd9c601e42483` |
| 10 | `lemma` | [Module.length_compositionSeries](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-compositionseries--0de9b055d5c92ebd0dfed358.md) | 64 | `result-track:0de9b055d5c92ebd0dfed358188cea60b7fd0ae93d96479e10374ff50bf501cf` |
| 11 | `lemma` | [Module.length_eq_top_iff_infiniteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-top-iff-infinitedimensionalorder--58b52605c00c0b72cc5cc856.md) | 82 | `result-track:58b52605c00c0b72cc5cc856f3b5f00c1d49f23a2cf24286c2ae99487c3d89a8` |
| 12 | `lemma` | [Module.length_ne_top_iff_finiteDimensionalOrder](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-ne-top-iff-finitedimensionalorder--66ae8dfdd23c9bee1c415069.md) | 87 | `result-track:66ae8dfdd23c9bee1c41506951137fbb826b8373d286a29fba06427ab0dc6e07` |
| 13 | `lemma` | [Module.length_ne_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-ne-top-iff--d283cd427194a189d80eca1b.md) | 91 | `result-track:d283cd427194a189d80eca1b609ef3ffc0987a56ee93ca83eca3840e38d017b8` |
| 14 | `lemma` | [Module.length_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-ne-top--37f846fee838db8efb5d04ef.md) | 100 | `result-track:37f846fee838db8efb5d04efa6353e31adcc531a689ecb1d1ef50e9bebd44419` |
| 15 | `lemma` | [Module.length_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-submodule--4483812bcdf20439b4609ac9.md) | 104 | `result-track:4483812bcdf20439b4609ac9216ffc0af0520ca450b86a95585c49265d4d0500` |
| 16 | `lemma` | [Module.length_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-quotient--912e07a48578cee5f7db9bf4.md) | 109 | `result-track:912e07a48578cee5f7db9bf46476baf68f6dfd685ad0051965a832326cec5cc6` |
| 17 | `lemma` | [LinearEquiv.length_eq](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/linearequiv-length-eq--057f3d2bf2b20ddb7e8f0c81.md) | 115 | `result-track:057f3d2bf2b20ddb7e8f0c814a3efc3dea07f47ca3072a4a7d96d1aa15597674` |
| 18 | `lemma` | [Module.length_bot](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-bot--1803d931855f806bfd018e4c.md) | 121 | `result-track:1803d931855f806bfd018e4cc2765ed92d76572633fb312dcd0939723833b2cc` |
| 19 | `lemma` | [Module.length_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-top--757a7959ab866a01fe0ad138.md) | 125 | `result-track:757a7959ab866a01fe0ad1384bdc542c3eb95e104368b0e3fe7a6f258ad57e98` |
| 20 | `lemma` | [Submodule.height_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/submodule-height-lt-top--e75026551856fa8fd636c63e.md) | 129 | `result-track:e75026551856fa8fd636c63e097c4e9d2ae2377a6b649fb4017027208aefe928` |
| 21 | `lemma` | [Submodule.height_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/submodule-height-strictmono--497422801a52452f79e2ef70.md) | 133 | `result-track:497422801a52452f79e2ef706cad1f6e21c1e499612ff8519157ec8fe7340ff5` |
| 22 | `lemma` | [Submodule.length_lt](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/submodule-length-lt--9cdca484ea1ab838c1b09cfe.md) | 137 | `result-track:9cdca484ea1ab838c1b09cfe5bb5163728e0e63b4bb03552093c626a662ea9f4` |
| 23 | `lemma` | [Module.length_eq_add_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-add-of-exact--b40eb2ae1a28382720a05d04.md) | 147 | `result-track:b40eb2ae1a28382720a05d047bde88f4aff78c9048adad1a490ac15b3d917572` |
| 24 | `lemma` | [Module.length_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-le-of-injective--13679d9af438667832450e40.md) | 174 | `result-track:13679d9af438667832450e408819810ee9c4224b9bcf8f043b11b35b03f1557b` |
| 25 | `lemma` | [Module.length_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-le-of-surjective--9f439855c7f62e07237f577a.md) | 180 | `result-track:9f439855c7f62e07237f577a124bd18e405306e2f9b8042da9f9b846c06a64fa` |
| 26 | `lemma` | [Module.length_prod](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-prod--22fbfeae0c1526c3adb2d097.md) | 187 | `result-track:22fbfeae0c1526c3adb2d097e50e57f40e358bec2674537f54ee26c4e933884c` |
| 27 | `lemma` | [Module.length_pi_of_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-pi-of-fintype--7acde790dfc39c40d2778b90.md) | 193 | `result-track:7acde790dfc39c40d2778b900caffc4bcb7080e486f87be1a7553fe3f23cb549` |
| 28 | `lemma` | [Module.length_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-finsupp--1407c0d67ef4e8e5bedbb118.md) | 207 | `result-track:1407c0d67ef4e8e5bedbb118cdd9ab6b85083a8dd9cf1d3552f38682e8388c7e` |
| 29 | `lemma` | [Module.length_pi](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-pi--a6bd6cc0c3d242aacab69908.md) | 224 | `result-track:a6bd6cc0c3d242aacab69908d2ce976ffdda0a58472ce4c53b569d700b8ad812` |
| 30 | `lemma` | [Module.length_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-of-free--3588f764d4034f87386d3320.md) | 237 | `result-track:3588f764d4034f87386d3320f06f411f3ff97bf91e217d345e22d414fbeb5a43` |
| 31 | `lemma` | [Module.length_of_free_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-of-free-of-finite--fdb720f6dd34c0de9107ac51.md) | 252 | `result-track:fdb720f6dd34c0de9107ac511f22dabc3010171c62a87b7855f5867e7a996c79` |
| 32 | `lemma` | [Module.length_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-one-iff--8fad9235cecead1d654322cb.md) | 257 | `result-track:8fad9235cecead1d654322cbc9841bb53c1f63c19eda12eae4a4f381d27cf788` |
| 33 | `lemma` | [Module.length_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-one--94ff7a7800d6afcb73e4dc85.md) | 264 | `result-track:94ff7a7800d6afcb73e4dc855088add65171f7acb68e943be099b360586cbc67` |
| 34 | `lemma` | [Module.length_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-rank--b9458c8d60fbb8b42fc3c51c.md) | 268 | `result-track:b9458c8d60fbb8b42fc3c51c863d98ad3448d4ff5778acfcc83b796c85e46c3f` |
| 35 | `lemma` | [Module.length_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Length/Variant0f8a6e9625ea1507f7f0428275ba34717012b167860083b3c4172a06f84b0f40.lean/declarations/module-length-eq-finrank--30cca17f452f0bd68d1acd96.md) | 273 | `result-track:30cca17f452f0bd68d1acd96eb1247aa933de86648882b6f402176600787a6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
