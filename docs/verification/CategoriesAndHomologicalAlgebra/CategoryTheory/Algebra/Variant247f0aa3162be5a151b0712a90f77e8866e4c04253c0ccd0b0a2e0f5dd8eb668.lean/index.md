# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Algebra.Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0edc2705521d97ed13f9b42d2cec0362d86bfee0",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0edc2705521d97ed13f9b42d2cec0362d86bfee0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra--c4768e30f49eb60aca13b171.md) | 40 | `declaration-track:c4768e30f49eb60aca13b1713d8fc0153ad0fda250f340eb717f44b1f6aa8bdd` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/hom--1f5bbc9f27bf42f26bfd8373.md) | 73 | `declaration-track:1f5bbc9f27bf42f26bfd83730852ed9564ad5ab086a488ed0c8b4db7d738c2a4` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id--e69e9f00d6b911bf9acfc90a.md) | 92 | `declaration-track:e69e9f00d6b911bf9acfc90a34513756cc3f4bdae43b5bb2daf59dfcfbac249f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--59a66591be324907504b2890.md) | 95 | `declaration-track:59a66591be324907504b28902b60771f5efd5dd0655287091a6b2d0988e7395f` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp--cba410d43bc5398e84e133ed.md) | 99 | `declaration-track:cba410d43bc5398e84e133edcbb08f9eb16ed9a26ae20da766428248b33cfb56` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--2684d9a2aef696d144bdf717.md) | 104 | `declaration-track:2684d9a2aef696d144bdf71718421c01846896e14049596fec68890c5678ca1d` |
| 7 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/hom-ext--f01ffb4a4b4c9cff0a549350.md) | 111 | `result-track:f01ffb4a4b4c9cff0a5493500e7ea8dd21fc4211d2b684553ee6b06a38ae0dad` |
| 8 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp-eq-comp--b0857dd4a4aefe415df2b0db.md) | 114 | `result-track:b0857dd4a4aefe415df2b0db742e5fb47f7a2087caa579853f6e690d6c0e2bf8` |
| 9 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id-eq-id--844364f08f3cc762fe97784c.md) | 120 | `result-track:844364f08f3cc762fe97784c661c50aec1b8e46f3fc8dafdb7df358a8868a95a` |
| 10 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id-f--4fc70ed6c26dd4642ec50f93.md) | 125 | `result-track:4fc70ed6c26dd4642ec50f93c9b1e35dfb280987932d6601be475dcfd008f496` |
| 11 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp-f--f541582423d89cab6f529d0e.md) | 130 | `result-track:f541582423d89cab6f529d0e4e4b53f56e326fcec972c6eb29230de9c97c1b5d` |
| 12 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/eilenbergmoore--541203cd2bc33771e3a03641.md) | 136 | `declaration-track:541203cd2bc33771e3a0364119b59253aebc99450fd573b60a2a347239ecc04f` |
| 13 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/isomk--39afb09020d087d07beb08fa.md) | 145 | `declaration-track:39afb09020d087d07beb08fa9b97ec18078f87fc1125d9d8e1e02ff8f4ca8f74` |
| 14 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget--3773b0d931f8e30273d84f0f.md) | 161 | `declaration-track:3773b0d931f8e30273d84f0fc986c7c006b3be796103a0de746f755c33af2ef3` |
| 15 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/free--960e315cf8938fe969f7c0a2.md) | 168 | `declaration-track:960e315cf8938fe969f7c0a23577671e29ebb80898264cb433dc14b973f56b05` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--cce9c5188e40877de23d2dd8.md) | 178 | `declaration-track:cce9c5188e40877de23d2dd866b47022df5d55eebce3042a11346d5778653bdf` |
| 17 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/adj--46eceecf9d9b3672c47f4e93.md) | 186 | `declaration-track:46eceecf9d9b3672c47f4e938cea76af1ba4e76047ed8b9df4a6c75a6e9c176d` |
| 18 | `theorem` | [algebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-iso-of-iso--09ad3ab80ab9fdb645981e2b.md) | 207 | `result-track:09ad3ab80ab9fdb645981e2bbc0800defc0aeb5edc46e8cf54d1b8d30435f43c` |
| 19 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget-reflects-iso--00b10b98dac91729acb57bcc.md) | 215 | `declaration-track:00b10b98dac91729acb57bcc49afcdda0a37a83efb077649eb43ff43778e5ef7` |
| 20 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget-faithful--06bb028a6b8cdc422c08bc5c.md) | 220 | `declaration-track:06bb028a6b8cdc422c08bc5c4191583eb1dcc8af146e556035c867b3f76f658e` |
| 21 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-epi-of-epi--efb1ee7adc7523d6c76a3610.md) | 225 | `result-track:efb1ee7adc7523d6c76a36106269e9b935a5b4122951bf0d7be69d4a3b6e7851` |
| 22 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-mono-of-mono--a3030d8e654152bef5e0784a.md) | 231 | `result-track:a3030d8e654152bef5e0784af73e6ba6499dc7f62ac94b8b2686087abe417349` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--7e8fa975807da2679178cabc.md) | 235 | `declaration-track:7e8fa975807da2679178cabc23d482cc490382a24f316e61e888e979716b5456` |
| 24 | `theorem` | [leftAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/leftadjoint-forget--0f8cd70ece39b9d9c34fa935.md) | 239 | `result-track:0f8cd70ece39b9d9c34fa935f3914b8f65a124dc0d298c8526a39f094780fd63` |
| 25 | `theorem` | [ofRightAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/ofrightadjoint-forget--43da41eefb73a803a768e773.md) | 244 | `result-track:43da41eefb73a803a768e773ffec9e4717e5ad666bff26d7af3408bdb39a9d55` |
| 26 | `def` | [algebraFunctorOfMonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebrafunctorofmonadhom--2317f0bceb9d86238a6b1339.md) | 253 | `declaration-track:2317f0bceb9d86238a6b1339673ecc3aa3e5504674cc4acbe163c821dbce8f84` |
| 27 | `def` | [algebraFunctorOfMonadHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebrafunctorofmonadhomid--c178ae05f6d73dd49901ae74.md) | 271 | `declaration-track:c178ae05f6d73dd49901ae74336813b4307b43362cae3753b256bd62c2c0dab3` |
| 28 | `def` | [algebraFunctorOfMonadHomComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebrafunctorofmonadhomcomp--235b19b56c32704202b7deb4.md) | 278 | `declaration-track:235b19b56c32704202b7deb48f677df4cfe0d9e24fcebedcf08aeef985968264` |
| 29 | `def` | [algebraFunctorOfMonadHomEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebrafunctorofmonadhomeq--65fc3be9fdf13ddc67b6ea7f.md) | 289 | `declaration-track:65fc3be9fdf13ddc67b6ea7f4f1864bdadafe99b328f8f66ff30fb7d30f472ae` |
| 30 | `def` | [algebraEquivOfIsoMonads](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebraequivofisomonads--48266c9ae6781b863abb9ea5.md) | 298 | `declaration-track:48266c9ae6781b863abb9ea5ba69c07d4719d5ec2e9f72560c355f85b83514c6` |
| 31 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-equiv-of-iso-monads-comp-forget--8a4dfd492f375642d3350cab.md) | 310 | `result-track:8a4dfd492f375642d3350cab0bdde474e5c320c74b60855f2a34d438844975f3` |
| 32 | `structure` | [Coalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/coalgebra--f0c81f2e2028dc8d3f126db8.md) | 322 | `declaration-track:f0c81f2e2028dc8d3f126db88c5f132ee41d88aee6ada9408aaf339018bab8ec` |
| 33 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/hom--2ae9b74d59d234806b58d7c7.md) | 357 | `declaration-track:2ae9b74d59d234806b58d7c7b7603b371d8b4bf7d7b12b49b6c60d145c2bdf4f` |
| 34 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id--55d78d2af0edae8bf1a23efe.md) | 376 | `declaration-track:55d78d2af0edae8bf1a23efe3797c2be35b5b5f17cb7330e35fb79d476e203bb` |
| 35 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp--87344b84c01e449995daf4f8.md) | 380 | `declaration-track:87344b84c01e449995daf4f8aca81c38cd8aaecc0ff2746162968d9df01ee7a5` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--c077ac041fc03eb91cb268c5.md) | 386 | `declaration-track:c077ac041fc03eb91cb268c5e6bdae32079dbe18bf89473552a4a11279cc4f92` |
| 37 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/hom-ext--b857c773774ab80949ce199f.md) | 393 | `result-track:b857c773774ab80949ce199f0798d5a59b45533587a7e88f38da9211f939ead3` |
| 38 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp-eq-comp--b73d3e288552eb5514e09355.md) | 396 | `result-track:b73d3e288552eb5514e09355437ed80d9194e95e2b0a7e12b967a6c308f09fe9` |
| 39 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id-eq-id--5992a8ebad1e5927647d64de.md) | 402 | `result-track:5992a8ebad1e5927647d64de655e786dab2e7d7eb8d69a5b7f3e50ccdef6263e` |
| 40 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/id-f--2a70aa1fd26a6ce27c27b003.md) | 407 | `result-track:2a70aa1fd26a6ce27c27b0033c0d95511aa59cc5a57144992104ff3322d555bd` |
| 41 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/comp-f--b2b2f1171393e40b7c66d229.md) | 412 | `result-track:b2b2f1171393e40b7c66d229e8d76b802a416c03388d61c44aa7a8f713c195f1` |
| 42 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/eilenbergmoore--fd5f0e35f28e8295ab0e95c3.md) | 417 | `declaration-track:fd5f0e35f28e8295ab0e95c3619f1da7ecf739c01040e9c947151d26cd4d2b76` |
| 43 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/isomk--5afcd17de54c2452b0c74669.md) | 426 | `declaration-track:5afcd17de54c2452b0c746692ffe87293a8e6ee59b6e2092283eb1bd860c07c3` |
| 44 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget--0fb99163ee9f883406a25d5e.md) | 443 | `declaration-track:0fb99163ee9f883406a25d5e1aa8130f298bb1b82fce19d403f26e40cbfd1924` |
| 45 | `def` | [cofree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/cofree--b52ce26b113937f9993e8aa2.md) | 451 | `declaration-track:b52ce26b113937f9993e8aa22e78db87ec24972b6c2fde5808fba41d3a0c965c` |
| 46 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/adj--e3e85cd61a5ff7e655c83af1.md) | 467 | `declaration-track:e3e85cd61a5ff7e655c83af175cc500a32fa17e15769ae53c27b4ec58390ad59` |
| 47 | `theorem` | [coalgebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/coalgebra-iso-of-iso--ca378339a4a69b43db2307d9.md) | 487 | `result-track:ca378339a4a69b43db2307d91f1e91cbdf552d51e5c4a34dc067756d41128a6e` |
| 48 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget-reflects-iso--28112cc4e7f07b0d5fa8ad90.md) | 495 | `declaration-track:28112cc4e7f07b0d5fa8ad904acf9bc46f0e6539f4be46e27fbe5193e803f02a` |
| 49 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/forget-faithful--de562528e692a1c6b25a3883.md) | 500 | `declaration-track:de562528e692a1c6b25a388341b007720a281ba6b3f9bacf2ea67fca6889a032` |
| 50 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-epi-of-epi--9ac7fb804e9f314fa1fea036.md) | 505 | `result-track:9ac7fb804e9f314fa1fea036b9320e8f131145ffe2818a266d600dbeabfdea2a` |
| 51 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/algebra-mono-of-mono--35fa0009d05d0486a31a6ff3.md) | 511 | `result-track:35fa0009d05d0486a31a6ff30c9df452dac1d33959d521e29c9ab823d1e5985b` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/instance--5fa5c5a7526af15838f2e4be.md) | 515 | `declaration-track:5fa5c5a7526af15838f2e4be5d108a426ada276eb14f12afc560c86fb3767305` |
| 53 | `theorem` | [rightAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/rightadjoint-forget--1db94f8a57f8100e249e2ea4.md) | 519 | `result-track:1db94f8a57f8100e249e2ea47691293f3323e538e4708c1451ecfb98e39fa712` |
| 54 | `theorem` | [ofLeftAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean/declarations/ofleftadjoint-forget--bee1b9d3c183392d9c0d5921.md) | 524 | `result-track:bee1b9d3c183392d9c0d59218ecf459fe7059bfe0b2ece8a6ac09a023c5ef692` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
