# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Towers.Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c2a7409ebcad12a36bdb19ad6243787c0bdcb91",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c2a7409ebcad12a36bdb19ad6243787c0bdcb91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/cumulativefield--a4511050f6b510cf40eaf03f.md) | 18 | `declaration-track:a4511050f6b510cf40eaf03f193a18f2d4d967d2483c9ba19d1a4dc7241af0fc` |
| 2 | `theorem` | [cumulative_field_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/cumulative-field-mono--2c6fd5da66a248784189f7d2.md) | 22 | `result-track:2c6fd5da66a248784189f7d2ddc783216efb7444ad620442c25f88494d889343` |
| 3 | `theorem` | [component_le_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/component-le-cumulative--b514fbbf8a0591edead89bc7.md) | 27 | `result-track:b514fbbf8a0591edead89bc7c39822f3d631335657bd0075e7c75b9aab7ff3e8` |
| 4 | `def` | [cumulativeInclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/cumulativeinclusion--b65836f72fa3cf6cb62965de.md) | 32 | `declaration-track:b65836f72fa3cf6cb62965de19454fff2649ebf180bbbbcab1725095050093ff` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/cumulative-inclusion-comp--1bffad6d21cb37273aa1e8ff.md) | 37 | `result-track:1bffad6d21cb37273aa1e8ff9a94dc4c5ccde231de5e0debd9d732f431a95aa4` |
| 6 | `structure` | [FiniteInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/finiteinversesystem--55c4db6b4d3b9c09fa2bc4f2.md) | 45 | `declaration-track:55c4db6b4d3b9c09fa2bc4f2a2608be1e210e0fcd8c28897b8ef1e45070762ab` |
| 7 | `def` | [CompatibleSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/compatiblesection--3977d4f776853b384052da92.md) | 61 | `declaration-track:3977d4f776853b384052da920f7a0dc4dc79154e23d9436b2ebae46a214bc226` |
| 8 | `theorem` | [compatible_section_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/compatible-section-restrict--715ca8ba9a7891bf9e37ff5b.md) | 65 | `result-track:715ca8ba9a7891bf9e37ff5b48997b5285a65b40aab34e71e14cbe218da9f6e9` |
| 9 | `def` | [constantInverseSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/constantinversesystem--96d74cec091bf6f7d44d19d3.md) | 71 | `declaration-track:96d74cec091bf6f7d44d19d319fb0e6feb305873c156ea92d04a373193d106de` |
| 10 | `def` | [sectionFromLast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/sectionfromlast--562460191f1cfff541a0e3ef.md) | 80 | `declaration-track:562460191f1cfff541a0e3efebcb1f94bb65b19f701804e741bd5b9c71f46a5e` |
| 11 | `theorem` | [section_from_last_compatible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Towers/Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719.lean/declarations/section-from-last-compatible--ab573d2d9a1173962b7c2857.md) | 85 | `result-track:ab573d2d9a1173962b7c285726f1e5ffed6324a438e14334a5a81428da770c6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
