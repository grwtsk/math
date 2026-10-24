# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b22d151f6675760bc998da2c259830144f0b7ea",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b22d151f6675760bc998da2c259830144f0b7ea`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineSectionCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineSectionCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionInnerProduct.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Completion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SectionCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/sectioncompletion--f2856bdfd641b1f8727d8bfc.md) | 35 | `declaration-track:f2856bdfd641b1f8727d8bfcc1171abc63e490fd193c78472e01cc361e175a6e` |
| 2 | `theorem` | [sectionCompletion_complete](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/sectioncompletion-complete--34558df13034d546b976da05.md) | 40 | `result-track:34558df13034d546b976da05828c86cb1dd309d590f0221f10a66103c12bdf85` |
| 3 | `def` | [toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion--e55496d962a6592cf961155e.md) | 44 | `declaration-track:e55496d962a6592cf961155ee3bf8aca59ed6b52f33d485dff5bfffdd5abe650` |
| 4 | `theorem` | [toCompletion_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-apply--94e4d44bea621a45fa7202f4.md) | 48 | `result-track:94e4d44bea621a45fa7202f4bcca4167efa9600cfe089ccbdcf37b825bc62e93` |
| 5 | `theorem` | [toCompletion_isometry](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-isometry--52aadb3d1af797388dff3dde.md) | 52 | `result-track:52aadb3d1af797388dff3dde4f90e9518156ef34632362644931099faca9b016` |
| 6 | `theorem` | [toCompletion_injective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-injective--5b74975700a8be5740c327f8.md) | 56 | `result-track:5b74975700a8be5740c327f80a7c48975447c20a9e44a1238130840fbd554beb` |
| 7 | `theorem` | [toCompletion_denseRange](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-denserange--27eabf854563f16209288e32.md) | 60 | `result-track:27eabf854563f16209288e326783b6be6914b7ab35ea62bac657a02c141e8d0e` |
| 8 | `theorem` | [toCompletion_isUniformInducing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-isuniforminducing--15c2d370178a8f78854e6874.md) | 64 | `result-track:15c2d370178a8f78854e6874814f1b05de45c66e2b55a5f0394bd4ad14bd0b8a` |
| 9 | `theorem` | [toCompletion_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-norm--e229daa4b99de88390a36025.md) | 68 | `result-track:e229daa4b99de88390a360256c70546144c6326f9bb2deed7ec70f9c2c40bfdf` |
| 10 | `theorem` | [toCompletion_inner](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-inner--e15f6fd0bb1336ead4c535dc.md) | 72 | `result-track:e15f6fd0bb1336ead4c535dc1537ce14289c7000e89df71969625c5e7fc4e10c` |
| 11 | `theorem` | [toCompletion_classOf_inner](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-classof-inner--ed074802ca5ea0d7c878d358.md) | 77 | `result-track:ed074802ca5ea0d7c878d358cfd0c39b3b14a7788584b5b8d0706f4fe94a135f` |
| 12 | `def` | [completionEnergy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completionenergy--0a395825523828238fa51d7f.md) | 84 | `declaration-track:0a395825523828238fa51d7f1482c1e23951f156412acbf1a39122404cf47c97` |
| 13 | `theorem` | [completionEnergy_lt_top](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completionenergy-lt-top--b22c8d4661b30fb3d09ac61c.md) | 88 | `result-track:b22c8d4661b30fb3d09ac61c0cf54c4426ca605b75fbe85e0ddad6f54c2fad0f` |
| 14 | `theorem` | [completionEnergy_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completionenergy-tocompletion--4f4b7c004e678b330c3a252d.md) | 93 | `result-track:4f4b7c004e678b330c3a252d58b074dd2e27d45271925d4fee1e2adbf596ec85` |
| 15 | `theorem` | [toCompletion_dist](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/tocompletion-dist--689e124f582f3426815e32f7.md) | 98 | `result-track:689e124f582f3426815e32f7b7b451b5f13fb494a7649f8f8b2c747339650040` |
| 16 | `theorem` | [completion_ext](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completion-ext--15f51b1f70adf47ebb0ffaaf.md) | 105 | `result-track:15f51b1f70adf47ebb0ffaaf982eeab2594365761fff27ef44bc9fd46998d4b4` |
| 17 | `def` | [extendLinear](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/extendlinear--c23164211ebdf5cece34d5c3.md) | 116 | `declaration-track:c23164211ebdf5cece34d5c301af76b5aa31ff498c000cea7fa9e629eb170ce4` |
| 18 | `theorem` | [extendLinear_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/extendlinear-tocompletion--9572894d72af82992be5a6bb.md) | 120 | `result-track:9572894d72af82992be5a6bb183fc0ba89397692a2a64cd70540d3c0ef459160` |
| 19 | `theorem` | [extendLinear_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/extendlinear-unique--5cac319eea2565eefd8c10c7.md) | 126 | `result-track:5cac319eea2565eefd8c10c775d247a8fb84491e1fb0afb6458491d66b796cff` |
| 20 | `theorem` | [existsUnique_extension](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/existsunique-extension--6bb104f2dbce6f0c87b8b18a.md) | 135 | `result-track:6bb104f2dbce6f0c87b8b18a43bfbbe3c7209e3726e87c85dd32980762e5e9e4` |
| 21 | `theorem` | [extendLinear_embedding](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/extendlinear-embedding--996a9452d8e77125d906e8ef.md) | 145 | `result-track:996a9452d8e77125d906e8ef8bf9ab544afad98116af43f3027f0f6c19b9a5bc` |
| 22 | `theorem` | [gauge_toCompletion_norm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gauge-tocompletion-norm--9fa2bf626e33a183226893d0.md) | 153 | `result-track:9fa2bf626e33a183226893d0dab203368efda0d7243d48c22725b2085ecd38ba` |
| 23 | `def` | [gaugeCompletionEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletionequiv--1ffd9fc6aa38463bc695722d.md) | 161 | `declaration-track:1ffd9fc6aa38463bc695722d762c1a12e53cbbb1d284c988d31307861b06fbb1` |
| 24 | `theorem` | [gaugeCompletion_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletion-tocompletion--6f964f476042eb8b5203e2ec.md) | 171 | `result-track:6f964f476042eb8b5203e2ec0528afe93f536af86a9a946935ead34620de9e5f` |
| 25 | `theorem` | [gaugeCompletion_symm_toCompletion](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletion-symm-tocompletion--3999dd637bcfbad44a1df4ac.md) | 182 | `result-track:3999dd637bcfbad44a1df4ac78c99afa8a31e414074aaafbdf5cfbf90bd42360` |
| 26 | `theorem` | [gaugeCompletion_isometry](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletion-isometry--cdcce37f6b32d2a934cea082.md) | 195 | `result-track:cdcce37f6b32d2a934cea0827a12ddc0d164a1c281fd190e54a6a8d4ab28428d` |
| 27 | `theorem` | [gaugeCompletion_inner](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletion-inner--3bc47948fba171d1368a64e6.md) | 199 | `result-track:3bc47948fba171d1368a64e65a30102e39f60d2810eaff3d76f5f7bbea59deae` |
| 28 | `theorem` | [completionEnergy_gauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completionenergy-gauge--0ed2fa25bf2e17b939422a34.md) | 204 | `result-track:0ed2fa25bf2e17b939422a344f6a9dd79442b4ef1443fc4b67ea8e4f8b524e9c` |
| 29 | `theorem` | [gaugeCompletion_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/gaugecompletion-unique--b1e8423d2854f6bef274e297.md) | 211 | `result-track:b1e8423d2854f6bef274e297d3871d56a525436681d380a19fc3b2887eaf3d4a` |
| 30 | `theorem` | [zeroMeasure_completion_eq_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/zeromeasure-completion-eq-zero--aa8dfed2a99a2e4e9f605616.md) | 222 | `result-track:aa8dfed2a99a2e4e9f60561644a61ec6c3d022f3b0b844d50c3c48d46c93adc7` |
| 31 | `def` | [diracVector](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/diracvector--f704b2507e1f446559bd6878.md) | 237 | `declaration-track:f704b2507e1f446559bd68780faec31a4b8af81e04791c5bcd54328142ae083a` |
| 32 | `theorem` | [equal_norm_distinct_completed](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/equal-norm-distinct-completed--04e44668198aa6a269f52c15.md) | 243 | `result-track:04e44668198aa6a269f52c15006b77e48b8b032e1bf48176841b3a4789beb145` |
| 33 | `theorem` | [completed_imaginary_pairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completed-imaginary-pairing--252cbed580ba359ceb7461c9.md) | 254 | `result-track:252cbed580ba359ceb7461c9860b2b16a252735b7536e675fc2e1fc5d8001112` |
| 34 | `theorem` | [completed_reversed_imaginary_pairing](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionCompletion.lean/declarations/completed-reversed-imaginary-pairing--0d87cb10101b5737504c5e70.md) | 259 | `result-track:0d87cb10101b5737504c5e70518966e3adf769ca61bf33220cfbe74157ed5a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
