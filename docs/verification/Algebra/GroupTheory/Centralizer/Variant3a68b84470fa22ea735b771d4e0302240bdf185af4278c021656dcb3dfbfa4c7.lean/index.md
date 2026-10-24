# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e06d783453658216b9ddea96bcc979ebe9a8501",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e06d783453658216b9ddea96bcc979ebe9a8501`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Center` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/centralizer--65bfae333af746373ff23751.md) | 42 | `declaration-track:65bfae333af746373ff237510504c65dbad820a17d82936093178f97999593e9` |
| 2 | `theorem` | [coe_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/coe-centralizer--db470d9575dfaf623d118403.md) | 47 | `result-track:db470d9575dfaf623d1184031b60c9e8dd53f823aaada0e1e1c02bf738755ca0` |
| 3 | `theorem` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/mem-centralizer-iff--cd824d5bd3ea490c000d8de9.md) | 53 | `result-track:cd824d5bd3ea490c000d8de9b9013a08341184edec7f2bb8dbe1598378048500` |
| 4 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/decidablememcentralizer--e7afe2546851c4fba905bff3.md) | 57 | `declaration-track:e7afe2546851c4fba905bff3da7276e1d65aa2de18082bc096ad8f354336dfd1` |
| 5 | `theorem` | [center_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/center-le-centralizer--86839550da00ce4b90d442f4.md) | 62 | `result-track:86839550da00ce4b90d442f4f31aeb6ffbedaa1f320248dda5a7c50df08dbda5` |
| 6 | `theorem` | [centralizer_le](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/centralizer-le--3459f2f92f188515a415ecd0.md) | 66 | `result-track:3459f2f92f188515a415ecd0edb1fdb9135b05f2ed5de5d53488d3b9b39f6674` |
| 7 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/centralizer-eq-top-iff-subset--f1dc44cdca565d2c2f14a91d.md) | 70 | `result-track:f1dc44cdca565d2c2f14a91d490e958f1b1ec34e093432fea329d0f2ea37c1a0` |
| 8 | `theorem` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/centralizer-univ--8143ab7b77f7b803a7fda74d.md) | 75 | `result-track:8143ab7b77f7b803a7fda74d209fb1635a13ec936749a5a1ff05497175dca7fc` |
| 9 | `lemma` | [closure_le_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/closure-le-centralizer-centralizer--ab4428a70406eb87afc26f30.md) | 80 | `result-track:ab4428a70406eb87afc26f30736d30426601cba1d6952d1bf7d9bab12004330d` |
| 10 | `abbrev` | [closureCommSemigroupOfComm](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant3a68b84470fa22ea735b771d4e0302240bdf185af4278c021656dcb3dfbfa4c7.lean/declarations/closurecommsemigroupofcomm--49be5fbe9cb8f2af26251aa7.md) | 88 | `declaration-track:49be5fbe9cb8f2af26251aa72fc3137df26de93fabc92f831276800d5378dfa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
