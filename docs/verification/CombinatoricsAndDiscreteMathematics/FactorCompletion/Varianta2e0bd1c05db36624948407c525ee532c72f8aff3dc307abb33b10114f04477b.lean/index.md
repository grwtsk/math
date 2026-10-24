# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FactorCompletion.Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1849c7cac36e03b389e5d0a0377f19fe18da2403",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1849c7cac36e03b389e5d0a0377f19fe18da2403`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.FactorState` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonicalExactExtraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/canonicalexactextraction--d5d9923950c9a45f1768591e.md) | 27 | `result-track:d5d9923950c9a45f1768591e2427add24caa7137b483cc2b7864cffa3de0bda1` |
| 2 | `inductive` | [ExtractionPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/extractionpath--ee75e3eca083f1534fdd2151.md) | 37 | `declaration-track:ee75e3eca083f1534fdd21515e1ed049e934db41b59b4742fb675d037c54c738` |
| 3 | `def` | [identityRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/identityrefinement--d570b53e75d6ab623301e603.md) | 44 | `declaration-track:d570b53e75d6ab623301e60319449a513b649c6186427774d780146b22aeae73` |
| 4 | `theorem` | [ExtractionPath.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/extractionpath-refines--747aa07d7047dd8d636822ca.md) | 52 | `result-track:747aa07d7047dd8d636822ca9d1900d6d455ac6f80fde38753b7c4085f3805be` |
| 5 | `theorem` | [ExtractionPath.preserves_exclusions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/extractionpath-preserves-exclusions--27f3bd10c2be03c2da6c34e8.md) | 61 | `result-track:27f3bd10c2be03c2da6c34e8c542bebe9a6b8e7cfb4fa0ce7dc0323a5d9598ed` |
| 6 | `theorem` | [nonterminal_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/nonterminal-step--cc23928c9b04e882e90cea26.md) | 67 | `result-track:cc23928c9b04e882e90cea2697cc9080f2ac444cda1db28618e5881755b198c8` |
| 7 | `theorem` | [finite_terminal_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/finite-terminal-completion--aeb685b5638e3489bd85e417.md) | 77 | `result-track:aeb685b5638e3489bd85e4177e51faf980717dabea566e34e413f1ea73c8b933` |
| 8 | `theorem` | [finite_complete_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/declarations/finite-complete-factorization--2ed39acbf72564c78e0374ee.md) | 100 | `result-track:2ed39acbf72564c78e0374ee338f29fddc977ecd5e16d96fff49b92b59eec93f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
