# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c510e8d93f588ef5baad0dec9ba5579672095dc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c510e8d93f588ef5baad0dec9ba5579672095dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/instance--8dc955f5304c2f2e788d6151.md) | 28 | `declaration-track:8dc955f5304c2f2e788d615169f22d46675163db3a669201e2aa8ed904d891f3` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/instance--b286113d5e528c29a66ab28e.md) | 31 | `declaration-track:b286113d5e528c29a66ab28e1385441b8fe055a1af8e019261a9b5e6b2be0ef3` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/instance--d585a7b9ffad8d1f0fe7498e.md) | 34 | `declaration-track:d585a7b9ffad8d1f0fe7498e3da787a7c52ec7151fbb01abec29ee9c72d02f0c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/instance--2d19b3902fffb82df1073f8f.md) | 36 | `declaration-track:2d19b3902fffb82df1073f8f514ee1d803ae1da2691f95e4c503edd8c37fbdae` |
| 5 | `instance` | [Additive.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/additive-fintype--89aecd423a6f8d0ed5ee9539.md) | 38 | `declaration-track:89aecd423a6f8d0ed5ee95394e06878f6d3d58d97ac525f19fff280a4297aeb5` |
| 6 | `instance` | [Multiplicative.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/multiplicative-fintype--270499aec9d8b0902f82af09.md) | 41 | `declaration-track:270499aec9d8b0902f82af099efa5fe5733f921c5f010424ee3bce85a3abbee8` |
| 7 | `lemma` | [Fintype.card_multiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/fintype-card-multiplicative--95158ce03cbfddd0ca64c18c.md) | 44 | `result-track:95158ce03cbfddd0ca64c18cdec00eda94bb79e352004e3a512e8d57495c55ac` |
| 8 | `lemma` | [Fintype.card_additive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variantb41e88871cc3b5d259f2097dd541ab7d6055b950240b72785d223d545b8e29b0.lean/declarations/fintype-card-additive--56062441c96ddbca78a2edab.md) | 47 | `result-track:56062441c96ddbca78a2edabead31fd0c5bf17fbf156d1a36c4e901eca378e94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
