# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mates.Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "883d540827ed681d59563aa75d167ea9588ca992",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `883d540827ed681d59563aa75d167ea9588ca992`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.TwoSquare` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv--e1820884ab7224db3bae3ea5.md) | 79 | `declaration-track:e1820884ab7224db3bae3ea5908eeccc44c70aea5322fa7f9a7c72e0ce9c9839` |
| 2 | `theorem` | [mateEquiv_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-counit--660f9cd543567322911587dd.md) | 105 | `result-track:660f9cd543567322911587dd77673f293d2ed543dcaa722e79a1b63edf6c8a3d` |
| 3 | `theorem` | [mateEquiv_counit_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-counit-symm--45672a63b05c08628d40cfa8.md) | 110 | `result-track:45672a63b05c08628d40cfa8ff8dfef44cf44df6ea3ac0fb82a3c63984841635` |
| 4 | `theorem` | [unit_mateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/unit-mateequiv--a5457094ef257252bc153c99.md) | 117 | `result-track:a5457094ef257252bc153c9982ac0aec889e1f40c105d4e81b1bb47ad065f6b7` |
| 5 | `theorem` | [unit_mateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/unit-mateequiv-symm--95b9feda6dcbf6aee273f6cd.md) | 130 | `result-track:95b9feda6dcbf6aee273f6cd6ff5f5b710cfb9960b2abd1717b1ab36a0f0644e` |
| 6 | `theorem` | [mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-vcomp--b48d26c2d3564ce560d7c0f5.md) | 148 | `result-track:b48d26c2d3564ce560d7c0f548c0176c44740ae44b71604b5584e98ad06296f6` |
| 7 | `theorem` | [mateEquiv_hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-hcomp--097b50b3348ce819291b05a2.md) | 185 | `result-track:097b50b3348ce819291b05a2bc0ef88212f943ea6e4558fea1adf20c20c74b7b` |
| 8 | `theorem` | [mateEquiv_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-square--395d9281f9b3186034dbd0dc.md) | 218 | `result-track:395d9281f9b3186034dbd0dc2bbddfe299b8dc38cce8239c5c9041d1e8eebdc6` |
| 9 | `def` | [conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv--aac13816a3cb5f147ed7e6d0.md) | 248 | `declaration-track:aac13816a3cb5f147ed7e6d0a5d4e42ee70f20241b85c2f4d936111cec10fcbc` |
| 10 | `theorem` | [conjugateEquiv_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-counit--4969ca017569545a26e37742.md) | 257 | `result-track:4969ca017569545a26e3774219828fc059b4bac20c73e2641c1c8a08734c4569` |
| 11 | `theorem` | [conjugateEquiv_counit_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-counit-symm--3eadd5af0a5d45bcf7009756.md) | 268 | `result-track:3eadd5af0a5d45bcf700975633d476768e51ea8f883a040e57ac05e392dd5df1` |
| 12 | `theorem` | [unit_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/unit-conjugateequiv--8886c045a5cc0adecd7c2475.md) | 275 | `result-track:8886c045a5cc0adecd7c24759752705c867e5a5b6f13d93f52a5e44b44120a46` |
| 13 | `theorem` | [unit_conjugateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/unit-conjugateequiv-symm--6e93a1ab757bf350804c8578.md) | 286 | `result-track:6e93a1ab757bf350804c85788ca2c303dd8bdbcff890f67d719b47e9a3950f4d` |
| 14 | `theorem` | [conjugateEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-id--c090a079f2c33dea87c5cf85.md) | 293 | `result-track:c090a079f2c33dea87c5cf853a66bb6eff72f36af78110413178750760981eb9` |
| 15 | `theorem` | [conjugateEquiv_symm_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-symm-id--47a53758c3c2555f1da6b35f.md) | 298 | `result-track:47a53758c3c2555f1da6b35f6545cd2d3856a48ebadb96762ada0a3ae6617fb1` |
| 16 | `theorem` | [conjugateEquiv_adjunction_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-adjunction-id--a31d119e5a756e4c4637e17e.md) | 302 | `result-track:a31d119e5a756e4c4637e17e9e0dd69505d44e01abd9f3853b45b49bb0c96c68` |
| 17 | `theorem` | [conjugateEquiv_adjunction_id_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-adjunction-id-symm--133cba39d3869c970c9d2a72.md) | 306 | `result-track:133cba39d3869c970c9d2a72d0faf83e463d770338f91a1d8cbb6d97f9fc0740` |
| 18 | `theorem` | [conjugateEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-comp--d27cd03229fc2c152dc79551.md) | 319 | `result-track:d27cd03229fc2c152dc795512929fff530ac0650aa79af3ed72ae6e72f171440` |
| 19 | `theorem` | [conjugateEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-symm-comp--c7a355fc8cc38e793573462a.md) | 334 | `result-track:c7a355fc8cc38e793573462a8e61dd3a063679d5c1edad70242b4143e5d372ae` |
| 20 | `theorem` | [conjugateEquiv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-comm--05616d121b01cfca5226bd58.md) | 340 | `result-track:05616d121b01cfca5226bd58456836cac205b74d0fc2c19125f05acf6dfeab68` |
| 21 | `theorem` | [conjugateEquiv_symm_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-symm-comm--4730c00741e4c00a71126dff.md) | 344 | `result-track:4730c00741e4c00a71126dffb1c8a1c4638e2fcf12010f76c868b7b03e38e91f` |
| 22 | `instance` | [conjugateEquiv_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-iso--51cf7c3ad94fa7b7d1e40ecc.md) | 360 | `declaration-track:51cf7c3ad94fa7b7d1e40ecc439f0b07ae37dfbdacc2ceaac680c702a4e4c89f` |
| 23 | `instance` | [conjugateEquiv_symm_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-symm-iso--13e1bed2f66f7e8d042f67dc.md) | 368 | `declaration-track:13e1bed2f66f7e8d042f67dc9504564202d464750d3d79c6409d46b3ee88f2d0` |
| 24 | `theorem` | [conjugateEquiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-of-iso--0c5d3bc00708ff29797c58e9.md) | 376 | `result-track:0c5d3bc00708ff29797c58e9a9f01f813d6ede0f80e2f239494ec589246e79a0` |
| 25 | `theorem` | [conjugateEquiv_symm_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-symm-of-iso--e1b34375c2a8dc90ce2c2b3e.md) | 386 | `result-track:e1b34375c2a8dc90ce2c2b3e2ad448b4dc711fefbde70e33a11a55b5cfa37485` |
| 26 | `def` | [conjugateIsoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateisoequiv--31c8bb12eed58a758affed4a.md) | 394 | `declaration-track:31c8bb12eed58a758affed4a90818c709df816840b3e68c791a795d0ebbdfa94` |
| 27 | `theorem` | [iterated_mateEquiv_conjugateEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/iterated-mateequiv-conjugateequiv--36d5a38ba17a63de89401d36.md) | 431 | `result-track:36d5a38ba17a63de89401d3678dd1d4cd9681af8e56fd04d2a373a6d5531f4a5` |
| 28 | `theorem` | [iterated_mateEquiv_conjugateEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/iterated-mateequiv-conjugateequiv-symm--3bd4b842aa8abee91c81e2a4.md) | 438 | `result-track:3bd4b842aa8abee91c81e2a4be72a6395d383c343e5b87b238af00720728222a` |
| 29 | `theorem` | [mateEquiv_conjugateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/mateequiv-conjugateequiv-vcomp--7b935deb26c543762b83b392.md) | 450 | `result-track:7b935deb26c543762b83b3926fced993673ca7489767c5ea2d4dc08e7c3bb7a2` |
| 30 | `theorem` | [conjugateEquiv_mateEquiv_vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant0749be26f7a16e9abcad4b44ead9c91e8f4f5836cff66ef0f9df7b306f5adccc.lean/declarations/conjugateequiv-mateequiv-vcomp--6860bbb4fdfeca6cde0abf9d.md) | 467 | `result-track:6860bbb4fdfeca6cde0abf9da6ce7369fc1071dcead527c527c8916ba984fffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
