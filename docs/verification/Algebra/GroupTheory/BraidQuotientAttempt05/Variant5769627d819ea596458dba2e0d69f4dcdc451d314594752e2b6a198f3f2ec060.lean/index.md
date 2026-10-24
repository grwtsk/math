# Verification target: GRWTSK.Algebra.GroupTheory.BraidQuotientAttempt05.Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690bd82f7fabe7f6ca8aa679002e5e4a704a0008",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690bd82f7fabe7f6ca8aa679002e5e4a704a0008`.

Source path: `GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.PresentedGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braidRelator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/braidrelator--f006a4831bebc27303d8fbc1.md) | 15 | `declaration-track:f006a4831bebc27303d8fbc1b758df3eb2f4b389721aa162e5a7de8f25755aa4` |
| 2 | `def` | [braidRelations](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/braidrelations--7219c9da26222f20f55ef73c.md) | 19 | `declaration-track:7219c9da26222f20f55ef73ced1b0d0aef32510367a1e0f9432fb87daad584e7` |
| 3 | `abbrev` | [B3](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/b3--ab613b7a215a3c49fa280b9b.md) | 21 | `declaration-track:ab613b7a215a3c49fa280b9bf45409565e85dda3aa3e0b7e21dc0f5040ee257c` |
| 4 | `def` | [sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/sigma1--60fe54fdb7b4c539f8b52da2.md) | 23 | `declaration-track:60fe54fdb7b4c539f8b52da22c011cdb448130f03f4c5c8fcac6897f1ddceb10` |
| 5 | `def` | [sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/sigma2--08cac04b10b02b5d7ff83848.md) | 25 | `declaration-track:08cac04b10b02b5d7ff83848fae2305f3c71ef5520038956fded0a82c7dc6e01` |
| 6 | `theorem` | [braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/braid-relation--f5f37e7b634d5d3203911c93.md) | 27 | `result-track:f5f37e7b634d5d3203911c93a6d4e6a80f4bcbc61f45cac8a022568cebb5356f` |
| 7 | `def` | [halfTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/halftwist--d2f322c35bdad674a0ae12f0.md) | 36 | `declaration-track:d2f322c35bdad674a0ae12f0c9c332f2195cbe9ee0e8adffcac4222f95146470` |
| 8 | `def` | [fullTwist](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/fulltwist--62b3a6a1ae096e856ee93e6b.md) | 39 | `declaration-track:62b3a6a1ae096e856ee93e6babbe0cfb97018500861bf0852a104a3109a89809` |
| 9 | `theorem` | [halfTwist_swap_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/halftwist-swap-sigma1--bc5d75bd75cc4fca121e753f.md) | 41 | `result-track:bc5d75bd75cc4fca121e753f8367c2872bb4f5d66e7d30f0fa9792419649d98a` |
| 10 | `theorem` | [halfTwist_swap_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/halftwist-swap-sigma2--b30734f0fe1eedcc0a604d0f.md) | 48 | `result-track:b30734f0fe1eedcc0a604d0f68bc06bb0c62a784c1ddb3b01d0c8736ba5b4e1a` |
| 11 | `theorem` | [halfTwist_sq](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/halftwist-sq--6283b6012ce3d20f411de616.md) | 56 | `result-track:6283b6012ce3d20f411de6162e6c093d0401ac98d30a3ee24b067484798caa87` |
| 12 | `theorem` | [fullTwist_commute_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/fulltwist-commute-sigma1--f9c32dd1dadaaa0729210cf7.md) | 65 | `result-track:f9c32dd1dadaaa0729210cf7ecd5a01c1e1a52b01a4e5373b7063fef8261c03e` |
| 13 | `theorem` | [fullTwist_commute_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/fulltwist-commute-sigma2--86e344793ab9aa0feb149dc5.md) | 74 | `result-track:86e344793ab9aa0feb149dc5c689a6f0d964521b2b232382db0542237f8185d8` |
| 14 | `theorem` | [fullTwist_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/fulltwist-central--889217729d5a25d730003716.md) | 83 | `result-track:889217729d5a25d7300037169e053b0aa4d763fe81197eb0c989052af5764890` |
| 15 | `def` | [upperGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/uppergenerator--428cb59c977a770719e48050.md) | 92 | `declaration-track:428cb59c977a770719e4805029b376b8b26bc5c742a97559e848cd14b3ac632d` |
| 16 | `def` | [lowerGenerator](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lowergenerator--4924cb638a86b27fcc003b6b.md) | 95 | `declaration-track:4924cb638a86b27fcc003b6b7279f2d65006ec2d1a3902e6b3da73ec355512ff` |
| 17 | `theorem` | [matrix_braid_relation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrix-braid-relation--4486f34b90f106379250c4d8.md) | 98 | `result-track:4486f34b90f106379250c4d8aa439a3d70046651bf6a16e09bb860970eef84f3` |
| 18 | `def` | [generatorMatrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/generatormatrix--a00da05bd641be70e6935913.md) | 108 | `declaration-track:a00da05bd641be70e6935913294d3f59b84064238c5a382002d00da40b60e5ee` |
| 19 | `theorem` | [matrix_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrix-relator-identity--ce91a7b07a13a0860920b6ff.md) | 110 | `result-track:ce91a7b07a13a0860920b6ffab6bddd44ea65f3c27f9a3a39ac17aefa23344d4` |
| 20 | `def` | [matrixRepresentation](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrixrepresentation--ebe41966ae0f959754b3872e.md) | 120 | `declaration-track:ebe41966ae0f959754b3872e57d080344cd2e222eccfa5a97563558b149decf5` |
| 21 | `theorem` | [matrixRepresentation_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrixrepresentation-sigma1--fb318e8d31ec3bb54b35113f.md) | 123 | `result-track:fb318e8d31ec3bb54b35113f2e4b0b2dfc914966cad52a701e2e05d36ff1b33d` |
| 22 | `theorem` | [matrixRepresentation_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrixrepresentation-sigma2--b2eec2d51423865524d6aa50.md) | 126 | `result-track:b2eec2d51423865524d6aa50582ee341f08c474f2cdf7016e6de83a4ae50f09c` |
| 23 | `def` | [generatorExponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/generatorexponent--5be2b802f56c9419ef691083.md) | 130 | `declaration-track:5be2b802f56c9419ef69108325c006df47143308a945fed160d3b38339c9ad91` |
| 24 | `theorem` | [exponent_relator_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/exponent-relator-identity--a4b2f02aa67338159c1bd795.md) | 132 | `result-track:a4b2f02aa67338159c1bd795390faf1be5103e693f5859293e8f377bed1260a7` |
| 25 | `def` | [exponentHom](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/exponenthom--dfb0a0e82efc96104547719d.md) | 140 | `declaration-track:dfb0a0e82efc96104547719d1865447410c288cdac6fe22c557f85a8474cb512` |
| 26 | `theorem` | [exponentHom_sigma1](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/exponenthom-sigma1--a24cc9545c7353e24ba46ed3.md) | 143 | `result-track:a24cc9545c7353e24ba46ed33ac3bddcc25d15a7c019d061f2d695246f2adb4b` |
| 27 | `theorem` | [exponentHom_sigma2](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/exponenthom-sigma2--2ae719b7dc48c04810907c12.md) | 146 | `result-track:2ae719b7dc48c04810907c124a60a7acb98271019b39df68f4993e14fa2fd717` |
| 28 | `def` | [lostBraid](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid--8f1239e3937a1a8756219f3d.md) | 150 | `declaration-track:8f1239e3937a1a8756219f3d134978f2c0f6be297be7be3a879f04e3d7292fb5` |
| 29 | `theorem` | [lostBraid_eq_fullTwist_square](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid-eq-fulltwist-square--81ac7c5afad02a85b40396c2.md) | 152 | `result-track:81ac7c5afad02a85b40396c26df7e6a3f5e440bdb69393ae18547a5f6116c9ef` |
| 30 | `theorem` | [lostBraid_central](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid-central--10ac6109b19fd2b1327ef9dd.md) | 156 | `result-track:10ac6109b19fd2b1327ef9ddfb03cff55c43da36822b1cfa67ad4bd2673720a1` |
| 31 | `theorem` | [generator_product_matrix](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/generator-product-matrix--ed632c5e50e10e1d18259072.md) | 165 | `result-track:ed632c5e50e10e1d18259072d8201187ebaae545ab8309fcaac9d39f9345f7d8` |
| 32 | `theorem` | [generator_product_sixth](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/generator-product-sixth--4b8b44f0c196deb822baf033.md) | 173 | `result-track:4b8b44f0c196deb822baf0336c8c05c3fdd6ee7485afd43a39bbf99ab6689d37` |
| 33 | `theorem` | [lostBraid_matrix_identity](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid-matrix-identity--f8cfec4d0bfa448df4483e90.md) | 181 | `result-track:f8cfec4d0bfa448df4483e9008f9362a18bcff09bb6b67ffe3f7515198cbc5bf` |
| 34 | `theorem` | [lostBraid_exponent](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid-exponent--e2f56c92bc73c23666ea6b48.md) | 185 | `result-track:e2f56c92bc73c23666ea6b4821f4fcc0f5f55d19344788893a7ebb1a005a96fb` |
| 35 | `theorem` | [lostBraid_ne_one](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/lostbraid-ne-one--215ee4f10f35f5345a35d27c.md) | 188 | `result-track:215ee4f10f35f5345a35d27cb544fcb21a26b85637aa4646569b265abbe8810a` |
| 36 | `theorem` | [matrixRepresentation_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/matrixrepresentation-not-injective--31ac197910879184310f0832.md) | 194 | `result-track:31ac197910879184310f0832c61b73a364105835bdaa089c97d44addd115a9b5` |
| 37 | `def` | [FactorsThrough](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/factorsthrough--fec88c4461fae484fc1ae5fb.md) | 199 | `declaration-track:fec88c4461fae484fc1ae5fb0a4fabb986aff27ac52e3b4d61088e9fbc106fe9` |
| 38 | `theorem` | [factored_kernel_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/factored-kernel-blindness--1b952b3aabf6032e087463f9.md) | 202 | `result-track:1b952b3aabf6032e087463f9a6e613d1fc1efd60b7089028b4d0f79ea93293d1` |
| 39 | `theorem` | [factored_lostBraid_blindness](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/factored-lostbraid-blindness--3e6b524efc8c3622b4b0a8b5.md) | 208 | `result-track:3e6b524efc8c3622b4b0a8b5ebdc651c33bfefc64fd5c4aa847c9853667ab062` |
| 40 | `theorem` | [factored_not_injective](../../../../../mathematics/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/declarations/factored-not-injective--e4caee4fe926f545e0a012af.md) | 212 | `result-track:e4caee4fe926f545e0a012afd3027e1b60db3d469ecad34b0ef5b77b0ba59ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
