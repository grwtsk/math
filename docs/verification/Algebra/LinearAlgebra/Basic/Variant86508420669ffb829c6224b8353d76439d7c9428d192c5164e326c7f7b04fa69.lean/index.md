# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a88d302649f8f865e52a456b5b9b7d1ebd6ce02f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a88d302649f8f865e52a456b5b9b7d1ebd6ce02f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Subcategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Coevaluation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FGModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecat--0dcf7ef1633041b8ef679262.md) | 49 | `declaration-track:0dcf7ef1633041b8ef67926212a7fb476652c7016859a282fbc883be2e8ed198` |
| 2 | `def` | [FGModuleCat.carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecat-carrier--3454d612e6036b5fe907930e.md) | 59 | `declaration-track:3454d612e6036b5fe907930e7bf5ddbbc40dd3d2b51234e0aa07260ba78ebf5e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--4d4ef3352a5e9968aba92b03.md) | 61 | `declaration-track:4d4ef3352a5e9968aba92b030bcae1d44dc179d84585dc9ce8e65995f1d5e59e` |
| 4 | `lemma` | [obj_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/obj-carrier--ce38e97e8b0259ce35312331.md) | 66 | `result-track:ce38e97e8b0259ce3531233193d8502bc4bd7c0674be22e9565add7b44beb6dc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--99196b8723086c71dfdaf45a.md) | 68 | `declaration-track:99196b8723086c71dfdaf45ae9805e89a60efc534746df48ea41b3a7ecb9eec6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--d9a7d17e24137165c0091de6.md) | 72 | `declaration-track:d9a7d17e24137165c0091de605c804e0f34b4bc60b0fa66ae1f486d076682532` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--c7e6a0dc46e288a82a3a7584.md) | 76 | `declaration-track:c7e6a0dc46e288a82a3a758412960be5bac1d58c4abbfa90170fd820855548ec` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--ead7084bd890cd2f5777946e.md) | 80 | `declaration-track:ead7084bd890cd2f5777946efe34a2f241c316240a6020798f13e76098f799ac` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--3a41356353199fc516af2d58.md) | 83 | `declaration-track:3a41356353199fc516af2d58468f7fa60c106ccf2bc15726638451874946caf5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--cfbf70668f88aa4a526bd518.md) | 87 | `declaration-track:cfbf70668f88aa4a526bd518c5d87be97b7c8cb3a85902274e7450f1e085cb8d` |
| 11 | `instance` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/finite--de53697fde826a3c0c0a51fb.md) | 99 | `declaration-track:de53697fde826a3c0c0a51fba70e7146d223072ed2d3541e8418db36d8c67c67` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--b005d083f67730f7e70b7261.md) | 103 | `declaration-track:b005d083f67730f7e70b7261c254d63c9d69fe54c160ad30653b429d6dda2d09` |
| 13 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/of--11ff01669bc2fed2b6d66500.md) | 107 | `declaration-track:11ff01669bc2fed2b6d665008bc6c305f97ea0391ddef89244f7d586bf24fe9d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--a1e7dc411098988558660121.md) | 111 | `declaration-track:a1e7dc411098988558660121206293235ffd8117f7e3e4618c06d93792cc0c19` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--60297c433cfa5fbd0cb60ce2.md) | 114 | `declaration-track:60297c433cfa5fbd0cb60ce2fcf1dec950353e0fe724ed7d559b643fa6c3c80f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--46ce71aafcc5f234ed972689.md) | 118 | `declaration-track:46ce71aafcc5f234ed972689c03e2792793a2a1061d44b32d73e7c7791423663` |
| 17 | `def` | [isoToLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/isotolinearequiv--fedbe5404ac4f8d4f5331947.md) | 125 | `declaration-track:fedbe5404ac4f8d4f5331947565835b3f3bff8a666d7c6e38d9ba46a1849ef33` |
| 18 | `def` | [_root_.LinearEquiv.toFGModuleCatIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/root-linearequiv-tofgmodulecatiso--22b4f37ba8223549ddb04baa.md) | 131 | `declaration-track:22b4f37ba8223549ddb04baab629d123b79cbd811d422d88092546de63425f41` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--aa26f11c502d5fdb8e2c459c.md) | 147 | `declaration-track:aa26f11c502d5fdb8e2c459cb1e9659b6a596cc7e012baa800dfcf2a1029bcc0` |
| 20 | `instance` | [monoidalPredicate_module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/monoidalpredicate-module-finite--bdac8b0f357b841ff218ecd8.md) | 151 | `declaration-track:bdac8b0f357b841ff218ecd86bbab1e2905ab29b1e657b89a4529096f223ccef` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--91a1438740930aabde9f62ce.md) | 157 | `declaration-track:91a1438740930aabde9f62ce03a80cdb356b9203a7995dafbd231c3af8fd6494` |
| 22 | `lemma` | [tensorUnit_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/tensorunit-obj--8ea5cb0787e89fe127ad850f.md) | 163 | `result-track:8ea5cb0787e89fe127ad850f955234f40b959c4986e0651a224962918a4bc52e` |
| 23 | `lemma` | [tensorObj_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/tensorobj-obj--58929dbbb1e11725ca523e31.md) | 164 | `result-track:58929dbbb1e11725ca523e31e685d827e1e592633c4ac37c42f779e21e0e689a` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--474c38edbc4e7a451f42877b.md) | 166 | `declaration-track:474c38edbc4e7a451f42877b336d61b06d4a8c4c93d621e2d98746ae05dadf6c` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--ec8ed2971ad703812f8fceb7.md) | 170 | `declaration-track:ec8ed2971ad703812f8fceb7b6cd0a45fd768defb0d9568155ac11cbcdf0242b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--7db9c04bcb565fd6c61ad3a9.md) | 174 | `declaration-track:7db9c04bcb565fd6c61ad3a9037d2707ba971d885b6aaa27d594e56979e43b35` |
| 27 | `def` | [forget₂Monoidal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/forget-monoidal--50b3ae6021ce60b87e5c2dcb.md) | 179 | `declaration-track:50b3ae6021ce60b87e5c2dcbb77f06074de62fa518dae0ce31ab2437ebd191df` |
| 28 | `instance` | [forget₂Monoidal_faithful](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/forget-monoidal-faithful--88005d301a6687f1cef2757c.md) | 183 | `declaration-track:88005d301a6687f1cef2757cdaf3113a28de0ed985b21dbb1a56768422e984cd` |
| 29 | `instance` | [forget₂Monoidal_additive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/forget-monoidal-additive--ca32bc5b7f474b917b75c410.md) | 189 | `declaration-track:ca32bc5b7f474b917b75c4102bf65400b45ce3990cdec0eec0f54f61417a16f7` |
| 30 | `instance` | [forget₂Monoidal_linear](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/forget-monoidal-linear--6585cf286f8e4aa1ae941530.md) | 195 | `declaration-track:6585cf286f8e4aa1ae941530198465f57fa1955e793735eaff172a24ae894a13` |
| 31 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/iso-conj-eq-conj--d2ae753c7704323932101890.md) | 201 | `result-track:d2ae753c7704323932101890fd46b0cc140f04bd8149d419cc745acebb1830ce` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--7b568274485b20c8e0f823b7.md) | 212 | `declaration-track:7b568274485b20c8e0f823b7494c68b4aec2706350929edd9404e13b0adf7b12` |
| 33 | `instance` | [closedPredicateModuleFinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/closedpredicatemodulefinite--3bc7b4cfe408943cfc172407.md) | 215 | `declaration-track:3bc7b4cfe408943cfc172407431a4e97c9f9ed8ee84aa8173dff0f572bd7be40` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/instance--7f427f5f35535516657332cf.md) | 220 | `declaration-track:7f427f5f35535516657332cf2cb6aeec5209fb3705619a207469910bc0f98952` |
| 35 | `theorem` | [ihom_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/ihom-obj--7b6e1c709e1b5c52ead6ccc8.md) | 228 | `result-track:7b6e1c709e1b5c52ead6ccc8f615a6cd8004b65e5024bae1f919eda7334ab01f` |
| 36 | `def` | [FGModuleCatDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatdual--b0f379871991442996de86ea.md) | 233 | `declaration-track:b0f379871991442996de86eaf9fee0732445ac5a25db98f48122c2da014051a1` |
| 37 | `lemma` | [FGModuleCatDual_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatdual-obj--429dff576c403f2ab53da8a1.md) | 237 | `result-track:429dff576c403f2ab53da8a18cd8508df119d2a98076e2b0b95016ecd36dcf96` |
| 38 | `lemma` | [FGModuleCatDual_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatdual-coe--d7f51e6eb023899e8a147b3c.md) | 239 | `result-track:d7f51e6eb023899e8a147b3c5944c40ff73b20f591c000af989f9a9aa435211a` |
| 39 | `def` | [FGModuleCatCoevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatcoevaluation--ec0ae33987e1cd01571e6a73.md) | 244 | `declaration-track:ec0ae33987e1cd01571e6a73c505e96b3e9bf8aebc5b9e2f3eaa24938386ca87` |
| 40 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatcoevaluation-apply-one--7a92a44ffb1a07ea4de957ea.md) | 248 | `result-track:7a92a44ffb1a07ea4de957ead0727a0de179afff34094ec68e852f1c571d43f4` |
| 41 | `def` | [FGModuleCatEvaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatevaluation--69abf58b1885002d46b5468d.md) | 256 | `declaration-track:69abf58b1885002d46b5468dfb61d56fe35dd263cd3327dae3dd811e43af170b` |
| 42 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/fgmodulecatevaluation-apply--650f402301687bf78ab0d983.md) | 261 | `result-track:650f402301687bf78ab0d9834a64bca5479afc246f4d5469dde6657e8ed38e0c` |
| 43 | `theorem` | [coevaluation_evaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/coevaluation-evaluation--173c079574e1abdc0c74890a.md) | 269 | `result-track:173c079574e1abdc0c74890a66b8c39868811f9b0e294da04a9e04deb1325109` |
| 44 | `theorem` | [evaluation_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/evaluation-coevaluation--aafdbce1a1c528a16bf5ba08.md) | 277 | `result-track:aafdbce1a1c528a16bf5ba08e958dd2be8033e469c06e43fa917e6f50583ca2f` |
| 45 | `instance` | [exactPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/exactpairing--c4d1c325ec1c096aae6031a5.md) | 283 | `declaration-track:c4d1c325ec1c096aae6031a52e5f76fed8f88da25cc4ab31f554fc50e3d4300b` |
| 46 | `instance` | [rightDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/rightdual--f7668d98a01c4636b1614ae3.md) | 290 | `declaration-track:f7668d98a01c4636b1614ae34ee92ebdc572ee60f3f8976cc6da870cfe58f4dc` |
| 47 | `instance` | [rightRigidCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.lean/declarations/rightrigidcategory--041c0d0b8503e99beb643a93.md) | 294 | `declaration-track:041c0d0b8503e99beb643a9369701c82719792df2d4bafd6fd25a391432f22a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
