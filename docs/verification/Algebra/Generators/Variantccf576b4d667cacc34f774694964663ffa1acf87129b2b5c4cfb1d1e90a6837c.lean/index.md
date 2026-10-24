# Verification target: GRWTSK.Algebra.Generators.Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a08976f024735c867be48366f52b72c3bcd4aec7",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a08976f024735c867be48366f52b72c3bcd4aec7`.

Source path: `GRWTSK/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Cotangent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Generators](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/algebra-generators--d60fec60a9a47d92c23c4110.md) | 57 | `declaration-track:d60fec60a9a47d92c23c411048e8287ed0d583b85345629f06635da61f011b53` |
| 2 | `abbrev` | [Ring](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ring--a48ddd94072ccf66862953c8.md) | 80 | `declaration-track:a48ddd94072ccf66862953c8fe71b4496fdc83d7dd926edc6a5ea10c51f720a9` |
| 3 | `def` | [σ](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/anonymous--af0c8b840058c02519e3ae6f.md) | 83 | `declaration-track:af0c8b840058c02519e3ae6f734b1dbdb7126c44995b2231c68d6ed7f9275e2a` |
| 4 | `def` | [Simps.σ](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/simps--e10e0366360bfcec4e15b9ef.md) | 86 | `declaration-track:e10e0366360bfcec4e15b9ef2f9a63973828616c5062b7fbe518dcabd56fddf8` |
| 5 | `lemma` | [aeval_val_σ](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/aeval-val--3a8b63a34f7b620907b4a084.md) | 91 | `result-track:3a8b63a34f7b620907b4a0848c11a727f27251b942011ed7f372093d9495742b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/instance--8a6aedfe0168f46753c63b7b.md) | 93 | `declaration-track:8a6aedfe0168f46753c63b7bef55a237b34cd360b39023e2d6cee999381a18b3` |
| 7 | `lemma` | [algebraMap_apply](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/algebramap-apply--9b4b32a21b932abe04cf6695.md) | 98 | `result-track:9b4b32a21b932abe04cf6695687e06398863e3cf22e753d32b49c40b52d98ad6` |
| 8 | `lemma` | [σ_smul](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/smul--9cf4efd0c9e107e96900e673.md) | 102 | `result-track:9cf4efd0c9e107e96900e673a5847749d1e038bd0a7c4762100841bc46f38105` |
| 9 | `lemma` | [σ_injective](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/injective--5a82316adc9f7232b4c5a41a.md) | 105 | `result-track:5a82316adc9f7232b4c5a41a654b4fd98ee7db31b5784b901d3d7e308d339d49` |
| 10 | `lemma` | [algebraMap_surjective](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/algebramap-surjective--63c74c59bae4b22d5f03040c.md) | 109 | `result-track:63c74c59bae4b22d5f03040c35b5d7348d2773e0118c32df081f831299913f82` |
| 11 | `def` | [ofSurjective](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofsurjective--23cd7c0d65ef5905ebddd90c.md) | 117 | `declaration-track:23cd7c0d65ef5905ebddd90c7fdd89ab6c7e8e8220405fe071bf317b1607f85d` |
| 12 | `def` | [ofSurjectiveAlgebraMap](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofsurjectivealgebramap--108f5096bcbb9b68a5df60fb.md) | 125 | `declaration-track:108f5096bcbb9b68a5df60fb7fb02575318537275485a034ed14dec565dfa3ad` |
| 13 | `def` | [id](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/id--d377341f757161fc725c2430.md) | 132 | `declaration-track:d377341f757161fc725c24301d8406aeaed2e2089d53012da06e992cd8408226` |
| 14 | `def` | [ofAlgHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofalghom--b786af82d830831d93d0185d.md) | 138 | `declaration-track:b786af82d830831d93d0185d03ef2a512159055afb33b27ef20fe706a7967eae` |
| 15 | `def` | [ofSet](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofset--4dfacadc42578a3cce8d0e60.md) | 144 | `declaration-track:4dfacadc42578a3cce8d0e6021f49dd7406d0ff2126227dcb22b211a6b223b5c` |
| 16 | `def` | [self](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/self--9ea312211ba031558ff2368e.md) | 153 | `declaration-track:9ea312211ba031558ff2368e80abc63be7c06e5a5ad89f1a87120e74b3400336` |
| 17 | `def` | [toExtension](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/toextension--d9fe31a83a52c8242c5fad15.md) | 162 | `declaration-track:d9fe31a83a52c8242c5fad151d92156e8478fc18637c86dff2116200fcbe8ee8` |
| 18 | `def` | [localizationAway](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/localizationaway--e55f8a8373f9240057611842.md) | 175 | `declaration-track:e55f8a8373f9240057611842cf7190ea0b23d41461e363045495d53c958fade7` |
| 19 | `def` | [comp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/comp--a2b707916e30d1ecf72f8863.md) | 198 | `declaration-track:a2b707916e30d1ecf72f8863cd4e1ecbdaa63e55f04e84d6da147552c93af083` |
| 20 | `def` | [extendScalars](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/extendscalars--40535d91dd60c21e98a43a78.md) | 215 | `declaration-track:40535d91dd60c21e98a43a782184dd15ca13c36d57eced05767b0887ec244d77` |
| 21 | `def` | [baseChange](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/basechange--e40f0b2835143861af0adbf9.md) | 225 | `declaration-track:e40f0b2835143861af0adbf9eed6504b6877faf6ad6ab53a94979422326beec6` |
| 22 | `def` | [reindex](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/reindex--224248adcbd51f9c2a76fc98.md) | 253 | `declaration-track:224248adcbd51f9c2a76fc988c1b6b233027e37817e61516949cfd1146c1e4a0` |
| 23 | `lemma` | [reindex_val](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/reindex-val--bbba7694e4175c8a743a4be2.md) | 263 | `result-track:bbba7694e4175c8a743a4be2457b28d5b90a18e02fce93d0666a70e0c5856a87` |
| 24 | `structure` | [Hom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom--7375dbf57f1e93c6e3e60eab.md) | 288 | `declaration-track:7375dbf57f1e93c6e3e60eabd3b1403608db6c3b7c1483c5a97c41b7774f7302` |
| 25 | `def` | [Hom.toAlgHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom--dd7f57f9d8e3e7828d751aec.md) | 300 | `declaration-track:dd7f57f9d8e3e7828d751aeccf9c19acb14b724b60bdd89b015e4f4ad30ae4e8` |
| 26 | `lemma` | [Hom.algebraMap_toAlgHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-algebramap-toalghom--9351edfb5a35b12fa551feaf.md) | 304 | `result-track:9351edfb5a35b12fa551feafc0c809fe22f9a81cd6f752091f32e94dc08abc0f` |
| 27 | `lemma` | [Hom.toAlgHom_X](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom-x--1b80c3a1efbf8befcc0b49ce.md) | 314 | `result-track:1b80c3a1efbf8befcc0b49ce88783af0432b76455065c5b2c4384292de8eaba3` |
| 28 | `lemma` | [Hom.toAlgHom_C](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom-c--7f36946e7ab8a431a7f00ef2.md) | 317 | `result-track:7f36946e7ab8a431a7f00ef22c94c5853be390aefc5bc05781945ac233191e8d` |
| 29 | `lemma` | [Hom.toAlgHom_monomial](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom-monomial--ab625c862f7b3174318ff9fb.md) | 320 | `result-track:ab625c862f7b3174318ff9fb864861d02f2ce372a891571675c53b4044f635ae` |
| 30 | `def` | [Hom.equivAlgHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-equivalghom--f251d040bc0fac4c1ee444a0.md) | 329 | `declaration-track:f251d040bc0fac4c1ee444a0077d52017192e434ca1877694749ff1863a19df1` |
| 31 | `def` | [defaultHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/defaulthom--fe7be5e9b94c3cf58d8fbc97.md) | 341 | `declaration-track:fe7be5e9b94c3cf58d8fbc97432a1df76d8efa29812c37afb7bee154c319e3f7` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/instance--e888d413425217381a66c88c.md) | 343 | `declaration-track:e888d413425217381a66c88cfe9c5287a655b5f27a508f56def1d211b116f8ba` |
| 33 | `def` | [Hom.id](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-id--bd629802f939479df65794dd.md) | 347 | `declaration-track:bd629802f939479df65794ddb8b306753a47514d9e8b2190c421929433160dc8` |
| 34 | `lemma` | [Hom.toAlgHom_id](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom-id--c1b19ca82b0c2aa51b27a240.md) | 350 | `result-track:c1b19ca82b0c2aa51b27a240c34f699d42f5cb0f63b58d9c828e7b833cecaf1b` |
| 35 | `def` | [Hom.comp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-comp--77bfd8b3a46cbfbb91d780f3.md) | 356 | `declaration-track:77bfd8b3a46cbfbb91d780f3ff81ee44e27839e6ff56045fce49c1b1e31a5521` |
| 36 | `lemma` | [Hom.comp_id](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-comp-id--4f4f7a18a6c3cfe5064b3e63.md) | 367 | `result-track:4f4f7a18a6c3cfe5064b3e63ae9b017fa6fc16fb1d8c1491ae8b2c8a0ca54c78` |
| 37 | `lemma` | [Hom.id_comp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-id-comp--ec966a48c132e5e0f9bba384.md) | 373 | `result-track:ec966a48c132e5e0f9bba3848194c88bd90576a77ee4c2d8bae1db2a161e446f` |
| 38 | `lemma` | [Hom.toAlgHom_comp_apply](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toalghom-comp-apply--fb5a78cde18648dcb945d168.md) | 380 | `result-track:fb5a78cde18648dcb945d1687a2113db85e7fdaae6a19eeee575bf20bcde6eec` |
| 39 | `def` | [toComp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/tocomp--497c2d59dc1b5f07b52d7968.md) | 396 | `declaration-track:497c2d59dc1b5f07b52d7968e9b5d434d02414e26964287ded82aabe592db47d` |
| 40 | `lemma` | [toComp_toAlgHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/tocomp-toalghom--4e302034d1ac04fd06f9ba12.md) | 400 | `result-track:4e302034d1ac04fd06f9ba129ac3cf486151268f53674ae4201bc4cae534447f` |
| 41 | `def` | [ofComp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofcomp--dcca86f10e269d60a511cae6.md) | 407 | `declaration-track:dcca86f10e269d60a511cae6f69f4b1a8a2ecf2fb5e108fb64ec3224c7efaf6c` |
| 42 | `lemma` | [ofComp_toAlgHom_monomial_sumElim](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofcomp-toalghom-monomial-sumelim--8ba4f3a98041f2ee74d2d888.md) | 411 | `result-track:8ba4f3a98041f2ee74d2d888d3e21fed83f2ac1ce92e7c7fd1f67e5011e70608` |
| 43 | `lemma` | [toComp_toAlgHom_monomial](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/tocomp-toalghom-monomial--7d314a35407fda6f5cf404c5.md) | 422 | `result-track:7d314a35407fda6f5cf404c5fc53751399f08370e2fa8dfbeb0e95e713bfb7db` |
| 44 | `lemma` | [toAlgHom_ofComp_rename](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/toalghom-ofcomp-rename--006f8a7b90f3b8a908c4e205.md) | 430 | `result-track:006f8a7b90f3b8a908c4e2052cb11e6df6ac06602ff6ccccfef15a6ae39a4fc9` |
| 45 | `lemma` | [toAlgHom_ofComp_surjective](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/toalghom-ofcomp-surjective--2ff8707b596436c9ce6feab1.md) | 436 | `result-track:2ff8707b596436c9ce6feab1ed4128585170ec1129c8193c632d76954d7c6650` |
| 46 | `def` | [toExtendScalars](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/toextendscalars--0f1e364c2601335f84a8534c.md) | 460 | `declaration-track:0f1e364c2601335f84a8534c07c4c521dbe9d06e6c7503eddee54f66ec58facb` |
| 47 | `def` | [Hom.toExtensionHom](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toextensionhom--4275d44d59216910fa9d0309.md) | 468 | `declaration-track:4275d44d59216910fa9d0309f0ee674ca95c40de77ccb147b54814e5a62426cd` |
| 48 | `lemma` | [Hom.toExtensionHom_id](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toextensionhom-id--ecb1b6834b524d417d3d910d.md) | 475 | `result-track:ecb1b6834b524d417d3d910d7d7f14f789a5bce82da63ef398c2cdace036a35b` |
| 49 | `lemma` | [Hom.toExtensionHom_comp](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toextensionhom-comp--c8ede91c5982be100747d764.md) | 478 | `result-track:c8ede91c5982be100747d76446f8f2746d82e46c3e5c4bb60b8e003c87264293` |
| 50 | `lemma` | [Hom.toExtensionHom_toAlgHom_apply](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/hom-toextensionhom-toalghom-apply--6721a68ed232aa5342827052.md) | 485 | `result-track:6721a68ed232aa5342827052e02f9e402b4a92ca2c049d0498aa12d15e0b10d2` |
| 51 | `abbrev` | [ker](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ker--0a5ef091e949b0c948eb20a6.md) | 490 | `declaration-track:0a5ef091e949b0c948eb20a6da12020c362255944eda61278eb25668cbe84d9c` |
| 52 | `lemma` | [ker_eq_ker_aeval_val](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ker-eq-ker-aeval-val--8ec157a4bff94c7419ba354e.md) | 492 | `result-track:8ec157a4bff94c7419ba354ea19eb089929c3e72455d6f24ec0b1ece17002221` |
| 53 | `lemma` | [aeval_val_eq_zero](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/aeval-val-eq-zero--efa3739cbe24cfc29edb444a.md) | 497 | `result-track:efa3739cbe24cfc29edb444a88c42c0f3a17c9d65e543b85b28ef3b654d2261a` |
| 54 | `lemma` | [map_toComp_ker](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/map-tocomp-ker--4841e3ebdd24cae106498306.md) | 499 | `result-track:4841e3ebdd24cae1064983067fc62b69f92407b15b5626abca2b04d40192e032` |
| 55 | `def` | [kerCompPreimage](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/kercomppreimage--5ebd0e770cdf9a024a0d518f.md) | 574 | `declaration-track:5ebd0e770cdf9a024a0d518f0a9bba754f6cd9fbf624bcea4b58624237512b9b` |
| 56 | `lemma` | [ofComp_kerCompPreimage](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ofcomp-kercomppreimage--0a054cb522b088a3d874e19c.md) | 590 | `result-track:0a054cb522b088a3d874e19c2b2667a33cb0d0df7041221cdfe6d39b8a93ff91` |
| 57 | `lemma` | [map_ofComp_ker](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/map-ofcomp-ker--98616f66dcbc008ffb16df2d.md) | 605 | `result-track:98616f66dcbc008ffb16df2df3ecfaffdf2087c74abc6d831b7597b936fba68a` |
| 58 | `lemma` | [ker_comp_eq_sup](../../../../mathematics/Algebra/Generators/Variantccf576b4d667cacc34f774694964663ffa1acf87129b2b5c4cfb1d1e90a6837c.lean/declarations/ker-comp-eq-sup--91bbe31e7cc85ef0d50c60c1.md) | 617 | `result-track:91bbe31e7cc85ef0d50c60c1659a41a8ee90277079bcb953f2cf4c43e0886270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
