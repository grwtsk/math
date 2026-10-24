# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.SuppliedImplementationReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe6b2355645a2d8ebef3a1a5c2cdac4c50608753",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe6b2355645a2d8ebef3a1a5c2cdac4c50608753`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 21; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexityTheory.Reductions.FiniteCircuitCNFReduction.Variant9cbcf4e6d3c10e19.TraceEncodingAndClauseBounds`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/TraceEncodingAndClauseBounds.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Implements](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/implements--0cc287edd482505429899028.md) | 62 | `declaration-track:0cc287edd4825054298990280b5f2b0e5774ee0a33791d9b2a30d3c3f1fd391b` |
| 2 | `structure` | [CompiledAlgorithm](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/compiledalgorithm--1bd50ac46193c287c6643d51.md) | 69 | `declaration-track:1bd50ac46193c287c6643d5161a1df8aafa4db69a75b07d04a4a8cf919e2886e` |
| 3 | `theorem` | [satisfiable_toCNF_iff_preimage](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/satisfiable-tocnf-iff-preimage--8788d97d3d2c5b3f7cbeac4c.md) | 76 | `result-track:8788d97d3d2c5b3f7cbeac4ca8588ba2bfd479fb36977d24a450f1b561457294` |
| 4 | `theorem` | [CompiledAlgorithm.sat_iff_preimage](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/compiledalgorithm-sat-iff-preimage--efd80679b524a42060edc914.md) | 101 | `result-track:efd80679b524a42060edc9148cbb69d3b4c37e367d42fede2b3f959ddf6d7cb6` |
| 5 | `def` | [InputWitness](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/inputwitness--deacc4c6c063ed2509711d8a.md) | 110 | `declaration-track:deacc4c6c063ed2509711d8aa8e50857f6fd62b96c3a1e128ebd95455b2aee67` |
| 6 | `theorem` | [inputWitness_iff_preimage](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComplexityTheory/Reductions/FiniteCircuitCNFReduction/Variant9cbcf4e6d3c10e19/SuppliedImplementationReduction.lean/declarations/inputwitness-iff-preimage--3c80f9edd891a2e1ed3f3039.md) | 117 | `result-track:3c80f9edd891a2e1ed3f3039f5904d890b80e819c93bc7257166958e33695a39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
