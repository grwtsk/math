# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FactorCompletionV1.Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5bcb9e0af6c4715dd24f19cb96b9033d58dbb9f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5bcb9e0af6c4715dd24f19cb96b9033d58dbb9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.FactorState` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [canonicalExactExtraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/canonicalexactextraction--a76d2890310da3e2c080e248.md) | 19 | `result-track:a76d2890310da3e2c080e24817dfa80f74af7d06588e675ee44ee6bdc9359566` |
| 2 | `inductive` | [ExtractionPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/extractionpath--34682b5c78300e784077f255.md) | 29 | `declaration-track:34682b5c78300e784077f25579dc3c1b5df6436b39857ce72c03d0b5cecbd6d0` |
| 3 | `def` | [identityRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/identityrefinement--171a2e7242ea624b779282bc.md) | 36 | `declaration-track:171a2e7242ea624b779282bc164db80021f34f2ff7400ce15aeab781a212f8af` |
| 4 | `theorem` | [ExtractionPath.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/extractionpath-refines--1f156aa56488aa92f8d332c7.md) | 44 | `result-track:1f156aa56488aa92f8d332c74c0fcadce9e9a5ea2f5954dfdff8a256a4a999d0` |
| 5 | `theorem` | [ExtractionPath.preserves_exclusions](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/extractionpath-preserves-exclusions--b2701a85a92b811abc2bad8b.md) | 53 | `result-track:b2701a85a92b811abc2bad8b37d9b3f76bfc18f3e7a05383709de414a3bdbfa4` |
| 6 | `theorem` | [nonterminal_step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/nonterminal-step--8291791853e72618c111e0e9.md) | 59 | `result-track:8291791853e72618c111e0e9cd89145d898ed9a511e073e980790c59595e7448` |
| 7 | `theorem` | [finite_terminal_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/finite-terminal-completion--250e23879d7a0e41d6269597.md) | 69 | `result-track:250e23879d7a0e41d626959712c240178697e1dd33bbfab0a38c345b41916284` |
| 8 | `theorem` | [finite_complete_factorization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FactorCompletionV1/Variant46a2a3fb5eb81e03d82d9c6755b6ae80d6201cc1d172a57066cff32854410c2f.lean/declarations/finite-complete-factorization--8b57fe6aea6dbfa1ed23b831.md) | 92 | `result-track:8b57fe6aea6dbfa1ed23b8315dd2f8acfae143f8d67c3c5ebbca4a155e651f59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
