# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FirstReturn.Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04596ab1e4e02ca27b31942dc2e98f727e55e8af",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04596ab1e4e02ca27b31942dc2e98f727e55e8af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReturnAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/returnat--6ff282a7d432dfa0293884f5.md) | 31 | `declaration-track:6ff282a7d432dfa0293884f529338c1db95ac1988da2ffe08dffbd79178092cc` |
| 2 | `abbrev` | [ValidState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/validstate--8b26d6952af0e5b14a5a30a1.md) | 39 | `declaration-track:8b26d6952af0e5b14a5a30a1986fa3ea68c76ab155d1257f681845385a843d8f` |
| 3 | `theorem` | [exists_return](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/exists-return--3028d67c2920e4685711f494.md) | 43 | `result-track:3028d67c2920e4685711f4946addf83f041a2621a6fbdb81d3f0871ff8197b5c` |
| 4 | `def` | [firstReturnTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime--ea3d90b1651aca1282780c5a.md) | 62 | `declaration-track:ea3d90b1651aca1282780c5ad8c36a8493715bc412913d8a9a290b66d92c86b2` |
| 5 | `theorem` | [firstReturnTime_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-pos--6d4b93896ec841b2e551e41a.md) | 70 | `result-track:6d4b93896ec841b2e551e41a41585b4df5b94b3240e8aad7d6c876bacfe19367` |
| 6 | `theorem` | [firstReturnTime_returns](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-returns--5f04cd642290d0ce123d9032.md) | 79 | `result-track:5f04cd642290d0ce123d9032854755d61f4e9342e22c49a7f572d378185c47c5` |
| 7 | `theorem` | [firstReturnTime_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-minimal--9abc71d20866d4e953203133.md) | 88 | `result-track:9abc71d20866d4e9532031334377698703d1cbbb9420c8ec250d27a400753948` |
| 8 | `theorem` | [firstReturnTime_le_of_return](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-le-of-return--ef38421c82b13495083fe428.md) | 101 | `result-track:ef38421c82b13495083fe428adf9745fbb6d6478fb03933d3543490fcdfc7293` |
| 9 | `theorem` | [firstReturnTime_le_minimalPeriod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-le-minimalperiod--eda3db12d8941a3882bfa8da.md) | 112 | `result-track:eda3db12d8941a3882bfa8dad8ec19ebf2cf405ec44d5ecc726032ac2a6c5b20` |
| 10 | `theorem` | [firstReturnTime_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-le-card--38fa805f860aae4e3995070a.md) | 129 | `result-track:38fa805f860aae4e3995070a243e3c640406c3b45ced073f560c3b2aac6be798` |
| 11 | `def` | [firstReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturn--5b9a389e0ee66b366e9466e2.md) | 138 | `declaration-track:5b9a389e0ee66b366e9466e2fc5ff39d7163cd7d4ace50e44ff2af19aa3fc59a` |
| 12 | `theorem` | [firstReturn_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturn-val--7f45053f968f86bfd68456dc.md) | 147 | `result-track:7f45053f968f86bfd68456dcd086ad8691f8c754efa7a7788fb7ab6ffa236448` |
| 13 | `def` | [previousReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/previousreturn--2b3d58f6d00fc19bab932fb0.md) | 156 | `declaration-track:2b3d58f6d00fc19bab932fb02d4ff176b8dd169b2ca85c645edc373dd1906c31` |
| 14 | `theorem` | [symm_pow_apply_pow_apply_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/symm-pow-apply-pow-apply-of-le--c29cbc46afd07296a1f5d225.md) | 162 | `result-track:c29cbc46afd07296a1f5d22508884f835cba6828858fea5888f11e3b0e6c1f8a` |
| 15 | `theorem` | [symm_pow_apply_pow_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/symm-pow-apply-pow-apply--3032a2947d3ad846da37811f.md) | 174 | `result-track:3032a2947d3ad846da37811ff97983486ca9b2a0ff8d1fd381e932e047913aa6` |
| 16 | `theorem` | [previousReturn_firstReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/previousreturn-firstreturn--97bff6f6a1fa31461547e9c0.md) | 184 | `result-track:97bff6f6a1fa31461547e9c06c5274e2fe9bf4827610ff4b2a771fc6f96d7bcf` |
| 17 | `theorem` | [firstReturn_previousReturn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturn-previousreturn--f25daa5d6ebe20c60019495f.md) | 215 | `result-track:f25daa5d6ebe20c60019495fc165971bc1ad63d183938767877ece8bdcdc4417` |
| 18 | `def` | [firstReturnPerm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnperm--05f7afd2aa73c7e6ef1e47c1.md) | 224 | `declaration-track:05f7afd2aa73c7e6ef1e47c107be8df0d40626dadee9e18cd3c2b8acc93ec467` |
| 19 | `theorem` | [firstReturnPerm_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnperm-apply-val--01164b0f10bdb76952feafaf.md) | 234 | `result-track:01164b0f10bdb76952feafafea4ea3e660d40a24a004db46eef69fc1341c238d` |
| 20 | `theorem` | [firstReturnPerm_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnperm-bijective--43003a34b170b2e7daaaba1f.md) | 243 | `result-track:43003a34b170b2e7daaaba1fff79d6588bc0c122f1ed343425962228ef5390fd` |
| 21 | `theorem` | [firstReturnPerm_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnperm-symm--62b3b02dbd4f1f34e0f6368d.md) | 250 | `result-track:62b3b02dbd4f1f34e0f6368d8ba791f7e269a68cf458570b6ae4a3f6bf0b97aa` |
| 22 | `def` | [invariantRestriction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/invariantrestriction--40adfe77eff6c953a3db5c4c.md) | 260 | `declaration-track:40adfe77eff6c953a3db5c4cc96fe5ddd2a7254dc532a87c3ecd80faf79a1e77` |
| 23 | `theorem` | [firstReturnTime_eq_one_of_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-eq-one-of-invariant--4e64adc82e892b51c2f9f71d.md) | 273 | `result-track:4e64adc82e892b51c2f9f71d6cf4a9e94fbb59895e82ba354414eec6c075a371` |
| 24 | `theorem` | [firstReturnPerm_eq_restriction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnperm-eq-restriction--ca52d82d81145d25bb4013e2.md) | 287 | `result-track:ca52d82d81145d25bb4013e21f1f6eabd6dcd7778e3ab39a62ec01b851116e02` |
| 25 | `instance` | [returnAtDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/returnatdecidable--c9a152a01797278ea38737a5.md) | 300 | `declaration-track:c9a152a01797278ea38737a5c9529f5d66c378de86c0910e4b49a1482464a2bb` |
| 26 | `def` | [returnTimesWithin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/returntimeswithin--563f94078a326e81b3df5e79.md) | 310 | `declaration-track:563f94078a326e81b3df5e79167040810d76705dea16e74be82cb08533ccc6de` |
| 27 | `def` | [firstReturnSearch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnsearch--94c1883e147d5ec7df975372.md) | 319 | `declaration-track:94c1883e147d5ec7df9753725c45084d53bc1aa93fda96448f05561963b19574` |
| 28 | `theorem` | [firstReturnTime_mem_returnTimesWithin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturntime-mem-returntimeswithin--adc2ce78edda2e31e8323eb3.md) | 329 | `result-track:adc2ce78edda2e31e8323eb32069e6f5177e3a10b8436fcc3ca2eeb3aa9eafb2` |
| 29 | `theorem` | [returnTimesWithin_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/returntimeswithin-nonempty--e368e823e93c279b6c027b8a.md) | 340 | `result-track:e368e823e93c279b6c027b8a5af44695b9c5c53615103d575cd2d5849508dd22` |
| 30 | `theorem` | [min_returnTimesWithin_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/min-returntimeswithin-eq--75b0e3388a2c675074d24aa7.md) | 349 | `result-track:75b0e3388a2c675074d24aa772776ac32d9dd386afb8494d6e714a3d448a8243` |
| 31 | `theorem` | [firstReturnSearch_ne_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnsearch-ne-none--74383fec0f0fd16205e1d05a.md) | 363 | `result-track:74383fec0f0fd16205e1d05a8b946e577a376c7090bbd3df5c687cda31bf3a1e` |
| 32 | `theorem` | [firstReturnSearch_eq_firstReturnTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnsearch-eq-firstreturntime--ea18aa7ed835a16003bf6bd3.md) | 372 | `result-track:ea18aa7ed835a16003bf6bd3d536e0e2c384edaf7e00b1447b3c51dd4cf6cf7c` |
| 33 | `def` | [firstReturnExec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnexec--82ee0dd07080bb9d3329b267.md) | 384 | `declaration-track:82ee0dd07080bb9d3329b2672c301aa9fd185123942dc99a7b14064712fa3a4a` |
| 34 | `theorem` | [firstReturnExec_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean/declarations/firstreturnexec-refines--d42f2c9eed071be0a3767946.md) | 397 | `result-track:d42f2c9eed071be0a37679462fedc05a5ad765589b77460664ef26ca01c84d23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
