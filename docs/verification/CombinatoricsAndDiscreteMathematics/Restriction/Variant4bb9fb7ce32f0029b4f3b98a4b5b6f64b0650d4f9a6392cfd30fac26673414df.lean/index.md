# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67736b7ab8138b5e3e8e88e98c724a3266f47a05",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67736b7ab8138b5e3e8e88e98c724a3266f47a05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--586e85ad6757c6e3e4293de3.md) | 26 | `declaration-track:586e85ad6757c6e3e4293de3e7f902d13ce5163ac4c701c5418427dc04a15376` |
| 2 | `theorem` | [mapSort_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-id--d00045b8a41ea5d503e99a8c.md) | 33 | `result-track:d00045b8a41ea5d503e99a8ce5077539014ee2256b7ff5de61d18ff77d87b5bb` |
| 3 | `theorem` | [mapSort_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-comp--71de0c566dc1281a6987a603.md) | 36 | `result-track:71de0c566dc1281a6987a6033f5e79a4a5464f3792c2e630060dc07556187bc6` |
| 4 | `theorem` | [mapSort_rename](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-rename--29cde0c56f6668bb87672ec7.md) | 40 | `result-track:29cde0c56f6668bb87672ec70c11d4484731b23daed2e6e74182fde82c38c1a9` |
| 5 | `theorem` | [mapSort_liftSub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-liftsub--23c8db62f51df6f9d286262a.md) | 44 | `result-track:23c8db62f51df6f9d286262a9598e9c70f66b320a0d2194134e853254c98101c` |
| 6 | `theorem` | [mapSort_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-subst--b501ec9b8df8bfe82ede711b.md) | 49 | `result-track:b501ec9b8df8bfe82ede711b21e3a3f96a953592a468b02d346116a92c4808e5` |
| 7 | `theorem` | [mapSort_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-single--8d0ed93aa596fb06ebf1208a.md) | 54 | `result-track:8d0ed93aa596fb06ebf1208a817aeee1a4fdc362aa69d4badd0278379fee5141` |
| 8 | `theorem` | [mapSort_instantiate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort-instantiate--5aae195bfb2bb8b30a8a15db.md) | 59 | `result-track:5aae195bfb2bb8b30a8a15db97bcd5ea46829734b78373b8f1d63b55c7a8e42a` |
| 9 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--d0f494a044c4d5448dae2df9.md) | 69 | `result-track:d0f494a044c4d5448dae2df9b7ea57fa01df0ee814d6fbf723bc2f1979a22e09` |
| 10 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--95ec33bff6fa2a6888debeef.md) | 87 | `result-track:95ec33bff6fa2a6888debeef221a27fe9693dde6bab0653b006cbc7da476b17d` |
| 11 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--88a2b7364e1a664fbc935292.md) | 96 | `result-track:88a2b7364e1a664fbc9352927d6c3e3f7129d9b826d9851e7125f6f5c9d3d689` |
| 12 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--0c1bd1a81160e48d2a1e86eb.md) | 109 | `result-track:0c1bd1a81160e48d2a1e86ebfa155e7bc3fde6194dcca7601236812ea52620b5` |
| 13 | `theorem` | [of_mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/of-mapsort--7af582d7b336ad5c249b5808.md) | 132 | `result-track:7af582d7b336ad5c249b580807918c830a203a373a3f43b8ab798d12783229e2` |
| 14 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--8343f67c2098ad441ad71c2f.md) | 152 | `result-track:8343f67c2098ad441ad71c2f05112f76672e81912ec478d3ac17eff2eb4eeb7d` |
| 15 | `theorem` | [of_retraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/of-retraction--36f023dd60a1578bb5ce3169.md) | 157 | `result-track:36f023dd60a1578bb5ce316927b184fe7fd65c39261edc24c063875fb7d7a8cc` |
| 16 | `theorem` | [monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/monotone--ee3de24175e5f28d25740458.md) | 168 | `result-track:ee3de24175e5f28d257404588c8c10d941e539d5dfac8471e3b2d8e7a8550b4c` |
| 17 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/mapsort--2407dabf2de563099f596606.md) | 180 | `result-track:2407dabf2de563099f596606bd22336051d90783bfe3829f85c2ce44c0539f14` |
| 18 | `theorem` | [has_axiom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/has-axiom--140125bb0f5de8d48bd3a386.md) | 196 | `result-track:140125bb0f5de8d48bd3a386017af9a1fa5d6335570d2dc5b7a0ce7b1e4d901d` |
| 19 | `def` | [restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/restrict--ee5883daebbf3a43d8ea1886.md) | 213 | `declaration-track:ee5883daebbf3a43d8ea188682aa5b44b81df90d5e29bfb2d4bc2772f040cfd6` |
| 20 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/s--e5aa5152ca35d688a3257f35.md) | 215 | `declaration-track:e5aa5152ca35d688a3257f3501c7252e66a88fc53b017a378879affd883e1f01` |
| 21 | `def` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/on--42dc5d46649e15c89fe9b904.md) | 218 | `declaration-track:42dc5d46649e15c89fe9b9042b8a05778da550003ce83ed2ad7798fc6e5cc425` |
| 22 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/s--9e344e58fa09eb4660edab97.md) | 219 | `declaration-track:9e344e58fa09eb4660edab977f6649e41e7e4966ae350cc63e3219649d56caef` |
| 23 | `theorem` | [restrict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/restrict-mono--9743fda0ea1aba66dd75ccf9.md) | 228 | `result-track:9743fda0ea1aba66dd75ccf9d2a2a49582950192443de7e13b26a2797ce4a04f` |
| 24 | `theorem` | [finite_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/finite-support--55f5bcf7ffa633c7020dc32e.md) | 233 | `result-track:55f5bcf7ffa633c7020dc32edcfc397f75cfc61d69e891fc8bf56adfba554dd6` |
| 25 | `theorem` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/on--3641e008ca9c2d02fec68f0a.md) | 281 | `result-track:3641e008ca9c2d02fec68f0aa2d3ef8055b57367e59e3351241adca4448781b2` |
| 26 | `theorem` | [finite_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variant4bb9fb7ce32f0029b4f3b98a4b5b6f64b0650d4f9a6392cfd30fac26673414df.lean/declarations/finite-counterexample--31a74fad3aa46ab835897deb.md) | 306 | `result-track:31a74fad3aa46ab835897deb7a06d55cf59fa836f1ba66b0a058f8e8533aec21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
