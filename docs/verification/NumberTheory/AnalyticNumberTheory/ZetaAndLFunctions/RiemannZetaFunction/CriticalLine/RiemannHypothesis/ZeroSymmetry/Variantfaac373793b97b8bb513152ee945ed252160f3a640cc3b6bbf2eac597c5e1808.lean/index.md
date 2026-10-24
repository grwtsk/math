# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroSymmetry.Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c9b0d15ff17f90cc5a98d23f6d331d1b4632ac4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c9b0d15ff17f90cc5a98d23f6d331d1b4632ac4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Definitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_conjugate_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/zero-conjugate-involutive--a5ca0a1bd6003323bbec0263.md) | 28 | `result-track:a5ca0a1bd6003323bbec0263ce28c219de8275610e2ff45d531d6cc88d1791bd` |
| 2 | `theorem` | [zero_reflect_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/zero-reflect-involutive--6f02251b17a2c14005320d46.md) | 32 | `result-track:6f02251b17a2c14005320d46aa9ad1acbf0623df64193763781e0f65912325ed` |
| 3 | `theorem` | [zero_conjugate_reflect_commute](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/zero-conjugate-reflect-commute--c0f9652273e63231f95ac98c.md) | 35 | `result-track:c0f9652273e63231f95ac98c04c216e1041f2a8c96baea184ee15cf76274c5b6` |
| 4 | `theorem` | [critical_reflection_eq_composite](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/critical-reflection-eq-composite--198787add0281351aabca052.md) | 39 | `result-track:198787add0281351aabca0522a1bca7cc34365eaee5988d00e959c6f91a80baa` |
| 5 | `theorem` | [critical_reflection_involutive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/critical-reflection-involutive--0b7b53a8606e055ce1cb6ac5.md) | 43 | `result-track:0b7b53a8606e055ce1cb6ac52d5de149cf3dab1162e528cea1586d1ea8202885` |
| 6 | `theorem` | [NontrivialZetaZero.ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-ne-zero--b65813a3d6b82bcd9ccda249.md) | 48 | `result-track:b65813a3d6b82bcd9ccda249cac802fccc163361ac0caee1044b07d06f0ccbe4` |
| 7 | `theorem` | [NontrivialZetaZero.gamma_real_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-gamma-real-ne-zero--2690dc55b776d14a487614da.md) | 55 | `result-track:2690dc55b776d14a487614dafe5dbc9fdf2c72c80d4e3e07c10744b050bc8944` |
| 8 | `theorem` | [NontrivialZetaZero.conjugate](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-conjugate--dbef8afcbb1fe8fe03d53598.md) | 68 | `result-track:dbef8afcbb1fe8fe03d53598bec03e4023a61ab4fecb6e8c0b09af7e7b18525e` |
| 9 | `theorem` | [NontrivialZetaZero.reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-reflect--e6eb2e466648f6de9e79a6d2.md) | 84 | `result-track:e6eb2e466648f6de9e79a6d2b603cfec9fc4c90c40d7bdeba84274a095667883` |
| 10 | `theorem` | [NontrivialZetaZero.critical_reflection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-critical-reflection--cbcb4fdda49c74c9283fea16.md) | 108 | `result-track:cbcb4fdda49c74c9283fea168edf458b18258c01896b1e3c6cd4072b091a02ec` |
| 11 | `theorem` | [NontrivialZetaZero.mem_critical_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivialzetazero-mem-critical-strip--e3fea3cdce3649427dfaef23.md) | 113 | `result-track:e3fea3cdce3649427dfaef234e7ec32814b25dfdec7db0ac49acf9791022dac8` |
| 12 | `theorem` | [nontrivial_zero_conjugate_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivial-zero-conjugate-iff--4b42f0c24bba54fbf815cc6b.md) | 123 | `result-track:4b42f0c24bba54fbf815cc6bcc395262f526b8900ee7f7a5009d27a011783361` |
| 13 | `theorem` | [nontrivial_zero_reflect_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivial-zero-reflect-iff--a4fcce09b2d836613d21336a.md) | 131 | `result-track:a4fcce09b2d836613d21336a85c23477f415e817c9c4727c69f28c798edd111a` |
| 14 | `theorem` | [nontrivial_zero_critical_reflection_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSymmetry/Variantfaac373793b97b8bb513152ee945ed252160f3a640cc3b6bbf2eac597c5e1808.lean/declarations/nontrivial-zero-critical-reflection-iff--1641dae950f3e9935cec2ee7.md) | 139 | `result-track:1641dae950f3e9935cec2ee702c2a314ddc9ff2dc194c2cf46fe2d3b601cf603` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
