# Verification target: GRWTSK.Analysis.MeasureTheory.PartialTraj.Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adaccec323a37a53efc9eb1ca032e26de851337b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adaccec323a37a53efc9eb1ca032e26de851337b`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.PreorderRestrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj--5aebc92d4c70b825a4df9802.md) | 96 | `declaration-track:5aebc92d4c70b825a4df98020e2ecc1d6e29d2c8ae48da0899dc8cfb34c3c031` |
| 2 | `lemma` | [partialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-le--f3e0230dc0db6d8f24b26889.md) | 106 | `result-track:f3e0230dc0db6d8f24b26889e3514a23f7716de3eca3dae6e1a2c5fd91679639` |
| 3 | `lemma` | [partialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-self--de49189db399b0d27b093e2e.md) | 111 | `result-track:de49189db399b0d27b093e2ee172dc226656334fd0caabebd318ecc5caf4c952` |
| 4 | `lemma` | [partialTraj_zero](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-zero--191f8e8cc6fb6a5eeb687deb.md) | 114 | `result-track:191f8e8cc6fb6a5eeb687debf03cdedf7194e647deb5172c0b38ff7bede1751f` |
| 5 | `lemma` | [partialTraj_le_def](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-le-def--9ebcfbd3a1cf3c0df2b350f4.md) | 118 | `result-track:9ebcfbd3a1cf3c0df2b350f44b33df81390c64b62d76497334412ca3ea8724d3` |
| 6 | `lemma` | [partialTraj_succ_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-succ-of-le--154d738658f641f27a3864da.md) | 126 | `result-track:154d738658f641f27a3864da969b45225bab272cd389be5e4db479a5b274006b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/instance--810a4819f5fa24b4e606607d.md) | 134 | `declaration-track:810a4819f5fa24b4e606607d211b9bed496a612f201767f52b1e58685efb9354` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/instance--6fb735b515970b27f0fcc6da.md) | 141 | `declaration-track:6fb735b515970b27f0fcc6da7d0532278b9f041ba0d2dd7274763ff948741b44` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/instance--ca16b085f3376087f4709b24.md) | 148 | `declaration-track:ca16b085f3376087f4709b246b05ee4a2f2a5e12fa983e2ac9491baf4e24708a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/instance--00394a8e565bcee9b5fb4469.md) | 156 | `declaration-track:00394a8e565bcee9b5fb446975ef6c41a469f46d4c3766744be18698bd5c6d3a` |
| 11 | `lemma` | [partialTraj_succ_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-succ-self--affd461b6e7702d6401c98bd.md) | 167 | `result-track:affd461b6e7702d6401c98bde2c727214b1ee8e91e30081a085dbdd414f5939d` |
| 12 | `lemma` | [partialTraj_succ_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-succ-eq-comp--ebcdce99235d4ad12b68dd43.md) | 172 | `result-track:ebcdce99235d4ad12b68dd4394ee24f9790669604dc79431bb080711a15436f4` |
| 13 | `theorem` | [partialTraj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-comp-partialtraj--751efe40dacb5047a8c29808.md) | 179 | `result-track:751efe40dacb5047a8c2980833dee797d20be477ce0e1e3f8801870b480f65f7` |
| 14 | `lemma` | [fst_prod_comp_id_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/fst-prod-comp-id-prod--f3521c4a09454b3008175961.md) | 189 | `result-track:f3521c4a09454b300817596176e1cf898db7c7c0ad52427bf920b25b1e361161` |
| 15 | `lemma` | [partialTraj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-eq-prod--be2e79bc0067ec0dbbd4323c.md) | 202 | `result-track:be2e79bc0067ec0dbbd4323c10ebf09c18a94eaf2abeacd242775d5d1f835bba` |
| 16 | `lemma` | [partialTraj_succ_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-succ-map-frestrictle--10b33427b83daf62fbbd860e.md) | 240 | `result-track:10b33427b83daf62fbbd860ec3c0282bc76736a61caaf246c47f6db949ec3b4f` |
| 17 | `theorem` | [partialTraj_map_frestrictLe₂](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-map-frestrictle--a05a96d5aeac27843febc871.md) | 253 | `result-track:a05a96d5aeac27843febc8715dbd2cdfb96991f96e4a39b83481fc8d6b3d8cf1` |
| 18 | `lemma` | [partialTraj_map_frestrictLe₂_apply](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-map-frestrictle-apply--2f9209f9684bcedd0cd443f3.md) | 262 | `result-track:2f9209f9684bcedd0cd443f33ce73dc3195ac1584ad0f628c4bc418f078b0125` |
| 19 | `lemma` | [partialTraj_comp_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-comp-partialtraj--e8a79a6ae32f79af875131f1.md) | 267 | `result-track:e8a79a6ae32f79af875131f1eb86f3082d010d09b539482124b9cd2cec4ba676` |
| 20 | `lemma` | [partialTraj_comp_partialTraj''](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/partialtraj-comp-partialtraj--edd50b9147e2b2f16433b8a7.md) | 274 | `result-track:edd50b9147e2b2f16433b8a785201f2a01b953837c732be7dfc198474666c657` |
| 21 | `def` | [lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj--9fe8d575ca35ca1b5cf87563.md) | 291 | `declaration-track:9fe8d575ca35ca1b5cf87563f0597984b962a2e8dd660c054b878424d5233b41` |
| 22 | `lemma` | [lmarginalPartialTraj_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-le--55371786da77eccd83911a7d.md) | 295 | `result-track:55371786da77eccd83911a7d05dd4690d5da79f98a0b2777d9494ae248d99590` |
| 23 | `lemma` | [lmarginalPartialTraj_mono](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-mono--00f5467dcdf24a4b6aa70ba4.md) | 305 | `result-track:00f5467dcdf24a4b6aa70ba487e8b593a75d86c5058351ea196632c2561105d8` |
| 24 | `lemma` | [lmarginalPartialTraj_eq_lintegral_map](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-eq-lintegral-map--ec8934bb86cb992c55410ce9.md) | 311 | `result-track:ec8934bb86cb992c55410ce9c83b00ddf0c692d4fd2e48d77e9fba35da85df7b` |
| 25 | `lemma` | [lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-succ--1f615bcb05fe4130c0fe74b1.md) | 325 | `result-track:1f615bcb05fe4130c0fe74b10c76ff31e6b11233b1081408e344eea5ebb03184` |
| 26 | `lemma` | [measurable_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/measurable-lmarginalpartialtraj--e88a3d9c422fa3530bc188d6.md) | 338 | `result-track:e88a3d9c422fa3530bc188d61f5512034d209de74219a73961e900fd4d017642` |
| 27 | `theorem` | [lmarginalPartialTraj_self](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-self--b08a5ceacb3237f386abc2ce.md) | 352 | `result-track:b08a5ceacb3237f386abc2ce99aa2e5132c66be53de14d48276d23b28569067d` |
| 28 | `theorem` | [lmarginalPartialTraj_of_le](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-of-le--886d6d10050c28307fffe44d.md) | 377 | `result-track:886d6d10050c28307fffe44dc179a9068db9f337b3d4a432e839998bdb9cafe9` |
| 29 | `theorem` | [lmarginalPartialTraj_const_right](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/lmarginalpartialtraj-const-right--e225eea61ce4a98801ccf75a.md) | 390 | `result-track:e225eea61ce4a98801ccf75ad253cd6e28d0bd0009602c97214fb0ef08e75508` |
| 30 | `theorem` | [dependsOn_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/declarations/dependson-lmarginalpartialtraj--26df376a94d7c772e0d298dc.md) | 402 | `result-track:26df376a94d7c772e0d298dc60d44a37e9bd6c0403e1001eeab1d0c7e66a5776` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
