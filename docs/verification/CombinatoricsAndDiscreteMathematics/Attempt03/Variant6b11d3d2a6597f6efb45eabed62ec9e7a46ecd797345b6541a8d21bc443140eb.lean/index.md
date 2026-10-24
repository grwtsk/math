# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt03.Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9d8facf3252d7cb3f1eb640b7674a4b54b2fd81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-two-lower--25dcff1bd9fa94711c0ea1b2.md) | 13 | `result-track:25dcff1bd9fa94711c0ea1b25d4b39740917830f7713e6de2d529d4fc851672e` |
| 2 | `theorem` | [log_two_fine_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-two-fine-lower--a4c5405318614596851fa52b.md) | 18 | `result-track:a4c5405318614596851fa52b6ed6990b1a0374b6ffd6b7f882ac813132a6d576` |
| 3 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-two-upper--8c5c60a2b4d467c3e442b300.md) | 23 | `result-track:8c5c60a2b4d467c3e442b300fb4a23f72b7f3bfeeb502b247a8f8d99cd593119` |
| 4 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-three-lower--d8d2d22d246ec37fd71e8c5c.md) | 28 | `result-track:d8d2d22d246ec37fd71e8c5cc5808e49c1b018cdb908491efc66a5ca3e45a4f0` |
| 5 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/stieltjeslowerfour--8eaec2100cafdf6e2351c3ce.md) | 34 | `declaration-track:8eaec2100cafdf6e2351c3ce1756f45f2ce8d1936ae1ad4d1594dfe4ff3567aa` |
| 6 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/stieltjeslowerfour-gt-neg-quarter--51c6a23284914cab502d49f8.md) | 36 | `result-track:51c6a23284914cab502d49f89e2ec7fc09f9f8e68a5f1cf2e334e1f03dbe37b3` |
| 7 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-3-lower--9e277d2ed54cb87b5c983f2a.md) | 45 | `result-track:9e277d2ed54cb87b5c983f2a572b0e701c2df2e842496812e4c0e78b81175d91` |
| 8 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-5-lower--94570a1c245def2385186b51.md) | 58 | `result-track:94570a1c245def2385186b51baddbdf33daa5813fe49cab14a8c3d876e3f0396` |
| 9 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-7-lower--b34fd9298f66574a8aa5dae1.md) | 71 | `result-track:b34fd9298f66574a8aa5dae1d846014f899116215121d19611b03da451aaac5e` |
| 10 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-11-lower--ecdcefd978f6e04b4b6487ff.md) | 84 | `result-track:ecdcefd978f6e04b4b6487ff62fc1b3c4bbacdb0035a3fddc2d9254420f313ca` |
| 11 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-13-lower--e77d7c4c6ec9d6f07a43d74c.md) | 97 | `result-track:e77d7c4c6ec9d6f07a43d74c6068f8b03795d2c76a7ec6f8f0ff2b58af878e49` |
| 12 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-17-lower--d44132f8c31fbea924528e61.md) | 110 | `result-track:d44132f8c31fbea924528e613b5a3494877960823d6614a342391aed2b07cda0` |
| 13 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-19-lower--d5e514e97efe217e6572e2b2.md) | 123 | `result-track:d5e514e97efe217e6572e2b21424137a412f16b3f6f19f64e34d6ad3f66bdd4f` |
| 14 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-23-lower--f4d68e05fb191ba462a47484.md) | 136 | `result-track:f4d68e05fb191ba462a4748473541e3d90b81ad69cab1546e7c88ae35d97ac92` |
| 15 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-29-lower--55a2f5dda763e1fd848a848a.md) | 149 | `result-track:55a2f5dda763e1fd848a848a8edaa7a089b36558bd1624ecbf9da49edc8684f3` |
| 16 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-31-lower--93359a25cdf473e8f7ca7827.md) | 162 | `result-track:93359a25cdf473e8f7ca782784a1aa6955ddd6e3bb393a40dc13361390dab9b7` |
| 17 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-37-lower--20bcebcef1e2c4f71db07e4f.md) | 175 | `result-track:20bcebcef1e2c4f71db07e4f639e685bea960b7ecf6263dc0c753ff3d19e55d5` |
| 18 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-41-lower--778203c2107bc731ba616e2e.md) | 188 | `result-track:778203c2107bc731ba616e2e91c880275dad7070c038ceb4e003ee4165d4e49d` |
| 19 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-43-lower--86aa86fb9754f51935bde052.md) | 201 | `result-track:86aa86fb9754f51935bde0527609205dec9c869846d5ad175ade05f12ba9f6ba` |
| 20 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-47-lower--92d0e4fa7e1b6e40e2d55313.md) | 214 | `result-track:92d0e4fa7e1b6e40e2d55313a4c159b7c10b0253173bee9c5b2b7d361bd02417` |
| 21 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-53-lower--654227eedf1b684ed7c37276.md) | 227 | `result-track:654227eedf1b684ed7c372765c7d4e21c2429d947e22a463d4185ee790d0a4d0` |
| 22 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-59-lower--0a469c0f72ad75fd2e6d5a0f.md) | 240 | `result-track:0a469c0f72ad75fd2e6d5a0f9e6c4a538e33cf3233727d470ac35f6eb94d7c57` |
| 23 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-61-lower--d031868f0064fc24dc59e3f7.md) | 253 | `result-track:d031868f0064fc24dc59e3f70f179718a0ed632e3e8a62d3f255134e1758e4f7` |
| 24 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-67-lower--a7c01d20db9522f42496f03b.md) | 266 | `result-track:a7c01d20db9522f42496f03b824ae32f9df07932515353ba49b268eb9a4636f9` |
| 25 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-71-lower--9a1374dab21c4323a97f8281.md) | 279 | `result-track:9a1374dab21c4323a97f828133fbda47d98883640a6dc1eecd051924aad887bd` |
| 26 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-73-lower--2dfab91f5c581ded003a11bb.md) | 292 | `result-track:2dfab91f5c581ded003a11bb2be07ac8f582b2beba7252082ee1b18754988ec5` |
| 27 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-79-lower--42467401f70786cb56aaebc2.md) | 305 | `result-track:42467401f70786cb56aaebc2ea0070b00ff5afb26024fb766b5270c05247fc31` |
| 28 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-83-lower--60c40f1feebdfa7725810a99.md) | 318 | `result-track:60c40f1feebdfa7725810a993483f9c556c97b96ab635bd73e5bc2f8394477be` |
| 29 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-89-lower--c929a1930ca63a25aba2595d.md) | 331 | `result-track:c929a1930ca63a25aba2595d2134d96e8c0e313a85fca2d8a41a9435f01b11d2` |
| 30 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/log-97-lower--3c7bc1e6452fd0ab3a41be2c.md) | 344 | `result-track:3c7bc1e6452fd0ab3a41be2ca791c9319f1a70521e187f1bce93d80daf158854` |
| 31 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/primeinventory--449a54c637cb9c2f74395cd6.md) | 357 | `declaration-track:449a54c637cb9c2f74395cd66f9c51ab92e7c8f99bb3d839056a1dc8a2303c53` |
| 32 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/certifiedloglower--0ffd5e6359c829d3fc520230.md) | 359 | `declaration-track:0ffd5e6359c829d3fc52023009f5a576e51cd3277c3effa9c75be691f374b7ca` |
| 33 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/powercoefficient--aae655e382061f57c3e26e60.md) | 362 | `declaration-track:aae655e382061f57c3e26e600023f835293324206d76ba3cd877bd6cce751a22` |
| 34 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/finiteproperpowermoment--fd008824567a5ba9cb74f8fb.md) | 364 | `declaration-track:fd008824567a5ba9cb74f8fb8335b29e9222336cf8563b9ac151e740b5579a33` |
| 35 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/inventory-primes--713aec7493fc09b4fc206efe.md) | 367 | `result-track:713aec7493fc09b4fc206efec0e585d9e85bde1b36dbb40c9f9e3922b786863b` |
| 36 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/inventory-log-lower--d2792052617c24cb8db34507.md) | 373 | `result-track:d2792052617c24cb8db345075818c6ecbef62184a8a471f242dc4c7d786b89ba` |
| 37 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/finiteproperpowermoment-gt-nine-quarters--e5c77435142bbc7a8a303165.md) | 404 | `result-track:e5c77435142bbc7a8a303165651024cec4d02371c80b4804b1000d7fd6427327` |
| 38 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/finiteproperpowermoment-eq-atoms--f82bea271c826eeb59580607.md) | 423 | `result-track:f82bea271c826eeb595806077520f86309a801193fdb5e490533789b59213033` |
| 39 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt03/Variant6b11d3d2a6597f6efb45eabed62ec9e7a46ecd797345b6541a8d21bc443140eb.lean/declarations/intercept-positive-of-actual-bridges--d2f361bc9e79f04149cf1dd9.md) | 435 | `result-track:d2f361bc9e79f04149cf1dd9cefb1ab8279dd933b39243ce9fbd7dd4d4909dc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
