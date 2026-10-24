# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2d60338ee9707a63a4fac254721e4f0365c93fd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2d60338ee9707a63a4fac254721e4f0365c93fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean/declarations/list-prod--f7010bc78c11dbf8f26c7b9e.md) | 29 | `result-track:f7010bc78c11dbf8f26c7b9e57cfd8c487222924343fbd21d0135475d0a78bce` |
| 2 | `theorem` | [multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean/declarations/multiset-prod--bc99ed452e85e4b7282a47c3.md) | 41 | `result-track:bc99ed452e85e4b7282a47c322dd3e818dd339c7e7232a601eae1789a1194163` |
| 3 | `theorem` | [finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f.lean/declarations/finset-prod--060a09217b18e8bd5bc731b8.md) | 48 | `result-track:060a09217b18e8bd5bc731b876e49e47add1fa785af02b763e2ac2173c73762d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
