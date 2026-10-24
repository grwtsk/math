# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BohrMollerup.Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfdb7d3c3585c295f3b1919953b4ddae45190113`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/convexon-congr--59ad4133d9d3962ac34ac83c.md) | 55 | `result-track:59ad4133d9d3962ac34ac83c3fe5c60bd9ca57404cf604515c87af3711f14fc2` |
| 2 | `theorem` | [ConcaveOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/concaveon-congr--3bfdf39c37ff8932f58d7421.md) | 60 | `result-track:3bfdf39c37ff8932f58d74213bdf9af8600ec60e91bf882206f98349c707f135` |
| 3 | `theorem` | [StrictConvexOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/strictconvexon-congr--c42d2602ef99c9dbe23e3b1a.md) | 65 | `result-track:c42d2602ef99c9dbe23e3b1a305a02625eb7e08c1b25e1a90dda95470c949634` |
| 4 | `theorem` | [StrictConcaveOn.congr](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/strictconcaveon-congr--53ef6438bb1959a6105441f5.md) | 72 | `result-track:53ef6438bb1959a6105441f577fd1b368c522911bf30c3cb6dac519d6de202bb` |
| 5 | `theorem` | [ConvexOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/convexon-add-const--1f5cb85dcbe5a6f98b8d38bf.md) | 79 | `result-track:1f5cb85dcbe5a6f98b8d38bf26c59aa27d3fffd8db42022fe509496ce2999cb0` |
| 6 | `theorem` | [ConcaveOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/concaveon-add-const--9eba96575cfd7dace8a2c361.md) | 84 | `result-track:9eba96575cfd7dace8a2c3619f769f5cc38a78b93ddb246dd7faccbc75baa080` |
| 7 | `theorem` | [StrictConvexOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/strictconvexon-add-const--c19c9aba757c51c119a1a9e8.md) | 89 | `result-track:c19c9aba757c51c119a1a9e80863d4bf9b1362b529eef6b363a73c129c77ba8b` |
| 8 | `theorem` | [StrictConcaveOn.add_const](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/strictconcaveon-add-const--453cbb52a8b4769e2e936671.md) | 94 | `result-track:453cbb52a8b4769e2e936671b552b931097bddce4585d39935f8aa25cf93b365` |
| 9 | `theorem` | [Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/gamma-mul-add-mul-le-rpow-gamma-mul-rpow-gamma--e9dc7fca799a1654900ec41e.md) | 107 | `result-track:e9dc7fca799a1654900ec41e78bc56e9c002e5bf1cd495221bf327a8100216bf` |
| 10 | `theorem` | [convexOn_log_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/convexon-log-gamma--a342b1d631a91b2353f61479.md) | 165 | `result-track:a342b1d631a91b2353f614794d0d1b3517463fbc1b88add395e73161071541b9` |
| 11 | `theorem` | [convexOn_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/convexon-gamma--0ad5dd379d12d449ed8d1691.md) | 178 | `result-track:0ad5dd379d12d449ed8d1691770ffe86eb05e0b07f67dbec63ddc629a8ed3973` |
| 12 | `def` | [logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/loggammaseq--a70c8f8b828f76c0c92d39c3.md) | 197 | `declaration-track:a70c8f8b828f76c0c92d39c3bab7f63fb734fd6fc2e9dcc328682ab25ca2784e` |
| 13 | `theorem` | [f_nat_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/f-nat-eq--4bd6efde6831764906349045.md) | 203 | `result-track:4bd6efde68317649063490457b16ba1b0a77c0bc84f0e0c7f74957dd1712f272` |
| 14 | `theorem` | [f_add_nat_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/f-add-nat-eq--56eb619cd6be5cfdb7f56c72.md) | 215 | `result-track:56eb619cd6be5cfdb7f56c724b0bb349597e1a4b553513216f435febd3dcd71e` |
| 15 | `theorem` | [f_add_nat_le](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/f-add-nat-le--6f51e41a7aebe89794c53e4a.md) | 227 | `result-track:6f51e41a7aebe89794c53e4aa2889737ae657a2f4f9c0cb2f528951b8004ce78` |
| 16 | `theorem` | [f_add_nat_ge](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/f-add-nat-ge--9e4d278278bf3c6f4996889f.md) | 238 | `result-track:9e4d278278bf3c6f4996889f5c847fea2cac2831e1a9a1abefde5b5caa56320a` |
| 17 | `theorem` | [logGammaSeq_add_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/loggammaseq-add-one--00a0b6d5d8766a5b760ad379.md) | 254 | `result-track:00a0b6d5d8766a5b760ad37992184321aaf70306a3a58683714e352d64466400` |
| 18 | `theorem` | [le_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/le-loggammaseq--51d548476593085db6510cae.md) | 272 | `result-track:51d548476593085db6510cae56fb1b6fc14dd53714bcf094a47297e340240929` |
| 19 | `theorem` | [ge_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/ge-loggammaseq--3e5e87a70eecc6f6a84da0a4.md) | 281 | `result-track:3e5e87a70eecc6f6a84da0a4ac74e32456eb778125caa08d08668780eec77d6d` |
| 20 | `theorem` | [tendsto_logGammaSeq_of_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/tendsto-loggammaseq-of-le-one--f6a71708d40355ba208d2d90.md) | 294 | `result-track:f6a71708d40355ba208d2d90130a944330d8ff8b6b7cb7646641b9d0b5f9e3e0` |
| 21 | `theorem` | [tendsto_logGammaSeq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/tendsto-loggammaseq--e66b17bc5d7c2371e2d8a3d3.md) | 315 | `result-track:e66b17bc5d7c2371e2d8a3d3578415300d17217d7f9d1e76950bc619929cd4f3` |
| 22 | `theorem` | [tendsto_log_gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/tendsto-log-gamma--96464cc87dc27f9120a1fed3.md) | 366 | `result-track:96464cc87dc27f9120a1fed31384ba59dcb607b79bd49a6d4c355649dffdb230` |
| 23 | `theorem` | [eq_Gamma_of_log_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/eq-gamma-of-log-convex--1fd44294f1cc093753cc298f.md) | 381 | `result-track:1fd44294f1cc093753cc298fcf25fe50767a1915587adba5017cb9f9e634c7ea` |
| 24 | `theorem` | [Gamma_two](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/gamma-two--85cf13c14aa212f37de9f1fd.md) | 400 | `result-track:85cf13c14aa212f37de9f1fd92306d104dc985f5874b72764d6a6296e3eb303f` |
| 25 | `theorem` | [Gamma_three_div_two_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/gamma-three-div-two-lt-one--3f36bbe2aef032172599f250.md) | 403 | `result-track:3f36bbe2aef032172599f2501c1c332d92e63fc85e6c43217c3a664e9dcbc843` |
| 26 | `theorem` | [Gamma_strictMonoOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/gamma-strictmonoon-ici--f1fdb37e0793a2ad2b748ddc.md) | 426 | `result-track:f1fdb37e0793a2ad2b748ddcd621ebdccbc39ff4498fe1d75d6cb1c341ffec6d` |
| 27 | `def` | [doublingGamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/doublinggamma--ea11343b4ed647c5d066959a.md) | 449 | `declaration-track:ea11343b4ed647c5d066959a72e58bb69bf76e1950dbcdaf8e15878fc006bb77` |
| 28 | `theorem` | [doublingGamma_add_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/doublinggamma-add-one--3215464443320dd87ea6761e.md) | 453 | `result-track:3215464443320dd87ea6761ed5b8f02b4220d4bbbfd93881b481ddc5ca510b9a` |
| 29 | `theorem` | [doublingGamma_one](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/doublinggamma-one--34a9469bb35101bac9e6c049.md) | 460 | `result-track:34a9469bb35101bac9e6c049522fa4a00a7fd7c003bc3ccae5d13d8d2708b363` |
| 30 | `theorem` | [log_doublingGamma_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/log-doublinggamma-eq--d88ce08d6c73a63749c82229.md) | 465 | `result-track:d88ce08d6c73a63749c822296a0357ad55a17ce5409201d46feff3f42c560b17` |
| 31 | `theorem` | [doublingGamma_log_convex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/doublinggamma-log-convex-ioi--c669d32cceb921260106ac03.md) | 480 | `result-track:c669d32cceb921260106ac031aa40e533629e2707cbc46473335ec62e5a14993` |
| 32 | `theorem` | [doublingGamma_eq_Gamma](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/doublinggamma-eq-gamma--969cc0ae475ac05f19acc864.md) | 506 | `result-track:969cc0ae475ac05f19acc864752249852b9954279e393d4dda3b7d12a2ff47b2` |
| 33 | `theorem` | [Gamma_mul_Gamma_add_half_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/declarations/gamma-mul-gamma-add-half-of-pos--de2ba89feff13f7a7b6d7810.md) | 517 | `result-track:de2ba89feff13f7a7b6d781074e2f8da22da89b3e8be40ac91bf048512b7c8db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
