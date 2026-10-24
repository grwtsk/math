# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b390d083d71a56e1a38f9650e457164690b83e31",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b390d083d71a56e1a38f9650e457164690b83e31`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Split.Pred` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 25; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 28; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Intercalate` — import line 29; external provider; requires a separately pinned dependency.
- `Init.Data.List.SplitOn.Lemmas` — import line 30; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Slice` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pattern.Model.split_char_eq_split_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/pattern-model-split-char-eq-split-beq--0bcd760c800f1f46f78022cb.md) | 43 | `result-track:0bcd760c800f1f46f78022cb948d6102d371f806aa4474b6e578bdad557b8782` |
| 2 | `theorem` | [toList_splitToSubslice_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/tolist-splittosubslice-char--632371353b5b28ff9ea44d52.md) | 57 | `result-track:632371353b5b28ff9ea44d528acdc447a344be24f724050f3ca6065525c2f961` |
| 3 | `theorem` | [toList_split_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/tolist-split-char--8220369714f2507691794d79.md) | 64 | `result-track:8220369714f2507691794d79bac8db127d3cce33684cf0144b557ce5d815a311` |
| 4 | `theorem` | [toList_split_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/tolist-split-char--e75a5ba0fee828b2e5587a22.md) | 70 | `result-track:e75a5ba0fee828b2e5587a22f355c602d2a317f331d3dda6264d039472cf7481` |
| 5 | `theorem` | [Slice.toList_split_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/slice-tolist-split-intercalate--8cb0d1bd6cd1d5148b2c53ad.md) | 74 | `result-track:8cb0d1bd6cd1d5148b2c53adb50402ead1c5d78c728fbe40de15c5689c9a9362` |
| 6 | `theorem` | [Slice.toList_split_intercalate_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/slice-tolist-split-intercalate-beq--3d85d79b70ac8b93a3255159.md) | 82 | `result-track:3d85d79b70ac8b93a32551592f8eb5c95acbd99e3603e23a2eb058c39b5a08c8` |
| 7 | `theorem` | [toList_split_intercalate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/tolist-split-intercalate--320ffd9e297ea6694523fc9d.md) | 87 | `result-track:320ffd9e297ea6694523fc9d1b84ca52289768e7b8b2b5a2f09fa2971864084a` |
| 8 | `theorem` | [toList_split_intercalate_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant89baf960e602413f3cd14abec6713afb8bde26e977ef59c0beeb45abeb945c78.lean/declarations/tolist-split-intercalate-beq--20c80da68b0681b603418f4e.md) | 95 | `result-track:20c80da68b0681b603418f4e33b6de494b1e14f0ee09d37a2a8148e4927d7128` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
