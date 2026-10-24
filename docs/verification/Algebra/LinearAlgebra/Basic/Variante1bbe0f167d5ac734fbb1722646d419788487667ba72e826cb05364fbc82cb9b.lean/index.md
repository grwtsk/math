# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86fe840267129d24beb1635d2dc4b3f5660502cb",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86fe840267129d24beb1635d2dc4b3f5660502cb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Subcategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Coevaluation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FGModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecat--6160f1ec5928164a487ebac5.md) | 57 | `declaration-track:6160f1ec5928164a487ebac59521a0c4af3f49b71b7fb9b20e08f4e28aeafbd4` |
| 2 | `def` | [FGModuleCat.carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecat-carrier--548ec8029d0dcde7394dfe7a.md) | 67 | `declaration-track:548ec8029d0dcde7394dfe7a6b81698673affa84111ed3b25c76102cbd4a53b7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--8be5473757fae1cbd572eb8a.md) | 69 | `declaration-track:8be5473757fae1cbd572eb8abf128d25be3b36e547b8287c55354b9f6970acd3` |
| 4 | `lemma` | [obj_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/obj-carrier--e5bd63e1e7e4853af179fa1a.md) | 74 | `result-track:e5bd63e1e7e4853af179fa1a7d3e2a4cb71dcc12b2fa8299c56ceec72d5ef09c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--032b870b48e61dbafcffaa39.md) | 76 | `declaration-track:032b870b48e61dbafcffaa39ef547afb3975f37a31c0a45f51a8d92d8532b9f4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--076f4734dd8251ef62b81197.md) | 80 | `declaration-track:076f4734dd8251ef62b811979c818c802ef2cd69f94d8a1cd062190fe9b200ab` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--bb1a2b8835d65ed749cc65b6.md) | 84 | `declaration-track:bb1a2b8835d65ed749cc65b6782ecad02db64f41ffcf2b0902ec2ca87dc5a3bc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--dd58f4ca4222af8120b76974.md) | 88 | `declaration-track:dd58f4ca4222af8120b769745801b679127962d0b10d1ebbca1123d34cfc441a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--e0b6a8472287850330c2a164.md) | 91 | `declaration-track:e0b6a8472287850330c2a164ac6b28a942d44683401af255c7c955b9eab5ad35` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--f27c92bae2af2c5e97c9ad02.md) | 95 | `declaration-track:f27c92bae2af2c5e97c9ad02a3cc2883bf1908144ba63666215ddadd020a446b` |
| 11 | `instance` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/finite--863ea24793cbe77760f8ecbd.md) | 107 | `declaration-track:863ea24793cbe77760f8ecbd1a00d3390bfac170e2b6e811200d51812934fa63` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--16aa69c518d462add11d8294.md) | 111 | `declaration-track:16aa69c518d462add11d829456c5b5ba0a215cb3f0191df21b3fb431ef3bdc47` |
| 13 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/of--767c6464581bf2d409a44417.md) | 115 | `declaration-track:767c6464581bf2d409a444171c1a293484b8be5e82761097d03e2a0e7ee6f54e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--f40569eb509442b7b6c5498e.md) | 119 | `declaration-track:f40569eb509442b7b6c5498ea18c4b7ab66c28be7dcf63b89b99bab48761b517` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--87cdf52058ab07b78a47ab49.md) | 122 | `declaration-track:87cdf52058ab07b78a47ab49a096390b9219bfe0fc16ca516188147258a4aac9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--0c67af8200ec1e2e513432d0.md) | 126 | `declaration-track:0c67af8200ec1e2e513432d07efe76acd6a42e470985aead719523373c8c8c5a` |
| 17 | `def` | [isoToLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/isotolinearequiv--79f31e94c0e9d8917ea3aae4.md) | 133 | `declaration-track:79f31e94c0e9d8917ea3aae439eace2f911556f610202fd0c1bb06bc92403d88` |
| 18 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.FGModuleCat.Variant86508420669ffb829c6224b8353d76439d7c9428d192c5164e326c7f7b04fa69.LinearEquiv.toFGModuleCatIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/root-grwtsk-algebra-linearalgebra-fgmodulecat-variant86508420669ffb829c6--5882484114ae515c8ea10a2b.md) | 139 | `declaration-track:5882484114ae515c8ea10a2b15da823aaa4d32ceef3317b512337a5af162ec41` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--a0e15e9b8da55a4322e220e9.md) | 155 | `declaration-track:a0e15e9b8da55a4322e220e9a8c9886a774b28fcc1a7921c8d1d8bbbf1572ab1` |
| 20 | `instance` | [monoidalPredicate_module_finite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/monoidalpredicate-module-finite--a2741f29c968d7aae3f1e1f8.md) | 159 | `declaration-track:a2741f29c968d7aae3f1e1f8cd320e5dc8b66e9051213d1718800583bf42e9cd` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--e6768559febb622683853d35.md) | 165 | `declaration-track:e6768559febb622683853d356e7471898ab515f6bfd69ec263a30378619de879` |
| 22 | `lemma` | [tensorUnit_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/tensorunit-obj--aa950627b8198bb2f9766763.md) | 171 | `result-track:aa950627b8198bb2f9766763e74be3b2793da36042d6f5a0f696e576d887b67d` |
| 23 | `lemma` | [tensorObj_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/tensorobj-obj--9c1a8368f2fbdb410bd1478b.md) | 172 | `result-track:9c1a8368f2fbdb410bd1478b2d64227f4a0d1b35b9ca45243433863628de0747` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--39b8acb379a19a592c6a685f.md) | 174 | `declaration-track:39b8acb379a19a592c6a685fbd018f38fe83efa005277ade6a633612d46dcfe4` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--6a7230ac5187bedeca7777a6.md) | 178 | `declaration-track:6a7230ac5187bedeca7777a654df838db58efdd3717958893d41e58eb6547b61` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--fc20fac49ca906872bdbd49b.md) | 182 | `declaration-track:fc20fac49ca906872bdbd49b339dccb58a8b0ef9f9e46d58a60e7daa9cbba905` |
| 27 | `def` | [forget₂Monoidal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/forget-monoidal--0b3ae6f208b4e79336d91a97.md) | 187 | `declaration-track:0b3ae6f208b4e79336d91a9785844757235220e89d7beaed319ca19835145aab` |
| 28 | `instance` | [forget₂Monoidal_faithful](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/forget-monoidal-faithful--f25d7ddb02d9fd7c6a4ae6ba.md) | 191 | `declaration-track:f25d7ddb02d9fd7c6a4ae6ba875f2ea5220602cc73ee40959bfb4da3871e6a4f` |
| 29 | `instance` | [forget₂Monoidal_additive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/forget-monoidal-additive--d9a86a340962a4580855f3e2.md) | 197 | `declaration-track:d9a86a340962a4580855f3e239ef887bf66ef2372553260ad16e362825a92a33` |
| 30 | `instance` | [forget₂Monoidal_linear](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/forget-monoidal-linear--97843c12f7b7c2c4e6a4ea31.md) | 203 | `declaration-track:97843c12f7b7c2c4e6a4ea3115f7c537bd406088eb7ce2e79aa3842d9d8d002b` |
| 31 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/iso-conj-eq-conj--74d3d48fb0acbdced71b288b.md) | 209 | `result-track:74d3d48fb0acbdced71b288b1c960ff6efb9d780fddfda92f3ec3b6336a9c3f6` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--ae7426c3d7aff2798c24d133.md) | 220 | `declaration-track:ae7426c3d7aff2798c24d1330620dc0598957ffa5b251cb427ebe8dc4aab7d40` |
| 33 | `instance` | [closedPredicateModuleFinite](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/closedpredicatemodulefinite--5770ec3085c4cb359de20e8e.md) | 223 | `declaration-track:5770ec3085c4cb359de20e8e400434069d261e4185cb3827d65a358df5106805` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/instance--a189f5b1f4e9fd27adf10888.md) | 228 | `declaration-track:a189f5b1f4e9fd27adf10888b8f6636521dc709ff8b09330c3a937c3351cb85d` |
| 35 | `theorem` | [ihom_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/ihom-obj--757f77df8109aea20175d6bc.md) | 236 | `result-track:757f77df8109aea20175d6bc41b7f39fd81db185c3d9a3197e9676fe9d13a966` |
| 36 | `def` | [FGModuleCatDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatdual--0493ea4a4308b194f6a90190.md) | 241 | `declaration-track:0493ea4a4308b194f6a90190dc73037ee6410812cc6f0ae689c1e3befe3693df` |
| 37 | `lemma` | [FGModuleCatDual_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatdual-obj--2dc95cecc1ee5c0d6af36408.md) | 245 | `result-track:2dc95cecc1ee5c0d6af36408ce8a4088f02a0cd60aae1985b425f5bea0ec0d1a` |
| 38 | `lemma` | [FGModuleCatDual_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatdual-coe--8a5f1ff6ef8f7e1ddf6de723.md) | 247 | `result-track:8a5f1ff6ef8f7e1ddf6de723beb23015839f750afa7e1ed5e11d65a588606d06` |
| 39 | `def` | [FGModuleCatCoevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatcoevaluation--14a81b818f1cb91b79a6e576.md) | 252 | `declaration-track:14a81b818f1cb91b79a6e57677c092933675842eda11b3117e55e015d7f65e56` |
| 40 | `theorem` | [FGModuleCatCoevaluation_apply_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatcoevaluation-apply-one--2859ab4e0d5613eb8afd65e2.md) | 256 | `result-track:2859ab4e0d5613eb8afd65e23713e08d97a2b0c890555058686eab8efbd0bb10` |
| 41 | `def` | [FGModuleCatEvaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatevaluation--181853a05db53582c433f26a.md) | 264 | `declaration-track:181853a05db53582c433f26ae9240ffc6b6cd9c03ba68cd6d2c060640b65f7d2` |
| 42 | `theorem` | [FGModuleCatEvaluation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/fgmodulecatevaluation-apply--1e234c869c5587a8ffc67e0c.md) | 269 | `result-track:1e234c869c5587a8ffc67e0c7793b65b842808315941e6bc4ac12fe0d7d43970` |
| 43 | `theorem` | [coevaluation_evaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/coevaluation-evaluation--522a230b1f9b5c94ab75b8f4.md) | 277 | `result-track:522a230b1f9b5c94ab75b8f4cfa43af05fdc5e8c36008a744e094961cec6f74c` |
| 44 | `theorem` | [evaluation_coevaluation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/evaluation-coevaluation--6c21a0e362ede22fe0412038.md) | 285 | `result-track:6c21a0e362ede22fe0412038edfc669ee5695d68af8aa1de41004aed3ca690cf` |
| 45 | `instance` | [exactPairing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/exactpairing--5a55da89d51e4e968d1f2eee.md) | 291 | `declaration-track:5a55da89d51e4e968d1f2eeec99470f7a726309f17339694868e39b79c7b8ec4` |
| 46 | `instance` | [rightDual](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/rightdual--63ec656d4e589340c042740b.md) | 298 | `declaration-track:63ec656d4e589340c042740b1926ae1e73b586276f77a0a2d9e4968d69f78b7b` |
| 47 | `instance` | [rightRigidCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variante1bbe0f167d5ac734fbb1722646d419788487667ba72e826cb05364fbc82cb9b.lean/declarations/rightrigidcategory--b804d2f0288fa2a6f3d69908.md) | 302 | `declaration-track:b804d2f0288fa2a6f3d699089e51999252d5590bac2c47b147fd34369b84a31a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
