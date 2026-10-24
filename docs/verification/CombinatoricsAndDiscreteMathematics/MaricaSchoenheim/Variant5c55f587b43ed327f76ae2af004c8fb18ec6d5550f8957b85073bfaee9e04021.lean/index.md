# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MaricaSchoenheim.Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f07f5b0e554e56e44781a9714dc2100afc34cc",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f07f5b0e554e56e44781a9714dc2100afc34cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.FourFunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrahamConjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/declarations/grahamconjecture--fd7c0915eebd3b5a83d4b085.md) | 38 | `declaration-track:fd7c0915eebd3b5a83d4b085503c4b70f75947ed8dd7df7dcdb79af6d53e9b9c` |
| 2 | `lemma` | [grahamConjecture_of_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant5c55f587b43ed327f76ae2af004c8fb18ec6d5550f8957b85073bfaee9e04021.lean/declarations/grahamconjecture-of-squarefree--02ff8532c541f3e23de40be7.md) | 42 | `result-track:02ff8532c541f3e23de40be7ade7cca54c8213edd2ad435a32fa65b786a5a47c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
