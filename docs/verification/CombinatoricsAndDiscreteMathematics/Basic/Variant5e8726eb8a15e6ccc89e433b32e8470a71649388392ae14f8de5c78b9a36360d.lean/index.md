# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffbd967d84f16b1d841b2f6eaa1b49fa7553b392",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffbd967d84f16b1d841b2f6eaa1b49fa7553b392`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bornology](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology--5682ea47f88038026eb9ac11.md) | 49 | `declaration-track:5682ea47f88038026eb9ac11b873f2f01cd66af596e0ad113ed1f2e7e4723d6f` |
| 2 | `def` | [Bornology.cobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-cobounded--42ab672bd70c6f7d8ea3fa54.md) | 64 | `declaration-track:42ab672bd70c6f7d8ea3fa54479182293a6059c968521a7de877457b2418468f` |
| 3 | `lemma` | [Bornology.le_cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-le-cofinite--1edc49b2e419a2179179366f.md) | 69 | `result-track:1edc49b2e419a2179179366f7e81023e61a94ad514c83c9aa021d1daa588e062` |
| 4 | `lemma` | [Bornology.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-ext--874bc3a3b67966dbf7e106b0.md) | 76 | `result-track:874bc3a3b67966dbf7e106b09309343029709798ab043acfff1f0a5dc2f1c41f` |
| 5 | `lemma` | [Bornology.ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-ext-iff--1817968f937448f9730829a1.md) | 84 | `result-track:1817968f937448f9730829a13e65a14205d76f2a4b16317efda7a584e6fef9ca` |
| 6 | `def` | [Bornology.ofBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-ofbounded--46d888c95712390b8191abd0.md) | 92 | `declaration-track:46d888c95712390b8191abd0030088c89447d6bd4db50d4c962b2f0782c94b0b` |
| 7 | `def` | [Bornology.ofBounded'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-ofbounded--4d591dd019cfa5ed673b4d1c.md) | 115 | `declaration-track:4d591dd019cfa5ed673b4d1c0eb12f7719aeac31c4ee231e7ecafd3144f86a0c` |
| 8 | `def` | [IsCobounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded--67d91415329129fe786b5ab6.md) | 135 | `declaration-track:67d91415329129fe786b5ab644fdd02ce4a639f05527f07a67f9697ff5906dfc` |
| 9 | `def` | [IsBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded--405b7cc62578fe58d5aff118.md) | 140 | `declaration-track:405b7cc62578fe58d5aff11828b3a3700417902a7f9ec7d8b130f2f162f5ba87` |
| 10 | `theorem` | [isCobounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-def--b1463ff41149ba525f6bff6b.md) | 144 | `result-track:b1463ff41149ba525f6bff6be259cf653ffc0fba6278d473e90ba3a04dca8786` |
| 11 | `theorem` | [isBounded_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-def--4caccd87c0e924e1f620877c.md) | 148 | `result-track:4caccd87c0e924e1f620877c5ce564917354183fffba759b97bb52e75a64a494` |
| 12 | `theorem` | [isBounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-compl-iff--6eae7224eafc836adaebcdc4.md) | 153 | `result-track:6eae7224eafc836adaebcdc4a0d7db1ec42f3e547ecd161e161deea7338dc066` |
| 13 | `theorem` | [isCobounded_compl_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-compl-iff--6bb8c0b122531ef989fd4ab8.md) | 158 | `result-track:6bb8c0b122531ef989fd4ab820b5a1863e6b9be5ca8db12769e71af9af6fdea4` |
| 14 | `theorem` | [isBounded_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-empty--c37db79c2e592dc88e740775.md) | 171 | `result-track:c37db79c2e592dc88e7407758837ad1030a574a7de01f2605f56f04485f0af2a` |
| 15 | `theorem` | [isBounded_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-singleton--6a61eaa51ab4144025947e01.md) | 177 | `result-track:6a61eaa51ab4144025947e01ff6e287fa35f1323e05c56bd018d964db039f14e` |
| 16 | `theorem` | [isCobounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-univ--86b072b682c94be50bc7660c.md) | 183 | `result-track:86b072b682c94be50bc7660cd03403c2aa3811e87fa12808132befcf5e12e6cc` |
| 17 | `theorem` | [isCobounded_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-inter--e5ec8bad861f8cac888014f1.md) | 188 | `result-track:e5ec8bad861f8cac888014f15c0feebb846e408562f2bc5bacd5a50d7eaad2c1` |
| 18 | `theorem` | [IsCobounded.inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-inter--c95f3b631fdc07e1f3a2134c.md) | 192 | `result-track:c95f3b631fdc07e1f3a2134c3cfecd08560eb0f82567c4314c1f06dc2be58b01` |
| 19 | `theorem` | [isBounded_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-union--ca8a54df801691c4e435ce1f.md) | 197 | `result-track:ca8a54df801691c4e435ce1f57c0f9a8df5e445e0690ff8c863e87ec1284ffe8` |
| 20 | `theorem` | [IsBounded.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-union--58c4da23c75833d86343f2cc.md) | 201 | `result-track:58c4da23c75833d86343f2cc99a661ea34a5a3358fab59cbdba492decccf4352` |
| 21 | `theorem` | [IsCobounded.superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-superset--b6b017dd872800e38fbbd1a9.md) | 205 | `result-track:b6b017dd872800e38fbbd1a9875d75243dc9b5b28f399b31855f57773ee7100f` |
| 22 | `theorem` | [IsBounded.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-subset--240325483534910984970669.md) | 209 | `result-track:240325483534910984970669d63ca1d178f20324f5fe32a267dbe73cc03daf39` |
| 23 | `theorem` | [sUnion_bounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/sunion-bounded-univ--561aa7b53a2f61555495f309.md) | 214 | `result-track:561aa7b53a2f61555495f30918233fcd7a01a72181d84ac35bbc511535d08fed` |
| 24 | `theorem` | [comap_cobounded_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/comap-cobounded-le-iff--1ecae3f1092379573e8f33ab.md) | 218 | `result-track:1ecae3f1092379573e8f33abfb2600cb3cd4d56134c2d94ea62775b2c9c18b05` |
| 25 | `theorem` | [ext_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/ext-iff--676f1279351adf2505d2cdfd.md) | 230 | `result-track:676f1279351adf2505d2cdfdb77e4f57ca2c7fc12ac68a4eb6c1398989485f43` |
| 26 | `theorem` | [ext_iff_isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/ext-iff-isbounded--2c501bd282e542ec6ba5b149.md) | 235 | `result-track:2c501bd282e542ec6ba5b149ce624f2a2a956475b45ef9cbfc5f01dfacd0ce7a` |
| 27 | `theorem` | [isCobounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-ofbounded-iff--8ae85aaf55feb24408f2c37c.md) | 245 | `result-track:8ae85aaf55feb24408f2c37cc09849d1494fa09b32f3246d7ee7a6422f248a66` |
| 28 | `theorem` | [isBounded_ofBounded_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-ofbounded-iff--4cb8b9298b78d17f559f60aa.md) | 250 | `result-track:4cb8b9298b78d17f559f60aa915bae4af93b717434aac671063929932d458bb1` |
| 29 | `theorem` | [isCobounded_biInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-biinter--02dcbb684e806aa8b19093b1.md) | 259 | `result-track:02dcbb684e806aa8b19093b195cfa8ccf3c243651f64aaf1000beb514870eac8` |
| 30 | `theorem` | [isCobounded_biInter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-biinter-finset--7728733d4dc63955e8d23850.md) | 265 | `result-track:7728733d4dc63955e8d23850e2a08c254151bdfc5af3ecd74bf27b17a8092d00` |
| 31 | `theorem` | [isCobounded_iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-iinter--84f5e4958b552cef8b74c29c.md) | 271 | `result-track:84f5e4958b552cef8b74c29c9773e4283fe31891b2448c4c6d0d09e2e17ddf53` |
| 32 | `theorem` | [isCobounded_sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-sinter--581ca2315df39c0a66553f4e.md) | 276 | `result-track:581ca2315df39c0a66553f4e097a8f6437a28ebffe3b6a14dc767d1bd763a4dc` |
| 33 | `theorem` | [isBounded_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-biunion--7df8dc6be9ad0596aead1104.md) | 281 | `result-track:7df8dc6be9ad0596aead1104f80e1d4b0b1b50c4d739091b6e1f640cf1ecd91c` |
| 34 | `theorem` | [isBounded_biUnion_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-biunion-finset--20445ceb3c59e9dc1fd8c52c.md) | 286 | `result-track:20445ceb3c59e9dc1fd8c52c819ec828201ec986ba9c3462261088733fef8a30` |
| 35 | `theorem` | [isBounded_sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-sunion--42f85e5a6f50dd504fa3949d.md) | 291 | `result-track:42f85e5a6f50dd504fa3949d18905f163653cc3632f3ca2e97e1194f4f37c1b1` |
| 36 | `theorem` | [isBounded_iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-iunion--9c12a97ee34c8a01de066cd4.md) | 296 | `result-track:9c12a97ee34c8a01de066cd451619212cc6df6a5f4bf550217ff041fe03a7977` |
| 37 | `theorem` | [Set.Finite.isBounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/set-finite-isbounded--caa9525df2983085f5efe78f.md) | 304 | `result-track:caa9525df2983085f5efe78fa37a83faff6fdaef6358996e61f1c9d846d0f4a2` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/instance--d4045f4ebfd634866ec78dce.md) | 308 | `declaration-track:d4045f4ebfd634866ec78dce8855fc6b5fcc8fba80461804fc1fb5b4b04795bf` |
| 39 | `def` | [Bornology.cofinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/bornology-cofinite--3b0b573e9748a4a82195efd3.md) | 313 | `declaration-track:3b0b573e9748a4a82195efd324a5ce3a2d1089fd140cff97e40381c013670b71` |
| 40 | `class` | [BoundedSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/boundedspace--3fb21dc21a5f0da09c157f88.md) | 320 | `declaration-track:3fb21dc21a5f0da09c157f88a958ff6f9f09d1295be970197e62c219ae689ad8` |
| 41 | `theorem` | [isBounded_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-univ--7337d3341d3c6ed0efad4e0c.md) | 329 | `result-track:7337d3341d3c6ed0efad4e0ccdc53ee7c587be276de30d808819340d1f5c3d70` |
| 42 | `theorem` | [cobounded_eq_bot_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/cobounded-eq-bot-iff--012dd2ba45de7eb6fd9a2904.md) | 333 | `result-track:012dd2ba45de7eb6fd9a290455db323fc7bb52fe600531bc9ed844bffa72595d` |
| 43 | `theorem` | [IsBounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/isbounded-all--86e5800e4a56d3e609c5a33e.md) | 339 | `result-track:86e5800e4a56d3e609c5a33e4b664d572a3b87b7724d46cc0ece57c41c889758` |
| 44 | `theorem` | [IsCobounded.all](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/iscobounded-all--a9c9e5fc83fab151269613b8.md) | 343 | `result-track:a9c9e5fc83fab151269613b8b81613c78dbe4e3d50243efc3f83724e8f285032` |
| 45 | `theorem` | [cobounded_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant5e8726eb8a15e6ccc89e433b32e8470a71649388392ae14f8de5c78b9a36360d.lean/declarations/cobounded-eq-bot--507db05fd595a198119d505a.md) | 350 | `result-track:507db05fd595a198119d505a71e5458123028a4c1b47c260a4ae5e7ba4f5c14b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
