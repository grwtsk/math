# Verification target: GRWTSK.Analysis.ComplexAnalysis.StrongPNT.Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "610379f6a0b81a1ea6f64616e35c89a4ada2aba8",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `610379f6a0b81a1ea6f64616e35c89a4ada2aba8`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere--145d4c6d85f1eec9e699c2c4.md) | 39 | `result-track:145d4c6d85f1eec9e699c2c4f1e6f246522c13dae9eec458163cafccbae987b9` |
| 2 | `theorem` | [borelCaratheodory'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/borelcaratheodory--f159eab9f095d7c7f374b337.md) | 71 | `result-track:f159eab9f095d7c7f374b337efade0815b63fc4537d48d01e9e08737d45cc092` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/cauchy-formula-deriv--387931ec31f560722d5fda3a.md) | 112 | `result-track:387931ec31f560722d5fda3ae074f454e05a10afb7bf62daf218a0b40114f665` |
| 4 | `lemma` | [DerivativeBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/derivativebound--9ddb1bc07bba8acfdc7ad612.md) | 151 | `result-track:9ddb1bc07bba8acfdc7ad6122c9f97f27a6b90e56abb48df48b97193c60138d7` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/borelcaratheodoryderiv--ed68843309b9d5705503cf61.md) | 193 | `result-track:ed68843309b9d5705503cf6138f7d3974ab66b0d6380bd5a0a2e5b73a7a229fe` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logofanalyticfunction--6887b0002ef151e2b4ff3f75.md) | 249 | `result-track:6887b0002ef151e2b4ff3f750919447b34810f358e216dae8095e2525922de25` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logofanalyticfunction--cf900151d72aff0da7b239d8.md) | 319 | `result-track:cf900151d72aff0da7b239d8428f0794aa8a4be10e46ef5cc92a15a40b907c1d` |
| 8 | `def` | [SetOfZeros](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/setofzeros--b2f531d0e0f4d93e5060f141.md) | 338 | `declaration-track:b2f531d0e0f4d93e5060f1413b777df518dbeeb85565006e5fa5719bbfe3620e` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/finitesetofzeros-mono--a092992ffe5a5d9bef30498d.md) | 342 | `result-track:a092992ffe5a5d9bef30498d3d7727b4d4584e3979564e6175a660389f65d411` |
| 10 | `def` | [ZeroFactor](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/zerofactor--37919d08d06ef75cb169a704.md) | 373 | `declaration-track:37919d08d06ef75cb169a70464b3ac7feab1436e94fb6c80a370acdb2ec6c0d8` |
| 11 | `lemma` | [ZeroFactorization](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/zerofactorization--30ff5f54e49dc7249e333bd5.md) | 402 | `result-track:30ff5f54e49dc7249e333bd5e6277118e0cd1cdcc2fe29b072c3eba6fe226e6d` |
| 12 | `def` | [Cf](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/cf--efb12031cb35de654d3deac6.md) | 446 | `declaration-track:efb12031cb35de654d3deac69d7df20d6ba043991e31592464993d52be42f67a` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/analyticat-finset-prod-sub-pow--5723bef167d6f068da909d8b.md) | 456 | `result-track:5723bef167d6f068da909d8ba539d6f711222149ad89b406e8fdfd974c02235a` |
| 14 | `lemma` | [CfAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/cfanalytic--42256a0b5157bb75d34d2fbf.md) | 479 | `result-track:42256a0b5157bb75d34d2fbf04d9dde0e70195c33edf967c11ccb45cc6bce4ff` |
| 15 | `def` | [BlaschkeB](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/blaschkeb--87b7c16451f280600f246c06.md) | 540 | `declaration-track:87b7c16451f280600f246c06fef3aed419e2f5a2a7de34f53ce2ae70bf1f6d7d` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/blaschkeanalytic--8c4e3e93ce79bae731302bfe.md) | 556 | `result-track:8c4e3e93ce79bae731302bfe6c8f7b42867c55a4e3a0cff8d25e1add06236333` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/blaschkeofzero--e60d49316db0ee9b8528f5fb.md) | 593 | `result-track:e60d49316db0ee9b8528f5fbdeb170cf1d511b8c497e6fcd4f029532457c099a` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/norm-fofzero-le-norm-blaschkeofzero--3a2213ba8178375af5466a57.md) | 629 | `result-track:3a2213ba8178375af5466a57be6870431f83c86712fb08452fad95501d25b21f` |
| 19 | `lemma` | [DiskBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/diskbound--74f9fddb43bc800a3f071ebc.md) | 675 | `result-track:74f9fddb43bc800a3f071ebccc58c286a038ae8425bbc2bb975884ca76cf2bb5` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/blaschkenonzero--0559b7386e6e00ad39f51014.md) | 767 | `result-track:0559b7386e6e00ad39f51014d529cf6a51e1e65234b6f2467b78f06517744539` |
| 21 | `theorem` | [ZerosBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/zerosbound--6d0dc8b10bce11e9d03c301a.md) | 830 | `result-track:6d0dc8b10bce11e9d03c301a60e1b8922daf85a1c959d23673c12fedb1d624de` |
| 22 | `def` | [JBlaschke](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/jblaschke--a70b66a0cbbfc66fa57fbe1c.md) | 870 | `declaration-track:a70b66a0cbbfc66fa57fbe1cd8b0164a9d3ed58d0f7e7193f5ab148d8386a464` |
| 23 | `theorem` | [JBlaschkeDerivBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/jblaschkederivbound--dd11be5f84a7aa8143cf5d21.md) | 902 | `result-track:dd11be5f84a7aa8143cf5d21e4dadbc7956eec89e66cd3a06c45e994406c1642` |
| 24 | `theorem` | [FinalBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/finalbound--1b27d116bc3984867e71b91c.md) | 972 | `result-track:1b27d116bc3984867e71b91c7adbf00230453a9fde77321efdd116204cc2e978` |
| 25 | `theorem` | [ZeroInequality](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/zeroinequality--bf9e4ed65a6eb74f39e1cc75.md) | 1475 | `result-track:bf9e4ed65a6eb74f39e1cc751ff458707c44d3e0dfe72fd27e85e0a3d206ac6e` |
| 26 | `def` | [E](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/e--946f5e5eff960dc17d841383.md) | 1486 | `declaration-track:946f5e5eff960dc17d841383cede387d893f4e8432f9d43bce2bd928d077fcdf` |
| 27 | `lemma` | [EinIoo](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/einioo--76e1797cf7fce77697054129.md) | 1487 | `result-track:76e1797cf7fce776970541295f0a68571ad6ff1c8deefadc2bfeea4ae6fba21d` |
| 28 | `theorem` | [ZeroInequalitySpecialized](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/zeroinequalityspecialized--aa2b8a682b69f786886d7e52.md) | 1488 | `result-track:aa2b8a682b69f786886d7e52f0dbd102aace6a7c135f7d2267b4da1fe05d01c2` |
| 29 | `def` | [DeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/deltat--aa54c6880bae613daff04e48.md) | 1499 | `declaration-track:aa54c6880bae613daff04e48acc9dc234570aa03ffb166c273312b87c481ed2b` |
| 30 | `lemma` | [DeltaRange](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/deltarange--dbbfb1c625b69043804580ea.md) | 1524 | `result-track:dbbfb1c625b69043804580eaee6cb5d2ce640fb19a3169acbcb5ca40f67b730b` |
| 31 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStrip](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetauniformlogsquaredboundstrip--8bad9075ba8575c9d96cca7d.md) | 1641 | `result-track:8bad9075ba8575c9d96cca7d507be69b5c6e3dfd5632ee2682b30467873ef855` |
| 32 | `def` | [F](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/f--13586ac6ea108843cab3d9d2.md) | 1650 | `declaration-track:13586ac6ea108843cab3d9d239caa2e6538e9690a79ca5a132f2b9521c2490d9` |
| 33 | `lemma` | [Fequ](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/fequ--85a89ecdd90f161e226c8a74.md) | 1651 | `result-track:85a89ecdd90f161e226c8a747e6e28e057809cf04d171a87594c5d6a338e84ba` |
| 34 | `lemma` | [LogDerivZetaUniformLogSquaredBoundStripSpec](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetauniformlogsquaredboundstripspec--b3a123793529958c1e5979bf.md) | 1652 | `result-track:b3a123793529958c1e5979bf768090548d9aef20373651f024f96e7e605ad1c6` |
| 35 | `lemma` | [FLogTtoDeltaT](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/flogttodeltat--0e9fee8b89a4150af21cca4e.md) | 1658 | `result-track:0e9fee8b89a4150af21cca4ee04c191a12dbb93ea22efcc5e6ce986748ec8656` |
| 36 | `lemma` | [LogDerivZetaBdd_of_Re_ge_three_halves](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetabdd-of-re-ge-three-halves--146e48b18df250387a776155.md) | 1663 | `result-track:146e48b18df250387a776155d034158bbcc559d8b9d3e13fff8081d8bcd45af5` |
| 37 | `theorem` | [LogDerivZetaUniformLogSquaredBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetauniformlogsquaredbound--165ac668d8b7aa4cfeb3cd78.md) | 1746 | `result-track:165ac668d8b7aa4cfeb3cd78f80b28a6a97c454383d3704de636a93bcc903999` |
| 38 | `theorem` | [LogDerivZetaLogSquaredBoundSmallt](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetalogsquaredboundsmallt--aea47eebab03b7381d367bb6.md) | 1786 | `result-track:aea47eebab03b7381d367bb6964e58563ab6e984c0031282d7e9801425ee61b1` |
| 39 | `def` | [I1New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i1new--2241a12be07c0f486e139efe.md) | 1826 | `declaration-track:2241a12be07c0f486e139efee7352ff29f05e90c1fa1df0c11d83886cefbe234` |
| 40 | `def` | [I5New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i5new--2279b06e660ebf6742105de0.md) | 1840 | `declaration-track:2279b06e660ebf6742105de09206ee0f39447a0c1a19343975f8336aed843d37` |
| 41 | `lemma` | [IntegralLogSqOverTSqBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/integrallogsqovertsqbound--4bf24f20e5c572144db38f87.md) | 1844 | `result-track:4bf24f20e5c572144db38f87d37b69e9b2203af513e4bedb91363e251d568984` |
| 42 | `lemma` | [NormXPowS](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/normxpows--8143e11e9e17845aae9c1f1e.md) | 1897 | `result-track:8143e11e9e17845aae9c1f1e9fa24a9424d53243857cad243c1059a1693ee41f` |
| 43 | `lemma` | [LogDerivZetaBoundForI1](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/logderivzetaboundfori1--80e4ce809066869d990bb5c5.md) | 1902 | `result-track:80e4ce809066869d990bb5c5d20ebd6c3121bfbd311e11d59b375f0e24b9849d` |
| 44 | `lemma` | [I1NewIntegrandBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i1newintegrandbound--b3ffd276c4353f4a2cf002c7.md) | 1920 | `result-track:b3ffd276c4353f4a2cf002c7069a8dc476338b2deddf508e7429d40b9b5bf7fe` |
| 45 | `lemma` | [I1NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i1newbound--33d3d02e04d49c1a45d45881.md) | 1986 | `result-track:33d3d02e04d49c1a45d458816dc74d46b16bce70e5b1a5245201753318332960` |
| 46 | `lemma` | [I5NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i5newbound--69b224790f776921e2b8f335.md) | 2100 | `result-track:69b224790f776921e2b8f3359e2ca13a539a873be526c51cea43b6d0b054d410` |
| 47 | `def` | [I2New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i2new--6104d102b384521599084212.md) | 2134 | `declaration-track:6104d102b3845215990842120e2c761ceb94367ef4906085359e1209f4f42eb2` |
| 48 | `def` | [I4New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i4new--230fb64c591bebe189c1c2ef.md) | 2148 | `declaration-track:230fb64c591bebe189c1c2efd6e64981715959787cadcfe06d53a258d3ec5fc2` |
| 49 | `lemma` | [I2NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i2newbound--e844f0900722cf1b1d5230df.md) | 2181 | `result-track:e844f0900722cf1b1d5230dfbe37eb42a670c048bc29b5797b06ea18b81ef3dc` |
| 50 | `lemma` | [I4NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i4newbound--2db5edb1a447132b119e5682.md) | 2203 | `result-track:2db5edb1a447132b119e5682cf683930062e09470568e223461526d3e78af725` |
| 51 | `def` | [I3New](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i3new--59da74672893dcad41fe5b17.md) | 2235 | `declaration-track:59da74672893dcad41fe5b178f4baecac0c8e50eb6e9daf43001499db95b39e8` |
| 52 | `lemma` | [I3NewBound](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/i3newbound--b261b151133c9b1cedeb2704.md) | 2271 | `result-track:b261b151133c9b1cedeb2704fed484cd6af51e42d54d67c85aacdaa755ccb14b` |
| 53 | `theorem` | [SmoothedChebyshevPull3](../../../../../mathematics/Analysis/ComplexAnalysis/StrongPNT/Variant99da1eb9c40d17d70a98c5b65bae5700d20ff6f2c5260a3bf2f411ac79d54883.lean/declarations/smoothedchebyshevpull3--77d84adc4efd218b49093d04.md) | 2290 | `result-track:77d84adc4efd218b49093d041dd01697c97af1322ece31995029c919d4411009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
