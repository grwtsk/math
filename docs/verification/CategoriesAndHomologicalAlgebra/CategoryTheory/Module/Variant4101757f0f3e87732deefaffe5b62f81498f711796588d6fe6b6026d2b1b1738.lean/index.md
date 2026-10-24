# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a52ef06b82ff9045c653ac31df2de8b5c720a2e4",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a52ef06b82ff9045c653ac31df2de8b5c720a2e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Discrete.LocallyConstant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Module` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Module` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Algebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functortopresheaves--1421557c484e27d0878c1d4a.md) | 46 | `declaration-track:1421557c484e27d0878c1d4a8c756293c4625f7443e526a68e13e1a2b8f4d64f` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functor--a5731ed4b3124646c1fd2e5e.md) | 57 | `declaration-track:a5731ed4b3124646c1fd2e5e1b812d1a3ebd6e7fc1e6d0d62604af359f2d3787` |
| 3 | `abbrev` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functortopresheaves--4bdfcacf17d9f9016acff694.md) | 77 | `declaration-track:4bdfcacf17d9f9016acff694485f1f06056936ccaceb8df17c4bc97d30183141` |
| 4 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functor--738f61692cb53a4cf1a7e6c9.md) | 81 | `declaration-track:738f61692cb53a4cf1a7e6c9dfe64a6827aebf70c5fe7cae819f4e9a2436262b` |
| 5 | `def` | [functorIsoDiscreteAux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscreteaux--8e9960605d85e192f8e577cd.md) | 86 | `declaration-track:8e9960605d85e192f8e577cdccb7cafc1b0e7a56a671d82ffd922f637a66f772` |
| 6 | `def` | [functorIsoDiscreteAux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscreteaux--569202fce933117d5d2b3890.md) | 92 | `declaration-track:569202fce933117d5d2b38909d38741b51928b63b96ac61699152fcc75dc48c7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--bcfaf4a7115680772306d5f7.md) | 98 | `declaration-track:bcfaf4a7115680772306d5f7c025fe048c04f25e411e641ae9f468331c245795` |
| 8 | `def` | [functorIsoDiscreteComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscretecomponents--b67da94ccc104dd1341188b5.md) | 114 | `declaration-track:b67da94ccc104dd1341188b5368b5db916d5bd1fc8589dc9f4cca8c355102668` |
| 9 | `def` | [functorIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscrete--0345ada1a2c9cefa5d051a65.md) | 126 | `declaration-track:0345ada1a2c9cefa5d051a65b12f1a644349cb250b67f94014893e761b49975f` |
| 10 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/adjunction--93680d34bacde907a2e0a91f.md) | 144 | `declaration-track:93680d34bacde907a2e0a91f7cd2dd88fb1e479b4250e4574763c2e7cc3e691a` |
| 11 | `def` | [fullyFaithfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/fullyfaithfulfunctor--a5a7f0f62439920fbde79cc0.md) | 150 | `declaration-track:a5a7f0f62439920fbde79cc09c56c377c7cd5215c0152cc630a4940c0672d030` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--5af17ed85a4576768070649c.md) | 154 | `declaration-track:5af17ed85a4576768070649ca23617710cdb5b0a56a26791075dc965f5f8915c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--2e0b549a21133862af248a0b.md) | 156 | `declaration-track:2e0b549a21133862af248a0b0b8d2a9123d20046a69a438e47ca4bd21a5afd32` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--ee8e70f4bd052468d6409abf.md) | 158 | `declaration-track:ee8e70f4bd052468d6409abf74cc7e6814303540a73d68b7081706482e094be6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--696ee1f6ef019ccda83ec77f.md) | 161 | `declaration-track:696ee1f6ef019ccda83ec77f116d2baa19d610072331404d843bbf80a97f066e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--130a9224af441707f1166455.md) | 164 | `declaration-track:130a9224af441707f116645562cf07cd4a07f563a4f857503f1d595a433ee04d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--1b40c10bfe0522989849c847.md) | 167 | `declaration-track:1b40c10bfe0522989849c8470e357683aa59fad208bd70488c85668594e831b0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--8427e45025ae7b3f9eadee04.md) | 171 | `declaration-track:8427e45025ae7b3f9eadee04bef95caebd405797e21b51ae46838e3b9888b93b` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--08e452ce8c4778cd19695ecb.md) | 175 | `declaration-track:08e452ce8c4778cd19695ecbfc00290e2fc6c290ca51dc1a2963748deb4832b4` |
| 20 | `abbrev` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functortopresheaves--f762d79067ffd405f4c16651.md) | 187 | `declaration-track:f762d79067ffd405f4c1665183ef89d239467cddacd18c5e3a1487498a23fa3f` |
| 21 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functor--b9b89fbaa4482c97a5581ba1.md) | 191 | `declaration-track:b9b89fbaa4482c97a5581ba1e26bfc481a45a99ec244a882ec7f1c87804ff820` |
| 22 | `def` | [functorIsoDiscreteAux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscreteaux--480a31370212910d2de8083b.md) | 196 | `declaration-track:480a31370212910d2de8083ba294f6be71b42bbd2da331c7592ca547515bfc2c` |
| 23 | `def` | [functorIsoDiscreteAux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscreteaux--7053fd2252032c9d03666e79.md) | 202 | `declaration-track:7053fd2252032c9d03666e793c4f3dfe5d485b046917886287af3462ca2c03ed` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--ea288fedac4d1cb61ae44840.md) | 208 | `declaration-track:ea288fedac4d1cb61ae44840c5f5a9ac0cb75836187fe3e27478995c64e36f0f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--973dfafc5fa6b9252b7b2fb4.md) | 212 | `declaration-track:973dfafc5fa6b9252b7b2fb46884a80444087a46593bdc986ac5ccb279fcff97` |
| 26 | `def` | [functorIsoDiscreteComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscretecomponents--85cde0f28d95b6bd0fec0133.md) | 230 | `declaration-track:85cde0f28d95b6bd0fec013328795f926afefee7f10b386d1535de8e80728c49` |
| 27 | `def` | [functorIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/functorisodiscrete--9513d19237bda90cf332d4ef.md) | 242 | `declaration-track:9513d19237bda90cf332d4ef008025063b9493b933506e038e8417be58d5acb6` |
| 28 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/adjunction--04a6021086d0e8effeb9d3ad.md) | 260 | `declaration-track:04a6021086d0e8effeb9d3ad4280df80689d2b100c49c467044bfff51f191267` |
| 29 | `def` | [fullyFaithfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/fullyfaithfulfunctor--0a410b564f4e98ff07992041.md) | 266 | `declaration-track:0a410b564f4e98ff07992041ad8590cf26af5d0af683f16e5f0d0f046f9f7cc4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--dd40b7372d19083e97bbf303.md) | 270 | `declaration-track:dd40b7372d19083e97bbf303f0a37cf622d2ddd9803b36761c44792c4e0d2315` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--0201fa7cedc2608ae937b414.md) | 272 | `declaration-track:0201fa7cedc2608ae937b414d3f67a724cdb6cd0c1490862a0a817a01e2d89a1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--e0252c9789a76f0b3f2d65af.md) | 274 | `declaration-track:e0252c9789a76f0b3f2d65af4327fcd988723e3f69417f005d077dbf11a6df66` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--e3ff1e242cb17586206686aa.md) | 276 | `declaration-track:e3ff1e242cb17586206686aa50540d8bd2e2e8abf031c8d4f806a5f1729e4fe7` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--835052f983d3b88fcc3903c7.md) | 279 | `declaration-track:835052f983d3b88fcc3903c7ed34e6748b8df6632597ca291ab7cc393b985868` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--ca38873b78154d6c7fb88291.md) | 282 | `declaration-track:ca38873b78154d6c7fb88291c8a9bc00991c3c88554843b0f3661c5de9fa3709` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--e900a56946dbf4461522aeb0.md) | 286 | `declaration-track:e900a56946dbf4461522aeb0e3d8fd5ddbf70646033252c4e3251b57661b431f` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant4101757f0f3e87732deefaffe5b62f81498f711796588d6fe6b6026d2b1b1738.lean/declarations/instance--1a0a526d82f27356e5fe4232.md) | 290 | `declaration-track:1a0a526d82f27356e5fe42323d65a480af3ad1990889ad92bc760e5987f7ddc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
