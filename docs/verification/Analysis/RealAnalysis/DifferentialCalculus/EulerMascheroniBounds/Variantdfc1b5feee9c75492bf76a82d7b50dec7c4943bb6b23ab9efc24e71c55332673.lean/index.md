# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EulerMascheroniBounds.Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8963cbfea51252bc86b974039c63f91585533d1e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8963cbfea51252bc86b974039c63f91585533d1e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ModuleTopology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [γ₁](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/anonymous--0ef6f05c7c8af0376f3e0e56.md) | 51 | `declaration-track:0ef6f05c7c8af0376f3e0e56c1801af814bc13f9fbc5bd6e6699106e95c1f818` |
| 2 | `def` | [γ₂](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/anonymous--e260abfc005842b5aee25a7e.md) | 55 | `declaration-track:e260abfc005842b5aee25a7e1377457b385149bbacbbbfab235db360c7480983` |
| 3 | `def` | [γ₃](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/anonymous--89b403b57a4475af1e0efbb9.md) | 60 | `declaration-track:89b403b57a4475af1e0efbb90225bc60bfde30617702b4e0520e5dcbf78db34a` |
| 4 | `lemma` | [one_add_le_exp_quadratic_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/one-add-le-exp-quadratic-div--0a1c107dc4ad16140f3d2056.md) | 63 | `result-track:0a1c107dc4ad16140f3d205621e51e9098768c0d9678aa87449cfd8d17ac4a7a` |
| 5 | `lemma` | [log_one_add_le_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-one-add-le-quadratic--b94db79aa6a7b4a45d07299d.md) | 68 | `result-track:b94db79aa6a7b4a45d07299d246799e3a166798d0fca0d6fa93c1ec715ec49f1` |
| 6 | `lemma` | [eulerMascheroniSeq_step_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/eulermascheroniseq-step-lb--aa8031cd9e18ed36725e508e.md) | 75 | `result-track:aa8031cd9e18ed36725e508e3055669dc4df269052a94ce18cfc0ced95d427de` |
| 7 | `lemma` | [eulerMascheroniSeq_diff_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/eulermascheroniseq-diff-lb--0f8aab17a617e4749465b078.md) | 89 | `result-track:0f8aab17a617e4749465b0781ff392b67d7b31339f3140d3f67a8c8428a90a44` |
| 8 | `lemma` | [eulerMascheroniConstant_lb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/eulermascheroniconstant-lb--8391361c15ba2b9fad7ea48e.md) | 106 | `result-track:8391361c15ba2b9fad7ea48effc7499da7221e3a808622517385ef0ed8c739bc` |
| 9 | `lemma` | [pos_of_mvt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/pos-of-mvt--11780537204eec9131c01b4d.md) | 129 | `result-track:11780537204eec9131c01b4dac262a20cb2ee2965aa341a6472cebcda35511b5` |
| 10 | `lemma` | [log_ineq_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-1--172bfbdef252cbeec9039fd3.md) | 140 | `result-track:172bfbdef252cbeec9039fd3de3653b79936f304dd6b0ba881a62369ce194a03` |
| 11 | `lemma` | [log_ineq_2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-2--3f85bc69b7b316874af8122d.md) | 153 | `result-track:3f85bc69b7b316874af8122ddebda4ad76279d3ed3a7c2fc4dbc2bcc04287907` |
| 12 | `lemma` | [log_ineq_3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-3--ba8fe752af44893bf5845a77.md) | 168 | `result-track:ba8fe752af44893bf5845a7739c037ee95c73548dfefec0cbe0519ebf1cccf93` |
| 13 | `lemma` | [euler_maclaurin_decreasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/euler-maclaurin-decreasing--d7d85d36a4542efce333a745.md) | 193 | `result-track:d7d85d36a4542efce333a745769ea9b486c56cec7f7064c7e635ee9d034654dd` |
| 14 | `lemma` | [euler_maclaurin_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/euler-maclaurin-tendsto--f55dccbf7b0a3b8a0691115e.md) | 206 | `result-track:f55dccbf7b0a3b8a0691115e10641e1af8f776a37f9f274923beee22713aec38` |
| 15 | `lemma` | [euler_maclaurin_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/euler-maclaurin-bound--c6ac2ad1a6e123db026e7209.md) | 217 | `result-track:c6ac2ad1a6e123db026e72099068b666479e41958b7bd21c740b39ba794dff87` |
| 16 | `lemma` | [euler_maclaurin_numerical](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/euler-maclaurin-numerical--474184de6791405e47c092ff.md) | 234 | `result-track:474184de6791405e47c092ff5d3225696527ce61ec819bbf137f0fd344a8ac34` |
| 17 | `lemma` | [hγ_hi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/h-hi--a977578ac13d8be925a542d1.md) | 239 | `result-track:a977578ac13d8be925a542d17e9fae0a832135d987e8254c724544e45f64b37c` |
| 18 | `lemma` | [log_ineq_4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-4--d79e98b878160f24cefd15f6.md) | 257 | `result-track:d79e98b878160f24cefd15f69d021712e4eae9c8d6a93593f5b229ff6a1630f1` |
| 19 | `lemma` | [hasDerivAt_log_one_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-one-add--f511703e721fae6acc1f4b70.md) | 263 | `result-track:f511703e721fae6acc1f4b70b436d9387a05c39ebb61242a49fc5943f23e3bde` |
| 20 | `lemma` | [hasDerivAt_one_add_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-one-add-mul-log--dc1277d7d35dbe8cb4c95f53.md) | 268 | `result-track:dc1277d7d35dbe8cb4c95f53abc2d5b39e961e292a89f832977b854cb52fe8c3` |
| 21 | `lemma` | [hasDerivAt_one_add_sq_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-one-add-sq-mul-log--9e268811a12243ddf266c15e.md) | 273 | `result-track:9e268811a12243ddf266c15e3b3d7e7174e9f2401923726f4d0c4895a9b35da5` |
| 22 | `lemma` | [hasDerivAt_one_add_pow_three_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-one-add-pow-three-mul-log--08900a7ae96aae7af7761bf4.md) | 280 | `result-track:08900a7ae96aae7af7761bf4bee0621f0910103f25f20214611fe2e2e9fe5924` |
| 23 | `lemma` | [hasDerivAt_one_add_pow_four_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-one-add-pow-four-mul-log--233d7a0072a21d7ca8df18d3.md) | 287 | `result-track:233d7a0072a21d7ca8df18d3aa761ffa3a7d3777b2c435ad894dc3a6c5c5b0f8` |
| 24 | `lemma` | [hasDerivAt_log_ineq_5](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-ineq-5--9b5bb9a861213bec6c869d5d.md) | 294 | `result-track:9b5bb9a861213bec6c869d5dad0f286ae027b38e041fddc011641c80d8afcd8a` |
| 25 | `lemma` | [hasDerivAt_log_ineq_6](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-ineq-6--5d3656038f2840f1f9e4899b.md) | 308 | `result-track:5d3656038f2840f1f9e4899becb9811e475afdf7ef38f240246c5e86b3c34156` |
| 26 | `lemma` | [hasDerivAt_log_ineq_7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-ineq-7--a3bb53eeb05ded633b353242.md) | 324 | `result-track:a3bb53eeb05ded633b35324288576278a05e975ad85feba00c95fc48a43c066d` |
| 27 | `lemma` | [hasDerivAt_log_ineq_8](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-ineq-8--788838cc57628db3e95b8454.md) | 341 | `result-track:788838cc57628db3e95b845457189e5af851e2a23eacb8f098a899415b31617e` |
| 28 | `lemma` | [hasDerivAt_log_ineq_9](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/hasderivat-log-ineq-9--741cf586f5059dc9f59bb3b8.md) | 359 | `result-track:741cf586f5059dc9f59bb3b8260f35c83869a63a2edf400f765cf83a2cfeb932` |
| 29 | `lemma` | [log_ineq_5](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-5--62275bc7c43a611d5f2750b9.md) | 379 | `result-track:62275bc7c43a611d5f2750b958daf7d7a423aabbc0b1c5dd36ab8ec98213c567` |
| 30 | `lemma` | [log_ineq_6](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-6--fa901335950c4b706f225f1a.md) | 390 | `result-track:fa901335950c4b706f225f1a472b30413fa2f197225415c3aa47f5cbedc3e3f8` |
| 31 | `lemma` | [log_ineq_7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-7--05ac172c0d08bbf42c9d6eed.md) | 401 | `result-track:05ac172c0d08bbf42c9d6eede6c80fd7c1b32f9776e349bb813a4c1206786764` |
| 32 | `lemma` | [log_ineq_8](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-8--d5bd4246d9ddbf81b8df41cb.md) | 413 | `result-track:d5bd4246d9ddbf81b8df41cbb55cc539e587ba076895894f0b58e553349c9f35` |
| 33 | `lemma` | [log_ineq_9](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/log-ineq-9--245228f3ecdfb81503219a9a.md) | 424 | `result-track:245228f3ecdfb81503219a9af52a506516e54252cf6e8fc21465c0041c4df3a9` |
| 34 | `lemma` | [γ₃_increasing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/increasing--923671cab37acccda78a8c5b.md) | 440 | `result-track:923671cab37acccda78a8c5bffff7daab7225279a699556b4036aeff0a030cf7` |
| 35 | `lemma` | [γ₃_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/tendsto--6769e288c20b3b221b410a40.md) | 464 | `result-track:6769e288c20b3b221b410a4039a15b68e7de303ce045bf37105f029959f8989b` |
| 36 | `lemma` | [γ₃_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/lower-bound--892f76eafa5eddc286e3b6ad.md) | 478 | `result-track:892f76eafa5eddc286e3b6adac47ce104d63f836ed67395dea5c18b141cc41ba` |
| 37 | `lemma` | [hγ_lo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/declarations/h-lo--388f14ea3b7c002c2d6c1d4e.md) | 494 | `result-track:388f14ea3b7c002c2d6c1d4e9140990ab5b07438f02526eb85b170cb4a914b66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
