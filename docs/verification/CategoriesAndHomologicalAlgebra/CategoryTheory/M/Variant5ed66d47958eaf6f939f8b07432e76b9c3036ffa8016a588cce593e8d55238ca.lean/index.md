# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.M.Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daaabc90e59e18a60fd2deaff59b753f9246b865",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daaabc90e59e18a60fd2deaff59b753f9246b865`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.M` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [M.Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-path--01e5f06d1cd6499e0648e283.md) | 69 | `declaration-track:01e5f06d1cd6499e0648e283d9e49d56988f8476be94dd417241442c583dec21` |
| 2 | `instance` | [M.Path.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-path-inhabited--45057ae1cb66f5c70be71b31.md) | 87 | `declaration-track:45057ae1cb66f5c70be71b3122d48a3dfc78497dc66591d08db53bc4b12940e6` |
| 3 | `def` | [mp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/mp--98e3b859cbbd847dd3ef178c.md) | 105 | `declaration-track:98e3b859cbbd847dd3ef178ca08766f25a5173cf34922ee7ac694a50a192bc56` |
| 4 | `def` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m--a4e56d9707eeefbee175932d.md) | 113 | `declaration-track:a4e56d9707eeefbee175932d75be756259cf697166a3a3f43bcfbd24cee597a4` |
| 5 | `instance` | [mvfunctorM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/mvfunctorm--7ad86d1cca3a36ff1d3431a8.md) | 119 | `declaration-track:7ad86d1cca3a36ff1d3431a88894cac4442a904a3c73217439210536dff819c8` |
| 6 | `instance` | [inhabitedM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/inhabitedm--8a6086a9f088983c75bc90df.md) | 124 | `declaration-track:8a6086a9f088983c75bc90df4a4bd0a33d8703c7f53fb3e539f3ffb4a98506db` |
| 7 | `def` | [M.corecShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-corecshape--c26ed884dff8f2494b5f041c.md) | 133 | `declaration-track:c26ed884dff8f2494b5f041cd34baef3254cc0b2bcbdd3a92a824370c3a21510` |
| 8 | `def` | [castDropB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/castdropb--5fba883d30ac5d7104c7af61.md) | 141 | `declaration-track:5fba883d30ac5d7104c7af610da1028ec8081a42bd844d7671b41b99f64602d5` |
| 9 | `def` | [castLastB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/castlastb--58978253b9acaa2205856064.md) | 147 | `declaration-track:58978253b9acaa2205856064b2cd1ffce37b1f2249b54ed7275355850f8a9e1c` |
| 10 | `def` | [M.corecContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-coreccontents--481c36b85f97d385074ec9be.md) | 153 | `declaration-track:481c36b85f97d385074ec9befa7ddd976127fdcb34de6d7b0f77922acd65cb26` |
| 11 | `def` | [M.corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-corec--fd3dfb1865c3772089ddba50.md) | 183 | `declaration-track:fd3dfb1865c3772089ddba501dd6f2aa7cae9ef447e3c78105f7a19d8056a8cf` |
| 12 | `def` | [M.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-corec--92afac9941f01fad3e876971.md) | 191 | `declaration-track:92afac9941f01fad3e8769710cfd1f8d098bb17532e7358a2718cdbdddf10d7d` |
| 13 | `def` | [M.pathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-pathdestleft--bef4be29ec620f3ad2f2dfbb.md) | 198 | `declaration-track:bef4be29ec620f3ad2f2dfbb261cc8950d5d28494804b37a9ad9af81e0a2bec9` |
| 14 | `def` | [M.pathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-pathdestright--7b687f21b37bcee16bd7dcc5.md) | 206 | `declaration-track:7b687f21b37bcee16bd7dcc52e150f9fbe3482add4466ca0d0c45e6b888f68ef` |
| 15 | `def` | [M.dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest--94d2f5bf1e4ea1f9d4e37c70.md) | 214 | `declaration-track:94d2f5bf1e4ea1f9d4e37c7052b4871a507b3f6cdeb2eec60ad4919048f7ba00` |
| 16 | `def` | [M.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest--3f6684ead01e0bccc60ec11d.md) | 222 | `declaration-track:3f6684ead01e0bccc60ec11dad8f8a35e48d20c084aededd49305261b9c9765c` |
| 17 | `def` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-mk--09a88c76052d8da82dec7cab.md) | 229 | `declaration-track:09a88c76052d8da82dec7cabe2dbb0b87d99539555116507d8cf9c34c9418871` |
| 18 | `theorem` | [M.dest'_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest-eq-dest--35aa3926ae484ace338c0e19.md) | 235 | `result-track:35aa3926ae484ace338c0e191fc64fb2cbfaec09f53a5f14b10f69896bb586fb` |
| 19 | `theorem` | [M.dest_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest-eq-dest--b07b129a6de48185016a07c3.md) | 243 | `result-track:b07b129a6de48185016a07c3f2acfd359ea41b37473af44c8a79946b10014e9a` |
| 20 | `theorem` | [M.dest_corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest-corec--4a18925364006a2e1cc29fdd.md) | 251 | `result-track:4a18925364006a2e1cc29fdd8ac0f8d96a6839ca4644334f9afefb447ce59e03` |
| 21 | `theorem` | [M.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest-corec--8243e99da2408d61f0920688.md) | 259 | `result-track:8243e99da2408d61f0920688c461629e801a39dc9a825a064add5568dfe5146f` |
| 22 | `theorem` | [M.bisim_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-bisim-lemma--6b988dcd8c63fc915a41fd28.md) | 272 | `result-track:6b988dcd8c63fc915a41fd28f00d789d8757ea0a31469d4191a7905534e604c2` |
| 23 | `theorem` | [M.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-bisim--4aa5f6a55b0f1ccd6a5625f3.md) | 287 | `result-track:4aa5f6a55b0f1ccd6a5625f31a146cb42ee777ae5e077c245e5b40c61f619003` |
| 24 | `theorem` | [M.bisim₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-bisim--8e83870040b8bc6c56a9af30.md) | 323 | `result-track:8e83870040b8bc6c56a9af307be51662362ea285b6f2cc44d1913882201f2e3a` |
| 25 | `theorem` | [M.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-bisim--be3d62bbf2c5c1149b53f927.md) | 357 | `result-track:be3d62bbf2c5c1149b53f9277023ffc9b0c1daae1be2e040c0725b952ee1f1dd` |
| 26 | `theorem` | [M.dest_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-dest-map--3da000ba6687b2f7b0357d72.md) | 375 | `result-track:3da000ba6687b2f7b0357d72a1dddc7028ed9863b9b994396c9a305d0c5c7f5b` |
| 27 | `theorem` | [M.map_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5ed66d47958eaf6f939f8b07432e76b9c3036ffa8016a588cce593e8d55238ca.lean/declarations/m-map-dest--e0468b64eb5fbbc640189ebc.md) | 386 | `result-track:e0468b64eb5fbbc640189ebc0f81c9c58bb3d9318b3196c78ad17e22f66135dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
