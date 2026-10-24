# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sobolev.Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675dc93f16d8b1a2bd23fe52e0dca7b8567fd25f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675dc93f16d8b1a2bd23fe52e0dca7b8567fd25f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CS](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/cs--800e9f2dd794615d0102ccfe.md) | 18 | `declaration-track:800e9f2dd794615d0102ccfe6a4aa5ed85e083597eaabb8802f8acaf256e6bd9` |
| 2 | `structure` | [trunc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/trunc--08be7980dff4e5c7b07dbfab.md) | 23 | `declaration-track:08be7980dff4e5c7b07dbfab56ba342a9b24e1aeb9d5e396cec2feaa5b4ed133` |
| 3 | `structure` | [W1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/w1--a23dbdc69b2f7d54a22b048f.md) | 27 | `declaration-track:a23dbdc69b2f7d54a22b048f593898fc1af1443bfd9e00c9b58d28176f206013` |
| 4 | `abbrev` | [W21](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/w21--125102b3aa18f2b1c7ad7855.md) | 32 | `declaration-track:125102b3aa18f2b1c7ad785574130a8ae001eb8530fa93a46e7417780e7c4b8f` |
| 5 | `def` | [funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/funscale--1889114b1ae27806de0188c5.md) | 36 | `declaration-track:1889114b1ae27806de0188c501dc2bb865a6515668f3b765437944f0f336d574` |
| 6 | `lemma` | [contDiff_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/contdiff-ofreal--2f0d4d70f7d4a18ab7d4e498.md) | 38 | `result-track:2f0d4d70f7d4a18ab7d4e4980cdab8650eded7be9df6365045706fc5a235923c` |
| 7 | `lemma` | [tendsto_funscale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/tendsto-funscale--9850aff61d9fac43054faf3d.md) | 45 | `result-track:9850aff61d9fac43054faf3db125006f8aa223dea348070058a20fbb54f15d5e` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--43808d92e5a2405eb572d50c.md) | 55 | `declaration-track:43808d92e5a2405eb572d50ce383923aa9e4323bee715b096dfdb82233cd64a5` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--190295af459b95e48ccff673.md) | 57 | `declaration-track:190295af459b95e48ccff6730360f56086ffb4d0d2c32c8001af5bed516e293e` |
| 10 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/neg--76ecd06d5c4fbf22649a7ec1.md) | 60 | `declaration-track:76ecd06d5c4fbf22649a7ec10eb7771b9e1dbe6b010d0368ccee0d856c85bd45` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--4fa49087a88ce9251c01964c.md) | 65 | `declaration-track:4fa49087a88ce9251c01964c06de4f1f588d0ec17300b401535206d603fdc694` |
| 12 | `lemma` | [neg_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/neg-apply--22705ad530b32d756dcf6dc9.md) | 67 | `result-track:22705ad530b32d756dcf6dc9bd8cf6e8f6c370f3b9010d722a3e4afff140f5ea` |
| 13 | `def` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/smul--1d0840b58b8f5648cc309370.md) | 69 | `declaration-track:1d0840b58b8f5648cc3093706336c484294e72acd4eb5d44ee25b59ac99323f2` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--5be7500ecbd2eb6386409e1f.md) | 71 | `declaration-track:5be7500ecbd2eb6386409e1f07671c0176f912184a217d34a464e2ef4b5c6a4d` |
| 15 | `lemma` | [smul_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/smul-apply--afef18e916d984e1166f2831.md) | 73 | `result-track:afef18e916d984e1166f283125884bb8d0eac6e5bd881b41d44e2e204e91602d` |
| 16 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/continuous--a91ea51548538a9e3324ce2c.md) | 75 | `result-track:a91ea51548538a9e3324ce2c204d8d3118b5da790b5261974e9f1277940cd433` |
| 17 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv--6d27fcfdd8025f0fd198cbad.md) | 77 | `declaration-track:6d27fcfdd8025f0fd198cbadc23d410ea9c27d5fc104f27e7d0922b0c07985a3` |
| 18 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hasderivat--2eeae935dd0e89d4ab85757f.md) | 82 | `result-track:2eeae935dd0e89d4ab85757fe9357008bd1eee7c91fd250bac2121441dcac987` |
| 19 | `lemma` | [deriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv-apply--1d6a1dbdd2849ab75c33db04.md) | 85 | `result-track:1d6a1dbdd2849ab75c33db047485c22f33a3cfdb7978decaa146824637219a2a` |
| 20 | `lemma` | [deriv_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv-smul--e25cd3d6bed868433f6dd145.md) | 87 | `result-track:e25cd3d6bed868433f6dd145ca5daa38e4adea4e43dedccfeb776023de0ad294` |
| 21 | `def` | [scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/scale--5b378c712ca3975a46a1d095.md) | 90 | `declaration-track:5b378c712ca3975a46a1d095a325f6088ae4c2465ed11a5a69aac097e120279d` |
| 22 | `lemma` | [deriv_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv-scale--975e968023bcfe3cfa2300f8.md) | 97 | `result-track:975e968023bcfe3cfa2300f8d6783fa63d0e6d0d92b8ee9a7cfb93c7e3ec9cb4` |
| 23 | `lemma` | [deriv_scale'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv-scale--618c628be674c706251d1fad.md) | 104 | `result-track:618c628be674c706251d1fadb85d522372607f17e08ac51923d2ffe897ca3a2f` |
| 24 | `lemma` | [hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hasderivat-scale--287c3e8e168bc8287b514af1.md) | 109 | `result-track:287c3e8e168bc8287b514af1584511f5314e60686313771bc671b7924840074f` |
| 25 | `lemma` | [tendsto_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/tendsto-scale--6c71114d0fc3c5ff0a1d7092.md) | 113 | `result-track:6c71114d0fc3c5ff0a1d7092ea95eef6f2a3f538fae87a0829f1eaccda1470ce` |
| 26 | `lemma` | [bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/bounded--d01c5d62ae95fb77774a1533.md) | 117 | `result-track:d01c5d62ae95fb77774a15337712505647723ef738e14e8551be55ec02b626fd` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--ebc8daba0c925b500784fa11.md) | 126 | `declaration-track:ebc8daba0c925b500784fa115a2e13b3e3dedf6d0a0f01c5ce376b49fe235385` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--611a0923aa37bbe2066f8e45.md) | 128 | `declaration-track:611a0923aa37bbe2066f8e455895c76d073167a313755e08ad3bdcb203c3b957` |
| 29 | `lemma` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/nonneg--1265a0904205c936395c67c6.md) | 130 | `result-track:1265a0904205c936395c67c6406876556e98448547f0d6df2c15ab6228c37d53` |
| 30 | `lemma` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/le-one--baa352386dc34de1356d0c11.md) | 132 | `result-track:baa352386dc34de1356d0c116e62e2ec92f655f37f5a0ccd169e64b2a4d55a1b` |
| 31 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/zero--826aac29232cf46a52f1dddc.md) | 135 | `result-track:826aac29232cf46a52f1dddc1e8f61d16bf62263c597ca5f2dccf5bb5a345f5a` |
| 32 | `lemma` | [zero_at](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/zero-at--3e4f2b93a8fd7a4e321a6aee.md) | 139 | `result-track:3e4f2b93a8fd7a4e321a6aeeb23be85dd51d6f010cea1715c67532967c6540a4` |
| 33 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--0f468d703508a5f7b3c2c815.md) | 145 | `declaration-track:0f468d703508a5f7b3c2c815a73de0747589c569dad47c8556519683792db3a1` |
| 34 | `lemma` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/continuous--846fc2770e7bd18e1a37e564.md) | 147 | `result-track:846fc2770e7bd18e1a37e56457819ee016b837f50344ffb817ce1a9a5507838b` |
| 35 | `lemma` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/differentiable--faf23076e68c3ffe74198945.md) | 149 | `result-track:faf23076e68c3ffe74198945ceeacdff795d77e6c8bc0e10ecd4c593a4fee31c` |
| 36 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/iteratedderiv-sub--ff9268a3d691813e431b44d1.md) | 152 | `result-track:ff9268a3d691813e431b44d1ab65979ed68387f5be9b00bf5195e747cd79cd03` |
| 37 | `def` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/deriv--bbb25f88c74533125954082d.md) | 165 | `declaration-track:bbb25f88c74533125954082db3d71d48716ba14fda4325e0ebc2afa576e9d289` |
| 38 | `lemma` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hasderivat--0a0d1182877349c48bbcc103.md) | 171 | `result-track:0a0d1182877349c48bbcc103fc1259c64cdeedd7b3b2ff22d148bb741df857e1` |
| 39 | `def` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/sub--88211a08015b76e755c7cf2d.md) | 174 | `declaration-track:88211a08015b76e755c7cf2d8ae4953bea2355c322f8498c15d22e0315e42678` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--05032e489e34a5ed39376142.md) | 182 | `declaration-track:05032e489e34a5ed39376142d03c82040b59438321dd5ccaa5684eebabb4caba` |
| 41 | `lemma` | [integrable_iteratedDeriv_Schwarz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/integrable-iteratedderiv-schwarz--b5bf26335bf1fd57fedfc0f3.md) | 184 | `result-track:b5bf26335bf1fd57fedfc0f3fcc92b3e7d8653b334356fe5c09831c44391ef6c` |
| 42 | `def` | [of_Schwartz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/of-schwartz--e3fa03d448897555278555d4.md) | 189 | `declaration-track:e3fa03d448897555278555d49faea42b308f55ed23380b24e7be3024ad891f43` |
| 43 | `def` | [norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/norm--f157c481f3fb92bc06056135.md) | 200 | `declaration-track:f157c481f3fb92bc06056135e27566679a587643569f1d26e06d66567ab40a6b` |
| 44 | `lemma` | [norm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/norm-nonneg--36feef947221f7e87c9f7a2b.md) | 203 | `result-track:36feef947221f7e87c9f7a2bb944e21d08dcdbc00d917c3510d18aaf34954ed8` |
| 45 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--81d43c3c502a2b0d50ab9804.md) | 207 | `declaration-track:81d43c3c502a2b0d50ab9804d2815a9b8ca57e4f17df601568cc7bc84de9aff1` |
| 46 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--48ec01402a89b40236ca577a.md) | 209 | `declaration-track:48ec01402a89b40236ca577a37ebade8576f3c92ed89be77ad59f6ba58bf1acc` |
| 47 | `def` | [ofCS2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/ofcs2--8bd2c1e7e139b83a0bc8a871.md) | 211 | `declaration-track:8bd2c1e7e139b83a0bc8a87116fbe5d16a09dce0a64376db524721a6261b42a6` |
| 48 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--e6186854c27c5b9463df12f9.md) | 218 | `declaration-track:e6186854c27c5b9463df12f9c8dd8d7711e7886d9e72ee194664f7fd139689ec` |
| 49 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--c0b007abdd36c2c5c4d72824.md) | 220 | `declaration-track:c0b007abdd36c2c5c4d728248539e3aa77bf61cbae3cbdab734039626892d541` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/instance--857722930c3e2ff9ec48d300.md) | 223 | `declaration-track:857722930c3e2ff9ec48d300183a9f79f74132269f45b441fa883d1ed1587ea0` |
| 51 | `lemma` | [hf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hf--2d4b20fa5be3ceefaf55f5dc.md) | 225 | `result-track:2d4b20fa5be3ceefaf55f5dc0f81fac56de2e057eeb9208addf3d30fcc62e253` |
| 52 | `lemma` | [hf'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hf--1675c5ff6b71c704f21e9e4e.md) | 227 | `result-track:1675c5ff6b71c704f21e9e4e211d1ae6492bcf902e54d52e582a0fc65ec92415` |
| 53 | `lemma` | [hf''](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/hf--7bba3340dca2a257eebcd1cc.md) | 230 | `result-track:7bba3340dca2a257eebcd1cc37a0873cdd059cebdd08a2d36c4468d06d6c04c9` |
| 54 | `theorem` | [W21_approximation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sobolev/Variant05bd665a04741d9440232bdd62455844554ca2d22fd43b680b52f4883f8a8a40.lean/declarations/w21-approximation--aa98405f0ca4f65a81cc6350.md) | 235 | `result-track:aa98405f0ca4f65a81cc6350a941032b49db8f4f533f4b4995c1fd22dd1e2dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
