# Verification target: GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679f974058ac13750b3829bbe9a8fc6e4ad68ed4",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679f974058ac13750b3829bbe9a8fc6e4ad68ed4`.

Source path: `GRWTSK/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.ZPowers` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupRingAction.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/conjact--35545f19005f2a12a0fd5023.md) | 40 | `declaration-track:35545f19005f2a12a0fd502348246717b40ae54fa791519461dc15572e8b70a6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--c3bedbf30a31acdf56c2c779.md) | 50 | `declaration-track:c3bedbf30a31acdf56c2c779b3f7ded358909a3c365db3d08a8e5b162464da5e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--2467dad7c20b759049522685.md) | 52 | `declaration-track:2467dad7c20b759049522685444d2e5a6dc07f156db04a2c6af04e7e465656e0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--b4fffb1a53612c1d362ab016.md) | 54 | `declaration-track:b4fffb1a53612c1d362ab016aad8ef35e209552616865f4e51932b5f3d565b54` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--b44510b4bebadc9ffaa647d7.md) | 56 | `declaration-track:b44510b4bebadc9ffaa647d78e620e90cea2fe7a58ea3b52128c6b2c198749c0` |
| 6 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/card--f80edec61becd9505b2c5411.md) | 59 | `result-track:f80edec61becd9505b2c5411c5e0bcb5280d980d3965d0b2a783ce1ce6a5a046` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--7f21307393dcab202f03527c.md) | 67 | `declaration-track:7f21307393dcab202f03527c1c22ee2c2bd424886971c37be5ee4fa3cfaf9472` |
| 8 | `def` | [ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact--dca5d044d612ec03faf25f86.md) | 71 | `declaration-track:dca5d044d612ec03faf25f86e952440cb09a49ceb2b62bb3dc5b693b49a9fe28` |
| 9 | `def` | [toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact--0479a4f4d71251ac2451e632.md) | 80 | `declaration-track:0479a4f4d71251ac2451e632d2d1fc41de56ca14fda1bf3af98bbef33a244ce2` |
| 10 | `def` | [rec](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/rec--dad16a241bd9716785a38d87.md) | 85 | `declaration-track:dad16a241bd9716785a38d87d93643929595a9f063d38749c3d2480ee16c7b97` |
| 11 | `theorem` | [«forall»](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/forall--67553d836fa5247adedb4b25.md) | 90 | `result-track:67553d836fa5247adedb4b252c25b0a3c9583732e7c16ddb54cdb66b89f0d88d` |
| 12 | `theorem` | [of_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/of-mul-symm-eq--5db83d8844e229570b6168bd.md) | 95 | `result-track:5db83d8844e229570b6168bd880a06804ee0822bb90ac8cca0c306e895a731a1` |
| 13 | `theorem` | [to_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/to-mul-symm-eq--c1fb5d9381ea7c64452524ff.md) | 100 | `result-track:c1fb5d9381ea7c64452524ff682ce57d52729327b1201bdaee211b19fb99a7ea` |
| 14 | `theorem` | [toConjAct_ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact-ofconjact--73f9abaa5701daf0d848a388.md) | 105 | `result-track:73f9abaa5701daf0d848a38896c2e006fddcaf75e1ead23212a800f567124a9f` |
| 15 | `theorem` | [ofConjAct_toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact-toconjact--a28db0407f604b6092f83387.md) | 110 | `result-track:a28db0407f604b6092f833870a00a9cc91e2c59f95ea0cf26b118d16d301303b` |
| 16 | `theorem` | [ofConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact-one--84444a0a95ea895cba26f9d6.md) | 115 | `result-track:84444a0a95ea895cba26f9d6efec8ea7fd765adcd4355d6ec87ef7c58aa55189` |
| 17 | `theorem` | [toConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact-one--9a99a80a3ed1f3f106a4ab73.md) | 120 | `result-track:9a99a80a3ed1f3f106a4ab736824b155f27c53a76f089974b3723371bef9b91c` |
| 18 | `theorem` | [ofConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact-inv--db8e4bf5ae585e78172dfb41.md) | 125 | `result-track:db8e4bf5ae585e78172dfb41171b4307904622b752316c235bd34a6d8566bf01` |
| 19 | `theorem` | [toConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact-inv--21602bc65e2313edb83463e6.md) | 130 | `result-track:21602bc65e2313edb83463e654e8ffce89e73596e885718873a37570b06dec73` |
| 20 | `theorem` | [ofConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact-mul--ec0dafc48413d77f83a9e3a9.md) | 135 | `result-track:ec0dafc48413d77f83a9e3a942a5596f41555085d8642749651b5ce508d749cc` |
| 21 | `theorem` | [toConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact-mul--da9252b028dae71081f2a46d.md) | 140 | `result-track:da9252b028dae71081f2a46d1ad1e9f79b8216a65c650829702bf4b5a779e5b9` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--a869aedefee4640fda186796.md) | 144 | `declaration-track:a869aedefee4640fda186796ef6c510bb3d1aa9f7c05c67a77a623f0dd5d4355` |
| 23 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smul-def--4cdd4161ce9f5dbd2c00cacf.md) | 146 | `result-track:4cdd4161ce9f5dbd2c00cacf56ee320636d991316400c836dc64be4ca96a11f8` |
| 24 | `instance` | [unitsScalar](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitsscalar--55eb282cb540fe9f0aa2f3de.md) | 158 | `declaration-track:55eb282cb540fe9f0aa2f3de92445c576ae9a4ff77d0f94b1bd92b574111c8b7` |
| 25 | `theorem` | [units_smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/units-smul-def--0673067d3fad44494f263e84.md) | 161 | `result-track:0673067d3fad44494f263e8449effcd9c522884c06d35d5b2593b8a98295876e` |
| 26 | `instance` | [unitsMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitsmuldistribmulaction--7f813bfe279cd3291b9b1249.md) | 167 | `declaration-track:7f813bfe279cd3291b9b12491be60e62d2691bb855eb42cd84792a7cc6df0e07` |
| 27 | `instance` | [unitsSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitssmulcommclass--fc9a9458e71b56eb7baa0e10.md) | 180 | `declaration-track:fc9a9458e71b56eb7baa0e10863226561dd0452097e1932bf9e6de86a0656d0d` |
| 28 | `instance` | [unitsSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitssmulcommclass--9a89688f27596996a7d57e9c.md) | 185 | `declaration-track:9a89688f27596996a7d57e9c4a71203a81d6809e8ff0ef80da508d2fe6be7489` |
| 29 | `instance` | [unitsMulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitsmulsemiringaction--218c022145377720ae0afc72.md) | 199 | `declaration-track:218c022145377720ae0afc7260b56b66d09a792b9c95c678f610c0facd14e016` |
| 30 | `theorem` | [ofConjAct_zero](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/ofconjact-zero--2735d4a95c107d3f88cbca67.md) | 217 | `result-track:2735d4a95c107d3f88cbca676aac883aa6ed383955aa7a93358e1ec943ab5da5` |
| 31 | `theorem` | [toConjAct_zero](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/toconjact-zero--357257511a46c24b42adc9a1.md) | 222 | `result-track:357257511a46c24b42adc9a101b60254d131d1adf506685a9af3572d6ceca37e` |
| 32 | `instance` | [mulAction₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/mulaction--6dfa3bd330c5b01b123a5124.md) | 228 | `declaration-track:6dfa3bd330c5b01b123a51245f2764ed369a7c20c83e3209e8d83acf29bbd395` |
| 33 | `instance` | [smulCommClass₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smulcommclass--e9157a34e878dc94bedf1be0.md) | 237 | `declaration-track:e9157a34e878dc94bedf1be0e7a322922ec3a07e64f8dcf44083f40f17c17e2f` |
| 34 | `instance` | [smulCommClass₀'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smulcommclass--2eddfdd35887bbcfd1f9249a.md) | 242 | `declaration-track:2eddfdd35887bbcfd1f9249a08436da65eae8f03d1186d5232919c00d58ecc17` |
| 35 | `instance` | [distribMulAction₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/distribmulaction--3fd63df626630be8a6dad42b.md) | 256 | `declaration-track:3fd63df626630be8a6dad42bafc8641ff473ebf94f2c93077c9c59316cc42429` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/instance--4323a490b2e4224b44c11033.md) | 274 | `declaration-track:4323a490b2e4224b44c1103353b6fefc0fdb8b28183e79bc7ef83381b3a4605f` |
| 37 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smulcommclass--4e82ae95308b153f4d0701f1.md) | 284 | `declaration-track:4e82ae95308b153f4d0701f1ab6e58eeac19607c382ea45693b8c00a46c5bd91` |
| 38 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smulcommclass--f315cc56f04fcdaaf197b176.md) | 289 | `declaration-track:f315cc56f04fcdaaf197b176f133d3a2361fbbed5edc0fdd7fb169e59aee6cc5` |
| 39 | `theorem` | [smul_eq_mulAut_conj](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/smul-eq-mulaut-conj--bd2bcc171f1a0da60b30b0d6.md) | 295 | `result-track:bd2bcc171f1a0da60b30b0d6ae236ba6270d2e14f90525ca8effee3d38732156` |
| 40 | `theorem` | [fixedPoints_eq_center](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/fixedpoints-eq-center--98837522ace96cbf6c2e8852.md) | 300 | `result-track:98837522ace96cbf6c2e8852288cf029c62238951d13ef3ede999c347a690a57` |
| 41 | `theorem` | [mem_orbit_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/mem-orbit-conjact--1c56b49692990ca79a6b2446.md) | 306 | `result-track:1c56b49692990ca79a6b24460e7fdffa977e25601f00e9a8a7547261ab6bacb3` |
| 42 | `theorem` | [orbitRel_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/orbitrel-conjact--d92007a92e2b8f3b16c6739e.md) | 310 | `result-track:d92007a92e2b8f3b16c6739ebee273b72cf46f11adbaf688147ab7e016ea83da` |
| 43 | `theorem` | [orbit_eq_carrier_conjClasses](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/orbit-eq-carrier-conjclasses--2fd04e5dc16d8481bc709c00.md) | 314 | `result-track:2fd04e5dc16d8481bc709c00b8fccf8809203e8aac27e25b485db088f9b72242` |
| 44 | `theorem` | [stabilizer_eq_centralizer](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/stabilizer-eq-centralizer--481b5d533859340a569a6e76.md) | 319 | `result-track:481b5d533859340a569a6e76db4ec3d7d8628d253078d78a92ecc45e5dc2e45b` |
| 45 | `instance` | [Subgroup.conjAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/subgroup-conjaction--5f504899d4ad710d7bc2cb46.md) | 327 | `declaration-track:5f504899d4ad710d7bc2cb46c9720a8ace0429264747327d569dab68ae4dce43` |
| 46 | `theorem` | [Subgroup.val_conj_smul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/subgroup-val-conj-smul--5c31a694a5e5d9132e7837e7.md) | 331 | `result-track:5c31a694a5e5d9132e7837e73cfb551747a7dc2e4beb554d700905bf0b81d6f8` |
| 47 | `instance` | [Subgroup.conjMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/subgroup-conjmuldistribmulaction--447645917378a799d94ffaf9.md) | 336 | `declaration-track:447645917378a799d94ffaf96c51220ef60dc733182180123a1ff3faf34625e2` |
| 48 | `def` | [_root_.MulAut.conjNormal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/root-mulaut-conjnormal--3be13fc5809727e35fce9091.md) | 342 | `declaration-track:3be13fc5809727e35fce9091e06d73821f722f3fda1d7c1358ad48ce9ae7e61d` |
| 49 | `theorem` | [_root_.MulAut.conjNormal_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/root-mulaut-conjnormal-apply--8fb7a7fd4bc16cb591a382b2.md) | 347 | `result-track:8fb7a7fd4bc16cb591a382b249c0c5370be4568cda086e8d8aecc34951a72922` |
| 50 | `theorem` | [_root_.MulAut.conjNormal_symm_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/root-mulaut-conjnormal-symm-apply--b3641ddb9a2f3eed1f14cc4c.md) | 353 | `result-track:b3641ddb9a2f3eed1f14cc4c4ffd52ad265be7fe4c53a5db66e286de6146f8db` |
| 51 | `theorem` | [_root_.MulAut.conjNormal_inv_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/root-mulaut-conjnormal-inv-apply--cab5960328c33b578f75d3af.md) | 361 | `result-track:cab5960328c33b578f75d3af191d6db3872c5caa3784586c1927f42da773196f` |
| 52 | `theorem` | [_root_.MulAut.conjNormal_val](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/root-mulaut-conjnormal-val--35087df8ad7848ecc3a26d8f.md) | 366 | `result-track:35087df8ad7848ecc3a26d8fe5fedea42ae28f7bcee03acda4ceb1bcda232b26` |
| 53 | `instance` | [normal_of_characteristic_of_normal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/normal-of-characteristic-of-normal--6bf3cef37aab8ecd014fc56d.md) | 371 | `declaration-track:6bf3cef37aab8ecd014fc56d11ef0b26c533dcb5faa1e59c7668d2fac136f9c3` |
| 54 | `def` | [unitsCentralizerEquiv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.lean/declarations/unitscentralizerequiv--425fbac14f9a949640a3ce54.md) | 388 | `declaration-track:425fbac14f9a949640a3ce54c32b4467d3c4af7de9598132cd9c78f485b57185` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
