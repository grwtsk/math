# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DenseSubsite.Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c57abdb7f0afcf62a5be016bc7845b4366895f9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presieve-coverbyimagestructure--ff59ea9d0078d80824ac6a9c.md) | 58 | `declaration-track:ff59ea9d0078d80824ac6a9ceed58540b3b9812b26764b2ea194b7ea9c77017c` |
| 2 | `def` | [Presieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presieve-coverbyimage--09bd1c4a9afab27d3fe28436.md) | 72 | `declaration-track:09bd1c4a9afab27d3fe28436628a0421e2b8f013578df98aa070539306e02caa` |
| 3 | `def` | [Sieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sieve-coverbyimage--8d4f4897a717211389a425b8.md) | 79 | `declaration-track:8d4f4897a717211389a425b8f3d2f80a8fa674fc3dd2c7205450681436d512d5` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presieve-in-coverbyimage--7dadd1401e1336fed7e8d63b.md) | 84 | `result-track:7dadd1401e1336fed7e8d63bb5c521a2a6ce6c4932563e0335b956845fec06fa` |
| 5 | `structure` | [CoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/coverdense--5144e1dd09c91a1b57df0740.md) | 94 | `declaration-track:5144e1dd09c91a1b57df074059717915ba23b1b763461fdd149a77b256dd1da8` |
| 6 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/ext--13bae05c4ed555a82ae0d149.md) | 109 | `result-track:13bae05c4ed555a82ae0d149c930d6338b0c1ac1de97a4e28109fa2d34ade9d6` |
| 7 | `theorem` | [functorPullback_pushforward_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/functorpullback-pushforward-covering--ee9914e9825e48c247ef1687.md) | 116 | `result-track:ee9914e9825e48c247ef168795b985ae9e4f3ba629dc8cb1824f2b3565961049` |
| 8 | `def` | [homOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/homover--8216f263cf8543c7b0b1e478.md) | 130 | `declaration-track:8216f263cf8543c7b0b1e47875983f9e39000cfa882f403bb7a9d59a58033684` |
| 9 | `def` | [isoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/isoover--489a2a07d971f0b1828c9cee.md) | 139 | `declaration-track:489a2a07d971f0b1828c9cee312cdbd6791491623ce851bee9f3da55f1d0e3eb` |
| 10 | `theorem` | [sheaf_eq_amalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheaf-eq-amalgamation--fd41582b7cdc8ba00fe37b4a.md) | 144 | `result-track:fd41582b7cdc8ba00fe37b4a4b7ae0384f1a7f3f6c6902a1c2c3c356e1fb0909` |
| 11 | `def` | [pushforwardFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/pushforwardfamily--534288df03a998761c82538a.md) | 160 | `declaration-track:534288df03a998761c82538aaf181974c384e19f3f541c4e10fd0fbb7318ca9e` |
| 12 | `theorem` | [pushforwardFamily_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/pushforwardfamily-def--5ae259ad42cea6634f9942e2.md) | 170 | `result-track:5ae259ad42cea6634f9942e2d5bb1cb3caaf05b748ec782cf93889544f86bc7a` |
| 13 | `theorem` | [pushforwardFamily_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/pushforwardfamily-compatible--1a8662ce62dd6c8bc7bc2da7.md) | 175 | `result-track:1a8662ce62dd6c8bc7bc2da751c538fd15bdf93053cfea3aa69b507a8ce2a1ab` |
| 14 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/apphom--e202f614c60ec0d4a12c4e72.md) | 198 | `declaration-track:e202f614c60ec0d4a12c4e72fda5f7ec2bf6171c97735799930ddc44cd0f4ca5` |
| 15 | `theorem` | [pushforwardFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/pushforwardfamily-apply--1c066fba241da7cba211b987.md) | 204 | `result-track:1c066fba241da7cba211b987549f833c088284a397182cbc8550cdecb8069929` |
| 16 | `theorem` | [appHom_restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/apphom-restrict--ae5cad548b9a501d088a3f62.md) | 223 | `result-track:ae5cad548b9a501d088a3f6269059803fa82e8582068d99737e618dc3ad1a747` |
| 17 | `theorem` | [appHom_valid_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/apphom-valid-glue--86b2f2564a89bbff4f2b5754.md) | 233 | `result-track:86b2f2564a89bbff4f2b5754cc7fd7e95eac1625e1cebf0717b107f21543d86a` |
| 18 | `def` | [appIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/appiso--449c519712e5b55c5404cbb3.md) | 243 | `declaration-track:449c519712e5b55c5404cbb33c11019ff78d4c30b7f1a8058d463b40078423c7` |
| 19 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presheafhom--04c7ffd4be774bb1e978be53.md) | 263 | `declaration-track:04c7ffd4be774bb1e978be53f90a2c05cf75a9b95d1b8a694eb73a56104afe40` |
| 20 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presheafiso--1415fed8e48e28d81432c7d7.md) | 277 | `declaration-track:1415fed8e48e28d81432c7d71f2bf8c1ef4e8f637c6de5156dd74ce26b0bad77` |
| 21 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafiso--757af3a7bca1369ad3c91daa.md) | 286 | `declaration-track:757af3a7bca1369ad3c91daacf46a20f8f0164090bc4df079bcbedf0682aa8ef` |
| 22 | `def` | [sheafCoyonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafcoyonedahom--ce47c94154e725985692b276.md) | 306 | `declaration-track:ce47c94154e725985692b276543be5dcfebf85aaa42622e628dcc5ea1a5c2d3c` |
| 23 | `def` | [sheafYonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafyonedahom--b33d35e881e24e8283668313.md) | 335 | `declaration-track:b33d35e881e24e8283668313dfee1911dbab8a517246d005eb3d75ff3d87a8aa` |
| 24 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafhom--3c695e0baa439baa986a904d.md) | 354 | `declaration-track:3c695e0baa439baa986a904d85fe27b1e933aa6525843dbf10295b4b804a2668` |
| 25 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/presheafiso--1c0d306e9b3dc3750a335c30.md) | 365 | `declaration-track:1c0d306e9b3dc3750a335c309c7ae08078185d612d1b80e1369fe675fead6eb2` |
| 26 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafiso--30f24c95efc10d0a06269f9e.md) | 389 | `declaration-track:30f24c95efc10d0a06269f9e7e102c78f0ec91825d405d6234839e5727740848` |
| 27 | `theorem` | [sheafHom_restrict_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafhom-restrict-eq--c114d0617022b4138dd325f0.md) | 402 | `result-track:c114d0617022b4138dd325f0f2a0e0df035289cfa00267d4495810346742b628` |
| 28 | `theorem` | [sheafHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafhom-eq--acabe22099aac32e52e0fb1b.md) | 430 | `result-track:acabe22099aac32e52e0fb1b4e5cb251efe13c14d1034e38159c4c2c8bdaa597` |
| 29 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/restricthomequivhom--2d2f6116dff13383afc85bf6.md) | 451 | `declaration-track:2d2f6116dff13383afc85bf686811fe6547479a6392b67697f25610f0eef2985` |
| 30 | `theorem` | [iso_of_restrict_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/iso-of-restrict-iso--82519e58e3f8a08bd31bd927.md) | 461 | `result-track:82519e58e3f8a08bd31bd9271843ae44e6baa50f9a7f7a801f9fdb63ea70dd76` |
| 31 | `theorem` | [compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/compatiblepreserving--23ee32db51aa4882239d2642.md) | 469 | `result-track:23ee32db51aa4882239d2642e72fad38258c7219353fe100c5d7a52af7243b37` |
| 32 | `instance` | [Sites.Pullback.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sites-pullback-full--508cbe4a426a05400f8358c4.md) | 482 | `declaration-track:508cbe4a426a05400f8358c46942d3b3d416b205c13a59f06d8aa601de9509c4` |
| 33 | `instance` | [Sites.Pullback.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sites-pullback-faithful--ecbae3d9a7a33a1635f47854.md) | 488 | `declaration-track:ecbae3d9a7a33a1635f47854bfdc9341f44d787e87881c11ae76ec19831c03d7` |
| 34 | `def` | [sheafEquivOfCoverPreservingCoverLifting](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafequivofcoverpreservingcoverlifting--ce20c0e53560825c0222bf01.md) | 520 | `declaration-track:ce20c0e53560825c0222bf01969e6489fe9eda29eb55d19be52f6a88eb7b0474` |
| 35 | `abbrev` | [sheafEquivOfCoverPreservingCoverLiftingSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/declarations/sheafequivofcoverpreservingcoverliftingsheafificationcompatibility--54675f3690963d2027846115.md) | 558 | `declaration-track:54675f3690963d202784611596d98c832cd551196364bb85344cbf5fc42a5eab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
