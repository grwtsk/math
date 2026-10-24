# Verification target: GRWTSK.Algebra.Basic.Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9a124e1328dec7a2652660736f9be0498786f32",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9a124e1328dec7a2652660736f9be0498786f32`.

Source path: `GRWTSK/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FinitePresentation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Generators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Localization` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Presentation](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/algebra-presentation--a7d70eaac8ec089d9fbaa921.md) | 65 | `declaration-track:a7d70eaac8ec089d9fbaa921cd865b1226fa6c29fa63aea30d57c00f34a1f067` |
| 2 | `lemma` | [aeval_val_relation](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aeval-val-relation--65c38dee897c49681b7aeab2.md) | 80 | `result-track:65c38dee897c49681b7aeab29f3c4af2f7ccb5d83501709d64d9cc37316ee3e4` |
| 3 | `lemma` | [relation_mem_ker](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/relation-mem-ker--fcfce8ad8289b589d6a0e7a3.md) | 84 | `result-track:fcfce8ad8289b589d6a0e7a3e4b28fc14b8961088e359fecb3af76aa4dff89cd` |
| 4 | `abbrev` | [Quotient](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/quotient--afc45cff3fa881e83203c5d6.md) | 90 | `declaration-track:afc45cff3fa881e83203c5d6ac300697c4b3224ca51dd61fd43bd2253c918cba` |
| 5 | `def` | [quotientEquiv](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/quotientequiv--ee362d92a035c1b0f1fdc9a7.md) | 93 | `declaration-track:ee362d92a035c1b0f1fdc9a7296f6210fd25fb12b0f3d50f8ca796c6e591e0b7` |
| 6 | `lemma` | [quotientEquiv_mk](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/quotientequiv-mk--a415f13f418c860e79683c66.md) | 98 | `result-track:a415f13f418c860e79683c666c1ceb54a03e5d62603fe23ebb9c7cc9217d092a` |
| 7 | `lemma` | [quotientEquiv_symm](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/quotientequiv-symm--6f77404d53ee5985f1a69f29.md) | 102 | `result-track:6f77404d53ee5985f1a69f2945f9f14074bf5435a4fcb1ef8f9eeabb99818918` |
| 8 | `def` | [dimension](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/dimension--a2c894c5320bce5ccd73b33b.md) | 113 | `declaration-track:a2c894c5320bce5ccd73b33b77e92f28335edd99962e21acdbd381149abe2483` |
| 9 | `class` | [IsFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/isfinite--8d188d72d353675bc1efac86.md) | 118 | `declaration-track:8d188d72d353675bc1efac86cbc9339700db293dc740e3e6928f40fad26fa10c` |
| 10 | `lemma` | [ideal_fg_of_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/ideal-fg-of-isfinite--46f047534ca94107514058cc.md) | 124 | `result-track:46f047534ca94107514058cca83404024c24612ed292547dac201bc5d3de5e18` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/instance--0d28ecd866f4793d643c3852.md) | 130 | `declaration-track:0d28ecd866f4793d643c3852919636b451f51ecc1b7f2a3901d54f86342a2bf9` |
| 12 | `lemma` | [finitePresentation_of_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/finitepresentation-of-isfinite--10dfd97ea2019221f8d2b5c9.md) | 133 | `result-track:10dfd97ea2019221f8d2b5c9f5256527faa5c9fe8f8298580949d43672ac647b` |
| 13 | `def` | [ofFinitePresentation](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/offinitepresentation--8c82e8b4980a7670f937e1d5.md) | 140 | `declaration-track:8c82e8b4980a7670f937e1d539c1e77dc5941124c99996c8d6a474e7aaa12fe9` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/instance--d57c8c09af125e73ff7ca0e2.md) | 155 | `declaration-track:d57c8c09af125e73ff7ca0e2bfb173f447b445ad8f19bb96b0092c647df891a1` |
| 15 | `def` | [ofBijectiveAlgebraMap](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/ofbijectivealgebramap--8aad25a97170d1952436f361.md) | 162 | `declaration-track:8aad25a97170d1952436f36164ad736dbe998d13bf6863c15d490bcada2b5cfa` |
| 16 | `instance` | [ofBijectiveAlgebraMap_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/ofbijectivealgebramap-isfinite--3e090132cfa0b3a24dfb75f2.md) | 175 | `declaration-track:3e090132cfa0b3a24dfb75f29818aef63571f51bbf10e44be9a94fc67a6b0269` |
| 17 | `lemma` | [ofBijectiveAlgebraMap_dimension](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/ofbijectivealgebramap-dimension--18363543a9c4fc5a71015092.md) | 180 | `result-track:18363543a9c4fc5a710150926d57fdb722d288ced1ed25a6697d07f6cfefaab1` |
| 18 | `def` | [id](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/id--c5569a9032fec8aac5879cc0.md) | 187 | `declaration-track:c5569a9032fec8aac5879cc0c3d46dc69711fdcd17677f6cd268c9e6160a52ee` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/instance--e982bd4768908aadc1fa8533.md) | 189 | `declaration-track:e982bd4768908aadc1fa8533aac46dbd0957844803f7c3374b371cbf32db0afc` |
| 20 | `lemma` | [id_dimension](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/id-dimension--40273c3ddf859e13a2eaa873.md) | 191 | `result-track:40273c3ddf859e13a2eaa873f6f3d9ec948dbeda71f7eddb48ad3e3e955b5f66` |
| 21 | `lemma` | [_root_.GRWTSK.Algebra.AlgebraPresentation.Variant289a833edfb1a2b334c4ab21439c2a5ad628ebc594b4721e101b7663250141bc.Algebra.Generators.ker_localizationAway](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/root-grwtsk-algebra-algebrapresentation-variant289a833edfb1a2b334c4ab214--634c746a2f3f92b321811cd9.md) | 200 | `result-track:634c746a2f3f92b321811cd913480831f2910c6de278c319c5f1c6b0df94e55c` |
| 22 | `def` | [localizationAway](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/localizationaway--29058f6249f4f794d2cff7af.md) | 221 | `declaration-track:29058f6249f4f794d2cff7af00f462e8e4a6d567d1223e25fcbf4861d0c9f272` |
| 23 | `instance` | [localizationAway_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/localizationaway-isfinite--d4ac084cefc68a0ab4314c81.md) | 229 | `declaration-track:d4ac084cefc68a0ab4314c81eb951f56ff7336e35b1219550efd4e326d86b92a` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/instance--132c258c523955105cb598fe.md) | 233 | `declaration-track:132c258c523955105cb598feec82049fde5974fb9fe45c0dbf988616f15f56fe` |
| 25 | `lemma` | [localizationAway_dimension_zero](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/localizationaway-dimension-zero--c9888e80c798613c4cbc6319.md) | 237 | `result-track:c9888e80c798613c4cbc63195e1a9175beee990445a3b2a36d7ffb06642c972a` |
| 26 | `lemma` | [span_range_relation_eq_ker_baseChange](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/span-range-relation-eq-ker-basechange--ead705f40cc4f6f9eb5742c7.md) | 246 | `result-track:ead705f40cc4f6f9eb5742c7de775f1e18ee926168c305ae99929575ba34b8e0` |
| 27 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/basechange--acda7a03a8636102365f789c.md) | 301 | `declaration-track:acda7a03a8636102365f789c9df87c02dddf639bf79ff4d2f17d1305b918fea9` |
| 28 | `lemma` | [baseChange_toGenerators](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/basechange-togenerators--9123cef1181ca8df09b2454e.md) | 307 | `result-track:9123cef1181ca8df09b2454e670e40807a112dd6f24b22ab9f80aab367807ff9` |
| 29 | `instance` | [baseChange_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/basechange-isfinite--b3d36868192adde5ab4823b1.md) | 309 | `declaration-track:b3d36868192adde5ab4823b1ee1016dcbe6e12926373723d6ea326fc7e1d306a` |
| 30 | `def` | [aux](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux--34dd3cb10974179508f3928f.md) | 358 | `declaration-track:34dd3cb10974179508f3928f359fc1ef8dec48d438f92e0636e51bdba8e513fc` |
| 31 | `def` | [comp_relation_aux](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp-relation-aux--90d8af7bbb9b77a9ebd674ef.md) | 362 | `declaration-track:90d8af7bbb9b77a9ebd674efe5e941adcf2941b96df583468ad8dacc45347280` |
| 32 | `lemma` | [aux_X](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux-x--3fd02753507becab3a9a8066.md) | 367 | `result-track:3fd02753507becab3a9a80660f9a8939a33102590755da4e760cf45c44c802b8` |
| 33 | `lemma` | [comp_relation_aux_map](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp-relation-aux-map--52bcf210aff7a27da050520c.md) | 371 | `result-track:52bcf210aff7a27da050520c23333a9dc9ee32aeb1e2e4875c80c49e2bfefd9a` |
| 34 | `lemma` | [aux_surjective](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux-surjective--a73e19ef5e071dca0811101e.md) | 382 | `result-track:a73e19ef5e071dca0811101e07ab43154eb1350aa605df66511306958f1fb11a` |
| 35 | `lemma` | [aux_image_relation](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux-image-relation--e0992c799ed790eccd2cb88e.md) | 402 | `result-track:e0992c799ed790eccd2cb88ea600a9a12a93c70cd2104aa0f0d8ee83549a7a83` |
| 36 | `lemma` | [aux_eq_comp](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux-eq-comp--558e04234006a13995c9c327.md) | 412 | `result-track:558e04234006a13995c9c327fe5b11619ae2979c1ae11fbf2ee50074aefc08fd` |
| 37 | `lemma` | [aux_ker](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aux-ker--53052037fb422cf2ed4c1631.md) | 417 | `result-track:53052037fb422cf2ed4c1631177c4b59eaae5e7e66a501a6750ca3428b1ad53e` |
| 38 | `lemma` | [aeval_comp_val_eq](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/aeval-comp-val-eq--681e0b6afa4953a74b1fbac1.md) | 426 | `result-track:681e0b6afa4953a74b1fbac18c7eacab65ab30311d61dd8c621c49f4de21090e` |
| 39 | `lemma` | [span_range_relation_eq_ker_comp](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/span-range-relation-eq-ker-comp--0bd4433a0a0ba3ce00559400.md) | 434 | `result-track:0bd4433a0a0ba3ce005594001895c9d5a1ded6c10753250201c62f5da3fea63a` |
| 40 | `def` | [comp](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp--9f770bfa92122c6d33341235.md) | 450 | `declaration-track:9f770bfa92122c6d33341235f17047d4e3c290ae9da022a3a9838f8dc32c7b96` |
| 41 | `lemma` | [toGenerators_comp](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/togenerators-comp--ce9dd33f36939d375aeac3d3.md) | 457 | `result-track:ce9dd33f36939d375aeac3d335a73cb2a0ad5c7b6c635efc2ce549b97bb5c5a3` |
| 42 | `lemma` | [comp_relation_inr](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp-relation-inr--73651698f5dd72acd1424190.md) | 460 | `result-track:73651698f5dd72acd1424190e505119717c795e1eb97ab3589a696a49cd5f536` |
| 43 | `lemma` | [comp_aeval_relation_inl](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp-aeval-relation-inl--35bdf870cc272a1df796dc2f.md) | 464 | `result-track:35bdf870cc272a1df796dc2f998ed8b521bf906e79fa380f3c3bb87b79e0e878` |
| 44 | `instance` | [comp_isFinite](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/comp-isfinite--24f152496c1e9d23690cb0fc.md) | 470 | `declaration-track:24f152496c1e9d23690cb0fca1a7ec3a7b4916edca1d746e2490993516ba6df3` |
| 45 | `def` | [reindex](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/reindex--bafa4dc248cba63585210e01.md) | 480 | `declaration-track:bafa4dc248cba63585210e01d6a6f2d968bcd2ba562aeca5daa57ac1f35a5207` |
| 46 | `lemma` | [isFinite_reindex_iff](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/isfinite-reindex-iff--e17bab7d8f77ec477889fa69.md) | 497 | `result-track:e17bab7d8f77ec477889fa699aff718092662b9dd322550a9567517c513e1354` |
| 47 | `lemma` | [dimension_reindex](../../../../mathematics/Algebra/Basic/Variant70649adbd9b54b57138c81f729188482cdab7ed2f8af5a5bb581570f405fca8e.lean/declarations/dimension-reindex--16b229031a3d47a2b0b8c0ae.md) | 505 | `result-track:16b229031a3d47a2b0b8c0ae4640391e3ffd0f819ffa302b19edd7d85ef2b6a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
