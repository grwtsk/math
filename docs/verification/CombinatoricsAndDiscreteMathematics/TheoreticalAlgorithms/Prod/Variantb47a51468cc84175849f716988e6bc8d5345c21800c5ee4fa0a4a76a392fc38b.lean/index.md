# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fae3a01b6f3a0367c7e8a85d14a9410e99c87c2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fae3a01b6f3a0367c7e8a85d14a9410e99c87c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.NAry` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/instance--bb83ed572325c01d076be797.md) | 33 | `declaration-track:bb83ed572325c01d076be797c37aac8a7b82e14d664d097c537237c21091f36f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/instance--0dbfdaac4c95f91d66d403f6.md) | 38 | `declaration-track:0dbfdaac4c95f91d66d403f686dbad05cb972296fe17893c83b2a73fbf613d52` |
| 3 | `theorem` | [prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/prod-left--80ee6dedb2eab8bb7d236d0f.md) | 41 | `result-track:80ee6dedb2eab8bb7d236d0f98a89c5c713d4fcd6fe2795e1dd0d72f6d895b69` |
| 4 | `theorem` | [prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/prod-right--eecd51d072a2220faac76f67.md) | 44 | `result-track:eecd51d072a2220faac76f670984f136eead0a7c246ef73b912aec6a6d5ccc03` |
| 5 | `instance` | [Pi.finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/pi-finite--6d483911dba6391d366ce70e.md) | 49 | `declaration-track:6d483911dba6391d366ce70e1f1d655b7dfda84b41df781a1846e8af0e244246` |
| 6 | `instance` | [Function.Embedding.finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/function-embedding-finite--2d930ea6487330ac57a1b494.md) | 58 | `declaration-track:2d930ea6487330ac57a1b494c57f01430119724b95a293892cebb83db77da33e` |
| 7 | `instance` | [Equiv.finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/equiv-finite-right--cbd412920799002fa20ec1e0.md) | 65 | `declaration-track:cbd412920799002fa20ec1e0598bf7af8396ae13a6ddd328f681b249d963c6ba` |
| 8 | `instance` | [Equiv.finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/equiv-finite-left--e26f639a8a7a5308b50f1a33.md) | 69 | `declaration-track:e26f639a8a7a5308b50f1a33463386520947e95923f594d7d1cd53ee1cdd6022` |
| 9 | `instance` | [MulEquiv.finite_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/mulequiv-finite-left--170d792a5f03b2e7af77cde1.md) | 73 | `declaration-track:170d792a5f03b2e7af77cde13668329e1f50c30cb01ccbb933b75b679080b3ec` |
| 10 | `instance` | [MulEquiv.finite_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/mulequiv-finite-right--d0c1b69bf4c1478dc096954e.md) | 77 | `declaration-track:d0c1b69bf4c1478dc096954ee19ba3e06ae8c56bf7da92a07ed95d09c7ebb3d5` |
| 11 | `instance` | [fintypeProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/fintypeprod--fabef4ac808c01e3bc23be0a.md) | 93 | `declaration-track:fabef4ac808c01e3bc23be0ac459d845e121465c0e175188063fa612261cf397` |
| 12 | `instance` | [fintypeOffDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/fintypeoffdiag--4d743eb0350bf9a1e8a5c50e.md) | 97 | `declaration-track:4d743eb0350bf9a1e8a5c50e1261504b4f2b6fae4da691c12ff71a50d7469054` |
| 13 | `instance` | [fintypeImage2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/fintypeimage2--7ee6b3b6b644c6525c34de76.md) | 101 | `declaration-track:7ee6b3b6b644c6525c34de76ca220675d6ae9ce8c1758279248b930ead9db619` |
| 14 | `instance` | [finite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-prod--d3599c54313880e75c23705d.md) | 124 | `declaration-track:d3599c54313880e75c23705d8802131235a20565eba9ad062f3341946f36c520` |
| 15 | `instance` | [finite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-image2--b39e310330028e3f4aa3af26.md) | 128 | `declaration-track:b39e310330028e3f4aa3af26b65b836a77655620eaa8750f288e54a6de496301` |
| 16 | `theorem` | [Finite.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-prod--eb38235eaa8f4dccf8b17ede.md) | 153 | `result-track:eb38235eaa8f4dccf8b17ede50898ed353edb650cd078d9a0670a064341b2f2c` |
| 17 | `theorem` | [Finite.of_prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-of-prod-left--caab663e694b00f5b46945a7.md) | 158 | `result-track:caab663e694b00f5b46945a74ab83951a9c7043ef6ca4ca5e559d721e0925132` |
| 18 | `theorem` | [Finite.of_prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-of-prod-right--4270a2f9e7147e7967cfc84e.md) | 161 | `result-track:4270a2f9e7147e7967cfc84ed3fd63b5737fe27b5dd06f920b85f6949f87cf26` |
| 19 | `theorem` | [Infinite.prod_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-prod-left--45dede4f85d8d7e86922d22e.md) | 164 | `result-track:45dede4f85d8d7e86922d22e6c9e35582cd99507f14408fbec9b30236c73db06` |
| 20 | `theorem` | [Infinite.prod_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-prod-right--7d1d779bd3ee7629ae6854be.md) | 167 | `result-track:7d1d779bd3ee7629ae6854be9e73f6b3fbfa522750044f3b93464209621676e4` |
| 21 | `theorem` | [infinite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-prod--db39bd29459d7ee536aa6fd4.md) | 170 | `result-track:db39bd29459d7ee536aa6fd4417f6baafeffe08d2dce5b188c7119bd4c7c7d4d` |
| 22 | `theorem` | [finite_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-prod--a621b4a946231d3262a31bfb.md) | 180 | `result-track:a621b4a946231d3262a31bfbd4dd4bc8443c6c2a9e3f9b2d5f0d834c408a6e0c` |
| 23 | `theorem` | [Finite.offDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-offdiag--c308447aba99f45dc16e63d4.md) | 183 | `result-track:c308447aba99f45dc16e63d459ebf274b3a9672856504e4471edbd5d810eea04` |
| 24 | `theorem` | [Finite.image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-image2--e17f85384d840c12dae7d132.md) | 186 | `result-track:e17f85384d840c12dae7d132cc4eb85a189ad918852e8de2ce466b12f57100f7` |
| 25 | `theorem` | [Finite.toFinset_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-tofinset-prod--91f0d307bec1a22992b18995.md) | 198 | `result-track:91f0d307bec1a22992b1899550a01e32c314054bd5d585e96b9d581849cabefe` |
| 26 | `theorem` | [Finite.toFinset_offDiag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-tofinset-offdiag--bb28ebe93bf18899ec3f7719.md) | 202 | `result-track:bb28ebe93bf18899ec3f77190a26cdfc977183bee86dbc224cd7ce3fdb8aed6a` |
| 27 | `theorem` | [finite_image_fst_and_snd_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-image-fst-and-snd-iff--1fcb879f40af74da661a04c7.md) | 206 | `result-track:1fcb879f40af74da661a04c7d3f1f887fe92970a7630717fdd78340221de6faa` |
| 28 | `theorem` | [Infinite.image2_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-image2-left--1686fb28fe100c0ac2b9b0d2.md) | 219 | `result-track:1686fb28fe100c0ac2b9b0d28ce76f5f37f1db4a0ede50b19827dd31db3c8226` |
| 29 | `theorem` | [Infinite.image2_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-image2-right--fba025b5dc7d9efb8ce552ae.md) | 223 | `result-track:fba025b5dc7d9efb8ce552ae4564f3b7d75872d6db6e2eb020bf4a65cfdee401` |
| 30 | `theorem` | [infinite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/infinite-image2--df0a236f8b6921ae829fc2bf.md) | 227 | `result-track:df0a236f8b6921ae829fc2bf067cf94d68f81c69ed56b49291e3f004e6417ee3` |
| 31 | `lemma` | [finite_image2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantb47a51468cc84175849f716988e6bc8d5345c21800c5ee4fa0a4a76a392fc38b.lean/declarations/finite-image2--372c28fb3625c595ed482dc9.md) | 236 | `result-track:372c28fb3625c595ed482dc9fb262f8c1509aae8578edcd9785edc8b9c6218ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
