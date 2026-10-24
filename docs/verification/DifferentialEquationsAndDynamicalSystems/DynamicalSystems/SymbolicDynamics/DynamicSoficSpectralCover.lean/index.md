# Verification target: GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f1ddbbd9bff6cb99d794140f28497598923b005",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f1ddbbd9bff6cb99d794140f28497598923b005`.

Source path: `GRWTSK/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/Symbolic/DynamicSoficSpectralCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DynamicSpectralCover](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover--555039823b9277d9e2be418f.md) | 42 | `declaration-track:555039823b9277d9e2be418f6fd3b952b57b9ec95f3828b801d0edb4bbdadff8` |
| 2 | `theorem` | [DynamicSpectralCover.runs_on_graph](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-runs-on-graph--28c8c2081382d17681e7be69.md) | 70 | `result-track:28c8c2081382d17681e7be692437b908dc8ed36fd7e764d409d12507df9f4b8b` |
| 3 | `theorem` | [DynamicSpectralCover.refinement_commutes_on_trace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-refinement-commutes-on-trace--4a8cae8d2f7ebcb21121410f.md) | 82 | `result-track:4a8cae8d2f7ebcb21121410f094cc931f1b8eeba9b172fcabf718066f20b8f4b` |
| 4 | `theorem` | [DynamicSpectralCover.trace_injective](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-trace-injective--a0ad5b9eb428185efc430bd2.md) | 103 | `result-track:a0ad5b9eb428185efc430bd2541ffdcb6a8b13e6a386e36c5c94caa031e79816` |
| 5 | `theorem` | [DynamicSpectralCover.readout_factors_through_trace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-readout-factors-through-trace--d4d1a075d445a0846c03f68a.md) | 118 | `result-track:d4d1a075d445a0846c03f68a42191e1bd705b684ed9d37e0d14c87dca7989d7d` |
| 6 | `theorem` | [DynamicSpectralCover.stage_factors_through_trace](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-stage-factors-through-trace--c4cb1e3a6ed887c92defe267.md) | 132 | `result-track:c4cb1e3a6ed887c92defe2670255eff898c4e36b81d46ed5a1ff68ef1400a33f` |
| 7 | `theorem` | [DynamicSpectralCover.spectral_orbit_readout](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/dynamicspectralcover-spectral-orbit-readout--2717121a307992884a7f14e6.md) | 146 | `result-track:2717121a307992884a7f14e60dfe6f957dd62a6faf18072fbcc9a8e6e3cf2733` |
| 8 | `structure` | [ExactLanguageAt](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/exactlanguageat--db46d626f61fa06795f2ff2f.md) | 160 | `declaration-track:db46d626f61fa06795f2ff2fa04d07a9251fdd492bd54d90d937c338555a2d24` |
| 9 | `theorem` | [ExactLanguageAt.implies_sofic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/exactlanguageat-implies-sofic--cd15ee4f5b6bb0529fd9db38.md) | 171 | `result-track:cd15ee4f5b6bb0529fd9db386d6e01ec8ecb8f09de281a46d3f981e5685e7dee` |
| 10 | `theorem` | [no_exact_language_at_of_nonsofic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/no-exact-language-at-of-nonsofic--c0bab9bc0902e5d3d1036061.md) | 184 | `result-track:c0bab9bc0902e5d3d1036061f11a2784daec2ad8565ab802129ed8052092c2b3` |
| 11 | `theorem` | [no_exact_language_at_of_non_eventual_sofic](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/no-exact-language-at-of-non-eventual-sofic--a0da7343fd55079d845c77f5.md) | 198 | `result-track:a0da7343fd55079d845c77f511422ee2eab5df41f411b02ce4aa6ecbab894004` |
| 12 | `theorem` | [ExactLanguageAt.rightContexts_card_le](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/exactlanguageat-rightcontexts-card-le--a5cefe7ab9edae500056a08b.md) | 215 | `result-track:a5cefe7ab9edae500056a08bb945066488e7f1c2d925bd3ea5af6903c77c3e80` |
| 13 | `theorem` | [no_exact_language_at_of_unbounded_rightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/no-exact-language-at-of-unbounded-rightcontexts--066f66133fc59ab156b502dc.md) | 235 | `result-track:066f66133fc59ab156b502dc0dece61360b205e424a890bff6e2debd0f0179d1` |
| 14 | `theorem` | [no_exact_language_at_of_all_tail_rightContexts](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/DynamicSoficSpectralCover.lean/declarations/no-exact-language-at-of-all-tail-rightcontexts--f5aa8914052d8851e8e2e6f6.md) | 252 | `result-track:f5aa8914052d8851e8e2e6f6d64f00d9a5a449f5826f0d7f23815137936bdc8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
