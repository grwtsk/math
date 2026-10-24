# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe745aa46c4aa1da472b26268cb111713a380de",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe745aa46c4aa1da472b26268cb111713a380de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RightResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/rightresolution--893f6369fa75542fc888e087.md) | 54 | `declaration-track:893f6369fa75542fc888e0876f1000c1090e6bec86e926ff5e45c7239fbd9477` |
| 2 | `structure` | [LeftResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution--d444be8b4ae1cb8884ba46c4.md) | 63 | `declaration-track:d444be8b4ae1cb8884ba46c4a1791efbf182683b36d122b9cfef9c320d542826` |
| 3 | `lemma` | [RightResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/rightresolution-mk-surjective--0fdfaa13c243cd3e0db8c0d3.md) | 71 | `result-track:0fdfaa13c243cd3e0db8c0d3395bb18e655632aa31c24aa0b5109adf381ce920` |
| 4 | `lemma` | [LeftResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution-mk-surjective--7e464170d11fc6a687f33dfc.md) | 76 | `result-track:7e464170d11fc6a687f33dfc78d30fcaef7427023f1f4abad5abc2742e70b996` |
| 5 | `abbrev` | [HasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hasrightresolutions--8ec0409adf1c9aaf476eb833.md) | 81 | `declaration-track:8ec0409adf1c9aaf476eb83301e1cf72c8597d7c498c9bc5a172d9a42ab88fef` |
| 6 | `abbrev` | [HasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hasleftresolutions--4758383f8277ff5afbe558e6.md) | 84 | `declaration-track:4758383f8277ff5afbe558e635fc88b2093aaf422a3a4fd2f9bb56d414f9cceb` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom--5fd69fdec1ae85a460445141.md) | 92 | `declaration-track:5fd69fdec1ae85a460445141c8d8522c5c5dc4a09b8a215b10f02acb0bfa4ce6` |
| 8 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-id--4c09a15090bc286c9ffb8916.md) | 102 | `declaration-track:4c09a15090bc286c9ffb89164c21e2f604cce4950fd70318c0b598db6fdf73d6` |
| 9 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-comp--03ea3a3f72c8b49dd8fd1671.md) | 110 | `declaration-track:03ea3a3f72c8b49dd8fd1671103f4ab010aed65773e1974a3583b9ca2b6be2c2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/instance--6e449a13546ac8d8b5d10877.md) | 116 | `declaration-track:6e449a13546ac8d8b5d108773f4f0bdd2a24d4ed28b39ae1387dfb520b86ff05` |
| 11 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/id-f--360e98255333aa4ddc7e8cb4.md) | 122 | `result-track:360e98255333aa4ddc7e8cb427b1e54b61c1c928a281699d5a472aed0211c8f4` |
| 12 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/comp-f--a0ba23d06dcdfbeb73768155.md) | 125 | `result-track:a0ba23d06dcdfbeb73768155e1e2e63d89d040987254c72518048d1e515e3c8a` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-ext--393451bc4fdff60cf875e0bb.md) | 129 | `result-track:393451bc4fdff60cf875e0bb21d86c23c736fb2193c94e2863f7196d42dc6595` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom--df90b50e39df6cc4f271847f.md) | 141 | `declaration-track:df90b50e39df6cc4f271847f4d4b6d43a3a7893f2e90d75be80accb70e442394` |
| 15 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-id--0c9c1028bdfe02a1ff6df3fe.md) | 151 | `declaration-track:0c9c1028bdfe02a1ff6df3fe5dfc15c11b2e6649cc66af856ca5a14e5fadef2d` |
| 16 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-comp--e6c1dd5e4779c9df83e614c5.md) | 159 | `declaration-track:e6c1dd5e4779c9df83e614c5f4bc1b405ed3c1aa27d998163b52f8a4bbbd1259` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/instance--f2ae7d5f7104ee6818bd54f5.md) | 165 | `declaration-track:f2ae7d5f7104ee6818bd54f57d10e478b174558c7c250fd8b6152ad0124fcf4f` |
| 18 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/id-f--ff75ea6d04e4441d98b0b32c.md) | 171 | `result-track:ff75ea6d04e4441d98b0b32cf474bbbaa99517e785e8b252456fac8d97a1bb75` |
| 19 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/comp-f--5ab4a5de265a2963f0047bf7.md) | 174 | `result-track:5ab4a5de265a2963f0047bf7875084b58b61c8d2515683290a64c65c9d6c6e33` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hom-ext--4b49ea11f6878745c56a6aed.md) | 178 | `result-track:4b49ea11f6878745c56a6aed2d6732b9cb2f857a2875a6d9dadf2ec0614e5234` |
| 21 | `def` | [LeftResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution-op--feca9fd52719b96bef43ebae.md) | 188 | `declaration-track:feca9fd52719b96bef43ebae63ddfc7a32dd0730cee8867160a052d1ee409a17` |
| 22 | `def` | [LeftResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution-unop--12e733e3cb20fc70697d8edd.md) | 196 | `declaration-track:12e733e3cb20fc70697d8edda1d0c6a7d3e6852214920e154ad4aa80a9d88630` |
| 23 | `def` | [RightResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/rightresolution-op--cc6f897ed383374abbc78b5b.md) | 204 | `declaration-track:cc6f897ed383374abbc78b5bdc7d12d5c19ba4fd5d56d05f898c57a0d140ff00` |
| 24 | `def` | [RightResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/rightresolution-unop--fe204acbf6fcae79fecb7c2d.md) | 212 | `declaration-track:fe204acbf6fcae79fecb7c2db48452c78581a15669280a81338047ec46bd3f9a` |
| 25 | `lemma` | [nonempty_leftResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/nonempty-leftresolution-iff-op--83e193194bbd97c4b4554caf.md) | 220 | `result-track:83e193194bbd97c4b4554caf24c1ea6eda06f4953dcd4122ff30321524857cb7` |
| 26 | `lemma` | [nonempty_rightResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/nonempty-rightresolution-iff-op--dac62ee4ecd05da61dfde8f6.md) | 228 | `result-track:dac62ee4ecd05da61dfde8f6a8787ca052c23f7117eaf51d35c701b569960d75` |
| 27 | `lemma` | [hasLeftResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hasleftresolutions-iff-op--5b20fb299d6b6aed7712f832.md) | 236 | `result-track:5b20fb299d6b6aed7712f832535ed03a991fedca1184c009b1c0cdbf056f99c1` |
| 28 | `lemma` | [hasRightResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/hasrightresolutions-iff-op--d96a79b22fa39de4d199cfb4.md) | 240 | `result-track:d96a79b22fa39de4d199cfb4608a3cbe4ba75e1dc173a99b5cf2048f80e94dab` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/instance--3ea41aeef1dc7137018dc638.md) | 244 | `declaration-track:3ea41aeef1dc7137018dc63808341a40552a84f55dd19fb572836260c63404da` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/instance--fbc8db019276e6b1d1a7266a.md) | 247 | `declaration-track:fbc8db019276e6b1d1a7266a95cdc92b47b176a5e7119c8061642f556845551a` |
| 31 | `def` | [LeftResolution.opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution-opfunctor--9300ae0c2f010fa1f457c9ed.md) | 252 | `declaration-track:9300ae0c2f010fa1f457c9ed635f1639515b727ada2e91027b675019f755072b` |
| 32 | `def` | [RightResolution.unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/rightresolution-unopfunctor--8de9dc02f8df879a443919f7.md) | 262 | `declaration-track:8de9dc02f8df879a443919f7b7f893cdc5755995d96e1ac78f928a41f1056c81` |
| 33 | `def` | [LeftResolution.opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/leftresolution-opequivalence--40942abe927b9b30a5743e99.md) | 273 | `declaration-track:40942abe927b9b30a5743e9955008db77b997f10a8f6035859d0f595a998877f` |
| 34 | `lemma` | [essSurj_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/esssurj-of-hasrightresolutions--515a4702e81fca6ed5c9fe3e.md) | 284 | `result-track:515a4702e81fca6ed5c9fe3eec2a2134bba3ef8e5bb7d45ceac6c3adb4f8ae4c` |
| 35 | `lemma` | [isIso_iff_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/isiso-iff-of-hasrightresolutions--d86f2df4296b617edd2d349a.md) | 290 | `result-track:d86f2df4296b617edd2d349aa7d21fe10189c0685706c672b7f31646ddef613e` |
| 36 | `lemma` | [essSurj_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/esssurj-of-hasleftresolutions--eac5e64bc6c44fe60f98e208.md) | 302 | `result-track:eac5e64bc6c44fe60f98e20863fbe4fb92ed0032705f07e7198422c556c92900` |
| 37 | `lemma` | [isIso_iff_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant5e4bdf8bca7ca551a6c197984e82c28e9d308420f5a0b7cab876e878fca37a36.lean/declarations/isiso-iff-of-hasleftresolutions--cb4e379c88e33bf215f98b02.md) | 308 | `result-track:cb4e379c88e33bf215f98b02fe8509e16ff1820e4085ef1e4228e61f9b1903f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
