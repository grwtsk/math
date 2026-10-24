# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt01.Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d0d903289dfc6432a7863f6df125b6b5843016a",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d0d903289dfc6432a7863f6df125b6b5843016a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Prime.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_two_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-two-lower--edf0fdd2c8145776afb9028c.md) | 13 | `result-track:edf0fdd2c8145776afb9028cc974cc93fbd05961b5da37c4aa3ca22788a14db1` |
| 2 | `theorem` | [log_two_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-two-upper--66457545039033db8c9b89c7.md) | 18 | `result-track:66457545039033db8c9b89c77b196f7b236bba7fb152c6b6786311fd5f3f00a1` |
| 3 | `theorem` | [log_three_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-three-lower--c02d7402ef4bd20f0d48065e.md) | 23 | `result-track:c02d7402ef4bd20f0d48065e856e79405bbfd1495a4446146a41acf9aaa89216` |
| 4 | `def` | [stieltjesLowerFour](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/stieltjeslowerfour--53ed80b1c81c7605d75a69a9.md) | 29 | `declaration-track:53ed80b1c81c7605d75a69a9657c7b9f5b7a798f91f87233b5d0a80423918ef3` |
| 5 | `theorem` | [stieltjesLowerFour_gt_neg_quarter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/stieltjeslowerfour-gt-neg-quarter--407d0f04b6b930f8b74cbf1e.md) | 31 | `result-track:407d0f04b6b930f8b74cbf1e09768b3d606dacdb640c43112fa9018bba7be701` |
| 6 | `theorem` | [log_3_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-3-lower--fe26f4ecea15841cb2f39d2d.md) | 40 | `result-track:fe26f4ecea15841cb2f39d2d69b65131916d7654173c51fdc042cb2f2f4130ce` |
| 7 | `theorem` | [log_5_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-5-lower--ce236431cbbbb8fe9f456172.md) | 53 | `result-track:ce236431cbbbb8fe9f45617289e561aaa8bedb051370161ce3a38fc8e1161cd6` |
| 8 | `theorem` | [log_7_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-7-lower--48c605e8462e10b3ee225b3e.md) | 66 | `result-track:48c605e8462e10b3ee225b3e870f131e8a21136e8e92cc026e5466968068b587` |
| 9 | `theorem` | [log_11_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-11-lower--3e74cc03de1f6d1930e1153e.md) | 79 | `result-track:3e74cc03de1f6d1930e1153e3280dcda3697bbfd458916e573de046e86dba21b` |
| 10 | `theorem` | [log_13_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-13-lower--e5904a4922b5143d2598617b.md) | 92 | `result-track:e5904a4922b5143d2598617bc5f8a5db589fd73ec755a25e92179ec8de79c19e` |
| 11 | `theorem` | [log_17_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-17-lower--e9048aaccf0c2e8d5f9d9a0f.md) | 105 | `result-track:e9048aaccf0c2e8d5f9d9a0fde7f135f0a7b8ac1d322ad776558db691140a3e4` |
| 12 | `theorem` | [log_19_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-19-lower--1fa061f7eedade60bdfb5782.md) | 118 | `result-track:1fa061f7eedade60bdfb578252cfdc83daeaf24a0fede084d6c0299bdf419275` |
| 13 | `theorem` | [log_23_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-23-lower--169a7718f2d113d9256127f8.md) | 131 | `result-track:169a7718f2d113d9256127f865a993277e09fdcf1e55897cd099d80d1e549e9c` |
| 14 | `theorem` | [log_29_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-29-lower--a06bd35dbcf554b5fb0cf2ba.md) | 144 | `result-track:a06bd35dbcf554b5fb0cf2ba037571b49300e2d5c864ca27041d0838e68906f6` |
| 15 | `theorem` | [log_31_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-31-lower--a23e436c27890f21d590c3ea.md) | 157 | `result-track:a23e436c27890f21d590c3ea2fbcb89f1a492471f4ee631800bd130c5c24acf7` |
| 16 | `theorem` | [log_37_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-37-lower--fadc6a499f3365c9c75b261f.md) | 170 | `result-track:fadc6a499f3365c9c75b261fb3bd552f3c81aa6d5af1a7aadaf5f435ae5e5ebd` |
| 17 | `theorem` | [log_41_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-41-lower--03177cb735f67818c2144cee.md) | 183 | `result-track:03177cb735f67818c2144ceef8a8d8cce95256b19ddffd06dfae5d61586471b3` |
| 18 | `theorem` | [log_43_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-43-lower--4e517bb62b5a96b0984d5321.md) | 196 | `result-track:4e517bb62b5a96b0984d53217aaaaf2f20d72452240b1a7df74ae03a80b7b726` |
| 19 | `theorem` | [log_47_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-47-lower--57bd1e544007df3d5f308e65.md) | 209 | `result-track:57bd1e544007df3d5f308e6546cb53746bd0d0da89753dbddf82d7b8f7128b74` |
| 20 | `theorem` | [log_53_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-53-lower--556bf80a83afa0c2bea2410e.md) | 222 | `result-track:556bf80a83afa0c2bea2410e3c207f27d4a78881205ccfeb2d0e461ea2572ccf` |
| 21 | `theorem` | [log_59_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-59-lower--47db46f561c8aec2999ec841.md) | 235 | `result-track:47db46f561c8aec2999ec8414cc81902f11da03204cf382299e2986acee98345` |
| 22 | `theorem` | [log_61_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-61-lower--b12834b85ce961e2ef74f5c9.md) | 248 | `result-track:b12834b85ce961e2ef74f5c98dac5a50199e7b6f1692239210739ec50f44a701` |
| 23 | `theorem` | [log_67_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-67-lower--5bf71acea9475706a8477a17.md) | 261 | `result-track:5bf71acea9475706a8477a17ad74e0146c519272e33cfb1990f1276076ed298e` |
| 24 | `theorem` | [log_71_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-71-lower--1e7899f91a0bd94ec5370ef9.md) | 274 | `result-track:1e7899f91a0bd94ec5370ef980d8f26dd4f3e38eb1bcd95e15ff640361bca649` |
| 25 | `theorem` | [log_73_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-73-lower--9a329e3eb7ebb15fd0cb37b9.md) | 287 | `result-track:9a329e3eb7ebb15fd0cb37b9bf329179558f63b45248e8e255e7467bc0cc3d4d` |
| 26 | `theorem` | [log_79_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-79-lower--b26bebb7cd45d32f2002591b.md) | 300 | `result-track:b26bebb7cd45d32f2002591b14caad99752059883d7cf6119c34aea70328f6b3` |
| 27 | `theorem` | [log_83_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-83-lower--e4a2b2ea7937e3087d9c55f6.md) | 313 | `result-track:e4a2b2ea7937e3087d9c55f64ff70dcff7c037e837d8b0b43f687aa365b525ea` |
| 28 | `theorem` | [log_89_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-89-lower--84b6ce19bc93bee692106a4c.md) | 326 | `result-track:84b6ce19bc93bee692106a4c7624b9fd98c3ef7af9b4d9a7b1bfd484b769674b` |
| 29 | `theorem` | [log_97_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/log-97-lower--0b771321504a305b5860f344.md) | 339 | `result-track:0b771321504a305b5860f344122ab344febf4b7b922143a20941a313f24b0fd1` |
| 30 | `def` | [primeInventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/primeinventory--07026f355b55af7e2b59d760.md) | 352 | `declaration-track:07026f355b55af7e2b59d760311cc39954ae7e48213feb00836223d10e7f640c` |
| 31 | `def` | [certifiedLogLower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/certifiedloglower--c93d037423439544855a6be3.md) | 354 | `declaration-track:c93d037423439544855a6be37a2efcb36fc79d9c2c521e46796f1675db0c3936` |
| 32 | `def` | [powerCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/powercoefficient--5868b6505214044896683e75.md) | 357 | `declaration-track:5868b6505214044896683e7534d7b7d6e43150cccc35b25ca1412d57d6253e4d` |
| 33 | `def` | [finiteProperPowerMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/finiteproperpowermoment--97d4c3deae59c0a635c25f28.md) | 359 | `declaration-track:97d4c3deae59c0a635c25f28d8386a0aaa16c72ac66bd81836a5921c50e7e28b` |
| 34 | `theorem` | [inventory_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/inventory-primes--826a4395509c8c47b3748f26.md) | 362 | `result-track:826a4395509c8c47b3748f267dbcc476a1c0b9c744fa39223860257bde76983f` |
| 35 | `theorem` | [inventory_log_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/inventory-log-lower--12ab2b5852c66dc987c1caf7.md) | 368 | `result-track:12ab2b5852c66dc987c1caf7d716fd4c48ebcf2d60d448cfd076441ffa2af14e` |
| 36 | `theorem` | [finiteProperPowerMoment_gt_nine_quarters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/finiteproperpowermoment-gt-nine-quarters--658761df5cf98d9e8efe5e94.md) | 399 | `result-track:658761df5cf98d9e8efe5e941be9259cc052d9b6bc73accde11a9c34612226c8` |
| 37 | `theorem` | [finiteProperPowerMoment_eq_atoms](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/finiteproperpowermoment-eq-atoms--4d84748801fda2b9d61417d7.md) | 418 | `result-track:4d84748801fda2b9d61417d7221fa98fa31ce90493e60605a6aadb81f33d830a` |
| 38 | `theorem` | [intercept_positive_of_actual_bridges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Attempt01/Variant2cc62d2942d5eadc8c7e0d07eec0f6e2f8f3ff66ab0f727b4ddfe1753ac87873.lean/declarations/intercept-positive-of-actual-bridges--b2c80c87b8cded341ce0755d.md) | 430 | `result-track:b2c80c87b8cded341ce0755d31b8204d545d55ae8d7e2eab7063adb6005a2acc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
