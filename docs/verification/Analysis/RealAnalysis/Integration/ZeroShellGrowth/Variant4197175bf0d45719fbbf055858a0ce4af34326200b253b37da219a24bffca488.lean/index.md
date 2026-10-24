# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroShellGrowth.Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b547779ccc46302c9bef9001c780286c9072981",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b547779ccc46302c9bef9001c780286c9072981`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/zetamajorant--1a3a6deeca389377db7ca285.md) | 30 | `declaration-track:1a3a6deeca389377db7ca285b62eda38e846bc2457b3c39afa8c1c6354d7f0b8` |
| 2 | `lemma` | [zetaMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/zetamajorant-nonneg--a757dbe90a67b2b3887388c6.md) | 32 | `result-track:a757dbe90a67b2b3887388c664f360ca0b91c6a09e2ddba645f4f9746251fdaa` |
| 3 | `lemma` | [norm_zeta_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-zeta-nat-le--e9e9bad9387e6c06790eca88.md) | 35 | `result-track:e9e9bad9387e6c06790eca88f08af11ede996a902c063bd72ad8af821dba047f` |
| 4 | `lemma` | [factorial_le_exp_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/factorial-le-exp-square--9f3f1be282e37db45e1c3ccf.md) | 53 | `result-track:9f3f1be282e37db45e1c3ccfa76481fff93af9dbd8d6198dc6afd67bcd770417` |
| 5 | `lemma` | [norm_gammaR_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-gammar-even-le--9061c3c9fa696802b8175bf6.md) | 61 | `result-track:9061c3c9fa696802b8175bf63c9b6757ff78ae916e93f7e79a5ba230a62caa35` |
| 6 | `lemma` | [norm_completed_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-completed-even-le--890e1811891589430710925b.md) | 80 | `result-track:890e1811891589430710925b91819c486019ba8c72c56b8f5b3d9866cda09510` |
| 7 | `lemma` | [norm_pole_zero_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-pole-zero-le-one--3333f36975565d86972981ae.md) | 98 | `result-track:3333f36975565d86972981ae80767faf42a57b16aa03679533153a03f78c6ce7` |
| 8 | `lemma` | [norm_pole_one_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-pole-one-le-one--9274a7125154e1ae37dac1c6.md) | 105 | `result-track:9274a7125154e1ae37dac1c68c8f1569a92728d4599a129d63333e1ffd9a4105` |
| 9 | `lemma` | [norm_completed_zero_even_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/norm-completed-zero-even-le--603039e00718cce1dcf077fc.md) | 118 | `result-track:603039e00718cce1dcf077fc165bc4d1d3be89cf5ba8260106e36b95dcbd11ed` |
| 10 | `lemma` | [completed_zero_even_re_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/completed-zero-even-re-bound--473022878224f54587d9deb1.md) | 139 | `result-track:473022878224f54587d9deb1d95ddc8f3300aee97297fa95238051b145d2a18e` |
| 11 | `lemma` | [shellGrowth_evenKernel_one_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-evenkernel-one-le--0a59fa044c4f3048b06be3c2.md) | 148 | `result-track:0a59fa044c4f3048b06be3c27757680cacf32ff077a3d955eb58a4b7f47b1aca` |
| 12 | `lemma` | [shellGrowth_fmodif_im](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-fmodif-im--74f53a0efe1b378196c27c77.md) | 162 | `result-track:74f53a0efe1b378196c27c77d7d730582d792cdfb50cc7e73c58227961970267` |
| 13 | `lemma` | [shellGrowth_fmodif_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-fmodif-nonneg--3835620f20bd5cb2c51916ee.md) | 168 | `result-track:3835620f20bd5cb2c51916ee3953b62ba2bdb0274cc59ae4155d0856f5c4bf80` |
| 14 | `lemma` | [shellGrowth_fmodif_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-fmodif-real--c99901fef06951ca91409338.md) | 191 | `result-track:c99901fef06951ca91409338b1bb5a9682a89c27d9689be229d6fbd7d3e0d28f` |
| 15 | `lemma` | [shellGrowth_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-mellin-integrable--5558e9d3646b437bc62c7b5d.md) | 195 | `result-track:5558e9d3646b437bc62c7b5d21dabca478ee0d716fe99be93d94e4df3e45afc6` |
| 16 | `lemma` | [shellGrowth_lambda_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-lambda-integral--436111896defe9f0fd9865a7.md) | 200 | `result-track:436111896defe9f0fd9865a7069d12b195d65ad246b92e54586ce521ea5322d0` |
| 17 | `lemma` | [shellGrowth_real_integrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-real-integrand--729f632b2667a81f1b0170b8.md) | 205 | `result-track:729f632b2667a81f1b0170b806cdd310fec85318fc78a2a31e296f4e9d80e877` |
| 18 | `lemma` | [shellGrowth_real_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-real-integrable--aa69cc598386703006485e2d.md) | 212 | `result-track:aa69cc598386703006485e2d27b76fac7eb75e1a2e0ecb3ad2ba86062bf36c58` |
| 19 | `lemma` | [shellGrowth_real_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-real-integral--e454074de422794ca2382b4f.md) | 221 | `result-track:e454074de422794ca2382b4fbca5119e0abb1af40aa1fdbf26b8ebc82476211b` |
| 20 | `lemma` | [shellGrowth_strip_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-strip-bound--b614b87e30307489e9401968.md) | 235 | `result-track:b614b87e30307489e940196810c306d9f361c00bba4ec9013f3227c1ad8b1463` |
| 21 | `lemma` | [shellGrowth_integer_endpoint_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-integer-endpoint-bound--c1aa689e9e9597a0aaa0151b.md) | 262 | `result-track:c1aa689e9e9597a0aaa0151bbf9233fa47e06d3d732741ae22f830a65559a848` |
| 22 | `lemma` | [shellGrowth_sphere_of_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-sphere-of-endpoint--86972d1a6d86957885add8b2.md) | 271 | `result-track:86972d1a6d86957885add8b2f50859ca75343647b46b1ff3c025aff857dd458a` |
| 23 | `lemma` | [shellGrowth_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroShellGrowth/Variant4197175bf0d45719fbbf055858a0ce4af34326200b253b37da219a24bffca488.lean/declarations/shellgrowth-global--581b9df76ef9a4617fd1e164.md) | 332 | `result-track:581b9df76ef9a4617fd1e1644b8bdd3cf325e4c0689ac324a78b6a545c325a28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
