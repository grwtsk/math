# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyArchimedeanRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24a46750ca0049999d984330ef2f803d801d0b6d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24a46750ca0049999d984330ef2f803d801d0b6d`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedBaseChange.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize--ee5c5bb1322b47c0b48c0822.md) | 25 | `declaration-track:ee5c5bb1322b47c0b48c082203f821c7a8dbb2f1ca676bcff314787de15bd1af` |
| 2 | `theorem` | [realize_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-injective--a21d178afef6e5518768be18.md) | 29 | `result-track:a21d178afef6e5518768be182f0424ab6f717cca726f9898784c6f4bbc9d1e40` |
| 3 | `theorem` | [realize_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-coordinates--394a3828d2f20348dc643e01.md) | 35 | `result-track:394a3828d2f20348dc643e0128af2fee1008bba3bd8f77ceeab6c162344ae66b` |
| 4 | `def` | [realLift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/reallift--523dd473e780820c8d7148d8.md) | 41 | `declaration-track:523dd473e780820c8d7148d82fd63fedc4d50c4567da97384c2eb115b41cb32d` |
| 5 | `theorem` | [realize_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-lift--2696c379dd5d7b27535dff1c.md) | 46 | `result-track:2696c379dd5d7b27535dff1cb8902ed155b53043d532603dd74e3e05275c5232` |
| 6 | `theorem` | [realize_lift_symm](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-lift-symm--beb8b3fbcf53c0929b0e1ea8.md) | 50 | `result-track:beb8b3fbcf53c0929b0e1ea89d18a3a803c54c7c8947f33bc148fe7635300d4f` |
| 7 | `theorem` | [realize_energy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-energy--79e96408e2558226ef14894e.md) | 56 | `result-track:79e96408e2558226ef14894e07a72457c6483463c9a3b224bc680f471fde644c` |
| 8 | `theorem` | [realize_energy_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-energy-bounds--0efc82ee9909675ed373b801.md) | 64 | `result-track:0efc82ee9909675ed373b8017b408ee20224307f47cbd336f25e36c3ac9d310c` |
| 9 | `def` | [realSynthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realsynthesize--5ad76ee80429bb2a465e349f.md) | 79 | `declaration-track:5ad76ee80429bb2a465e349fb57414662aa0a09dbd3ed06c22a3c1fc7d9025da` |
| 10 | `def` | [realEmbedding](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realembedding--1da4683d5a4c3eeee2f105ad.md) | 84 | `declaration-track:1da4683d5a4c3eeee2f105ada876979f6017244acf85191e30b2e2aec5763b1f` |
| 11 | `def` | [realLattice](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/reallattice--b4570b44191010d00aedce6e.md) | 96 | `declaration-track:b4570b44191010d00aedce6e02e3ec02324367b9c7a4b0abd625344088f87c13` |
| 12 | `theorem` | [realize_integer_synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-integer-synthesize--3b4f9baf6a979c4f879c4e8e.md) | 100 | `result-track:3b4f9baf6a979c4f879c4e8ecb7dce935665dcd13d6e98fa37ade2edb5f39954` |
| 13 | `theorem` | [realize_mem_lattice_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/realize-mem-lattice-iff--bb54323c5fd53c64524dff7c.md) | 108 | `result-track:bb54323c5fd53c64524dff7c0f4762c7b556e4001d7e542ba48c640bf09c82aa` |
| 14 | `theorem` | [realLift_integer_synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/reallift-integer-synthesize--d58e63b0afe0a752639262db.md) | 121 | `result-track:d58e63b0afe0a752639262dbba0ae2c21458a8397f5cdabf35915ab0e2ff56e3` |
| 15 | `theorem` | [real_inverse_mem_lattice_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/real-inverse-mem-lattice-iff--80ee9593f6ce7fc857804ce2.md) | 131 | `result-track:80ee9593f6ce7fc857804ce20a27793776c6c0465a8d04a682bd2e75c24c4799` |
| 16 | `theorem` | [real_inverse_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/real-inverse-clearing-iff--1899d83af0a8bb052ab9fb33.md) | 139 | `result-track:1899d83af0a8bb052ab9fb33cf0b767fe4c192fbb78ef0adabfe70eb345b024e` |
| 17 | `theorem` | [real_two_three_radical_fails](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/real-two-three-radical-fails--253157a1df5574ac472ece0b.md) | 148 | `result-track:253157a1df5574ac472ece0b1a00733548207398bcc95264115b5762f5c10069` |
| 18 | `theorem` | [integer_energy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyArchimedeanRealization.lean/declarations/integer-energy--905b9d73506e2c3c4aa85fc5.md) | 157 | `result-track:905b9d73506e2c3c4aa85fc5c5b2b8214881c830ea09a655351d488f011240b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
