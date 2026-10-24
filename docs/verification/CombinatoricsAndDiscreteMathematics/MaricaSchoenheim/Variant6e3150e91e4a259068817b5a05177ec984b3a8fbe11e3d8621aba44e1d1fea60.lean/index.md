# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MaricaSchoenheim.Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdbe10e46a529ce76c646f25caab8bac891e5edf",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdbe10e46a529ce76c646f25caab8bac891e5edf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.FourFunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GrahamConjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/declarations/grahamconjecture--424bcd177003ea28e853b6fc.md) | 30 | `declaration-track:424bcd177003ea28e853b6fc6f93fda0b535ea532a63aaa6dd2db6e9fa8c06f9` |
| 2 | `lemma` | [grahamConjecture_of_squarefree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MaricaSchoenheim/Variant6e3150e91e4a259068817b5a05177ec984b3a8fbe11e3d8621aba44e1d1fea60.lean/declarations/grahamconjecture-of-squarefree--01f240942685b2616c04d2c2.md) | 34 | `result-track:01f240942685b2616c04d2c2e55c8b0a917251acff69ce2cb730173b19447591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
