# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletLine.Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "623d2728545fdcf928c20af733ee17858b74c2d8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `623d2728545fdcf928c20af733ee17858b74c2d8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Main` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/lseries-term-line--be5209c661699037533cb176.md) | 25 | `result-track:be5209c661699037533cb1761f5d75a272b743a31b723a02049f4a675bf89e4d` |
| 2 | `theorem` | [norm_LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/norm-lseries-term-line--0d46d129e76ad41f9fdad103.md) | 47 | `result-track:0d46d129e76ad41f9fdad1037fa2105af9f7ccb0f94ab58bc39b12712fac6c71` |
| 3 | `theorem` | [integrand_eq_tsum_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/integrand-eq-tsum-gen--f3adc5fa53b49de7693bd29b.md) | 57 | `result-track:f3adc5fa53b49de7693bd29b86a544d9d831147a93d0a35802d575feb1edd177` |
| 4 | `theorem` | [per_n_line_integral_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/per-n-line-integral-gen--67c0f2dd79695f38b5dc4bb0.md) | 64 | `result-track:67c0f2dd79695f38b5dc4bb09f8de58558bcd605596e58aa5b8ff2102adb98c8` |
| 5 | `theorem` | [continuous_LSeries_term_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/continuous-lseries-term-line--ab81f162475943a2e3a2dd3d.md) | 109 | `result-track:ab81f162475943a2e3a2dd3d842a1853007bcb45709b53e3f8fc74ce9703d08d` |
| 6 | `theorem` | [summable_coeff_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/summable-coeff-bound--2d33849e9b2e05263143c1a1.md) | 120 | `result-track:2d33849e9b2e05263143c1a1d1c60e695199478e42116e2239de307e268fd7ef` |
| 7 | `theorem` | [continuous_LSeries_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/continuous-lseries-line--93b46ce55a5f843a9daefa87.md) | 129 | `result-track:93b46ce55a5f843a9daefa87d24a8c9c2d640bdecab19a4c132eb5a1457d743a` |
| 8 | `theorem` | [norm_LSeries_line_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/norm-lseries-line-le--af938562be4e65fa85d541cc.md) | 137 | `result-track:af938562be4e65fa85d541cceaac83c1773e4ac8710db96986c7a93bae8f8fdf` |
| 9 | `theorem` | [line_terms_integrable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/line-terms-integrable--b5cf5b4a4794686d83565e0e.md) | 147 | `result-track:b5cf5b4a4794686d83565e0e7835d8d964ba97a7f4e4571417ebab88a60f73ca` |
| 10 | `theorem` | [line_integral_swap_gen](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/line-integral-swap-gen--82ce3d6cc8d2ebab7fac44da.md) | 182 | `result-track:82ce3d6cc8d2ebab7fac44daab7743a2a501af14a81406b42841c42e4e771b8f` |
| 11 | `theorem` | [integrable_Hfn_mul_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/integrable-hfn-mul-lseries--53365713d9f6156bee9dc206.md) | 190 | `result-track:53365713d9f6156bee9dc206fad1230d0040a7f680fbb6fc2e988cc2a9bcbbe0` |
| 12 | `theorem` | [dirichlet_line](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/dirichlet-line--8ab63cb3935c6848126a77a6.md) | 207 | `result-track:8ab63cb3935c6848126a77a68ec56e3d9b01647e8dabcd67f8cb778d0e92cdf7` |
| 13 | `theorem` | [dirichlet_line_mirror](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/declarations/dirichlet-line-mirror--3e91420621caca09581ef150.md) | 230 | `result-track:3e91420621caca09581ef1502884c89fe0e6d94b54e04e5369c09ac2acf8cf84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
