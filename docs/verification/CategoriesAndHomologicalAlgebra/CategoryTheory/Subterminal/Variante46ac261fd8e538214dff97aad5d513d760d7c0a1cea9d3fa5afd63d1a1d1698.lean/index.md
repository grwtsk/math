# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subterminal.Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c7f4548532fb4ab72753e153ea5fdcaa77881a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c7f4548532fb4ab72753e153ea5fdcaa77881a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.MonoOver` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSubterminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal--d3f9eeae5b02a6282872caf0.md) | 49 | `declaration-track:d3f9eeae5b02a6282872caf0c6be34ecfe6eb015c94ff2c967f949112e6d3c22` |
| 2 | `theorem` | [IsSubterminal.def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-def--f06abcd3cc4b3aedba4cb60e.md) | 52 | `result-track:f06abcd3cc4b3aedba4cb60e78075cf243a19061e7a7f21440181fc9d20786f9` |
| 3 | `theorem` | [IsSubterminal.mono_isTerminal_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-mono-isterminal-from--d24b031add11f3422558f377.md) | 58 | `result-track:d24b031add11f3422558f3770cab1976f49fadab685d0dead82973830d9da59a` |
| 4 | `theorem` | [IsSubterminal.mono_terminal_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-mono-terminal-from--bb96a6ea84a20f80c7cde924.md) | 65 | `result-track:bb96a6ea84a20f80c7cde9244eb0340188c5d4a863b814fc876db3d45ba76a86` |
| 5 | `theorem` | [isSubterminal_of_mono_isTerminal_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-of-mono-isterminal-from--550849ae0b47cc261d1d9547.md) | 72 | `result-track:550849ae0b47cc261d1d9547b59aa583b7fa5252c34b25aad57764f2cbd5a02d` |
| 6 | `theorem` | [isSubterminal_of_mono_terminal_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-of-mono-terminal-from--a8644660ae964278947c8aa6.md) | 80 | `result-track:a8644660ae964278947c8aa6c1052b3d432337b35b78269bea9b1a1a0dd65361` |
| 7 | `theorem` | [isSubterminal_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-of-isterminal--e63c30dfa74b6b0704618ed9.md) | 85 | `result-track:e63c30dfa74b6b0704618ed94fdf2e83a6b69e5272b1321b3aa3f471f3eb63f2` |
| 8 | `theorem` | [isSubterminal_of_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-of-terminal--f0c06dd3783edfdd76918e91.md) | 88 | `result-track:f0c06dd3783edfdd76918e91388b4dfd6390098deb3c05361928198043f39057` |
| 9 | `theorem` | [IsSubterminal.isIso_diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-isiso-diag--f45f448d4b18e6e8c6e142e6.md) | 94 | `result-track:f45f448d4b18e6e8c6e142e6488908d8351447597adcafe533e3b59c45f838ea` |
| 10 | `theorem` | [isSubterminal_of_isIso_diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-of-isiso-diag--863a3df8c7c8243ed2124494.md) | 103 | `result-track:863a3df8c7c8243ed212449408d408bb82b2d394a210c91ead1a865e3c018b70` |
| 11 | `def` | [IsSubterminal.isoDiag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/issubterminal-isodiag--bb3864ba55df9d58429984b5.md) | 110 | `declaration-track:bb3864ba55df9d58429984b51ef3705116a0c85d0b04894d60d3de23207943ed` |
| 12 | `def` | [Subterminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/subterminals--a070d4e75436a00bf680f1a0.md) | 121 | `declaration-track:a070d4e75436a00bf680f1a03573aa3b3a699ac9547aa7a7a23b24f3f30289e6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/instance--02f1cf33a8c003b03b1be72e.md) | 124 | `declaration-track:02f1cf33a8c003b03b1be72eb38e1cf06738eec7679f43e401c59e2141ec5c23` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/instance--5dc202f955e8681dbfbeac8e.md) | 127 | `declaration-track:5dc202f955e8681dbfbeac8ec6253cb0b31301546d6d1399abc479742a21489f` |
| 15 | `def` | [subterminalInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/subterminalinclusion--9b828fb5a6847be9f69904fd.md) | 132 | `declaration-track:9b828fb5a6847be9f69904fd8c034b838fc42c5c2515250322d156876e4025c5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/instance--5c4ee661a42eb4508d53c8fb.md) | 135 | `declaration-track:5c4ee661a42eb4508d53c8fbcead60d35d704218df0fb40913d17d90bb2acc94` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/instance--0c287c7f8c27120d7fc2b652.md) | 138 | `declaration-track:0c287c7f8c27120d7fc2b652e1203741f4804c2a3b7e76e09cd997324a9c6762` |
| 18 | `instance` | [subterminals_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/subterminals-thin--ccde60b7cd08318fde144a41.md) | 141 | `declaration-track:ccde60b7cd08318fde144a413982cf9fdf8a50eb9f6418ea0d096a3473b4b2fe` |
| 19 | `def` | [subterminalsEquivMonoOverTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/subterminalsequivmonooverterminal--fb1a9e12c08ae629f7af93f6.md) | 149 | `declaration-track:fb1a9e12c08ae629f7af93f6b2f76be44b4f34c644f1ceeb8e0c4b4a5e939cd5` |
| 20 | `theorem` | [subterminals_to_monoOver_terminal_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/subterminals-to-monoover-terminal-comp-forget--4e7bebbcb2206903bdd96d0b.md) | 164 | `result-track:4e7bebbcb2206903bdd96d0bcf6f1605ed2ff9e17fcb4a171cce1d66dff8b4ec` |
| 21 | `theorem` | [monoOver_terminal_to_subterminals_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subterminal/Variante46ac261fd8e538214dff97aad5d513d760d7c0a1cea9d3fa5afd63d1a1d1698.lean/declarations/monoover-terminal-to-subterminals-comp--2d6f8746a15c28b401cd3bae.md) | 170 | `result-track:2d6f8746a15c28b401cd3bae97248225fe706565ad173e5634b9931bae527a12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
