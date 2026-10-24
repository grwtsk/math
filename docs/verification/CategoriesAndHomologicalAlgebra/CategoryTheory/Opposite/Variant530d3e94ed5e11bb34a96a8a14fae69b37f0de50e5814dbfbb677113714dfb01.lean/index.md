# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0161c09459b84a37b4b6ef3c186d955519033f6",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0161c09459b84a37b4b6ef3c186d955519033f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ImageToKernel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.QuasiIso` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [imageToKernel_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/imagetokernel-op--30b669f2f2b52a876c13a1db.md) | 39 | `result-track:30b669f2f2b52a876c13a1db9aa0e0a9870b192b48d55a1e82d3a7ec368f44d0` |
| 2 | `theorem` | [imageToKernel_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/imagetokernel-unop--ec673d6fa2ada5a65364e7b4.md) | 51 | `result-track:ec673d6fa2ada5a65364e7b4129b570f44ce40969505343510ffc6d1ecb06ed2` |
| 3 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/op--f0535e7274113d0d766e7e7e.md) | 75 | `declaration-track:f0535e7274113d0d766e7e7e7a5712698ed485ef034911681f0c9407886effc0` |
| 4 | `def` | [opSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opsymm--17c5f06519c17736bf4a1757.md) | 83 | `declaration-track:17c5f06519c17736bf4a1757938c79871cbb1d195ccdf7678ca950b1ef12ee12` |
| 5 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unop--81f1f2b68c2c66f54a7a43b0.md) | 91 | `declaration-track:81f1f2b68c2c66f54a7a43b04592a0ac137387b950a4a1457ca2159707940120` |
| 6 | `def` | [unopSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopsymm--6459e6315f3521f233bc55ca.md) | 99 | `declaration-track:6459e6315f3521f233bc55ca6ccc95daf23f68bcc10908dfcd763099bf47f06b` |
| 7 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opfunctor--584d61fa471a7cdd58db7277.md) | 109 | `declaration-track:584d61fa471a7cdd58db7277babeb7cd18a828d5ec69a2446024bf5d1d4cc574` |
| 8 | `def` | [opInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opinverse--a7b80da9855dd2e7dc41735c.md) | 117 | `declaration-track:a7b80da9855dd2e7dc41735cd72efb162f60d2278dc161334ef237ec30e7a517` |
| 9 | `def` | [opUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opunitiso--969e00bbe0a80fb7f70ceaac.md) | 124 | `declaration-track:969e00bbe0a80fb7f70ceaaccca8aafb4753c811d23e47c8cf1a26a7da688f7a` |
| 10 | `def` | [opCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcounitiso--3731a315e5692eb879813679.md) | 138 | `declaration-track:3731a315e5692eb87981367976a70686a3526118e983922034a844149d6975dc` |
| 11 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opequivalence--21e003473afc87e1a3e6d02a.md) | 145 | `declaration-track:21e003473afc87e1a3e6d02a46f67e738dbf470201714622122146c2c4f56de1` |
| 12 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopfunctor--73ca776291749d9859fadffc.md) | 158 | `declaration-track:73ca776291749d9859fadffcf021dfb9b8067deb7ff36f0d3f7806959fb4b09f` |
| 13 | `def` | [unopInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopinverse--b68303ee41bda09b17d92a61.md) | 166 | `declaration-track:b68303ee41bda09b17d92a61f27f2a6ee89a0e821b981112c2b361ce0dedd7b4` |
| 14 | `def` | [unopUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopunitiso--31429e30059b31dee938cddc.md) | 173 | `declaration-track:31429e30059b31dee938cddc61af46ec74a5f535d7022f2ea4154b2bb869d57a` |
| 15 | `def` | [unopCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopcounitiso--620d589c0f55d7b748745072.md) | 187 | `declaration-track:620d589c0f55d7b748745072637fcc1743e4a6741084f508356e6de226c55909` |
| 16 | `def` | [unopEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopequivalence--4f45c1cb5ffba18727eae657.md) | 194 | `declaration-track:4f45c1cb5ffba18727eae657bb18aa10581416abdb2c549ac65eb9ae59682152` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--0d44399e491367d0a076781a.md) | 205 | `declaration-track:0d44399e491367d0a076781a313a965a1af015aa029a39be0a76be22ce748aee` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--d4524f3a4d308505a2e4d5df.md) | 209 | `declaration-track:d4524f3a4d308505a2e4d5df8dee87f993cb9f59637a1d9975f709d034a26b2d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--073dd67d4f7b1eaf4ce877e7.md) | 213 | `declaration-track:073dd67d4f7b1eaf4ce877e738b64b42b24caed4218e3a45070b7f77ea910c18` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--510a6cb6f24cf7ab4414687e.md) | 218 | `declaration-track:510a6cb6f24cf7ab4414687ecf56556bad7b02842cbbb31dbd74df578644fdf1` |
| 21 | `lemma` | [quasiIsoAt_opFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/quasiisoat-opfunctor-map-iff--c7963c7210695734870c5fb9.md) | 226 | `result-track:c7963c7210695734870c5fb94a0682c36cc5c2abdd7a4f08ab01d77f0b468065` |
| 22 | `lemma` | [quasiIsoAt_unopFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/quasiisoat-unopfunctor-map-iff--cb21b5ea3246af96711af263.md) | 234 | `result-track:cb21b5ea3246af96711af26347f3c34518db9bd07fcfcce17e9bde8ad8a71e41` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--afab1fbb4b1da24f91fa751e.md) | 241 | `declaration-track:afab1fbb4b1da24f91fa751e669bdc5d857f49c6402262541746047be64d4e4c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--fbbaaddb5d16f781bf01ce6d.md) | 247 | `declaration-track:fbbaaddb5d16f781bf01ce6d50d384b0477c5538ddb9360ac4198494541f7c56` |
| 25 | `lemma` | [quasiIso_opFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/quasiiso-opfunctor-map-iff--66612232ec7a82c9d72772ce.md) | 254 | `result-track:66612232ec7a82c9d72772ce87764de9a7b1f3cec845a9281232049724dcce29` |
| 26 | `lemma` | [quasiIso_unopFunctor_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/quasiiso-unopfunctor-map-iff--2c774767f97241c6c72890b0.md) | 261 | `result-track:2c774767f97241c6c72890b05b52532472210d90d54a89fdac5ee79f48c53d3e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--5c90e1c38d307b9d85a300ea.md) | 267 | `declaration-track:5c90e1c38d307b9d85a300eadc1992a003202f7880973c85c2a7feb1a283d624` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/instance--e9e62e6161bd8b2f8b2ca232.md) | 273 | `declaration-track:e9e62e6161bd8b2f8b2ca2322f9cca9e92ca147465728b675091a8b0f1177f78` |
| 29 | `lemma` | [ExactAt.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/exactat-op--cbf2e67817f114f0814e2f86.md) | 279 | `result-track:cbf2e67817f114f0814e2f86a330993cd6cbfd9115225f941ccc7e7d7adebf9a` |
| 30 | `lemma` | [ExactAt.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/exactat-unop--6d6fd065b7cab32137db32c2.md) | 283 | `result-track:6d6fd065b7cab32137db32c27901ad948967c70710c1d1553d54fe1351c25131` |
| 31 | `lemma` | [exactAt_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/exactat-op-iff--c68e78a1480f25233958f92b.md) | 288 | `result-track:c68e78a1480f25233958f92b7a2b0df24cb06726dce16fef8840dda7c66708d1` |
| 32 | `lemma` | [Acyclic.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/acyclic-op--2e044549c321e23047cb04f4.md) | 292 | `result-track:2e044549c321e23047cb04f44d1bdd4f2fdf94d24bfd8f000d2c7a76106e8bc3` |
| 33 | `lemma` | [Acyclic.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/acyclic-unop--dec2e6c655cdf36423b0f2bb.md) | 296 | `result-track:dec2e6c655cdf36423b0f2bb387bc3ed7073514e1f8dadd69a1fa3a3589f6900` |
| 34 | `lemma` | [acyclic_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/acyclic-op-iff--d5bb9a170beb22917c5d7ae3.md) | 301 | `result-track:d5bb9a170beb22917c5d7ae32db9a6c2cc6e691654051243aa72f4acbb62befc` |
| 35 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/homologyop--f9c66c89c1f553ba0d64d18c.md) | 307 | `declaration-track:f9c66c89c1f553ba0d64d18cf28a91b10c41a0bb0bb15488d8ebaef9b6cda492` |
| 36 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/homologyunop--e1f3de2e179cc3540b681a3a.md) | 313 | `declaration-track:e1f3de2e179cc3540b681a3a6fadbac358f379a848df7c81e90dc94632b471ac` |
| 37 | `def` | [cyclesOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/cyclesopiso--8b31ed23d1bbe98d063a9d5f.md) | 322 | `declaration-track:8b31ed23d1bbe98d063a9d5ff59545d98be92e74a0a6521601575dccb3fecc9f` |
| 38 | `def` | [opcyclesOpIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcyclesopiso--c21077545177699cbd8c0dd3.md) | 326 | `declaration-track:c21077545177699cbd8c0dd3a3b70c4153dc380613c4fe6bb55fae2098cc2539` |
| 39 | `lemma` | [opcyclesOpIso_hom_toCycles_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcyclesopiso-hom-tocycles-op--08eed9f4ccc0e3161e12e70d.md) | 332 | `result-track:08eed9f4ccc0e3161e12e70d71d7d65a872b3df8ae0e94da0ac92621e45dc077` |
| 40 | `lemma` | [fromOpcycles_op_cyclesOpIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/fromopcycles-op-cyclesopiso-inv--7166f12510847b52e6e73082.md) | 340 | `result-track:7166f12510847b52e6e7308265f523b5ba0376ddd848e321e3d9cbb73c0dda63` |
| 41 | `lemma` | [homologyOp_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/homologyop-hom-naturality--9b60b52a835eb8c220a54bb0.md) | 355 | `result-track:9b60b52a835eb8c220a54bb0967cbda7839beb755d51e5b3171192d855814ed9` |
| 42 | `lemma` | [opcyclesOpIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcyclesopiso-hom-naturality--f01422a09117536ac5ac624e.md) | 361 | `result-track:f01422a09117536ac5ac624e95759269d5c8a14ea9be419866e95d494ee38359` |
| 43 | `lemma` | [opcyclesOpIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcyclesopiso-inv-naturality--57d135d12628b0e8810738f4.md) | 367 | `result-track:57d135d12628b0e8810738f40d06c51ef0192d93800d5c153716217db582c8f0` |
| 44 | `lemma` | [cyclesOpIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/cyclesopiso-hom-naturality--c2e1e266453000be23d6f960.md) | 373 | `result-track:c2e1e266453000be23d6f9606c6e54bcdf5fd18936e2a0a83da2d8820def3a74` |
| 45 | `lemma` | [cyclesOpIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/cyclesopiso-inv-naturality--28db97f13d4f5c658db374a7.md) | 379 | `result-track:28db97f13d4f5c658db374a7145ec28612aed141d0c495e91a3177f56954a24b` |
| 46 | `def` | [cyclesOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/cyclesopnatiso--56ae5953ed156b853841de13.md) | 392 | `declaration-track:56ae5953ed156b853841de13a24d1ff159f08b878d2aae98c64fb36cba78fb88` |
| 47 | `def` | [opcyclesOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opcyclesopnatiso--82a3cf35c894759f64be292f.md) | 398 | `declaration-track:82a3cf35c894759f64be292f31d8bed60e084873e652e9706e0a4fb86f939c4a` |
| 48 | `def` | [homologyOpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/homologyopnatiso--626e577e8e8d987f926d8b50.md) | 404 | `declaration-track:626e577e8e8d987f926d8b5005db7f779b892fc4a7c6e6480b7dcd8911a05c8b` |
| 49 | `instance` | [opFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/opfunctor-additive--f184d52768e539c00f27d3ea.md) | 417 | `declaration-track:f184d52768e539c00f27d3ea6656dbbd2618691447e34fd96fab5bc4ee5f0f97` |
| 50 | `instance` | [unopFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant530d3e94ed5e11bb34a96a8a14fae69b37f0de50e5814dbfbb677113714dfb01.lean/declarations/unopfunctor-additive--5aa7432db25b487e5b211883.md) | 419 | `declaration-track:5aa7432db25b487e5b2118833f2deae6f67d6b60b8e6f05bf63a3bc0a9a1beaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
