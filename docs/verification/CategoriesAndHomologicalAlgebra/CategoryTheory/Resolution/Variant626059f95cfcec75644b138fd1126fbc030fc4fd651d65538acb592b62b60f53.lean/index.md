# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd92c0487610ac4f36088f5deb0dd277356ebef9",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd92c0487610ac4f36088f5deb0dd277356ebef9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RightResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/rightresolution--079ee536546b3acff94a939c.md) | 62 | `declaration-track:079ee536546b3acff94a939c08d15d3b87300bbced49371d950c4cd12d5a8740` |
| 2 | `structure` | [LeftResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution--51fed46d80c5109fd0ebc7e3.md) | 71 | `declaration-track:51fed46d80c5109fd0ebc7e38e8dc93405a99a3e0b29f06d006611b34e0817c4` |
| 3 | `lemma` | [RightResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/rightresolution-mk-surjective--351726b58ae14102f4da1628.md) | 79 | `result-track:351726b58ae14102f4da16281f35fa3c6f423f455e13e4a9dd0e70309895529f` |
| 4 | `lemma` | [LeftResolution.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution-mk-surjective--930c983f10b64a35ffdf2dd9.md) | 84 | `result-track:930c983f10b64a35ffdf2dd97982e8ab39a649f9bb80467f432a5d2d798b4f5c` |
| 5 | `abbrev` | [HasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hasrightresolutions--1d7738d04ea898affe3425bc.md) | 89 | `declaration-track:1d7738d04ea898affe3425bca0a82a8d9be7d6fed72de711102a364606d91f4b` |
| 6 | `abbrev` | [HasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hasleftresolutions--4f2deeb1f078807a08f156ba.md) | 92 | `declaration-track:4f2deeb1f078807a08f156bafebb6f2ce49376fa217c331f18b6ad28a1e788cb` |
| 7 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom--24ba8c865b28e63780763522.md) | 100 | `declaration-track:24ba8c865b28e637807635227e288d5a4dfc3fa99212431f68c2b8efeba576bf` |
| 8 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-id--33ceb1944b86b514c0cfa97a.md) | 110 | `declaration-track:33ceb1944b86b514c0cfa97a135e2b0d2f5213775cf2c1dc214b0208cca2b936` |
| 9 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-comp--9d81d65ea26b68d36e3367ad.md) | 118 | `declaration-track:9d81d65ea26b68d36e3367ad54886d1b2c3c4af9290dd78f74c7c944ffb0b249` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/instance--f22b83f824b2e872ec39e59a.md) | 124 | `declaration-track:f22b83f824b2e872ec39e59acf01cab63fbeb548ecff74ce2072486770d3c5ee` |
| 11 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/id-f--e65b982778cfcb03e7939c9d.md) | 130 | `result-track:e65b982778cfcb03e7939c9d6a5998e360e413388bab170acced4743cb8b0ec3` |
| 12 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/comp-f--cec27b0716d54c63a3cac7f2.md) | 133 | `result-track:cec27b0716d54c63a3cac7f239041cf979ac4e2279f8f81fc070f3303daa3b9c` |
| 13 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-ext--9ebad80cd6995162241b1d85.md) | 137 | `result-track:9ebad80cd6995162241b1d85c3f8e59c9d76a66f0a74ce57d40e0829d488a6b5` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom--f8d3225b778c6ad5fd57b623.md) | 149 | `declaration-track:f8d3225b778c6ad5fd57b62321f702390875da4a0796d28f88aaffec24889a85` |
| 15 | `def` | [Hom.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-id--bfc07222d950369846cac93d.md) | 159 | `declaration-track:bfc07222d950369846cac93db2354cceb3a88eebc1b7be18ba142cf3ba6a2314` |
| 16 | `def` | [Hom.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-comp--3058ed84bd05e67b6b7e1f4d.md) | 167 | `declaration-track:3058ed84bd05e67b6b7e1f4df7e351195362cc313bab14035f5a7bb88e1cac1b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/instance--d068a02e4f120462893db469.md) | 173 | `declaration-track:d068a02e4f120462893db4695dae511b0b79d39cb73db997a1bbcb18e0ccc4c0` |
| 18 | `lemma` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/id-f--bebc369ef3d46f45c1700766.md) | 179 | `result-track:bebc369ef3d46f45c17007660ca3fdbefced485c785696a5e129156ffd7a7892` |
| 19 | `lemma` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/comp-f--652e561e365be884e87de32a.md) | 182 | `result-track:652e561e365be884e87de32ae055d41a39b8b7684c328b9e402ec59d0ca40ec1` |
| 20 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hom-ext--7518b067c0602ef0b0b39c73.md) | 186 | `result-track:7518b067c0602ef0b0b39c7346cea61fd79d61f50e20c284d89b9c9f4cd95bc2` |
| 21 | `def` | [LeftResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution-op--f8b1625c4689aeeed87a97bd.md) | 196 | `declaration-track:f8b1625c4689aeeed87a97bd7a9dcba798aabcb57c32039650a6bca973db06f5` |
| 22 | `def` | [LeftResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution-unop--0c15a3c473b2d37edc29a6e5.md) | 204 | `declaration-track:0c15a3c473b2d37edc29a6e59fed3d1e2126faf5ab3f580fe482b6db263474f1` |
| 23 | `def` | [RightResolution.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/rightresolution-op--ecf6850a48f9c37239333e0d.md) | 212 | `declaration-track:ecf6850a48f9c37239333e0d7bc1ce3afc420739a8749418e2a2459a54bdfb2a` |
| 24 | `def` | [RightResolution.unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/rightresolution-unop--163079b1b871491349e4df90.md) | 220 | `declaration-track:163079b1b871491349e4df9045d7f5991c357f22c9bd9a10b1cf3f6baea11663` |
| 25 | `lemma` | [nonempty_leftResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/nonempty-leftresolution-iff-op--24c4d9f9b9ae744f6579e737.md) | 228 | `result-track:24c4d9f9b9ae744f6579e737e897efe4753997ba95728d2f3449439a18e4020d` |
| 26 | `lemma` | [nonempty_rightResolution_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/nonempty-rightresolution-iff-op--f81d6e5af6e464c408bcb9ba.md) | 236 | `result-track:f81d6e5af6e464c408bcb9bacb931ce72393f4ce989dadb2f071beaab3353a7c` |
| 27 | `lemma` | [hasLeftResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hasleftresolutions-iff-op--10f115716c62103688a206f3.md) | 244 | `result-track:10f115716c62103688a206f35a9a44171ef23b3acbe4b048d2f625731d00a5f1` |
| 28 | `lemma` | [hasRightResolutions_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/hasrightresolutions-iff-op--2a753ca615e5c953f548136f.md) | 248 | `result-track:2a753ca615e5c953f548136f9bd7339cc4d348a12eb0f7c15078240e3d6b4743` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/instance--e577dc620fe953fb36bb1b9e.md) | 252 | `declaration-track:e577dc620fe953fb36bb1b9e11fea3d6e6dace8b56a8ae7cfdee653124eac9dd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/instance--d507aad94d155b99029dee43.md) | 255 | `declaration-track:d507aad94d155b99029dee4315a0da3ea74072a8618abd0a051ecb3ad96713d5` |
| 31 | `def` | [LeftResolution.opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution-opfunctor--cc20071a77c85e0209361dfa.md) | 260 | `declaration-track:cc20071a77c85e0209361dfa5b889b1d641438363c07172e1f12939eb2b5b150` |
| 32 | `def` | [RightResolution.unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/rightresolution-unopfunctor--4b95b2f022337953207e13cf.md) | 270 | `declaration-track:4b95b2f022337953207e13cf15c99ef7135ac03586efab36cd81b7dfb0e991ec` |
| 33 | `def` | [LeftResolution.opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/leftresolution-opequivalence--d643d6bbd8b79037e609f054.md) | 281 | `declaration-track:d643d6bbd8b79037e609f0543befc7e80557028bc38e86e64bf3aa47a68dcdeb` |
| 34 | `lemma` | [essSurj_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/esssurj-of-hasrightresolutions--4e6b3f9a3a4facb8432e2ef5.md) | 292 | `result-track:4e6b3f9a3a4facb8432e2ef58ed76b59bd59939636c74ee788bf34b99b63da87` |
| 35 | `lemma` | [isIso_iff_of_hasRightResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/isiso-iff-of-hasrightresolutions--5836a830c77c4e5de91d6b49.md) | 298 | `result-track:5836a830c77c4e5de91d6b4999ad3e623fae3c405852e836acfc5a31405871ed` |
| 36 | `lemma` | [essSurj_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/esssurj-of-hasleftresolutions--f2d28857a8dde3d984fea310.md) | 310 | `result-track:f2d28857a8dde3d984fea31006152e400aae9a38844adbc1504ddf978f2d460a` |
| 37 | `lemma` | [isIso_iff_of_hasLeftResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean/declarations/isiso-iff-of-hasleftresolutions--6d8a6ab4c6f1e70a1769551a.md) | 316 | `result-track:6d8a6ab4c6f1e70a1769551afddb476cee397bffdb59ee4d9f6c28f56c34fc78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
