# Verification target: GRWTSK.Algebra.LinearAlgebra.CongruenceGuardAttempt04.Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c2ca0e2887ba7db5762bee55c3dab9d63c9d7e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c2ca0e2887ba7db5762bee55c3dab9d63c9d7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/quadratic--d307056cd12a0d863e36b8a9.md) | 16 | `declaration-track:d307056cd12a0d863e36b8a9bfda602d620a56a50ca34f35f8aabb1bc72e1b4f` |
| 2 | `def` | [HasNegativeDirection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/hasnegativedirection--ff8ff2c1ac1e94833527f912.md) | 19 | `declaration-track:ff8ff2c1ac1e94833527f91209a0b64c7cd8481d3a72876491d2c5d781558520` |
| 3 | `def` | [pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/pullback--ea7a516cefd3ed2b6c745c15.md) | 22 | `declaration-track:ea7a516cefd3ed2b6c745c15ce9cdac744c0fcf2c6867c19a31722ab0fd59c55` |
| 4 | `theorem` | [quadratic_pullback](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/quadratic-pullback--129b899d4b085e944802bd7b.md) | 25 | `result-track:129b899d4b085e944802bd7b6130b4b6f060f8be306a965c2717af09412d5786` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/pullback-ishermitian--7e1caa740fb197cef807af5f.md) | 31 | `result-track:7e1caa740fb197cef807af5fb909cb801bdc3669b0fbf1a6aac7381ac4edcb7b` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/invertible-psd-iff--d87909dd1aa9ec2456b65739.md) | 35 | `result-track:d87909dd1aa9ec2456b657397947fd12f3c280961b9156205794ef02a7bb415a` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/unitary-psd-iff--fd3afd4e57a242af67980b32.md) | 39 | `result-track:fd3afd4e57a242af67980b32ced5185c44e0e680d4385dd1bab2e0eab6da65dc` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/inverse-negative-witness--64cead58581d6f23d7d8d268.md) | 44 | `result-track:64cead58581d6f23d7d8d268ebd2895a708e4c17366cd4bdaa0f7ccf0aa48690` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/invertible-negative-iff--bf71464e008d38ea5758194c.md) | 50 | `result-track:bf71464e008d38ea5758194c80a9cee29b1a1296b3d6d5da8405608af9e97de2` |
| 10 | `theorem` | [negative_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/negative-not-psd--1d60dda7906c232be68c7484.md) | 59 | `result-track:1d60dda7906c232be68c7484bed5281f75e749344bafc6394cd259dd7c63fe77` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/hermitian-negative-iff-not-psd--90de2ced133ac9da8a26d2d1.md) | 66 | `result-track:90de2ced133ac9da8a26d2d16b0671380eed919e1a79b9cee07acaf8bca7fd30` |
| 12 | `theorem` | [pullback_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/pullback-one--9a365f8db0e4987996e9631e.md) | 78 | `result-track:9a365f8db0e4987996e9631e2d905a6ae5924fa22c8a817b6556c69fa3a2ec35` |
| 13 | `theorem` | [pullback_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/pullback-mul--7c0e5a1512fd8b71c022b993.md) | 82 | `result-track:7c0e5a1512fd8b71c022b9937eca610b29f6675cd24910dac2cf7272221e0a14` |
| 14 | `def` | [groupTransport](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/grouptransport--a9b883e08d85e09a6907c692.md) | 87 | `declaration-track:a9b883e08d85e09a6907c692f3ec747b81df85c8c2f51d7f992a94bf7b4c2bc9` |
| 15 | `theorem` | [groupTransport_one](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/grouptransport-one--e60c1bde9ab4b40a89ad4cc4.md) | 90 | `result-track:e60c1bde9ab4b40a89ad4cc4a803f8c962b72f4ef4b4ed9231f4fbe9432a6c02` |
| 16 | `theorem` | [groupTransport_mul](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/grouptransport-mul--7f139208082eabf343b689aa.md) | 94 | `result-track:7f139208082eabf343b689aaf629eafecf2495abfab9c851a031b3a91dd8b027` |
| 17 | `def` | [congruenceAction](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/congruenceaction--4fb3f50cfbf3ae3910114302.md) | 101 | `declaration-track:4fb3f50cfbf3ae3910114302f1c030b414018e5234c9bc7fa26e6683930e4a80` |
| 18 | `theorem` | [group_negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/group-negative-iff--bd064f3a6dfbcaa438d903f3.md) | 107 | `result-track:bd064f3a6dfbcaa438d903f32a1a82e2b2ba11a582cbdf33e115adf7773eb477` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/group-orbit-not-psd--584e5fbda7768141d490f425.md) | 112 | `result-track:584e5fbda7768141d490f425750158d22563a817dd4cb0e82f054978ef0fa8b8` |
| 20 | `structure` | [SourcePreserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/sourcepreserving--2f6fd1a026c5a398c76db124.md) | 118 | `declaration-track:2f6fd1a026c5a398c76db124471f1db98abd4ac991cb94c99ba193856769be7c` |
| 21 | `structure` | [CorrectedSource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/correctedsource--ff320c76324ce5466bdc425c.md) | 123 | `declaration-track:ff320c76324ce5466bdc425c67f14e7d7aa9e02aeca65d3295b400f8ccdd21a2` |
| 22 | `structure` | [LossySource](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/lossysource--6ea94598d036b419b0741170.md) | 129 | `declaration-track:6ea94598d036b419b074117019a7db85eac03e13b7040d85fe413293680d9e38` |
| 23 | `theorem` | [LossySource.coordinates_not_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/lossysource-coordinates-not-isunit--b220c191adad2b9dc71033ed.md) | 134 | `result-track:b220c191adad2b9dc71033ed0a33d33118d2fb7b67f6bd095d8b29296413a10f` |
| 24 | `theorem` | [SourcePreserving.psd_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/sourcepreserving-psd-iff--cfe80b19c677bbb84adbe85c.md) | 140 | `result-track:cfe80b19c677bbb84adbe85cf8f5468faa16578e3fc3b5e4fc87d2c800064a0b` |
| 25 | `theorem` | [SourcePreserving.negative_iff](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/sourcepreserving-negative-iff--bfac8786a98077124851df98.md) | 145 | `result-track:bfac8786a98077124851df982959c0e617661746e577c612c09ed35ae03b5c7f` |
| 26 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/correctedsource-quadratic-defect--ed3af796985664ca634ddc36.md) | 150 | `result-track:ed3af796985664ca634ddc3612183c59f82e943d6576f0af66cf9395fbd656de` |
| 27 | `def` | [indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/indefinite--21f79f49521f12fc045dceab.md) | 160 | `declaration-track:21f79f49521f12fc045dceabfdfb3c5aa70c03d7f409d5cccc6a2ba5aadd9eee` |
| 28 | `def` | [swap](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/swap--257a91163eb27792f08f9bbb.md) | 161 | `declaration-track:257a91163eb27792f08f9bbbdec46312c00b2153f2f610ba69c20d039422d665` |
| 29 | `def` | [imaginaryShear](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/imaginaryshear--2f21ac5531f93bcc72a4b81a.md) | 166 | `declaration-track:2f21ac5531f93bcc72a4b81abd28177635dd5b6c7be2e64816f3a6983cd453ca` |
| 30 | `def` | [projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/projection--90d1335081f3a4645fd7affd.md) | 172 | `declaration-track:90d1335081f3a4645fd7affd95e11a8076d8a8ff884eaea0017d9423f4c187ef` |
| 31 | `theorem` | [indefinite_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/indefinite-hermitian--46905e9bc08f365c311aa8c2.md) | 174 | `result-track:46905e9bc08f365c311aa8c2d13c503cc413032a74955cc1c6933d83805b37d1` |
| 32 | `theorem` | [indefinite_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/indefinite-actual-values--98e34c591f07adf9615a6e77.md) | 177 | `result-track:98e34c591f07adf9615a6e77e0c1ce64c38ad901fce884a0250b6f42b4b27b8b` |
| 33 | `theorem` | [indefinite_negative](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/indefinite-negative--6a3cc6cdf88848922b8ef55c.md) | 181 | `result-track:6a3cc6cdf88848922b8ef55cef0b23a182725c2928484bd14d6a8bc6c9bd9995` |
| 34 | `theorem` | [swap_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/swap-still-indefinite--27f3cfaed79f8ffdb9862352.md) | 185 | `result-track:27f3cfaed79f8ffdb9862352fe4d77fc4a2419fd194dd1d7e251b44e48016a9e` |
| 35 | `theorem` | [swap_actual_values](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/swap-actual-values--143bb851435e6485ac5bd37a.md) | 190 | `result-track:143bb851435e6485ac5bd37a7b58082e9d7064320ae1a6ee36d1fd583d1e7358` |
| 36 | `theorem` | [shear_actual_negative_value](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/shear-actual-negative-value--f6ff323b7c7889342f7e596a.md) | 196 | `result-track:f6ff323b7c7889342f7e596ad83e6b8944d49d147e047592f7f53bba57e7c752` |
| 37 | `theorem` | [shear_still_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/shear-still-indefinite--d1c7707361739eff0f63da06.md) | 201 | `result-track:d1c7707361739eff0f63da0622484ec804b45f7f7e4dbc3f958946b8056871e8` |
| 38 | `theorem` | [projected_indefinite](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/projected-indefinite--1867b4438363a279a0df18dd.md) | 207 | `result-track:1867b4438363a279a0df18dd00725d101af016a026345dfff689001f5f90563e` |
| 39 | `theorem` | [projection_psd](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/projection-psd--5a8309cccc9e794d098aaaa4.md) | 211 | `result-track:5a8309cccc9e794d098aaaa4e0a045a0535bb1e163f62588dca69b6a76d9a460` |
| 40 | `def` | [lossy_projection](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/lossy-projection--cf9ff1888ebc8eb74c326a90.md) | 218 | `declaration-track:cf9ff1888ebc8eb74c326a90fdae60b323b516847a9af0010c839916a1cb477c` |
| 41 | `theorem` | [singular_psd_does_not_reflect](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/singular-psd-does-not-reflect--d385ca9457ede2915e1d45af.md) | 223 | `result-track:d385ca9457ede2915e1d45afff47daafaa5e9e5dbfe7ef739ac16cfeb8d9e0a9` |
| 42 | `theorem` | [correction_changes_sign](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/correction-changes-sign--0bb799bce5cfadbced629365.md) | 227 | `result-track:0bb799bce5cfadbced629365a38ccd2c3464b64b718d1a416abf7dad5a5e2070` |
| 43 | `def` | [signCorrected](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/signcorrected--6864e5ded3fec24015b59b20.md) | 240 | `declaration-track:6864e5ded3fec24015b59b20d8fae9633125166d1a58d2029db39bf59ff81fe9` |
| 44 | `theorem` | [lossy_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/lossy-not-source-preserving--b0e1b05f3923754c48f904f0.md) | 246 | `result-track:b0e1b05f3923754c48f904f096658c36cc356c13ea2a92359fc9336cfc1693c6` |
| 45 | `theorem` | [correction_not_source_preserving](../../../../../mathematics/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant9bd84e0a92caf06f02f91758d7981d3559efead819bb0ec94734fb52209e98c1.lean/declarations/correction-not-source-preserving--f125d7d532c2bca20470d10b.md) | 250 | `result-track:f125d7d532c2bca20470d10b241d4967cba5cfdb7b3a8e12346ad433650fea33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
