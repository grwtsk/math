# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71a3673e36ac41aff4144e3401c45b834a39a03f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71a3673e36ac41aff4144e3401c45b834a39a03f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finset.Nonempty.sup'_eq_cSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-sup-eq-csup-image--d878524ad5039283dd12f6ec.md) | 33 | `result-track:d878524ad5039283dd12f6ec6a8a34cf98f0e2a8e57ef9443dd5e989f3d352f5` |
| 2 | `theorem` | [Finset.Nonempty.sup'_id_eq_cSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-sup-id-eq-csup--6bfed9eb17963f6b5ab3daa9.md) | 39 | `result-track:6bfed9eb17963f6b5ab3daa921ca7b3bf403bcc990ef88b1143b20a8dac6f83e` |
| 3 | `theorem` | [Finset.Nonempty.cSup_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-csup-eq-max--deadb719361fbed8f7e636ec.md) | 49 | `result-track:deadb719361fbed8f7e636ec19b2a9b5db08167f7b7a412a4cc5eb5e2ad39485` |
| 4 | `theorem` | [Finset.Nonempty.cInf_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-cinf-eq-min--d05c44e3e3136e9b4852acba.md) | 53 | `result-track:d05c44e3e3136e9b4852acba178a03babda725c003d73c54e54be35130cbfe13` |
| 5 | `theorem` | [Finset.Nonempty.cSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-csup-mem--69ec4d5509b71c94fdab9a45.md) | 57 | `result-track:69ec4d5509b71c94fdab9a45470f8abc1328bae9474832bff6f2472b4bc48eca` |
| 6 | `theorem` | [Finset.Nonempty.cInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/finset-nonempty-cinf-mem--34c99dc89665dd18fa9da930.md) | 62 | `result-track:34c99dc89665dd18fa9da9301d56e8ef8ad58842d4984a6ed1ebf5bc5a7b6c7c` |
| 7 | `theorem` | [Set.Nonempty.cSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/set-nonempty-csup-mem--b4c0f8f89a834255b218d030.md) | 66 | `result-track:b4c0f8f89a834255b218d0306530f204ed96f91df3f8f54aebfb3685197a8e3d` |
| 8 | `theorem` | [Set.Nonempty.cInf_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/set-nonempty-cinf-mem--e3549be7a29700a857c8b983.md) | 71 | `result-track:e3549be7a29700a857c8b983ad3d21af4b13aa621686573c44aea4788724d9e1` |
| 9 | `theorem` | [Set.Finite.cSup_lt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/set-finite-csup-lt-iff--4e0b41c8912a65f17fa79291.md) | 75 | `result-track:4e0b41c8912a65f17fa792910c848bece94c5888eefd6ef359f035bcd480d33e` |
| 10 | `theorem` | [Set.Finite.lt_cInf_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/set-finite-lt-cinf-iff--84fe5444ce664be3a507fdd4.md) | 79 | `result-track:84fe5444ce664be3a507fdd41a0f43beab5185e7a9ac61633e5e389966c597ec` |
| 11 | `theorem` | [sup'_eq_csSup_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/sup-eq-cssup-image--6c33b343f87c584e38a557dd.md) | 95 | `result-track:6c33b343f87c584e38a557ddb0e050a148397947656afb1831f21de592dafcb0` |
| 12 | `theorem` | [inf'_eq_csInf_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/inf-eq-csinf-image--76b1f47e783222d177997dee.md) | 107 | `result-track:76b1f47e783222d177997dee090f6c718c683a7c8f9509ac62b70a5895d9d33b` |
| 13 | `theorem` | [sup'_id_eq_csSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/sup-id-eq-cssup--e6831b49c075adf9f492e0de.md) | 112 | `result-track:e6831b49c075adf9f492e0de1455158eacac2d605e93f95f4bcf48035f3290c7` |
| 14 | `theorem` | [inf'_id_eq_csInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant721ec9d8f28c0bdd3a020a24ba6e910d8b1a2ada0dfe07754636e67d60123c4b.lean/declarations/inf-id-eq-csinf--aef234927bcfde4940740845.md) | 116 | `result-track:aef234927bcfde4940740845f4abe5c63122f8bd74c2236af041308130ccc2f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
