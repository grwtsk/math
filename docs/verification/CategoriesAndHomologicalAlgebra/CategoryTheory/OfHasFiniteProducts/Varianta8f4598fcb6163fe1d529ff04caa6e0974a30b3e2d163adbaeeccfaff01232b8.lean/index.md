# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfHasFiniteProducts.Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f1fb96e95fd7a148caef77748c5a73cb57706e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f1fb96e95fd7a148caef77748c5a73cb57706e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/monoidalofhasfiniteproducts--35399c00c1213813ef8038cf.md) | 42 | `declaration-track:35399c00c1213813ef8038cf7c215c2365e2bdef4649bf3dc022466b258250f5` |
| 2 | `theorem` | [unit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/unit-ext--1cb3d114c45d8657ee567b53.md) | 68 | `result-track:1cb3d114c45d8657ee567b53c47e0c8cbf3abc0ca815f4dc27849496d14687ec` |
| 3 | `theorem` | [tensor_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensor-ext--4b33425ffb2d15512df5406a.md) | 70 | `result-track:4b33425ffb2d15512df5406ac4daced8cab649578d3211ad0b83240f664ff05d` |
| 4 | `theorem` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensorunit--67091ae82d1fda738a08b0b7.md) | 74 | `result-track:67091ae82d1fda738a08b0b7e265deeb3cac83b140ac53134f8a98b08b112238` |
| 5 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensorobj--11c7a77c61d1d1eda02ad702.md) | 77 | `result-track:11c7a77c61d1d1eda02ad70229c28e3b67f325c09cb1d10eb207d8eb4dd0b5d7` |
| 6 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensorhom--fcb683ea34d77064f75c6a18.md) | 81 | `result-track:fcb683ea34d77064f75c6a18ebacf02bcb2f521f718dc843563003fdf36a2351` |
| 7 | `theorem` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/whiskerleft--ba51a6456162bffefa0d7d62.md) | 85 | `result-track:ba51a6456162bffefa0d7d62332c4ec0aac2d70e780539f8f970f31dd506a5a9` |
| 8 | `theorem` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/whiskerright--148748450ad89b542ce693b7.md) | 89 | `result-track:148748450ad89b542ce693b7e3e5294477b8c72ef5b874c5fe02f84451310005` |
| 9 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/leftunitor-hom--a2bea937df8406fbe9f16105.md) | 93 | `result-track:a2bea937df8406fbe9f16105754b4af5ed93fdbd623aaed253af8fa261ef5251` |
| 10 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/leftunitor-inv--9226e07d886b917d45f14d18.md) | 97 | `result-track:9226e07d886b917d45f14d1886f544721cfb16841a52a29cdae0eb26b1b28e6e` |
| 11 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/rightunitor-hom--607730d41c1964a013af2d6e.md) | 101 | `result-track:607730d41c1964a013af2d6e57c7934342e8e87fbac058dd02b224e6ba347706` |
| 12 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/rightunitor-inv--093bf89ec19023175fcdeea8.md) | 105 | `result-track:093bf89ec19023175fcdeea8763147e07707b1fceaa10a1ef5b214461542b8be` |
| 13 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-hom--2f830b5156fdd2f62457a2b6.md) | 111 | `result-track:2f830b5156fdd2f62457a2b63fff28a776926f2b2dffc1adb6e1f008625dbae0` |
| 14 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-inv--cf497d1c64ccecc190505105.md) | 117 | `result-track:cf497d1c64ccecc1905051055773d4a2355acf590b44d7a201f2b79cd4db17d3` |
| 15 | `theorem` | [associator_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-hom-fst--d12384bc7f9a300a127b6a8b.md) | 122 | `result-track:d12384bc7f9a300a127b6a8b6fba23615c3eadf7a997dae622c51e025e9f608a` |
| 16 | `theorem` | [associator_hom_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-hom-snd-fst--6d6e6913f6e770b25efc3f35.md) | 125 | `result-track:6d6e6913f6e770b25efc3f3524c8a902052566a5b4b77ad869cefcf9a77ca94f` |
| 17 | `theorem` | [associator_hom_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-hom-snd-snd--3760ee09408f8f8cce8851bc.md) | 128 | `result-track:3760ee09408f8f8cce8851bc58dd59f0d94298af9eda746b2e68f8de11cb95e5` |
| 18 | `theorem` | [associator_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-inv-fst-fst--aa577c963d545bdf413d6096.md) | 131 | `result-track:aa577c963d545bdf413d6096d79aa2dbc3c1d716563b982a154df647892cdd0a` |
| 19 | `theorem` | [associator_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-inv-fst-snd--6e59f2bd26a47f6af6480c71.md) | 134 | `result-track:6e59f2bd26a47f6af6480c71d7aeedf5a0976b0134fea63d48b8af15f7f37ec3` |
| 20 | `theorem` | [associator_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-inv-snd--ac1c70a1c31532db8e6505c1.md) | 137 | `result-track:ac1c70a1c31532db8e6505c138cb8f92d94d2eee4ae13e6614f6210a993ffd18` |
| 21 | `def` | [symmetricOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/symmetricofhasfiniteproducts--b630695512e773fa7554869e.md) | 151 | `declaration-track:b630695512e773fa7554869ea51f8411242e9f8f0526f5e8f2acb49b5252313d` |
| 22 | `def` | [monoidalOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/monoidalofhasfinitecoproducts--74f8b7ff9fed5b79c77c0df4.md) | 164 | `declaration-track:74f8b7ff9fed5b79c77c0df484e7c0729554ff88a4caf5dc267a802fffc52974` |
| 23 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensorobj--8baf2fa4a5a831ea8c44db82.md) | 191 | `result-track:8baf2fa4a5a831ea8c44db82035309ff5029b3e540631515a4cf1cd077457279` |
| 24 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/tensorhom--96b7a3780a50eb4eb9f2e3b7.md) | 195 | `result-track:96b7a3780a50eb4eb9f2e3b75fc4389f4710d535956959c06f143e8924a0956b` |
| 25 | `theorem` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/whiskerleft--702f9c75ffe6c12c49a47762.md) | 199 | `result-track:702f9c75ffe6c12c49a47762502bbd58987e3f78cb86953754f781810b79eee7` |
| 26 | `theorem` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/whiskerright--e277c73897f18f186878bbc3.md) | 203 | `result-track:e277c73897f18f186878bbc370d0cffe4ad26fb5c3198cc9207bddd7989047f8` |
| 27 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/leftunitor-hom--c888904f697ecfc280d9edf7.md) | 207 | `result-track:c888904f697ecfc280d9edf78547978123e577468cf52c5ae6c636028fa917f4` |
| 28 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/rightunitor-hom--b078ba599e225258abe912ee.md) | 211 | `result-track:b078ba599e225258abe912eecc42322f82d6a7cdcc94edfc0e8c84845fdc0e65` |
| 29 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/leftunitor-inv--c565261b961ffbe012b6ebee.md) | 215 | `result-track:c565261b961ffbe012b6ebeeae2166cb2e7beb019560ac84d020342ad5bd0614` |
| 30 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/rightunitor-inv--4c8b2e1e5390d90a1070284d.md) | 219 | `result-track:4c8b2e1e5390d90a1070284d16644ca2400b474ea374a1d98df8b7ba53fe8921` |
| 31 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-hom--88657aad5498d4958d9fe012.md) | 225 | `result-track:88657aad5498d4958d9fe012c2d337e844ac438dc128cdb06a7a9dc7f6442f22` |
| 32 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/associator-inv--9f541c5d0913f6dbbf471ea9.md) | 230 | `result-track:9f541c5d0913f6dbbf471ea9f7585e989128a9ea440ff1a0bdbfc4361dfc181e` |
| 33 | `def` | [symmetricOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/symmetricofhasfinitecoproducts--d8ca8054d7ef052ca07f204a.md) | 246 | `declaration-track:d8ca8054d7ef052ca07f204ac126dea819eb7859e872cfdfd0d38f070d8a05c3` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/instance--c970d7ff6510d23932cb905d.md) | 267 | `declaration-track:c970d7ff6510d23932cb905d6866d7cb17ad37164157201a6fa16f33ce1f379f` |
| 35 | `lemma` | [η_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/eq--5a0dcca5dc5c20f84e077b2d.md) | 295 | `result-track:5a0dcca5dc5c20f84e077b2dfe33bde892b0eefc4e56b26148daf80c3bd89fa0` |
| 36 | `lemma` | [δ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/eq--30f5dab5785cc6a900911c12.md) | 296 | `result-track:30f5dab5785cc6a900911c1230a2bc57733d0d65abcec3e6047a6b4140690c73` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/instance--b3ccacbf880a4a5b2bfa933f.md) | 301 | `declaration-track:b3ccacbf880a4a5b2bfa933fac07c326afe70d658114a9264910042d95c57b20` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/instance--aaea40b65f5ac1931b83ad2f.md) | 302 | `declaration-track:aaea40b65f5ac1931b83ad2fac1c2b3cfeab3bd0ce5ac836ba86aa353c0b615d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Varianta8f4598fcb6163fe1d529ff04caa6e0974a30b3e2d163adbaeeccfaff01232b8.lean/declarations/instance--3ac328ad67c76f5af2923ad6.md) | 306 | `declaration-track:3ac328ad67c76f5af2923ad697d4b387454c88ab65ca589c19c0e85f3e704c1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
