# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3e4dfb24eb2312c3a2644dae2e16eb997dd7fb",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3e4dfb24eb2312c3a2644dae2e16eb997dd7fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--30a2aacebc5e973164fc829e.md) | 35 | `declaration-track:30a2aacebc5e973164fc829efdedb12c9c82899309afbbc0b0ce8690c8119c19` |
| 2 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/id-apply--4cc24cc4358aed902c136bc6.md) | 43 | `result-track:4cc24cc4358aed902c136bc65ebb5219e45a073e1e3478620d89ccb7eb888273` |
| 3 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/comp-apply--6d7c3c8b69901cb342ebf964.md) | 47 | `result-track:6d7c3c8b69901cb342ebf96476746beffb6a5164d6922f762da75a3b2fa3bd9a` |
| 4 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/ext--6aa40f74965e18f74a3c9718.md) | 52 | `result-track:6aa40f74965e18f74a3c9718243b23a23970a947918c50feaa61f560a230ec94` |
| 5 | `def` | [eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/eval--1ed8a15312f39805e4487a8e.md) | 59 | `declaration-track:1ed8a15312f39805e4487a8e0aad9a17d96b9b93b44ac15fbf14f7f471a6e78b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/instance--38a71f8f4f7f245fa977212d.md) | 70 | `declaration-track:38a71f8f4f7f245fa977212df77e54248be007be6f5190273151cb5df7ce3324` |
| 7 | `def` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/comap--5950c531af28740edf3e2b99.md) | 77 | `declaration-track:5950c531af28740edf3e2b993f2edf9cc7d102054c5b1561e83b7648298d2227` |
| 8 | `def` | [comapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/comapid--5212fd220141bb7e45e4dfdb.md) | 87 | `declaration-track:5212fd220141bb7e45e4dfdb1e44f9f666c01eb45ee35f25144081d999b9c6e8` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/example--931cbfcc4e587edf5614ce0d.md) | 91 | `declaration-track:931cbfcc4e587edf5614ce0dbb5e1ad3e72b48558fdb3a7937aa2cf71253703f` |
| 10 | `def` | [comapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/comapcomp--b8ef3af2c0f83746c7d72a46.md) | 101 | `declaration-track:b8ef3af2c0f83746c7d72a46a3c3d1a915a15946058e9557e9516e8d09f0a34f` |
| 11 | `def` | [comapEvalIsoEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/comapevalisoeval--bc40ee7e006f9c01dfb6f72d.md) | 111 | `declaration-track:bc40ee7e006f9c01dfb6f72d66d7c24a872df51fed64348907483bfc29744bc7` |
| 12 | `instance` | [sumElimCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/sumelimcategory--f5ce4400a795f4215e11aa78.md) | 121 | `declaration-track:f5ce4400a795f4215e11aa785ec40b9a4d24b0b03a49bcca121a23ce5afe9081` |
| 13 | `def` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/sum--b8965398a31fc9676bd1f7be.md) | 136 | `declaration-track:b8965398a31fc9676bd1f7bec9583adc5e666edd65c2b6b477f68775c5409eb7` |
| 14 | `def` | [isoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/isoapp--142a6523d6d7722e8a78fc37.md) | 159 | `declaration-track:142a6523d6d7722e8a78fc37ae97d07610ad72de8d82d89f329940d44e2441d1` |
| 15 | `theorem` | [isoApp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/isoapp-refl--5f3007702552f8fdac63e2ba.md) | 164 | `result-track:5f3007702552f8fdac63e2baf9fb6546a8ea8e95bcb87ebaa38c018157f495aa` |
| 16 | `theorem` | [isoApp_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/isoapp-symm--55aa99ae07dd4c9880058a9e.md) | 168 | `result-track:55aa99ae07dd4c9880058a9edb802b134168acb504a0e84a4fdc84dc52d7d2d5` |
| 17 | `theorem` | [isoApp_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/isoapp-trans--d02618f42b05d8afd27e7853.md) | 172 | `result-track:d02618f42b05d8afd27e7853796ea463e133cd87c3bbc9e192079d64bcd567d8` |
| 18 | `def` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--ea4b09a897f429126612c4f8.md) | 186 | `declaration-track:ea4b09a897f429126612c4f8dfc67831c155ba1fbb600ab6ebe8a48ce6ccfd33` |
| 19 | `def` | [pi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--3956907725bce8c4b9fce1e3.md) | 193 | `declaration-track:3956907725bce8c4b9fce1e35297e48d68e1f2036cee6f5dfda03bccca527074` |
| 20 | `def` | [pi'CompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-compeval--18546556c31cd5ed51e42f60.md) | 199 | `declaration-track:18546556c31cd5ed51e42f601b69747ec27a89b7b97a9df608e7075b1cd25fd3` |
| 21 | `theorem` | [eqToHom_proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/eqtohom-proj--11b41b502eadd1565309b1b6.md) | 206 | `result-track:11b41b502eadd1565309b1b64f9acb1cb0bf7566550b9b9638c452e85fdb6140` |
| 22 | `theorem` | [pi'_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-eval--5ebbec59c4612a75d63cea7e.md) | 216 | `result-track:5ebbec59c4612a75d63cea7e5a267192f1d164b9d91f2398c23970fb5358c449` |
| 23 | `theorem` | [pi_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-ext--5d548a066f44339dfebd0d36.md) | 224 | `result-track:5d548a066f44339dfebd0d3633c9a0525dc109a7c5a78647af01ce3d60d95cd8` |
| 24 | `def` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--42dccb230cc400eedfa041df.md) | 250 | `declaration-track:42dccb230cc400eedfa041dff18897b6405ca2be7d3f54848dde6a81bd7aae06` |
| 25 | `def` | [pi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--795c64d3b7151457290b4274.md) | 256 | `declaration-track:795c64d3b7151457290b427414e944403b2213cf33396a756688c58e2526a6f1` |
| 26 | `def` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--f8a1bc7829f3a91400b4058d.md) | 274 | `declaration-track:f8a1bc7829f3a91400b4058d60a59f6036d28038c52233dc8048304281852ba3` |
| 27 | `def` | [pi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--716c35f9b6326c387d7f643d.md) | 281 | `declaration-track:716c35f9b6326c387d7f643ddea76cb71cd16031819574d48e391df02a83c08d` |
| 28 | `lemma` | [isIso_pi_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/isiso-pi-iff--f8f44f1ecb44f16a2c46b9e9.md) | 290 | `result-track:f8f44f1ecb44f16a2c46b9e9d3bb36e6aeb86d022f9aebdac348af678dc452e5` |
| 29 | `def` | [Pi.eqToEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-eqtoequivalence--da4092a23655f0e850c4cbb2.md) | 302 | `declaration-track:da4092a23655f0e850c4cbb24f49e85770ddff8b1bcc92dd2ce8d3a2fee7da62` |
| 30 | `def` | [Pi.evalCompEqToEquivalenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-evalcompeqtoequivalencefunctor--8ad9c6abd5a3b21483e32048.md) | 307 | `declaration-track:8ad9c6abd5a3b21483e32048b696eae930eaeb11d65528a1bae5c90e8a87768c` |
| 31 | `def` | [Pi.eqToEquivalenceFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-eqtoequivalencefunctoriso--c38ddd88fd25a3eb0886a461.md) | 314 | `declaration-track:c38ddd88fd25a3eb0886a4611aa99db190adef2df94f01464bc88c09d573ba0e` |
| 32 | `def` | [Pi.equivalenceOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-equivalenceofequiv--baf0a2825753caa529c0e3db.md) | 323 | `declaration-track:baf0a2825753caa529c0e3db27c8d362f4b0daf66396a09c871b575a0d111233` |
| 33 | `def` | [Pi.optionEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi-optionequivalence--ff614f61e561eb9fd3424570.md) | 340 | `declaration-track:ff614f61e561eb9fd34245701e804c9413543b2933adb6e7b540e5442f921103` |
| 34 | `def` | [pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/pi--9898a1e83aa4006b9ae1b577.md) | 360 | `declaration-track:9898a1e83aa4006b9ae1b57727e7b5d0685bfd4a85460bb4a5c8205398ac6875` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant389b90fd0632c6c8a263f2be44a784bb8125d6c2731fc2e587e25efdf51ec15d.lean/declarations/instance--b6307f102befd90fb1bac6ad.md) | 366 | `declaration-track:b6307f102befd90fb1bac6ad2b434ab6eb287bb4bfe2b0581041ba6c9e68b71a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
