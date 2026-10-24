# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42379ad149675216061fe4320c3059ef5d6bb1ae",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42379ad149675216061fe4320c3059ef5d6bb1ae`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/iff-rank-lt-aleph0--6ce855858c571e6e87043f1b.md) | 30 | `result-track:6ce855858c571e6e87043f1b059651bd1206499746e1048efb2955f60547d74a` |
| 2 | `def` | [fintypeBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/fintypebasisindex--bfe9174b169e50456c300c63.md) | 45 | `declaration-track:bfe9174b169e50456c300c63254a6d2119cfd31d6b1a33428680a34807ad2462` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/instance--63d3686e5ae34dddfb2b712d.md) | 50 | `declaration-track:63d3686e5ae34dddfb2b712dc47b25254659621a4ba8b569d7574dea277dac77` |
| 4 | `theorem` | [finite_basis_index](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/finite-basis-index--7ad0732f742fa9352ef31a9c.md) | 55 | `result-track:7ad0732f742fa9352ef31a9c6652d4cb4b136341c12b275a76f0da9abe03a8fc` |
| 5 | `def` | [finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/finsetbasisindex--c9cb42dc65d6c048c2dac10d.md) | 63 | `declaration-track:c9cb42dc65d6c048c2dac10d9caf49d27fc156442aa93cf4a7198846ff1a98a5` |
| 6 | `theorem` | [coe_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/coe-finsetbasisindex--699165a0cbf37bfad90e43ca.md) | 67 | `result-track:699165a0cbf37bfad90e43cadfc545d44a4c36b3dcd2bde0ff680c0562e7d582` |
| 7 | `theorem` | [coeSort_finsetBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/coesort-finsetbasisindex--ea47175b32d7933dcbd5d52f.md) | 72 | `result-track:ea47175b32d7933dcbd5d52fdc05b60a8f8ed327704a0852b568f54a2dbfd79b` |
| 8 | `def` | [finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/finsetbasis--c151893450448a6c9a928495.md) | 81 | `declaration-track:c151893450448a6c9a9284959369d94f479a52aa6eb2553e9837bf28ee3476e1` |
| 9 | `theorem` | [range_finsetBasis](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/range-finsetbasis--90dc4b7936839d17dd36a3fa.md) | 85 | `result-track:90dc4b7936839d17dd36a3faf07a016d04a9026e4b33c31be0838d161db22eb8` |
| 10 | `theorem` | [_root_.Module.card_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/root-module-card-eq-pow-finrank--12bbdf893e80eb1d8f861787.md) | 91 | `result-track:12bbdf893e80eb1d8f861787647cd9636c42a5f1659a7e0b65cda85309ac78a0` |
| 11 | `theorem` | [_root_.Module.natCard_eq_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/root-module-natcard-eq-pow-finrank--c44a913df58c3b53407c3c0d.md) | 96 | `result-track:c44a913df58c3b53407c3c0dd300a84ec2a728bb475bc2dfccec17c1da39d87d` |
| 12 | `theorem` | [iff_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.lean/declarations/iff-fg--8e241742174180fe13873a9a.md) | 102 | `result-track:8e241742174180fe13873a9adcc90f6658e6ab311aee071aa3aab90f6ffc053c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
