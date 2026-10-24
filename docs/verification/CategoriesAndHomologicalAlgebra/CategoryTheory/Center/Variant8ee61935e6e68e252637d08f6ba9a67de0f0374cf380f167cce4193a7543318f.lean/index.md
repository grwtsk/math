# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Center.Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac159189e24deed784565090bd55945365544d8f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac159189e24deed784565090bd55945365544d8f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfBraiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/halfbraiding--d1c59dfb61d5a64ddc23ef3d.md) | 58 | `declaration-track:d1c59dfb61d5a64ddc23ef3daf0a105b927d67377d84d30143fabc2524337c71` |
| 2 | `def` | [Center](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/center--b1f88090ca7bf78b9ad02768.md) | 77 | `declaration-track:b1f88090ca7bf78b9ad02768222df10c0612b9d919d9b0a55fda466a729d9cce` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/hom--d34d3799af8eb0197bed263e.md) | 86 | `declaration-track:d34d3799af8eb0197bed263e595420c778078363ba89020395bf378b13bc830d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--eb5f369cff818db045200b3f.md) | 93 | `declaration-track:eb5f369cff818db045200b3fec13c8ee70cfdb4d1b50992ef02650aaabd93c82` |
| 5 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ext--72029b4ef2ee0f9a606dea84.md) | 97 | `result-track:72029b4ef2ee0f9a606dea847cb86c61031eab6253fdf37fe85abfba2540e16a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--69d3875747b76523b5bade69.md) | 100 | `declaration-track:69d3875747b76523b5bade6961d2a7e99487549ff4b8bbfec7071a333bafa47d` |
| 7 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/id-f--da50c8abeaa758720224c986.md) | 105 | `result-track:da50c8abeaa758720224c986dda832e234206cc35e86560aae484e1231fdf834` |
| 8 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/comp-f--bf21215f9541df8473a30a29.md) | 109 | `result-track:bf21215f9541df8473a30a29eb0d553c0a0578ff2790bcab8ca50b5cc003f6ea` |
| 9 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/isomk--abd1547add91f6669edc5b15.md) | 116 | `declaration-track:abd1547add91f6669edc5b15ed9922962274e68029830465ec630b12d6c00984` |
| 10 | `instance` | [isIso_of_f_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/isiso-of-f-isiso--0d7a48d2a07f8b03bac719af.md) | 122 | `declaration-track:0d7a48d2a07f8b03bac719af492d2a1cb56131b88fa190d0c36114e9df010184` |
| 11 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensorobj--ebe4f26692de664e8f8a0547.md) | 128 | `declaration-track:ebe4f26692de664e8f8a0547f5c3212bd94df80486f8d6b40694c8c00ab1c05a` |
| 12 | `theorem` | [whiskerLeft_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerleft-comm--caa56efe907e302874a5a1e6.md) | 160 | `result-track:caa56efe907e302874a5a1e684ae7c3181b764c444762ff24b9f1010da4db0a7` |
| 13 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerleft--b3d79d95777621a428fc82a4.md) | 176 | `declaration-track:b3d79d95777621a428fc82a4684fb73f0fc90bf987f443cb695ceff6c473cc38` |
| 14 | `theorem` | [whiskerRight_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerright-comm--06c31e0c77673bb2b5186d31.md) | 182 | `result-track:06c31e0c77673bb2b5186d31dfed19982a68b923faa27e71d36c48a081154000` |
| 15 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerright--081ac518ec5c08d32ab7bc89.md) | 198 | `declaration-track:081ac518ec5c08d32ab7bc894d8d7c509a5a75b6aa041d863aded361eeb03aef` |
| 16 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensorhom--a790575e92c389d9e085323b.md) | 205 | `declaration-track:a790575e92c389d9e085323b5c21f71bb4f3598aa24d9d752f138dcd8bf769df` |
| 17 | `def` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensorunit--81c0d72deb53db5447f35dc1.md) | 216 | `declaration-track:81c0d72deb53db5447f35dc17c81cb305293ac17c00c17d5246e4aa074b60a7c` |
| 18 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/associator--409a22bea57a030b47a72c03.md) | 220 | `declaration-track:409a22bea57a030b47a72c03ac6c40ecb8f4e2ba1f880420b069c8b56f83988b` |
| 19 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/leftunitor--954fc008697a7dc7b0364f4e.md) | 224 | `declaration-track:954fc008697a7dc7b0364f4e4143f49c7c788cbed4b2a3e3d0802c05569c1245` |
| 20 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/rightunitor--a855f00403c794f3ce0f2ac8.md) | 228 | `declaration-track:a855f00403c794f3ce0f2ac8e046bba0c6ac265798c79f45513bf8fb2014a38b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--053a16fde6409fb331ba46b1.md) | 241 | `declaration-track:053a16fde6409fb331ba46b18588f69275cd7e01c6aa6f39877117bb0af17dc3` |
| 22 | `theorem` | [tensor_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensor-fst--aa04e873373570b43137cc6b.md) | 253 | `result-track:aa04e873373570b43137cc6b601fea95f3536c9991b8b8d207a14087891b29a1` |
| 23 | `theorem` | [tensor_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensor--ddfc835fd98a09cca1db0031.md) | 257 | `result-track:ddfc835fd98a09cca1db0031c4ae2e2fdc548e1469dfeb7b99607a7ed16cc9a3` |
| 24 | `theorem` | [whiskerLeft_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerleft-f--acadeebb2c46054e2eecf7b2.md) | 265 | `result-track:acadeebb2c46054e2eecf7b2228674a11af145e95d79c180acc98204589b6858` |
| 25 | `theorem` | [whiskerRight_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/whiskerright-f--d94baee3e3398ee68ca4d627.md) | 269 | `result-track:d94baee3e3398ee68ca4d627d70b3b9052bb2bbc17010caee75b0c5cf86c128a` |
| 26 | `theorem` | [tensor_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensor-f--ec75894ccecd561e5f5b062e.md) | 273 | `result-track:ec75894ccecd561e5f5b062e123cf5450f3c10a3bbdc0f22d42daeafde4ee72c` |
| 27 | `theorem` | [tensorUnit_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/tensorunit--0995cc945c40e23bd5658730.md) | 277 | `result-track:0995cc945c40e23bd5658730c9c85828d00ae1864c560b58607765d9d756544a` |
| 28 | `theorem` | [associator_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/associator-hom-f--5fb25672e79780a756132e03.md) | 281 | `result-track:5fb25672e79780a756132e03800f5929294d653d567e02d68c27428815521a21` |
| 29 | `theorem` | [associator_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/associator-inv-f--edf691d29f6f93dbfa07cf3b.md) | 285 | `result-track:edf691d29f6f93dbfa07cf3b8e62bb4e72fce0825a1b3bfb33fc64bc8794a5f9` |
| 30 | `theorem` | [leftUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/leftunitor-hom-f--d3e8169083f8cc62b2795e90.md) | 290 | `result-track:d3e8169083f8cc62b2795e90a89f957690a7f4fdf03b9dca790cb345b4a6f8db` |
| 31 | `theorem` | [leftUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/leftunitor-inv-f--9fca48f61bb38a5eef40c408.md) | 294 | `result-track:9fca48f61bb38a5eef40c408d7e507dd1d7bef1b5dde1399510d778488c82e72` |
| 32 | `theorem` | [rightUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/rightunitor-hom-f--c78108fd2e276d5b1756efd2.md) | 299 | `result-track:c78108fd2e276d5b1756efd247108042b08bbc1b0c78128855b5bbc858a06e92` |
| 33 | `theorem` | [rightUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/rightunitor-inv-f--aefaf8697bff288598dd1820.md) | 303 | `result-track:aefaf8697bff288598dd1820611cab985dab907e4b290fb3a75de308f0e04b8b` |
| 34 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/forget--5c20c9274334dc700a83e0d5.md) | 315 | `declaration-track:5c20c9274334dc700a83e0d53e11bf854bd09858058c67543fe820f5e35c21d9` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--5f6dce13af8afdd73814c438.md) | 319 | `declaration-track:5f6dce13af8afdd73814c438d01db49bc328df5d067452dacc1e1bdab6e42b32` |
| 36 | `lemma` | [forget_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/forget--33c15323c9650ea4fc0f0b78.md) | 324 | `result-track:33c15323c9650ea4fc0f0b78a7b456cfaa854766c153aba5b2edb839e188cd65` |
| 37 | `lemma` | [forget_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/forget--f64cf0548683d731ef5e95ba.md) | 325 | `result-track:f64cf0548683d731ef5e95baae15a281629c2258c54be4672617a077a1104e13` |
| 38 | `lemma` | [forget_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/forget--62f44c078d220c7393d90399.md) | 329 | `result-track:62f44c078d220c7393d9039968cb0ce8e497fdd4f1fbc7dc05c8827ffbf80602` |
| 39 | `lemma` | [forget_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/forget--30ad534c1db407b0935ae6ab.md) | 330 | `result-track:30ad534c1db407b0935ae6ab521cd7552fc1032c943160b45ea2b8bf9d3696fe` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--fbd80d46caaa263fdefd2be1.md) | 332 | `declaration-track:fbd80d46caaa263fdefd2be13b623d2661cf44c7b4c2ff02ceee77585ebbd2ee` |
| 41 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/braiding--3fe55c2c595e4a3250295903.md) | 339 | `declaration-track:3fe55c2c595e4a3250295903f4e10d8828ed7d6376705418ac39dc1e9df5039e` |
| 42 | `instance` | [braidedCategoryCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/braidedcategorycenter--3bdd595296558af61fcb28fd.md) | 348 | `declaration-track:3bdd595296558af61fcb28fd57f0b13d588e13fe7d44f81ba66953e60ad682a5` |
| 43 | `def` | [ofBraidedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraidedobj--f54b714cfa3a41351078ac24.md) | 360 | `declaration-track:f54b714cfa3a41351078ac2486337f73d1bbfc035697c569a1938d48cdd0a931` |
| 44 | `def` | [ofBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraided--749482bd4329770c1f54f75d.md) | 368 | `declaration-track:749482bd4329770c1f54f75dd11294a488f56cf95c9dff04129549916ef8da3a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/instance--462f9e8bdea9538ffaf499c3.md) | 374 | `declaration-track:462f9e8bdea9538ffaf499c3d21289d5df990df126976d5d00d9dddbc499affd` |
| 46 | `lemma` | [ofBraided_ε_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraided-f--382af5fc62c72a0b710a77e4.md) | 383 | `result-track:382af5fc62c72a0b710a77e4bbfb9668d43fb5717946ecda369f4ffde7ced3e9` |
| 47 | `lemma` | [ofBraided_η_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraided-f--22986df344fe41250f50b549.md) | 384 | `result-track:22986df344fe41250f50b5493deea416e655c069c2c8b9569e8d5f4448ef1d18` |
| 48 | `lemma` | [ofBraided_μ_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraided-f--ea482abd78896c5443a4fade.md) | 388 | `result-track:ea482abd78896c5443a4fadeab89311523c0ddce253db55ec7b97cc6c37286fb` |
| 49 | `lemma` | [ofBraided_δ_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant8ee61935e6e68e252637d08f6ba9a67de0f0374cf380f167cce4193a7543318f.lean/declarations/ofbraided-f--429d6698be61c5aabc85708b.md) | 389 | `result-track:429d6698be61c5aabc85708bfdf6f3029a6430261143b5146935d8c10a879d3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
