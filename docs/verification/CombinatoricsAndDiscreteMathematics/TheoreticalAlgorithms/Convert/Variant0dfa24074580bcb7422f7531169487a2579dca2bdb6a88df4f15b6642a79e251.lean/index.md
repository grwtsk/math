# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Convert.Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b11813e59e1de49dd3b0413f52b5efdfb31aba",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b11813e59e1de49dd3b0413f52b5efdfb31aba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNF.lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-lift--7376a2baedf3134ca40dba8f.md) | 37 | `declaration-track:7376a2baedf3134ca40dba8fce2038025b5b52d47533040c189175b6a4496623` |
| 2 | `theorem` | [CNF.unsat_of_lift_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-unsat-of-lift-unsat--7bfcb5ed871496ef827dd78a.md) | 41 | `result-track:7bfcb5ed871496ef827dd78a5e8def5e959f572c33dd58a723aa6735770abb3a` |
| 3 | `def` | [CNF.Clause.convertLRAT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-clause-convertlrat--4445f3d674fe6ba6484d00f0.md) | 56 | `declaration-track:4445f3d674fe6ba6484d00f074945c81091a76c4224b9fed260b1ed92acf2f47` |
| 4 | `def` | [CNF.convertLRAT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-convertlrat--d8f6d81f8b2f33984b2cb8e4.md) | 62 | `declaration-track:d8f6d81f8b2f33984b2cb8e4357af1f57aa3b579d2ed6b67af8b1ede38091a22` |
| 5 | `theorem` | [CNF.Clause.mem_lrat_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-clause-mem-lrat-of-mem--55fb7eb6639a0a5734fb2f22.md) | 65 | `result-track:55fb7eb6639a0a5734fb2f22659e6f57d7d4f0c17b5747b7c9a971900d811c7c` |
| 6 | `theorem` | [CNF.Clause.convertLRAT_sat_of_sat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-clause-convertlrat-sat-of-sat--ab154e5a91e19f74e429f34c.md) | 75 | `result-track:ab154e5a91e19f74e429f34ce182af738a54c24578d26480df8fd36beb4c683a` |
| 7 | `def` | [CNF.convertLRAT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-convertlrat--d6f013a8d6720e2760530093.md) | 98 | `declaration-track:d6f013a8d6720e2760530093444b03698329ada6c056e73ff7bf8193d101c8f0` |
| 8 | `theorem` | [CNF.convertLRAT_readyForRupAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-convertlrat-readyforrupadd--a819a28e29a975f19cd7154a.md) | 103 | `result-track:a819a28e29a975f19cd7154afcc703c8c02094cda50109e2c99eca971a9da360` |
| 9 | `theorem` | [CNF.convertLRAT_readyForRatAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-convertlrat-readyforratadd--3249484e9cfd4cb54b2cd403.md) | 108 | `result-track:3249484e9cfd4cb54b2cd4035a2a775f3287566d98bdd66a63b415034ebd86de` |
| 10 | `theorem` | [unsat_of_cons_none_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/unsat-of-cons-none-unsat--d84c6b0821ea10129a6ff209.md) | 113 | `result-track:d84c6b0821ea10129a6ff2099bb473bf5389e6701c50e798953d6791d623f3ef` |
| 11 | `theorem` | [CNF.unsat_of_convertLRAT_unsat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convert/Variant0dfa24074580bcb7422f7531169487a2579dca2bdb6a88df4f15b6642a79e251.lean/declarations/cnf-unsat-of-convertlrat-unsat--c0b34fdc11913ec790bbface.md) | 123 | `result-track:c0b34fdc11913ec790bbface29b0326ea64a6b17c10b556ce37fafe1af8b436e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
