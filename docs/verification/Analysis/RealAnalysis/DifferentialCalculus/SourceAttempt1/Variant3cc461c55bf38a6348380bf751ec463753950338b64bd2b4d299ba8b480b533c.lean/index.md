# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt1.Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a69abb0df500f1f5d8a77276460843258c753bd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a69abb0df500f1f5d8a77276460843258c753bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [peanoScale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/peanoscale--039687ab83816cb27a6db6e9.md) | 34 | `declaration-track:039687ab83816cb27a6db6e9c467761b9974c969434aa02ed8647676c963bcd4` |
| 2 | `def` | [boundaryPeano](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarypeano--92cdd3de534bbfc296bbcec6.md) | 37 | `declaration-track:92cdd3de534bbfc296bbcec6ffe7864a717920c52c01ec9fb9576fa39c4e2e44` |
| 3 | `def` | [boundaryKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarykernel--375da8187f18f7406d16d1f0.md) | 41 | `declaration-track:375da8187f18f7406d16d1f0951a1728d1025daa283091a3f47826f24016c632` |
| 4 | `theorem` | [boundaryPeano_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarypeano-contdiff-two--f418a6a4c5a118f9ec26ffc2.md) | 45 | `result-track:f418a6a4c5a118f9ec26ffc27fd27e9b27b03920893395ef0356d8b4acd411ad` |
| 5 | `theorem` | [boundaryPeano_second_deriv_eq_scaled](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarypeano-second-deriv-eq-scaled--b92a1d487f6295fd24a95ef6.md) | 50 | `result-track:b92a1d487f6295fd24a95ef6db2702d32b5bcf91fd1bb0b622f1b829edc5fca0` |
| 6 | `theorem` | [boundaryPeano_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarypeano-second-deriv--b93be0c57f2f12cdbe913887.md) | 70 | `result-track:b93be0c57f2f12cdbe9138878f6da6f43549c0051122f163c9539c458a822e5b` |
| 7 | `theorem` | [boundaryPeano_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/boundarypeano-nonneg--cc89080968eb8f834c421ebc.md) | 84 | `result-track:cc89080968eb8f834c421ebcfbdb7e46457dd9fba72cb47e98592f35be164dd9` |
| 8 | `theorem` | [peanoScale_mul_closedPrimeMoment_eq_atoms](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/peanoscale-mul-closedprimemoment-eq-atoms--ce874b3e1d9808e3ef66cd24.md) | 92 | `result-track:ce874b3e1d9808e3ef66cd2412c4036bb22f160e3aaa38991cd83fcccaacc79e` |
| 9 | `theorem` | [peanoScale_mul_mertensResidual_eq_atoms](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant3cc461c55bf38a6348380bf751ec463753950338b64bd2b4d299ba8b480b533c.lean/declarations/peanoscale-mul-mertensresidual-eq-atoms--a35ef79d0781b50da9513301.md) | 107 | `result-track:a35ef79d0781b50da951330182272b3c721246b4bc778d2ea48197de5ce3a47c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
