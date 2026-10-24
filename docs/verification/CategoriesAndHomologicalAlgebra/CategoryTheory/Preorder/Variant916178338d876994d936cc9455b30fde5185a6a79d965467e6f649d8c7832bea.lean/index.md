# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ea60b473a4750d33651ec5f9a6c2853f25e63b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ea60b473a4750d33651ec5f9a6c2853f25e63b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/instance--d2627ebaee930ac8f0017db9.md) | 44 | `declaration-track:d2627ebaee930ac8f0017db9812df661b2bb3fc3c0bd33d2f453e4a3b07aeceb` |
| 2 | `instance` | [subsingleton_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/subsingleton-hom--6b3a975a046e1ec451ad3fb3.md) | 49 | `declaration-track:6b3a975a046e1ec451ad3fb33a6e6035c073d416e540c19a8e1a4f1cbc8fa414` |
| 3 | `def` | [homOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle--1d8a5e66cfc705739605f78e.md) | 62 | `declaration-track:1d8a5e66cfc705739605f78ea1c56ff900c10123fc9c55a58e6223dcb62bc894` |
| 4 | `abbrev` | [_root_.LE.le.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/root-le-le-hom--cbb2f84a795c1a1df45507b0.md) | 66 | `declaration-track:cbb2f84a795c1a1df45507b09a0faea900c43482e0669917db3a7501922baa01` |
| 5 | `theorem` | [homOfLE_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-refl--2a43149c5836b6dac0e4b1c0.md) | 69 | `result-track:2a43149c5836b6dac0e4b1c0743ae3b5af63b99d922b9cc9679dab7745526e6b` |
| 6 | `theorem` | [homOfLE_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-comp--23b43edbf30289056b1594cc.md) | 73 | `result-track:23b43edbf30289056b1594cc145646bc9660c22d7fc4261a2e291efd3b328b1d` |
| 7 | `theorem` | [leOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/leofhom--dd3cfb91b8d1ba9ad6eaeb70.md) | 79 | `result-track:dd3cfb91b8d1ba9ad6eaeb70e5f4aa49f9d03bd0f5a7faafdd48baf31575ecdb` |
| 8 | `abbrev` | [_root_.Quiver.Hom.le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/root-quiver-hom-le--1339efe479d1d8c746bb3797.md) | 83 | `declaration-track:1339efe479d1d8c746bb3797b29af951b1d6f9ca1f614d53bb206c99b86acb71` |
| 9 | `theorem` | [homOfLE_leOfHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-leofhom--a3d695407e7a60e1ec7d1443.md) | 86 | `result-track:a3d695407e7a60e1ec7d144318e459492c74811b0a12a288bd0384a013844da1` |
| 10 | `lemma` | [homOfLE_isIso_of_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-isiso-of-eq--d6f5831f2a02b638bcdad332.md) | 89 | `result-track:d6f5831f2a02b638bcdad3322e2d7374c08c9e0b3879da5d935cf8eddd18de8a` |
| 11 | `lemma` | [homOfLE_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-comp-eqtohom--b02c37ccdcfef427e75dfce2.md) | 94 | `result-track:b02c37ccdcfef427e75dfce2ed9ae19f0efa45c6a948a6553948f1868507100d` |
| 12 | `lemma` | [eqToHom_comp_homOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/eqtohom-comp-homofle--36585182b0d0a33de2f1108f.md) | 99 | `result-track:36585182b0d0a33de2f1108f580a05f39014e35841711ec0f69eb6d76d11f1e5` |
| 13 | `lemma` | [homOfLE_op_comp_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/homofle-op-comp-eqtohom--2312c0b5ba446454f4fb1886.md) | 104 | `result-track:2312c0b5ba446454f4fb18867d31ae67cb18c117585a803b1c148c06deff05b6` |
| 14 | `lemma` | [eqToHom_comp_homOfLE_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/eqtohom-comp-homofle-op--81631c506796c5423889d7a1.md) | 109 | `result-track:81631c506796c5423889d7a1e906c2af25743055271c9e778955f3d848fd8927` |
| 15 | `def` | [opHomOfLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/ophomofle--21db5d7ae54e2af6520de73e.md) | 114 | `declaration-track:21db5d7ae54e2af6520de73ec9e5628e238afc397fcee510196e4edde25da1a2` |
| 16 | `theorem` | [le_of_op_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/le-of-op-hom--53d7434e85b0a8e0dc6feea2.md) | 117 | `result-track:53d7434e85b0a8e0dc6feea235bddc145829ec880a71d706b8baacd57b0bf5cd` |
| 17 | `instance` | [uniqueToTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/uniquetotop--bf5a63515030c84569cced95.md) | 120 | `declaration-track:bf5a63515030c84569cced95b8a733eec054ce6b8b3e85a77f04fcd5e415fc51` |
| 18 | `instance` | [uniqueFromBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/uniquefrombot--8479642eac324ab479cd7992.md) | 124 | `declaration-track:8479642eac324ab479cd7992cc0f3cf0339a403fd762c0117596621d30574c2c` |
| 19 | `def` | [orderDualEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/orderdualequivalence--00577e3cbe36661c010a652e.md) | 132 | `declaration-track:00577e3cbe36661c010a652ed862ba6696001888def68f38cbdf213941e8e253` |
| 20 | `def` | [Monotone.functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/monotone-functor--a54e405727df130c5bc11211.md) | 152 | `declaration-track:a54e405727df130c5bc11211a3e51e7f169c8e95c5663a3950abe98d13d52a5e` |
| 21 | `theorem` | [Monotone.functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/monotone-functor-obj--3902b06906d9a16849196700.md) | 157 | `result-track:3902b06906d9a16849196700b194b2644f19aa9cfe40504f31672b648031c9d4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/instance--178d50fa3c672e4676abcac7.md) | 161 | `declaration-track:178d50fa3c672e4676abcac7b1197d273c6e448ae3b5ad054a5bee4ca03d8cbd` |
| 23 | `def` | [OrderIso.equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/orderiso-equivalence--f9ced1915fec39e66967ab33.md) | 166 | `declaration-track:f9ced1915fec39e66967ab3325a97648002b5e0a6e4ff2c5d0692fe35a8b11ae` |
| 24 | `theorem` | [Functor.monotone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/functor-monotone--fd084d89573309aadaa1f48e.md) | 183 | `result-track:fd084d89573309aadaa1f48e01a8a3df6a129b8ef2902f9353731dcf6879baa2` |
| 25 | `theorem` | [Iso.to_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/iso-to-eq--70882ec66e6cbebc6391ee55.md) | 191 | `result-track:70882ec66e6cbebc6391ee551bd5304c398010bfbe38aebefe0bbcb8bf2ae8c1` |
| 26 | `def` | [Equivalence.toOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/equivalence-toorderiso--6f762371a493ea5bd99bf33b.md) | 196 | `declaration-track:6f762371a493ea5bd99bf33b9380cbd06ffb1c86b78a6c5905d189480f815f9f` |
| 27 | `theorem` | [Equivalence.toOrderIso_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/equivalence-toorderiso-apply--cecbcb84449205379227266e.md) | 209 | `result-track:cecbcb84449205379227266e7942ae0a7e41001911f4196270be57cd791cc4b3` |
| 28 | `theorem` | [Equivalence.toOrderIso_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/equivalence-toorderiso-symm-apply--d47c46a75356a7c0902f3b1b.md) | 213 | `result-track:d47c46a75356a7c0902f3b1bedd0b593f8985490a77e47bff25649069e42899f` |
| 29 | `lemma` | [PartialOrder.isIso_iff_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant916178338d876994d936cc9455b30fde5185a6a79d965467e6f649d8c7832bea.lean/declarations/partialorder-isiso-iff-eq--090c1167deb3122b2cff1df7.md) | 223 | `result-track:090c1167deb3122b2cff1df7137a89d6610d6baf9e6eb7878f93d1d709b3e00d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
