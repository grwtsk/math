# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Auxiliary.Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb99dba6c696d3e360c1a32cd3fc2900c53b5eaf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb99dba6c696d3e360c1a32cd3fc2900c53b5eaf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/hasderivat-ofreal--2f0908d4168bdd33b6412ddd.md) | 29 | `result-track:2f0908d4168bdd33b6412dddd45c60b423808b3b51e6d944ca2d21dcee671fcf` |
| 2 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/deriv-ofreal--9ba4da0a0eaf3cc3bc5f96a6.md) | 32 | `result-track:9ba4da0a0eaf3cc3bc5f96a6f971b866c9872d9908646f46ef17581dbdd5b93c` |
| 3 | `lemma` | [differentiableAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiableat-ofreal--7e113e7217073a9697f9ad36.md) | 35 | `result-track:7e113e7217073a9697f9ad368cfd410a705b4ab74d53b2fcd57cfe1e318af076` |
| 4 | `lemma` | [DifferentiableAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiableat-comp-ofreal--1ad429ac0b8c697b3cc3a118.md) | 40 | `result-track:1ad429ac0b8c697b3cc3a1182c0526e572b80685a1e2165760c49563d9d3ddf8` |
| 5 | `lemma` | [deriv.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/deriv-comp-ofreal--d28cbac48b39e8e4d8985936.md) | 44 | `result-track:d28cbac48b39e8e4d8985936a1fb44bdcdcc4fdc1117ba954bd82bf7fc90b02f` |
| 6 | `lemma` | [Differentiable.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiable-comp-ofreal--c2b7078a188841c92f1e6d50.md) | 48 | `result-track:c2b7078a188841c92f1e6d5007753cf3be7ed9433c47ab1db1ed64878d366a7f` |
| 7 | `lemma` | [DifferentiableAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiableat-ofreal-comp--3dcd66bc5635368e01c396c2.md) | 52 | `result-track:3dcd66bc5635368e01c396c2a78fba3ff793a2935e98db41ad24e8a499ba4546` |
| 8 | `lemma` | [Differentiable.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiable-ofreal-comp--2ca49da907baf5f3eb0b5567.md) | 56 | `result-track:2ca49da907baf5f3eb0b55675c25a4ba8ba3ea436c79a25c7ff2c474ff7cdcd5` |
| 9 | `lemma` | [HasDerivAt.of_hasDerivAt_ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/hasderivat-of-hasderivat-ofreal-comp--9a6e013b1b88e986fcae6acc.md) | 61 | `result-track:9a6e013b1b88e986fcae6acc5ded6085ff2a349c5dbb91b06aa731ff4dc1356c` |
| 10 | `lemma` | [DifferentiableAt.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiableat-ofreal-comp-iff--6fc39718990270a3cd24777d.md) | 72 | `result-track:6fc39718990270a3cd24777d38a9998a8181237eb6bb79c19b30231ecdb56466` |
| 11 | `lemma` | [Differentiable.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/differentiable-ofreal-comp-iff--ceb843ee5790db72776cf89d.md) | 78 | `result-track:ceb843ee5790db72776cf89d6f19995f9053740931785997450e4865ef35446a` |
| 12 | `lemma` | [deriv.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant8852b7ebc572ae4eda1f3c3e94f4cc072b1c744c2b71ae297bec3ebb74b00069.lean/declarations/deriv-ofreal-comp--88de907389c12e06990fa826.md) | 82 | `result-track:88de907389c12e06990fa826fe803e4329de329acc8a8bbdf21b1b1e65a7f541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
