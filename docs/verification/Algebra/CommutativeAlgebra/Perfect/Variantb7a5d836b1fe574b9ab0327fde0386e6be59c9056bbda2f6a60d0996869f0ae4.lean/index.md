# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Perfect.Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8043689debb7b27749c62e9d4b34307e466a91c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8043689debb7b27749c62e9d4b34307e466a91c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Separable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PerfectRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/perfectring--ea9861056c96c31a78cd9fef.md) | 43 | `declaration-track:ea9861056c96c31a78cd9fef8e9557814a83b5d216a09a3f10876d35c6619c6f` |
| 2 | `lemma` | [PerfectRing.ofSurjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/perfectring-ofsurjective--6a04898116ed062b930a1512.md) | 53 | `result-track:6a04898116ed062b930a15128b92d618c386dda0f1c9a580a0d5a61f74245f1b` |
| 3 | `instance` | [PerfectRing.ofFiniteOfIsReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/perfectring-offiniteofisreduced--e4ec0c0857197c1d42209293.md) | 58 | `declaration-track:e4ec0c0857197c1d422092938b55cf90e3330472991ea9c33b7f6501e9ca1380` |
| 4 | `theorem` | [bijective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/bijective-frobenius--5f83d50635f6218208427378.md) | 65 | `result-track:5f83d50635f6218208427378f9713ad0f27b942d843f3f40ad6792121e6a6201` |
| 5 | `theorem` | [injective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/injective-frobenius--556adf1f69f8c372dee1f8bc.md) | 68 | `result-track:556adf1f69f8c372dee1f8bc5946d01a5b6e13954c806a6533b3d19c93b8222e` |
| 6 | `theorem` | [surjective_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/surjective-frobenius--ab684fc02ab63e9d5050b046.md) | 71 | `result-track:ab684fc02ab63e9d5050b0463c330b534f90579a323acda0ede80d0cab2471de` |
| 7 | `def` | [frobeniusEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobeniusequiv--e1f2ba9f605c35db4fe8b96d.md) | 75 | `declaration-track:e1f2ba9f605c35db4fe8b96de005870ab06d9ea0716b517e72bb3b88604f077a` |
| 8 | `theorem` | [coe_frobeniusEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/coe-frobeniusequiv--2bf89ccc9e560c3c9e2eac47.md) | 80 | `result-track:2bf89ccc9e560c3c9e2eac4757090e9513101b74175a716d0f3d637095c89e85` |
| 9 | `theorem` | [frobeniusEquiv_symm_apply_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobeniusequiv-symm-apply-frobenius--38b07afc332cb8f41506a03c.md) | 84 | `result-track:38b07afc332cb8f41506a03c5b6d5bb66f033a5d47d0002a069240517b38ac25` |
| 10 | `theorem` | [frobenius_apply_frobeniusEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobenius-apply-frobeniusequiv-symm--3618029decd01b7cab3754c3.md) | 89 | `result-track:3618029decd01b7cab3754c3c49aafc3e78d895e5adf94d079bc3648ee4b7979` |
| 11 | `theorem` | [frobenius_comp_frobeniusEquiv_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobenius-comp-frobeniusequiv-symm--563c832a9b9bffd22b5c39a4.md) | 94 | `result-track:563c832a9b9bffd22b5c39a438cf94bf3162f31109988b6851c9ac9dcca73dd5` |
| 12 | `theorem` | [frobeniusEquiv_symm_comp_frobenius](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobeniusequiv-symm-comp-frobenius--d634b53c4f20d205660c0366.md) | 99 | `result-track:d634b53c4f20d205660c036608a2e9f133720f0089cb26585136f6cd8881094c` |
| 13 | `theorem` | [frobeniusEquiv_symm_pow_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/frobeniusequiv-symm-pow-p--f403d03e393d41b27fe998fb.md) | 104 | `result-track:f403d03e393d41b27fe998fba39140bd41574eed0a3d1c3d0fe6c75d2fd13de3` |
| 14 | `theorem` | [injective_pow_p](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/injective-pow-p--4875d0e6c6a6e99a930535f1.md) | 107 | `result-track:4875d0e6c6a6e99a930535f176591b8b3e73d371ec479223b01bb11e62e74348` |
| 15 | `lemma` | [polynomial_expand_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/polynomial-expand-eq--da41371620b861e841cab03c.md) | 110 | `result-track:da41371620b861e841cab03c88dc687e249c4fff8132e99b1af2671f2fd0f1de` |
| 16 | `theorem` | [not_irreducible_expand](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/not-irreducible-expand--ac5f8ff44307bf952a30e999.md) | 116 | `result-track:ac5f8ff44307bf952a30e999c2a659cfe299091575ca86c34a1b369f0e1107e6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/instance--467036b96587d3a971074863.md) | 121 | `declaration-track:467036b96587d3a9710748638fa4d0d585131df4771d52b4fce6720114b56627` |
| 18 | `class` | [PerfectField](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/perfectfield--6fa973a2c32cb468cb2dc174.md) | 134 | `declaration-track:6fa973a2c32cb468cb2dc1749b64b181f1c2466f2719cb4a4899055fad85f051` |
| 19 | `lemma` | [PerfectRing.toPerfectField](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/perfectring-toperfectfield--107bc25a4238b0012e6a0d9d.md) | 138 | `result-track:107bc25a4238b0012e6a0d9d67a4e35627e899717b2ba479b1f080daa95a725f` |
| 20 | `instance` | [ofCharZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/ofcharzero--ab1a0313624b68f70a9dedce.md) | 149 | `declaration-track:ab1a0313624b68f70a9dedcedc087666e2abdb24007ef16507b54e77b19685cd` |
| 21 | `instance` | [ofFinite](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/offinite--7362a1301ee5dcf7a4b66a3c.md) | 151 | `declaration-track:7362a1301ee5dcf7a4b66a3c359440f0e7d68680bef822402fc9eed5c0f24b63` |
| 22 | `instance` | [toPerfectRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Perfect/Variantb7a5d836b1fe574b9ab0327fde0386e6be59c9056bbda2f6a60d0996869f0ae4.lean/declarations/toperfectring--e950ebb9e5b581304a55ed13.md) | 159 | `declaration-track:e950ebb9e5b581304a55ed135bae2cd5a9d283daab0e86b0f9859f46892bd210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
