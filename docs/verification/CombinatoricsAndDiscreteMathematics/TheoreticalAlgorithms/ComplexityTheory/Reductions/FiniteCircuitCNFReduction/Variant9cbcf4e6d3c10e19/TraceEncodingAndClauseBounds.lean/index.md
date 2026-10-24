# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.TraceEncodingAndClauseBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcfc859995630dcb82e29fba64135e13770270ca",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcfc859995630dcb82e29fba64135e13770270ca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.GateTseitinEquivalence`](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/GateTseitinEquivalence.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodeFrom](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/encodefrom--98b0fd2792783e348f464a83.md) | 56 | `declaration-track:98b0fd2792783e348f464a834e46c6e1019e50b822f756f2b8e8c5bea41d4f71` |
| 2 | `def` | [ValidFrom](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/validfrom--ffd2ea16c75bbc75d743e73d.md) | 62 | `declaration-track:ffd2ea16c75bbc75d743e73d5cc0615d8097418793556124a5857dc00736d1ec` |
| 3 | `def` | [WellFormedFrom](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/wellformedfrom--2901e32e421a1e56eb1af9fb.md) | 68 | `declaration-track:2901e32e421a1e56eb1af9fbba41436c2730e6a09ef3fb9d68a3138751157347` |
| 4 | `theorem` | [encodeFrom_correct](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/encodefrom-correct--408ff837cc840de9bcf24092.md) | 74 | `result-track:408ff837cc840de9bcf240922b0118702726ba108e59d4e69f22d6768af7256e` |
| 5 | `theorem` | [encodeFrom_length](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/encodefrom-length--b2e47a954ba71784c6548393.md) | 82 | `result-track:b2e47a954ba71784c65483936eef6382191a3dce5ce002a24aaf089bdace191f` |
| 6 | `theorem` | [encodeFrom_length_le_four_mul](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/encodefrom-length-le-four-mul--69d26c57fe1f32fb85f9bc45.md) | 90 | `result-track:69d26c57fe1f32fb85f9bc450a7eff011f6a17551e814414980fe0282e790b87` |
| 7 | `structure` | [Circuit](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/circuit--29040de2468324f56126b326.md) | 107 | `declaration-track:29040de2468324f56126b326843360c9dfed281c4c52d9ef9f1b5e8e4a8be33d` |
| 8 | `def` | [WellFormed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/wellformed--0108570c84b9064e7f219dc1.md) | 114 | `declaration-track:0108570c84b9064e7f219dc11ff6be2235bd485d1cbaafc1ee0ba8a071b36dca` |
| 9 | `def` | [ValidTrace](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/validtrace--f81c1301bf66757f7adba581.md) | 118 | `declaration-track:f81c1301bf66757f7adba581fbb0d35e95c46989fae96babffbce7653b2eeba7` |
| 10 | `def` | [readOutput](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/readoutput--674e20f0b0bd21b58136623e.md) | 122 | `declaration-track:674e20f0b0bd21b58136623eff3e7dad826e35573062f039f4048567280cb154` |
| 11 | `def` | [targetCNF](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/targetcnf--d17772c9423496b22b0350fe.md) | 126 | `declaration-track:d17772c9423496b22b0350fee055e9b8f8dd16607ab1a691aa9f5941d6fd629c` |
| 12 | `theorem` | [targetCNF_correct](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/targetcnf-correct--5b148c407140b3e7d9660067.md) | 130 | `result-track:5b148c407140b3e7d9660067e4a356b0f580755bdeee001341575b92773b266f` |
| 13 | `def` | [toCNF](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/tocnf--5ef6874729aef2222e322533.md) | 144 | `declaration-track:5ef6874729aef2222e3225338742a3b2ebf0d38ec2f39054ee2b7307b5421d7e` |
| 14 | `theorem` | [toCNF_correct](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/tocnf-correct--46884f0e9813ae11e30c0dee.md) | 148 | `result-track:46884f0e9813ae11e30c0dee9b08944b060c3fd880b4fd019faa3488239d1082` |
| 15 | `theorem` | [targetCNF_length](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/targetcnf-length--de1b49f3a53140171478c0aa.md) | 156 | `result-track:de1b49f3a53140171478c0aac595bf316c172f5c126b19145daeb0bd7a390f5d` |
| 16 | `theorem` | [toCNF_length_le](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/declarations/tocnf-length-le--43f040046a137d7d215f60c1.md) | 161 | `result-track:43f040046a137d7d215f60c1e9b012e59f1db2d21bf30bd0e55d8acc30c40c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
