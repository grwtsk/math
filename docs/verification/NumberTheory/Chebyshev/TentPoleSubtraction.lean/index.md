# Verification target: GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentPoleSubtraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RectangularPoleReduction`](../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours`](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries`](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCoefficient](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/logcoefficient--2a052dac5d1f7a1e0601ad0b.md) | 42 | `declaration-track:2a052dac5d1f7a1e0601ad0b033a224ce8cf6ec63131492e2d8a3b0e4ccf1b70` |
| 2 | `def` | [tentCoefficient](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tentcoefficient--1471b920644b0143853e90e9.md) | 47 | `declaration-track:1471b920644b0143853e90e97156f05e8b5f255b1f013d047bca90bec6f915eb` |
| 3 | `theorem` | [logCoefficient_one](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/logcoefficient-one--e15759f800b2058e2a0c8542.md) | 49 | `result-track:e15759f800b2058e2a0c8542aa25f02c96ff7d5e5b190c4e729f73950fea1505` |
| 4 | `theorem` | [logCoefficient_nontrivial](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/logcoefficient-nontrivial--c4e832171736f5fdc9e0511a.md) | 51 | `result-track:c4e832171736f5fdc9e0511a82c360e5f936db9e7ccd0b2903a6432e43e58a3b` |
| 5 | `theorem` | [analyticOrderNatAt_trivialPoint](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/analyticordernatat-trivialpoint--20c9ce0a36285fd247eba2c4.md) | 56 | `result-track:20c9ce0a36285fd247eba2c490bfa18b017bcbca9f31da53cd5865ad81a7b564` |
| 6 | `theorem` | [logCoefficient_trivial](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/logcoefficient-trivial--44f38dec513a3fc4a220087b.md) | 66 | `result-track:44f38dec513a3fc4a220087bbe31992ff8fda970f54bdf190b44a8f3f700218a` |
| 7 | `theorem` | [tentCoefficient_one](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tentcoefficient-one--55c5ae722d05a3e996ea6520.md) | 72 | `result-track:55c5ae722d05a3e996ea6520ad038fa48d2d82c71a2badf4db04bbefc83f0748` |
| 8 | `theorem` | [tentCoefficient_nontrivial](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tentcoefficient-nontrivial--961f9f9061d2630c2af2ebff.md) | 76 | `result-track:961f9f9061d2630c2af2ebff5d27f22780423fd54002074931d4cedbe17b5a48` |
| 9 | `theorem` | [tentCoefficient_trivial](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tentcoefficient-trivial--884fc0dabfc3d9aa7a5e8758.md) | 80 | `result-track:884fc0dabfc3d9aa7a5e87584fdc2ff1dd64ab0bd6e5c0807937a6893f6905c7` |
| 10 | `theorem` | [sum_tentCoefficient_singularHead](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/sum-tentcoefficient-singularhead--667af0c825168c863e57ef0a.md) | 86 | `result-track:667af0c825168c863e57ef0ada3efc941d1a37b423b2a090dff28f9a82e517ad` |
| 11 | `theorem` | [negative_log_principal_part](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/negative-log-principal-part--264e261a81be69325b71910e.md) | 125 | `result-track:264e261a81be69325b71910e528b5972ee5b6b92c327e804b93975adae5480e1` |
| 12 | `theorem` | [tent_principal_part](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tent-principal-part--0b5db9a777840a50cddfbcdd.md) | 152 | `result-track:0b5db9a777840a50cddfbcdda08a435607f017876a351ccb402bdc47079bc70e` |
| 13 | `theorem` | [closed_mem_interior_or_boundary](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/closed-mem-interior-or-boundary--18aada8487bdeadaa5274630.md) | 161 | `result-track:18aada8487bdeadaa52746305f30070fce3cc71333ef85c0a0bca5242797d8ea` |
| 14 | `theorem` | [analyticAt_integrand_on_closed_off_inventory](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/analyticat-integrand-on-closed-off-inventory--26f8e6baf1ad1ca0be1ff1cf.md) | 172 | `result-track:26f8e6baf1ad1ca0be1ff1cf233887074ce1ae990d65bce232481301eb0c964b` |
| 15 | `theorem` | [exists_analytic_tent_remainder](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/exists-analytic-tent-remainder--408ac33da20550636e59f98a.md) | 181 | `result-track:408ac33da20550636e59f98a840e23135e00a4fbcf86177092e1fc6ed3bf6850` |
| 16 | `theorem` | [tent_boundary_eq_principalSum](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/tent-boundary-eq-principalsum--2cf2ed316016e9d8acefd60c.md) | 192 | `result-track:2cf2ed316016e9d8acefd60cee9dae8acaa546333fdb4f715614c9f4ef2090bd` |
| 17 | `theorem` | [rightSegment_principal_decomposition](../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/declarations/rightsegment-principal-decomposition--51a0e5ba3449cefdbf44aba6.md) | 203 | `result-track:51a0e5ba3449cefdbf44aba6ae6c442be13797b0af9dc08c163e2ee381ebf944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
