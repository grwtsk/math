# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6be972432ef45f016c1e513ff23d844530c7ba5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6be972432ef45f016c1e513ff23d844530c7ba5`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean.json)

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
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer--49c0072569c01519e0711e7b.md) | 45 | `declaration-track:49c0072569c01519e0711e7b851b38951c021851e6031d71d912f4df5d0e6a94` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/coe-centralizer--ca58462e2621fd5ea9ac3fb5.md) | 51 | `result-track:ca58462e2621fd5ea9ac3fb52160c6b698e01383e68363fd61ae6b0f19bfa1c4` |
| 3 | `theorem` | [centralizer_toSubsemigroup](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer-tosubsemigroup--17eb9c1da5768aa246f390fd.md) | 55 | `result-track:17eb9c1da5768aa246f390fd1c9aee1ba6230228f1d600940c036c3f3d8dc02b` |
| 4 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/mem-centralizer-iff--033bb7791b9ab8ec02d779ad.md) | 61 | `result-track:033bb7791b9ab8ec02d779ad875cc50fa75bfa5dc53aa027175bb1e7c686eecd` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/center-le-centralizer--8f2c70f96fd48b3676fa1d16.md) | 65 | `result-track:8f2c70f96fd48b3676fa1d16f623cdcea9b34bb2f29277e9766e04181c4a5c7b` |
| 6 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/decidablememcentralizer--7371a9137e6114d5037cbf0e.md) | 69 | `declaration-track:7371a9137e6114d5037cbf0e8569feb5d745d3073af593050b20a5313f535159` |
| 7 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer-le--9c4ec58e3cf8d4ff4978d2d5.md) | 74 | `result-track:9c4ec58e3cf8d4ff4978d2d57e9654e6fa7186c571e3da5a82e2507a1d210503` |
| 8 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer-eq-top-iff-subset--ed73ffdcbee675b5f0cd6873.md) | 78 | `result-track:ed73ffdcbee675b5f0cd68736ff42daa0ffd3fb7732585ebf1b0fb3a8fe08771` |
| 9 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer-univ--af11c076ade120d7c9cca110.md) | 84 | `result-track:af11c076ade120d7c9cca11077b5ced9209a9529b836485837c16507e9be7841` |
| 10 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/le-centralizer-centralizer--132578c032f80fb6ed5fcbe1.md) | 88 | `result-track:132578c032f80fb6ed5fcbe124265ef90379030869e7173b6cf8ce1f7416a65d` |
| 11 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/centralizer-centralizer-centralizer--3c7c8064c58310777aba23fe.md) | 92 | `result-track:3c7c8064c58310777aba23fe22e335f54b7c12bcbf8826fb7f509f34be59a5ab` |
| 12 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/closure-le-centralizer-centralizer--1afea9dd6da7dabd3693ecda.md) | 99 | `result-track:1afea9dd6da7dabd3693ecdaeb01fb800d388ce3204a90609f3f69f21b4e1351` |
| 13 | `theorem` | [isMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/ismulcommutative-closure--51aff520e128bc4635c385f8.md) | 107 | `result-track:51aff520e128bc4635c385f81ebc595977a8ffa0d733e2e27c05156793fc89e7` |
| 14 | `abbrev` | [closureCommMonoidOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/closurecommmonoidofcomm--f17d3caede11958397ec2d82.md) | 118 | `declaration-track:f17d3caede11958397ec2d82127c92431da413418e0d739e54eeb478b56d6abf` |
| 15 | `instance` | [instIsMulCommutative_closure](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variantad4374a8850da66cc2e9dbf58f59ede16f09e7d70ff4bc36cfca4e80d0d0834f.lean/declarations/instismulcommutative-closure--ddd894ff3196f21e0ceb76ff.md) | 124 | `declaration-track:ddd894ff3196f21e0ceb76ff324b0e0445684be65ae9857664619d63209a2929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
