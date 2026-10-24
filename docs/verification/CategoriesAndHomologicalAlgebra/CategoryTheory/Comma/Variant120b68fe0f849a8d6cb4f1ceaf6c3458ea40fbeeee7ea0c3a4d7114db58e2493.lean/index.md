# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c93ebf7292d36a2a288fa9caa4e8c05514bd6147",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c93ebf7292d36a2a288fa9caa4e8c05514bd6147`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.StructuredArrow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointOfStructuredArrowInitialsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/leftadjointofstructuredarrowinitialsaux--de0705b49ee2db712f05cbff.md) | 52 | `declaration-track:de0705b49ee2db712f05cbffe0752812cf1c645692db15527f52d091f485426e` |
| 2 | `def` | [leftAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/leftadjointofstructuredarrowinitials--7ddfa4438d0458a996e61574.md) | 73 | `declaration-track:7ddfa4438d0458a996e615743e11576af789a830495ab838f5669350d5658962` |
| 3 | `def` | [adjunctionOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/adjunctionofstructuredarrowinitials--7e7df093f3fbd9873f5a95a3.md) | 81 | `declaration-track:7e7df093f3fbd9873f5a95a38bf38ef333e2aef668ed67219a923b67e3d3cc96` |
| 4 | `def` | [isRightAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/isrightadjointofstructuredarrowinitials--4ee7765e60d2c3e992f37132.md) | 86 | `declaration-track:4ee7765e60d2c3e992f37132cbdaf3191ff1ae3f822ecd6487a6d23c6ff2a54c` |
| 5 | `def` | [rightAdjointOfCostructuredArrowTerminalsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/rightadjointofcostructuredarrowterminalsaux--99991fc2d61687cce7cc9458.md) | 102 | `declaration-track:99991fc2d61687cce7cc94588f9c80cba7f964b187606718666f44a52c20b7b0` |
| 6 | `def` | [rightAdjointOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/rightadjointofcostructuredarrowterminals--26a8178e006a80be177b07c1.md) | 122 | `declaration-track:26a8178e006a80be177b07c1bf70687866b7ce0ed058337768dd33070fd97de4` |
| 7 | `def` | [adjunctionOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/adjunctionofcostructuredarrowterminals--8cb8623c75738280cb1c3eef.md) | 132 | `declaration-track:8cb8623c75738280cb1c3eef173e1bf7a20e718eacf70f7e591ed20d3d460067` |
| 8 | `def` | [isLeftAdjointOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/isleftadjointofcostructuredarrowterminals--08a8bb05b5b2435eef839038.md) | 137 | `declaration-track:08a8bb05b5b2435eef839038d6b0a31e2526da0ed66c3c37d029bee0dbaeb6c1` |
| 9 | `def` | [mkInitialOfLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/mkinitialofleftadjoint--1e10c00ed495cc944abcf65d.md) | 151 | `declaration-track:1e10c00ed495cc944abcf65df2306565d1b0d17e4409e75da5b51407d179a1a5` |
| 10 | `def` | [mkTerminalOfRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/mkterminalofrightadjoint--e53475bb6d8f6c8b92201acb.md) | 164 | `declaration-track:e53475bb6d8f6c8b92201acb65f41800b53639ea24a7d5d3b6ba220dced6881a` |
| 11 | `theorem` | [nonempty_isRightAdjoint_iff_hasInitial_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/nonempty-isrightadjoint-iff-hasinitial-structuredarrow--caab7ba871b8160aab3f4a87.md) | 177 | `result-track:caab7ba871b8160aab3f4a87b89d8e45d9bee34f40dd7af6309f4582e3b73ecb` |
| 12 | `theorem` | [nonempty_isLeftAdjoint_iff_hasTerminal_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant120b68fe0f849a8d6cb4f1ceaf6c3458ea40fbeeee7ea0c3a4d7114db58e2493.lean/declarations/nonempty-isleftadjoint-iff-hasterminal-costructuredarrow--8738456dbdd15bc8cd46c2cf.md) | 183 | `result-track:8738456dbdd15bc8cd46c2cf6b75c517f0aa3ba35da454566f636aea23b76bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
