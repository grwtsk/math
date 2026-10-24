# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Resources.Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975eee42042529c49a0dfa757d86bb1648bb3638",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975eee42042529c49a0dfa757d86bb1648bb3638`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/coordinate--b22fef13fe0f1d14b651c489.md) | 18 | `declaration-track:b22fef13fe0f1d14b651c4892b2b283d2b5dde68b0755ea765beb4e52db6fdf7` |
| 2 | `instance` | [coordinateFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/coordinatefintype--4d5ccb7f3ae2335973095c52.md) | 50 | `declaration-track:4d5ccb7f3ae2335973095c5267749a1cf0640bcf7df7b18e57f0517f10efbd4b` |
| 3 | `abbrev` | [Vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/vector--f54455913dba4d27d812ba3e.md) | 58 | `declaration-track:f54455913dba4d27d812ba3ef262aa95ccf6d95b0f978035d7ddc550882050fc` |
| 4 | `abbrev` | [ResourceVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/resourcevector--f79357e1339e552338c25859.md) | 61 | `declaration-track:f79357e1339e552338c25859ac6c44fd332132b534109d0e2ca3a5ad3ae08a4d` |
| 5 | `def` | [ComponentwiseLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwisele--7b4810581f616e552b401f9e.md) | 64 | `declaration-track:7b4810581f616e552b401f9efd4826992ff21076a9435e8b24cf921906ae74a7` |
| 6 | `def` | [StrictPareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/strictpareto--e883331a6da52a3d8b8384de.md) | 68 | `declaration-track:e883331a6da52a3d8b8384de416d283fb8d9c93cc41bd1e8ee9b3cffb2742a7e` |
| 7 | `def` | [Incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable--6970dad68953dae9007e4f7e.md) | 72 | `declaration-track:6970dad68953dae9007e4f7ec9ce6be920702eef8c196be17e09fcb53db14cdd` |
| 8 | `theorem` | [componentwise_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-refl--adffa20319cf383e796ce709.md) | 76 | `result-track:adffa20319cf383e796ce7096a49a8019d7c5f3e8d46a6608ad4f870d6355d31` |
| 9 | `theorem` | [componentwise_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-trans--2a703843ab3b802e442894dd.md) | 81 | `result-track:2a703843ab3b802e442894dd6dff2c245f1bbfba59cee17c4893577c4724ee2c` |
| 10 | `theorem` | [componentwise_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-antisymm--b6e9970125af7107ff3982c7.md) | 87 | `result-track:b6e9970125af7107ff3982c76146e4ed41314934854a96ef91fd941db85dcb94` |
| 11 | `theorem` | [componentwise_iff_product_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-iff-product-le--e71fcd46ecf597c52a2e3691.md) | 93 | `result-track:e71fcd46ecf597c52a2e3691e7850cc532a7741c61e61d181220966712ca45a9` |
| 12 | `theorem` | [strictPareto_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/strictpareto-irrefl--3868778e29bcb3335f77b913.md) | 97 | `result-track:3868778e29bcb3335f77b9130b543c6ec05522f3174dcc9924a158f983ad1ec0` |
| 13 | `theorem` | [strictPareto_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/strictpareto-trans--72f70e6470a8f65eb9fb3891.md) | 103 | `result-track:72f70e6470a8f65eb9fb38912d997587f2c9ca63451ae56c75edf94955b83614` |
| 14 | `theorem` | [strictPareto_not_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/strictpareto-not-reverse--5627205c8664013bbadd0427.md) | 111 | `result-track:5627205c8664013bbadd042723c10b4fec664155d31ae326e3470285da041de9` |
| 15 | `theorem` | [incomparable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable-symm--9ae9b3982f930921ea94e9f8.md) | 118 | `result-track:9ae9b3982f930921ea94e9f822f4957cd686d51406a2e0d63598350b8a5f059a` |
| 16 | `theorem` | [incomparable_no_pareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable-no-pareto--b603e71ddac7928cdf3b00fa.md) | 123 | `result-track:b603e71ddac7928cdf3b00fa76daae4c6475bbc03fa8e00475c988f6964a1976` |
| 17 | `theorem` | [componentwise_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-reindex-iff--96362af69847d622cadb429b.md) | 129 | `result-track:96362af69847d622cadb429b7f3ab68196660c18a76a0f1b160fd20965b2cef0` |
| 18 | `theorem` | [incomparable_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable-reindex-iff--636c9daaa1ba65cefd78a8e8.md) | 140 | `result-track:636c9daaa1ba65cefd78a8e858802ed07245a20bcc1b76218d61ae2c6886825d` |
| 19 | `theorem` | [componentwise_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/componentwise-add-common-iff--ca11ae40e8850c1f88e9bd36.md) | 147 | `result-track:ca11ae40e8850c1f88e9bd36be48fd4d33a1a820fa092a63b3175ad7fab43406` |
| 20 | `theorem` | [incomparable_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable-add-common-iff--042127055cb145f4e80ffe94.md) | 155 | `result-track:042127055cb145f4e80ffe94efa91b69b078a757dcfd6e87d08acb4cb84a30cc` |
| 21 | `def` | [ParetoMember](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/paretomember--173c67e3e4a96196863a9589.md) | 163 | `declaration-track:173c67e3e4a96196863a9589751a1d8170efdcfb5811fe4db698ace90da1d8f8` |
| 22 | `theorem` | [incomparable_pair_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/incomparable-pair-retained--2e79b529daf037c35fc1103b.md) | 167 | `result-track:2e79b529daf037c35fc1103be231b626189627c3fd856655def52032179b09bc` |
| 23 | `structure` | [ScalarProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/scalarprojection--dd68a07d85a556cc9dfa8392.md) | 185 | `declaration-track:dd68a07d85a556cc9dfa8392ba2a5589d36a4da34823c83e2d34e6fd21d45884` |
| 24 | `def` | [ScalarProjection.value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/scalarprojection-value--17a6ed184282b8a10c54e693.md) | 194 | `declaration-track:17a6ed184282b8a10c54e693d080d7c7a4d193f5ad644efb6feed26f4e7da75b` |
| 25 | `theorem` | [ScalarProjection.monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/scalarprojection-monotone--5928b015ceb9dfbf997fdd4c.md) | 199 | `result-track:5928b015ceb9dfbf997fdd4c99660b8fb3839fff5c42cbaae294133b0fccab5c` |
| 26 | `structure` | [FrozenObjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/frozenobjective--9fe9f8e83593df8974f77493.md) | 208 | `declaration-track:9fe9f8e83593df8974f774938eb0d7475639ecaa451230a95d504d2c573c6dea` |
| 27 | `def` | [FrozenObjective.Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/frozenobjective-admissible--ef70e77d266c344cf178e95d.md) | 223 | `declaration-track:ef70e77d266c344cf178e95dd468232da2eb1d3d964e1b056883c08cc67a9420` |
| 28 | `theorem` | [FrozenObjective.admissible_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/frozenobjective-admissible-of-le--339034fb2453b33866f7d13b.md) | 228 | `result-track:339034fb2453b33866f7d13be02002b49bc30ad8df41d64bd1b349fb344160fd` |
| 29 | `inductive` | [Measurement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/measurement--33c8b7dbd5bbfe8d9d7d0a13.md) | 234 | `declaration-track:33c8b7dbd5bbfe8d9d7d0a13de4aff00a024e9a7690519ef0967db3931cfeec4` |
| 30 | `def` | [FullyMeasured](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/fullymeasured--e7aa6b6d337e71142cf49a2d.md) | 244 | `declaration-track:e7aa6b6d337e71142cf49a2d23dbb091a879ff134ee4106f74c909d2c2bf7a2c` |
| 31 | `theorem` | [notMeasured_blocks_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/notmeasured-blocks-completion--c3fcd4c1eed4e50317decc47.md) | 248 | `result-track:c3fcd4c1eed4e50317decc470211786ffd2a4af9850e8fe1aade2120c5994e88` |
| 32 | `theorem` | [unsupported_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/unsupported-ne-measured-zero--8e65aa696bdd3e7966392403.md) | 257 | `result-track:8e65aa696bdd3e796639240341de9a60eb67ab7a6d78ffe4633613f066e693cd` |
| 33 | `theorem` | [notMeasured_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/notmeasured-ne-measured-zero--33814c8aabca4060602318f4.md) | 261 | `result-track:33814c8aabca4060602318f4bfeba099e5af1cbabcad66166e7bd9f91fa4a35b` |
| 34 | `structure` | [ResourceReport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/resourcereport--2fe6ba7000883d061e52cfdb.md) | 265 | `declaration-track:2fe6ba7000883d061e52cfdbdbcc0c56e69befcfef575c9b09280fdc4cf20af8` |
| 35 | `def` | [lowDimensionProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/lowdimensionprofile--654878afa620e1d33f7b18d3.md) | 274 | `declaration-track:654878afa620e1d33f7b18d3c02bcff6c19c601f78d04136b7218e3060100549` |
| 36 | `def` | [lowDepthProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/lowdepthprofile--ad0bed0a3ce6778a8f01494a.md) | 280 | `declaration-track:ad0bed0a3ce6778a8f01494a07537dadf603600b218d5f4e4fdf2b2e713ee195` |
| 37 | `theorem` | [dimension_depth_incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/dimension-depth-incomparable--4bd453c3f7156ef2fd8a11e8.md) | 286 | `result-track:4bd453c3f7156ef2fd8a11e81fe1dc142cf21fa613d3aadbc8ef8d6f99515709` |
| 38 | `theorem` | [depth_objective_preserves_tradeoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/declarations/depth-objective-preserves-tradeoff--638320b98ff46a0e99ed6c34.md) | 296 | `result-track:638320b98ff46a0e99ed6c34e7bbe7a2623f44c7ccb650bdf53d38d74418c89a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
