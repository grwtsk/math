# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a602da3ca6d9bd91bcab784f3ff97816083a8801",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a602da3ca6d9bd91bcab784f3ff97816083a8801`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ZLattice.Covolume` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pi.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.ConvexBody` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Discriminant.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.NumberField.mixedEmbedding.volume_fundamentalDomain_latticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/root-numberfield-mixedembedding-volume-fundamentaldomain-latticebasis--c446076bd467555c8873e640.md) | 44 | `result-track:c446076bd467555c8873e64063b347e9c177df8ce68a9f2cba020ba0cf3c2431` |
| 2 | `theorem` | [_root_.NumberField.mixedEmbedding.covolume_integerLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/root-numberfield-mixedembedding-covolume-integerlattice--ef5575cb3bdbc8979ea0973e.md) | 79 | `result-track:ef5575cb3bdbc8979ea0973e9d73a34143fa7eca199ebe20a0c41d8fe8f6bd1a` |
| 3 | `theorem` | [_root_.NumberField.mixedEmbedding.covolume_idealLattice](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/root-numberfield-mixedembedding-covolume-ideallattice--4018ab123497d0a1d2b17cf3.md) | 89 | `result-track:4018ab123497d0a1d2b17cf3b8bbac753fc48b11f8bae7efd0675ae54ead3b3b` |
| 4 | `theorem` | [exists_ne_zero_mem_ideal_of_norm_le_mul_sqrt_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/exists-ne-zero-mem-ideal-of-norm-le-mul-sqrt-discr--f59f2ae9a3f8eb416468df2f.md) | 100 | `result-track:f59f2ae9a3f8eb416468df2fcbb36dbe7938557463a6cb6f6a7a3d7ebb39a4f9` |
| 5 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_of_norm_le_mul_sqrt_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/exists-ne-zero-mem-ringofintegers-of-norm-le-mul-sqrt-discr--aeedd31ffd148b26d87e8f48.md) | 149 | `result-track:aeedd31ffd148b26d87e8f484eb9bcbaec0849878fde4bbcba2d1b78ef225a90` |
| 6 | `theorem` | [abs_discr_ge'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/abs-discr-ge--453a384d9fba0b823dc2767e.md) | 163 | `result-track:453a384d9fba0b823dc2767e3914654fadf4ccb8ded0bc12e47170ed4f30f647` |
| 7 | `theorem` | [abs_discr_ge_of_isTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/abs-discr-ge-of-istotallycomplex--a23141de3e0919a28768044f.md) | 178 | `result-track:a23141de3e0919a28768044f1b5926a91e3b4e4b00bc74031193a8682fe0d889` |
| 8 | `theorem` | [abs_discr_rpow_ge_of_isTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/abs-discr-rpow-ge-of-istotallycomplex--949242dcfb23de60d6e33fb2.md) | 184 | `result-track:949242dcfb23de60d6e33fb237f1f6663d17d2a977d5414d0e7fd5ce501bbdbf` |
| 9 | `theorem` | [abs_discr_ge](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/abs-discr-ge--1281b995aaae8d636fc239c4.md) | 197 | `result-track:1281b995aaae8d636fc239c4a33d9e2135dbdac51e37dbdabd96a90bfab31555` |
| 10 | `theorem` | [abs_discr_gt_two](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/abs-discr-gt-two--193a62f50c0f1cab12930b79.md) | 226 | `result-track:193a62f50c0f1cab12930b793cdb658e9f5ffd39a59aae435801d77e56c9879b` |
| 11 | `theorem` | [finite_of_finite_generating_set](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/finite-of-finite-generating-set--ea62d9b575f229907bd0e474.md) | 270 | `result-track:ea62d9b575f229907bd0e4749f5640cad5635bfaf2bc18d893b68a98f964950c` |
| 12 | `abbrev` | [rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/rankofdiscrbdd--7ad1933ba841f6bbab80dfea.md) | 285 | `declaration-track:7ad1933ba841f6bbab80dfeab54cf704713a87485a334db4d8de6f48f19874db` |
| 13 | `abbrev` | [boundOfDiscBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/boundofdiscbdd--d0a6fb48b101b78190a2c1cd.md) | 290 | `declaration-track:d0a6fb48b101b78190a2c1cde895144cd6c0e7e8ee67ea7cb7b96e6b0527a245` |
| 14 | `theorem` | [rank_le_rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/rank-le-rankofdiscrbdd--cf98cd9e957af926a4575cbe.md) | 296 | `result-track:cf98cd9e957af926a4575cbee13a8391fb431116245fa31bbcf4edd83e53d455` |
| 15 | `theorem` | [minkowskiBound_lt_boundOfDiscBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/minkowskibound-lt-boundofdiscbdd--1ed935a4e378c704805c03c7.md) | 323 | `result-track:1ed935a4e378c704805c03c73643d25f062b6c372d9d7208fb24b79e97c102f8` |
| 16 | `theorem` | [natDegree_le_rankOfDiscrBdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/natdegree-le-rankofdiscrbdd--a297510814c137142247fc81.md) | 339 | `result-track:a297510814c137142247fc819127661032f0e9794eb6457804416019c476f806` |
| 17 | `theorem` | [finite_of_discr_bdd_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/finite-of-discr-bdd-of-isreal--a62de3feea265de8eb130b11.md) | 348 | `result-track:a62de3feea265de8eb130b113b2a1e66648c3e1bfc5228a0936aa1285e8950a9` |
| 18 | `theorem` | [finite_of_discr_bdd_of_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/finite-of-discr-bdd-of-iscomplex--05dd58d69ebe962aa175c843.md) | 396 | `result-track:05dd58d69ebe962aa175c84347404c3c1e473fb5e0b6eeba317a1c0583ae5c67` |
| 19 | `theorem` | [_root_.NumberField.finite_of_discr_bdd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variante853009fd3ec41e0f17b959efe24f81f55dda434ce1422b0bbcda0269f7d68eb.lean/declarations/root-numberfield-finite-of-discr-bdd--099d8d051baab86e3be215ee.md) | 447 | `result-track:099d8d051baab86e3be215eef3240996ea0504ba215415aa26dd1c1f347010ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
