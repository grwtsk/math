# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RosserSchoenfeldPrime.Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9055ac071fb1dff52c5bdf94a6cceb862831b174`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pntBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/pntbigo--22467b65d2affb7d2a102869.md) | 22 | `result-track:22467b65d2affb7d2a1028695b071dddbbd61db388d8dd700d8eaf85dcfb313d` |
| 2 | `theorem` | [pnt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/pnt--4c1f3c10c51dadadad673728.md) | 85 | `result-track:4c1f3c10c51dadadad6737281b629a19763f2be19de9359b0b2367988c68df7f` |
| 3 | `def` | [θ.Stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/stieltjes--952e269e278db3a7f823d88d.md) | 118 | `declaration-track:952e269e278db3a7f823d88d1f0f472057c846a1e8cd28a526e60f74c54cf21c` |
| 4 | `lemma` | [theta_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/theta-succ-sub--1ceacf33657ffb7e931d668f.md) | 131 | `result-track:1ceacf33657ffb7e931d668fea75444e6e7772ccb8685c31c461de0a63a08096` |
| 5 | `lemma` | [theta_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/theta-one--a39576e5c56c4e2db6a8f467.md) | 134 | `result-track:a39576e5c56c4e2db6a8f467a815653dba98671b4fd7deb65bf3c01f01586a26` |
| 6 | `lemma` | [theta_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/theta-two--c026f4399f5d5d35f75c4a90.md) | 137 | `result-track:c026f4399f5d5d35f75c4a90d25b1a6d23f9e98b1ce2787437ee492d8d21943c` |
| 7 | `lemma` | [leftLim_theta_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/leftlim-theta-succ--749429512251e7c31084477e.md) | 140 | `result-track:749429512251e7c31084477e7f6caf176b2d157f7a14979735eee93e74c9126d` |
| 8 | `theorem` | [summable_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/summable-pre413--1c3a5c2c26990f25e7caab97.md) | 160 | `result-track:1c3a5c2c26990f25e7caab97bbb69b3c2eae9ccf08d0edf9bf79dc5287e97553` |
| 9 | `lemma` | [support_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/support-pre413--decd49ba7cbb98955791f8ce.md) | 215 | `result-track:decd49ba7cbb98955791f8ce5243b43354d7e372250dff0fa4d68b3e581bfb0e` |
| 10 | `lemma` | [pre_413_measure_inter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/pre-413-measure-inter--c2d1f5b39cce492668e3b783.md) | 282 | `result-track:c2d1f5b39cce492668e3b7834c7125d2686702e78a8f1ba05b8db18969072452` |
| 11 | `theorem` | [pre_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/pre-413--e41d5bc6cfe5fab35eb89f97.md) | 349 | `result-track:e41d5bc6cfe5fab35eb89f974174c3cba8b7ba26f1f285ff5c1bcbbffa86d96d` |
| 12 | `theorem` | [eq_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-413--38612876b05938a1cdda05e2.md) | 500 | `result-track:38612876b05938a1cdda05e2ac52f61d317e88e19b2988e7c7dcadd1579c2b5e` |
| 13 | `theorem` | [eq_414](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-414--789b952fad8609a314d344d1.md) | 530 | `result-track:789b952fad8609a314d344d18964ec8c7c09feb32013aab02f94fad435cf438a` |
| 14 | `def` | [L](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/l--62c97ba97a06daa2a537db2a.md) | 604 | `declaration-track:62c97ba97a06daa2a537db2aa7daee64b46378ddc80b2c079d4b8e077ada7a2c` |
| 15 | `theorem` | [_root_.intervalIntegral.interval_add_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/root-intervalintegral-interval-add-ioi--0795e0bde20e542fafbc56be.md) | 608 | `result-track:0795e0bde20e542fafbc56bef88c46f3a8cc61251f7cbebc6f27fbffee12b4a3` |
| 16 | `theorem` | [intervalIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/intervalintegrable-inv-log-pow--d5cf911395921182ec6e8d72.md) | 618 | `result-track:d5cf911395921182ec6e8d726a6bd0c5a80dfb96630f1cd4470647fd11203f13` |
| 17 | `theorem` | [ioiIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/ioiintegrable-inv-log-pow--0dec52c2a72f839e3c3b079a.md) | 627 | `result-track:0dec52c2a72f839e3c3b079ad2bfb1e80ca5a0458f2ce956ab74b943f512b883` |
| 18 | `theorem` | [bound_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/bound-deriv--f41b9bc24c0252432de6f476.md) | 654 | `result-track:f41b9bc24c0252432de6f476558e904970d061efce04667ee43958e784b1f658` |
| 19 | `theorem` | [integrableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/integrableon-deriv--bc65692c6133b72c61e792ae.md) | 679 | `result-track:bc65692c6133b72c61e792ae7131557e63f0dbd7efcf842b0c2029972ace80c4` |
| 20 | `theorem` | [eq_415](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-415--5af021f3e711ca128747aa4e.md) | 713 | `result-track:5af021f3e711ca128747aa4e7b50adee58c4fb80894d78520388b35c5f0255dd` |
| 21 | `theorem` | [eq_417](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-417--ca8a66493c0609439a36d805.md) | 731 | `result-track:ca8a66493c0609439a36d805ba6419139c8e823128814dc430ae6987fd622784` |
| 22 | `theorem` | [eq_418](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-418--b96853520b3bb6f8244c804d.md) | 744 | `result-track:b96853520b3bb6f8244c804da7be1c9722da8a67c44d454508866414cb7d2d0b` |
| 23 | `theorem` | [ioiIntegral_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/ioiintegral-tendsto-zero--6296cd3f9b90d5c1237610cd.md) | 772 | `result-track:6296cd3f9b90d5c1237610cddea142d698a20f2edc92cc3af5b43003b9c36242` |
| 24 | `def` | [_root_.meisselMertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/root-meisselmertensconstant--5b1f9e8005cfa442665c9529.md) | 789 | `declaration-track:5b1f9e8005cfa442665c952942b2e573cb7b2a3826feb4c362c23b2caf09f9df` |
| 25 | `theorem` | [integrableOn_deriv_inv_div_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/integrableon-deriv-inv-div-log--b5f9bf34c33c04bfd21a1916.md) | 791 | `result-track:b5f9bf34c33c04bfd21a1916efc6714fa7689803cc50ddb896e3a97e207cbd35` |
| 26 | `theorem` | [meisselMertensConstant_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/meisselmertensconstant-identity--4bf11eca7773f1e990529816.md) | 799 | `result-track:4bf11eca7773f1e9905298163d98d5742f42829fc743e933863f670f6759027f` |
| 27 | `theorem` | [mertens_second_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/mertens-second-theorem--30587e4d152808f1b7b303b4.md) | 817 | `result-track:30587e4d152808f1b7b303b45947cdbc3bcafd148e5a159d0b993abf07267e0e` |
| 28 | `theorem` | [eq_419](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-419--57ad3252d88411f78f52df5c.md) | 849 | `result-track:57ad3252d88411f78f52df5cdbb13b234884b9692926e79dac6257abb9deac1c` |
| 29 | `theorem` | [mertens_second_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/mertens-second-theorem--16f100f0c8bd641eeb877067.md) | 866 | `result-track:16f100f0c8bd641eeb877067cb625b835243e3b1eb32074381a54c34ab5c9df8` |
| 30 | `def` | [_root_.mertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/root-mertensconstant--510c9e2f03aa04fa344eadc7.md) | 895 | `declaration-track:510c9e2f03aa04fa344eadc7fe7804ffc859865a9d1689a56dcb2c5e6caf85a3` |
| 31 | `lemma` | [log_div_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/log-div-log-eq--493ee6abff951b5fc6363799.md) | 897 | `result-track:493ee6abff951b5fc6363799ff1d018bdd12915c9878462edbd49f84f0c22945` |
| 32 | `lemma` | [deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/deriv-eq--ab2612a4ede75db76e80f8e5.md) | 901 | `result-track:ab2612a4ede75db76e80f8e505908825711aa2f130d899dd3757c1ceda8a3466` |
| 33 | `lemma` | [intervalIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/intervalintegral-eq--c5c3ee4e817cbf68dff18459.md) | 905 | `result-track:c5c3ee4e817cbf68dff18459daa7b47c9e14f0ec8e1544fbe0d44e5d270781bb` |
| 34 | `theorem` | [integrableOn_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/integrableon-deriv-inv--92f61aacd5da7686117509fc.md) | 910 | `result-track:92f61aacd5da7686117509fc9054080bd7a51b237cca5ebaaa8108d005b90e43` |
| 35 | `theorem` | [eq_420](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/eq-420--eff8c06005e68c1035bd881f.md) | 934 | `result-track:eff8c06005e68c1035bd881f5e9d320f70263b3a703b22e4bd208173f752636c` |
| 36 | `theorem` | [mertens_first_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/mertens-first-theorem--63484faeb120ac52552c175d.md) | 958 | `result-track:63484faeb120ac52552c175da157a7b1b0002fe357600fb9e6454a6455a0f60a` |
| 37 | `theorem` | [mertens_first_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/mertens-first-theorem--d70b978c7c38f9595d6182a3.md) | 980 | `result-track:d70b978c7c38f9595d6182a3d1651a4a2ff2b5466443a236dabe4d0e07c5f898` |
| 38 | `theorem` | [theorem_12](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/declarations/theorem-12--58ad798564f58e65470b49c1.md) | 1008 | `result-track:58ad798564f58e65470b49c1717ac412c7f1f87eda0b71caa03fb9ab57cb4d36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
