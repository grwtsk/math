# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afb3613da94f205be3bceb1ba5e93bd6b480a88b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afb3613da94f205be3bceb1ba5e93bd6b480a88b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaDifferentialBridge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaSourcePair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetasourcepair--b0810b09d83f1d54a3a43ed7.md) | 38 | `declaration-track:b0810b09d83f1d54a3a43ed7bcb56ce0f34915e00a7c8526cf123d0c3982ab50` |
| 2 | `def` | [thetaStrongPair](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetastrongpair--cbf0ae722b0fd070f981a25f.md) | 42 | `declaration-track:cbf0ae722b0fd070f981a25f2341000345c5248e95ee04a4cf8ce8d86434e3f3` |
| 3 | `def` | [thetaUpperSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetauppersource--7054debaa485c7111a18c4b3.md) | 46 | `declaration-track:7054debaa485c7111a18c4b339235563ee506286e995caef48fdde49a317eefb` |
| 4 | `def` | [thetaLowerSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetalowersource--eca59d58947fe42ccaab7070.md) | 50 | `declaration-track:eca59d58947fe42ccaab70702b6c83c0ae6be7f5739a45ecf54cfa8ad66cd587` |
| 5 | `theorem` | [thetaSourcePair_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetasourcepair-symm--90af13d27435a10c164f2a97.md) | 54 | `result-track:90af13d27435a10c164f2a978ef601a72943426331db0bee3374cbad6d2cde23` |
| 6 | `theorem` | [thetaStrongPair_g_eq_f](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetastrongpair-g-eq-f--5d99e513ab8228fc243a15f1.md) | 59 | `result-track:5d99e513ab8228fc243a15f1637cc656dfa07bc64bc9180eb66ad54a9e80e569` |
| 7 | `theorem` | [thetaStrongPair_self_dual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetastrongpair-self-dual--3aa5d28552e1016dedaff773.md) | 65 | `result-track:3aa5d28552e1016dedaff773b42be9e44b46a4758639f7e6801b524045b44f81` |
| 8 | `theorem` | [cpow_neg_half_mul_rpow_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/cpow-neg-half-mul-rpow-half--7395a627cb06d647c7c2d113.md) | 73 | `result-track:7395a627cb06d647c7c2d1135941bc383fecec51f8498a57d06aa03d990ad601` |
| 9 | `theorem` | [thetaStrongPair_f_eq_two_thetaPsi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetastrongpair-f-eq-two-thetapsi--c43760b88226e2407d3dce33.md) | 82 | `result-track:c43760b88226e2407d3dce33493b1ca7bc94f1482bc361d0e33b5be6530bb358` |
| 10 | `theorem` | [thetaUpperSource_of_one_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetauppersource-of-one-lt--7d4b5c1731c5b769ed26d9fe.md) | 100 | `result-track:7d4b5c1731c5b769ed26d9fe9372fba26a0fcf4231456e0893be5b8c49a41935` |
| 11 | `theorem` | [thetaUpperSource_of_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetauppersource-of-le-one--f51905063d5b5fc2fb0d7fc5.md) | 104 | `result-track:f51905063d5b5fc2fb0d7fc56a6a3450b462ad1a139b0f851754afc40194104e` |
| 12 | `theorem` | [thetaStrongPair_source_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetastrongpair-source-split--f3854902232880fe3d087123.md) | 110 | `result-track:f3854902232880fe3d0871232fa7e66a4c519a896678716e4288a0d38527bcac` |
| 13 | `theorem` | [thetaUpperSource_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetauppersource-mellinconvergent--f7c7fa02cd856ce5f6ed8ff0.md) | 127 | `result-track:f7c7fa02cd856ce5f6ed8ff0e26ddcf3deede1f83fc58cec6e336e037e71f182` |
| 14 | `theorem` | [thetaLowerSource_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetalowersource-mellinconvergent--c81653a1a5aafd97969ea885.md) | 136 | `result-track:c81653a1a5aafd97969ea88529b3007bcf95a61e9b85ab10f505ca5760eb9d48` |
| 15 | `theorem` | [mellin_thetaLowerSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/mellin-thetalowersource--55bd05785b4f9823794e75a2.md) | 163 | `result-track:55bd05785b4f9823794e75a21725634e947fedeab14b482266da90904850d112` |
| 16 | `theorem` | [mellin_thetaStrongPair_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/mellin-thetastrongpair-split--0351b761685bed1b165b645a.md) | 184 | `result-track:0351b761685bed1b165b645a489c44e977e63daf1d60a6b8f158c83ea051c1f9` |
| 17 | `theorem` | [thetaSourcePair_Lambda0_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetasourcepair-lambda0-split--9be5d2f66abd5e8689858e25.md) | 203 | `result-track:9be5d2f66abd5e8689858e25a60446377ca6252780587195b311e03e8acb580c` |
| 18 | `theorem` | [exp_four_cpow_centered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/exp-four-cpow-centered--44128e5257b68b1a953c4bf9.md) | 212 | `result-track:44128e5257b68b1a953c4bf94d8996bcc2015c6b3e5d4276553d183f831421cd` |
| 19 | `theorem` | [mellin_thetaUpperSource_centered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/mellin-thetauppersource-centered--36ceb879611dc180117518a2.md) | 228 | `result-track:36ceb879611dc180117518a28a85778c9e21ebcdb2c81241644683ed4ec22bf8` |
| 20 | `theorem` | [thetaA_exp_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetaa-exp-integrableon--8e1aa90c8af8a1c22bdaa976.md) | 288 | `result-track:8e1aa90c8af8a1c22bdaa976b39ecac460b75e7f7cf9a4def2bc24293152a6a3` |
| 21 | `theorem` | [thetaA_cosh_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/thetaa-cosh-integral--c22e34ba832514e4d3389a89.md) | 349 | `result-track:c22e34ba832514e4d3389a899a406259705178d9d5938c4d1e61dec55737a149` |
| 22 | `theorem` | [completedRiemannZeta0_centered_thetaA](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/completedriemannzeta0-centered-thetaa--14b58ec8d4165f3b1c03ac3b.md) | 371 | `result-track:14b58ec8d4165f3b1c03ac3bbf9217cb01f0a1ced597a52612183588fe96f462` |
| 23 | `theorem` | [xi_centered_thetaA](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/declarations/xi-centered-thetaa--33af639c6d96268be7e06804.md) | 393 | `result-track:33af639c6d96268be7e06804b59f447d02a0087482030b14e4f3924cea02ce66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
