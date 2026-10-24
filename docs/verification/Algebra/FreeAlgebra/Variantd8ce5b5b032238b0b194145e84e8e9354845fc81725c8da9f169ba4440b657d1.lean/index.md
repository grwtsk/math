# Verification target: GRWTSK.Algebra.FreeAlgebra.Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd943abbe92ee6047d1e6b0dd4b7b9d5c3ed873a",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/index.md) · [Full source](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd943abbe92ee6047d1e6b0dd4b7b9d5c3ed873a`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.UniqueProds` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.NoZeroDivisors` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/pre--d0a0327136600c286019acd7.md) | 67 | `declaration-track:d0a0327136600c286019acd7dca8acfb25d49b15a3e94bef43a9a2f280e5bf3f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--60cb8e8fcfd8736e089ac00a.md) | 75 | `declaration-track:60cb8e8fcfd8736e089ac00a78e1f90ff397b7356e08e97e728134802afaed9f` |
| 3 | `def` | [hasCoeGenerator](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hascoegenerator--222be632120cd1a574559f38.md) | 79 | `declaration-track:222be632120cd1a574559f382ca80e5b1b9f6fdb01f82d84cf66349202e4564b` |
| 4 | `def` | [hasCoeSemiring](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hascoesemiring--206fda20eae3932e4967c975.md) | 82 | `declaration-track:206fda20eae3932e4967c975baba86e31e52fcc2858f72be702f020616997d7d` |
| 5 | `def` | [hasMul](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hasmul--5b1b9ea6d2311adc1985182e.md) | 85 | `declaration-track:5b1b9ea6d2311adc1985182e4ff96c3101ae6fd34da7c1ba2545876c677fefd4` |
| 6 | `def` | [hasAdd](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hasadd--d7ccfd13cfa918b94c6ae052.md) | 88 | `declaration-track:d7ccfd13cfa918b94c6ae052889be09a9999025a922f1aa674040c14558f215d` |
| 7 | `def` | [hasZero](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/haszero--5c3c8849be93b8d52bf9d030.md) | 91 | `declaration-track:5c3c8849be93b8d52bf9d03031b8b63329fcb36f4270222c52cb231455b0929d` |
| 8 | `def` | [hasOne](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hasone--b7298ef1e320c81d11346726.md) | 94 | `declaration-track:b7298ef1e320c81d113467265086ac571e5ccd963499d52099201779f7b94215` |
| 9 | `def` | [hasSMul](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hassmul--45e210ee5663d80e79e238d1.md) | 99 | `declaration-track:45e210ee5663d80e79e238d167607581b76fa99e6926212183fa1eef47b5dd0b` |
| 10 | `def` | [liftFun](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/liftfun--73a78e2951500c3c8ff60ef4.md) | 108 | `declaration-track:73a78e2951500c3c8ff60ef45da098d7e8f5254df4b2ed672cca2eb10b35ad88` |
| 11 | `inductive` | [Rel](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/rel--9e62ea2680398e4fca2ef0cb.md) | 118 | `declaration-track:9e62ea2680398e4fca2ef0cb7e02dd3279d6add7bb2eb81ae972aac41a60f7cf` |
| 12 | `def` | [FreeAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/freealgebra--f146d5e91f675635dff56a3a.md) | 170 | `declaration-track:f146d5e91f675635dff56a3afae4854aac6139405210d027be7e7a6b5560c4b9` |
| 13 | `instance` | [instSMul](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instsmul--57e921e74cf89087805e3204.md) | 180 | `declaration-track:57e921e74cf89087805e32043b9fa8a7b44cf0e3e6cc49db8837a200ae467b6d` |
| 14 | `instance` | [instZero](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instzero--f3328949d48f81d1b4d892b8.md) | 183 | `declaration-track:f3328949d48f81d1b4d892b8afbae4e01c4d7f037e293b5cfcaf9b38387a3e8d` |
| 15 | `instance` | [instOne](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instone--f2278ef6923cccd6a499ab8c.md) | 185 | `declaration-track:f2278ef6923cccd6a499ab8cb9a02e91a9b0b7a83651ab848407987dd81958a9` |
| 16 | `instance` | [instAdd](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instadd--a73ada18aac6d3b58cb15ae3.md) | 187 | `declaration-track:a73ada18aac6d3b58cb15ae3c8001ae7c141051697e069cc4fecc2fd37f7ec9a` |
| 17 | `instance` | [instMul](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instmul--747d620d837a800bf10f89f9.md) | 190 | `declaration-track:747d620d837a800bf10f89f9586fa60fd862f41d1b3dbc9b8daa5a1a9c7ecddb` |
| 18 | `theorem` | [mk_mul](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/mk-mul--f37372105abe39dd42b22d2f.md) | 194 | `result-track:f37372105abe39dd42b22d2fa11f788aad3daeed027c7e488ff438a760a6ce70` |
| 19 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instmonoidwithzero--8a85d312d21288da5e7e7685.md) | 202 | `declaration-track:8a85d312d21288da5e7e7685cd98c5ec1058ae6a5dc6692464772e77cc5af349` |
| 20 | `instance` | [instDistrib](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instdistrib--8a0b78fd8623d9d7ab08fb32.md) | 220 | `declaration-track:8a0b78fd8623d9d7ab08fb320a3e914e361aa51b283e34a81b354bd1f330370b` |
| 21 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instaddcommmonoid--edea078ede557de37c26b116.md) | 228 | `declaration-track:edea078ede557de37c26b116c3f268b3563f4fc30308e5941872f5e22a4c3a15` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--23f3c0f74a4b38b4b4ae4306.md) | 255 | `declaration-track:23f3c0f74a4b38b4b4ae4306634521a43e8032159a739984a753213758052e62` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--f1c49cac4d3b2708834989c5.md) | 263 | `declaration-track:f1c49cac4d3b2708834989c52e40c451d37b3c12a699791e1a5f72993bb861a9` |
| 24 | `instance` | [instAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instalgebra--324732fd70e87b6f37d11797.md) | 266 | `declaration-track:324732fd70e87b6f37d11797a00edaa0b9107364a463f61b2f7c6d7d81bf6d42` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/example--06aac777752db8ce03ab5c0c.md) | 282 | `declaration-track:06aac777752db8ce03ab5c0c220ca262353139942f002ce69499cbd8680994d1` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--b1f04c984f5e0b6fafa784e9.md) | 284 | `declaration-track:b1f04c984f5e0b6fafa784e91728addaf7799595441bdbe970377e802d8c24d8` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--208a684d6a80edb86c1a11f9.md) | 294 | `declaration-track:208a684d6a80edb86c1a11f932851e68f1d6fa5a1c977864a33d89b98149dec6` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--317dd6b474a0c59bdf35a288.md) | 298 | `declaration-track:317dd6b474a0c59bdf35a288383ab1a8dbc3a38be0af0fdf0e67b1fe90f1bf96` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/example--6b906343991ac1bc37f9071e.md) | 304 | `declaration-track:6b906343991ac1bc37f9071e57349b912d8c1f4827182d10abee5beb29dac5f2` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/quot-mk-eq--803c89b4455dc552284042dc.md) | 313 | `result-track:803c89b4455dc552284042dce3d0525ad3d8e27e0c3b01e3b752c59315a3c2fa` |
| 31 | `def` | [liftAux](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/liftaux--dfccfd7d0a438233f0b5582f.md) | 318 | `declaration-track:dfccfd7d0a438233f0b5582f525965a691003ab4e762e9880f552db57a683e37` |
| 32 | `def` | [lift](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/lift--a4b912dbce5eaeb267e6d371.md) | 371 | `declaration-track:a4b912dbce5eaeb267e6d37176825e360d8dee05c2938fba786fc477fc5a0191` |
| 33 | `theorem` | [liftAux_eq](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/liftaux-eq--4dc007e5535c65272c194d37.md) | 402 | `result-track:4dc007e5535c65272c194d37c9061e3375fded16dcf4c886221076b916da95aa` |
| 34 | `theorem` | [lift_symm_apply](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/lift-symm-apply--0edeaac4f1e829c50fd779ea.md) | 407 | `result-track:0edeaac4f1e829c50fd779ea06588bc7044749a6b495727af0b6db94a6beb5d0` |
| 35 | `theorem` | [ι_comp_lift](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/comp-lift--f10eafaab9b3a64c27e797b8.md) | 414 | `result-track:f10eafaab9b3a64c27e797b8ca7ad8dea6c36f8e519b6b9d483ea094cbbe5581` |
| 36 | `theorem` | [lift_ι_apply](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/lift-apply--e9e4ed3f90ff9b08189e92a8.md) | 420 | `result-track:e9e4ed3f90ff9b08189e92a818801d1aeccd2ebb8e428dde5e1afdb2c4d19115` |
| 37 | `theorem` | [lift_unique](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/lift-unique--6501902674c3ccaaf655dafc.md) | 425 | `result-track:6501902674c3ccaaf655dafcb1a52489807f3253453e948496b869188a8f5afb` |
| 38 | `theorem` | [lift_comp_ι](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/lift-comp--e2ba1c45025e651465742280.md) | 440 | `result-track:e2ba1c45025e651465742280f3078d2ea945315ab59c8216c6d6552e3bdc4802` |
| 39 | `theorem` | [hom_ext](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/hom-ext--fd76fc76b30dbbb7bf627dfe.md) | 447 | `result-track:fd76fc76b30dbbb7bf627dfeef69ae986c8be0fce4fb9a8e15f375a0cfbc84c2` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/equivmonoidalgebrafreemonoid--a98e879d183dfbbfa69608b2.md) | 457 | `declaration-track:a98e879d183dfbbfa69608b2c6372603d24b2c62ff21f1570e6efc71e82e9930` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instance--9c65b1f46c8f77b4e3670e6a.md) | 474 | `declaration-track:9c65b1f46c8f77b4e3670e6a6faa26c1e67f885a426b1790b7c180a76454ab86` |
| 42 | `instance` | [instNoZeroDivisors](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instnozerodivisors--0435ae7005f2de50657f4069.md) | 478 | `declaration-track:0435ae7005f2de50657f406979f77806d1c67189acae7aa2a498e182264efa57` |
| 43 | `instance` | [instIsDomain](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/instisdomain--643ae769298a113165ced3a5.md) | 482 | `declaration-track:643ae769298a113165ced3a565a5fcca7259fa045ab12140fae923accd43205a` |
| 44 | `def` | [algebraMapInv](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/algebramapinv--4996c0494edb6300ee555fba.md) | 488 | `declaration-track:4996c0494edb6300ee555fbab51c8fb865b93b9094bb21f11f2219f7342e836c` |
| 45 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/algebramap-leftinverse--fd2c473cdb7fe356b5ec34aa.md) | 491 | `result-track:fd2c473cdb7fe356b5ec34aa7a2082a50753f80874672c91369f2209f29e8c50` |
| 46 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/algebramap-inj--cdbcdb0cd86c3b9aebfbb028.md) | 496 | `result-track:cdbcdb0cd86c3b9aebfbb0289bd08b4430d6166e95dad0cf55fcfee3a2aeefa2` |
| 47 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/algebramap-eq-zero-iff--e76d3894320a2ce3ea8f4e46.md) | 501 | `result-track:e76d3894320a2ce3ea8f4e46c9a9031a9233b6489e25820d07b1ad39fa82be14` |
| 48 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/algebramap-eq-one-iff--c6828910c95b8070d15ceec0.md) | 505 | `result-track:c6828910c95b8070d15ceec08b2565899c8ca25173a13af3c77afe611557a499` |
| 49 | `theorem` | [ι_injective](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/injective--58c0dcdc0576c9a3a6b3c205.md) | 509 | `result-track:58c0dcdc0576c9a3a6b3c205c04d1364b782feddd4dc1677b1dc7a608f43f281` |
| 50 | `theorem` | [ι_inj](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/inj--84c0709c008e42d3342e496d.md) | 520 | `result-track:84c0709c008e42d3342e496d35fbdf92ee8fc2a7554584571c4e6c71d4c56cbf` |
| 51 | `theorem` | [ι_ne_algebraMap](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/ne-algebramap--ea764aca7f2e7c7fbdcf6105.md) | 524 | `result-track:ea764aca7f2e7c7fbdcf6105b3c623c469b936e1cb8c6eedb378a666344913c7` |
| 52 | `theorem` | [ι_ne_zero](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/ne-zero--57d80fa71aba89097d6931ad.md) | 534 | `result-track:57d80fa71aba89097d6931ad7df1411735ea209cf424a0ed58bc31c3bd0b1c01` |
| 53 | `theorem` | [ι_ne_one](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/ne-one--d991de6f837eceb9d5861325.md) | 538 | `result-track:d991de6f837eceb9d5861325d6363dd80e1b177ba2564abb2c671611ab7ec7f8` |
| 54 | `theorem` | [induction](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/induction--66a08fb7806d1fb037f452b9.md) | 555 | `result-track:66a08fb7806d1fb037f452b9f1afb254c6274039ad6011fc1bdaf135a62d46d0` |
| 55 | `theorem` | [adjoin_range_ι](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/adjoin-range--65f50dcec4ccafa0fc10a650.md) | 579 | `result-track:65f50dcec4ccafa0fc10a650024ccf23ac862f12d367ccb4cbc0734024031695` |
| 56 | `theorem` | [_root_.GRWTSK.Algebra.Pre.Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.Algebra.adjoin_range_eq_range_freeAlgebra_lift](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/root-grwtsk-algebra-pre-variant8f900cee879c765b24c95581c29a0f90736406e37--250dbe786c000de256d57f4d.md) | 591 | `result-track:250dbe786c000de256d57f4d2174ffb0c5a6f413646de3cf28e1543cf4305aab` |
| 57 | `theorem` | [_root_.GRWTSK.Algebra.Pre.Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.Algebra.adjoin_eq_range_freeAlgebra_lift](../../../../mathematics/Algebra/FreeAlgebra/Variantd8ce5b5b032238b0b194145e84e8e9354845fc81725c8da9f169ba4440b657d1.lean/declarations/root-grwtsk-algebra-pre-variant8f900cee879c765b24c95581c29a0f90736406e37--44840a2ca289273caea2fab0.md) | 597 | `result-track:44840a2ca289273caea2fab047577ecfb4c52c2ef070d4737e14f649439c6b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
