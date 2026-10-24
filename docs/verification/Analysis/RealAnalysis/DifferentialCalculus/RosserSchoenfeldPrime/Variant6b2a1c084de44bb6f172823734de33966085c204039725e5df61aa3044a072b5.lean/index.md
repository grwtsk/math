# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RosserSchoenfeldPrime.Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Stieltjes` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.MediumPNT` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pntBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/pntbigo--301ac43ff6fe846479f036ff.md) | 30 | `result-track:301ac43ff6fe846479f036ff5059d18312125d0217e047926a0660b8af22eb44` |
| 2 | `theorem` | [pnt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/pnt--cc5a3b9b1dc712ac0f8e78e8.md) | 93 | `result-track:cc5a3b9b1dc712ac0f8e78e81970b8734f7ab778f495b90c4429ed83c0160c5d` |
| 3 | `def` | [θ.Stieltjes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/stieltjes--f3a0eb3d03fd89e4075696d4.md) | 126 | `declaration-track:f3a0eb3d03fd89e4075696d4a427cba85dda00cf3b36779b65162974719414f1` |
| 4 | `lemma` | [theta_succ_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/theta-succ-sub--3d51451b22ba172adfd3f62d.md) | 139 | `result-track:3d51451b22ba172adfd3f62dda8527d3d889700cf8824d272f4358d9f29c0d2f` |
| 5 | `lemma` | [theta_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/theta-one--e2a3e684c67378206206e42e.md) | 142 | `result-track:e2a3e684c67378206206e42e582106c36cd7db39a246b135b4390aba8bd5103a` |
| 6 | `lemma` | [theta_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/theta-two--d5753e4fe243827d5b69371c.md) | 145 | `result-track:d5753e4fe243827d5b69371c2199d9db407ce8c5e16f7b0f31dda046dbb3172b` |
| 7 | `lemma` | [leftLim_theta_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/leftlim-theta-succ--e20af1456218d2ff0ef61ade.md) | 148 | `result-track:e20af1456218d2ff0ef61ade631c9934ea87d1fbb5fb250bd79770944b426d9b` |
| 8 | `theorem` | [summable_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/summable-pre413--653df93cd7abf303de6ae721.md) | 168 | `result-track:653df93cd7abf303de6ae721f3b6f7446908b89f7992a7538cd0e2ac13d4d228` |
| 9 | `lemma` | [support_pre413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/support-pre413--8da03c8dd16f6243b3365f26.md) | 223 | `result-track:8da03c8dd16f6243b3365f261ec84909ffc29517ced007feccc8a1ca50d508cc` |
| 10 | `lemma` | [pre_413_measure_inter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/pre-413-measure-inter--780249b8bda1f1af2fe7b249.md) | 290 | `result-track:780249b8bda1f1af2fe7b24916896e1606f6f4d1b1e5b3da4975e41b104af9db` |
| 11 | `theorem` | [pre_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/pre-413--60fa1dfd823bd96c5fbbe12b.md) | 357 | `result-track:60fa1dfd823bd96c5fbbe12b576e3b24dd0d2e3b272ee424314a64a193604c5f` |
| 12 | `theorem` | [eq_413](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-413--af1ca1cd4ea9ba5756170d5f.md) | 508 | `result-track:af1ca1cd4ea9ba5756170d5ff7ea2bb953f0cbf51894432fa82aa3c06d9cec25` |
| 13 | `theorem` | [eq_414](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-414--518086da6c34621d4e608ccc.md) | 538 | `result-track:518086da6c34621d4e608ccc28ebcb2d73fe63f0675043a793e08aece0ec05f1` |
| 14 | `def` | [L](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/l--0fb37b177bae436235f9dff8.md) | 612 | `declaration-track:0fb37b177bae436235f9dff875d23edaa42ec1ba0fb0906be5dec31effb3e139` |
| 15 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.intervalIntegral.interval_add_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant9f--bf7f067c804e9a8306feaa49.md) | 616 | `result-track:bf7f067c804e9a8306feaa49306cc22103c17ec73b76e922416c4809b9404fbb` |
| 16 | `theorem` | [intervalIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/intervalintegrable-inv-log-pow--11c84c78ffe4e33c3c63d1d1.md) | 626 | `result-track:11c84c78ffe4e33c3c63d1d1bc1ef8aee653c317bcfce8a6a3a58212517ddd9c` |
| 17 | `theorem` | [ioiIntegrable_inv_log_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/ioiintegrable-inv-log-pow--08c143570eb9b82402b6af91.md) | 635 | `result-track:08c143570eb9b82402b6af91993507f74e27844a892b5207382bf06264c2ca4b` |
| 18 | `theorem` | [bound_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/bound-deriv--308ea126f1e1349e4aebc5af.md) | 662 | `result-track:308ea126f1e1349e4aebc5af85294cf48698f05adf53115897945247c881e3aa` |
| 19 | `theorem` | [integrableOn_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/integrableon-deriv--7e6d618dabe31f8e3d2c7f9c.md) | 687 | `result-track:7e6d618dabe31f8e3d2c7f9c6bb839d8861070879327cd5cd4c274c5429d65e3` |
| 20 | `theorem` | [eq_415](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-415--f71887095163c9fe58706444.md) | 721 | `result-track:f71887095163c9fe58706444ed196973a811771e5e39d881ef04108c3f4b6273` |
| 21 | `theorem` | [eq_417](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-417--4cacec40a97de3733c329079.md) | 739 | `result-track:4cacec40a97de3733c32907941c542b1c61ed0ed2fe88c9b247e9bb7c48bc598` |
| 22 | `theorem` | [eq_418](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-418--0c684e10782203493547e76b.md) | 752 | `result-track:0c684e10782203493547e76b04d9c776ffede4fbc93e18153a7d93cae05dbcd4` |
| 23 | `theorem` | [ioiIntegral_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/ioiintegral-tendsto-zero--fa45d297404761a4406c2d70.md) | 780 | `result-track:fa45d297404761a4406c2d706e166b0386aed0c76274c41c518fa88af062ceec` |
| 24 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.meisselMertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant9f--97f181d29a43e14e4687390a.md) | 797 | `declaration-track:97f181d29a43e14e4687390a29258c2249a0605ae65019045fd368b123773ec3` |
| 25 | `theorem` | [integrableOn_deriv_inv_div_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/integrableon-deriv-inv-div-log--c8049d42758675e55716444b.md) | 799 | `result-track:c8049d42758675e55716444bc674acdae12dd81671350ea77e97d9c08b2ab184` |
| 26 | `theorem` | [meisselMertensConstant_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/meisselmertensconstant-identity--88813b41f45e7f54cd3f6004.md) | 807 | `result-track:88813b41f45e7f54cd3f6004f615643a2af84ce40b72dfc6130df2dc62ebb46f` |
| 27 | `theorem` | [mertens_second_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/mertens-second-theorem--ec62e0ec3e6aa7a682984085.md) | 825 | `result-track:ec62e0ec3e6aa7a6829840857d933d676b8584dd64f16517e3892b43af4073b5` |
| 28 | `theorem` | [eq_419](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-419--27c3b0123f5d7425dc4f9d8b.md) | 857 | `result-track:27c3b0123f5d7425dc4f9d8bfd8b1a106391c265b1e0b6427d290fb3b82f947d` |
| 29 | `theorem` | [mertens_second_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/mertens-second-theorem--f2f3f40d0f1c20a597c8b438.md) | 874 | `result-track:f2f3f40d0f1c20a597c8b438ab5e7de03c1381bbac37dbd7b73c8b1d5caaf2f5` |
| 30 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PntBigO.Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.mertensConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-pntbigo-variant9f--652d070f29bff969a2867606.md) | 903 | `declaration-track:652d070f29bff969a286760641085acabb9b14a0e2d1fd3cec4986b3fff3e781` |
| 31 | `lemma` | [log_div_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/log-div-log-eq--76122a3bae31fd2fe93ee9c1.md) | 905 | `result-track:76122a3bae31fd2fe93ee9c1df8d1df134517fffba15191affc475ff88fa53a0` |
| 32 | `lemma` | [deriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/deriv-eq--0ec21f2dfa8795a9e32c468a.md) | 909 | `result-track:0ec21f2dfa8795a9e32c468afe6fd88ffbf47515eb8e5c8c0d68a354f5da24c3` |
| 33 | `lemma` | [intervalIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/intervalintegral-eq--f7fbbe8d2ecfa4297b693cd7.md) | 913 | `result-track:f7fbbe8d2ecfa4297b693cd70efc527e92fce148ab30692d7dca2f043673aaae` |
| 34 | `theorem` | [integrableOn_deriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/integrableon-deriv-inv--4e47ce271ca94be1df9ef0b6.md) | 918 | `result-track:4e47ce271ca94be1df9ef0b6a14e7fd902aad73e93f918c47ea8293f269c34f6` |
| 35 | `theorem` | [eq_420](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/eq-420--86eccba4bb9a4bc4872d4b4a.md) | 942 | `result-track:86eccba4bb9a4bc4872d4b4aae33be8f711c78bab1dc569a487586071da96338` |
| 36 | `theorem` | [mertens_first_theorem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/mertens-first-theorem--8ac2351df26ff259f8c13275.md) | 966 | `result-track:8ac2351df26ff259f8c13275a410d4d955f7f873bd23197160420642ddc0668b` |
| 37 | `theorem` | [mertens_first_theorem'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/mertens-first-theorem--7c9d12bfacb28b4f5d2ca33a.md) | 988 | `result-track:7c9d12bfacb28b4f5d2ca33aa713cb4d80cec6ea90a1dec2970901b8aab7e679` |
| 38 | `theorem` | [theorem_12](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/declarations/theorem-12--30fb8f2359bda0053f6b3685.md) | 1016 | `result-track:30fb8f2359bda0053f6b36859945825647dd0ad0bf734ef3170531d02f071002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
