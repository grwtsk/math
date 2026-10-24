# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4843fe5066ddbaae5a44e831ecf0fcbd14a9802d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4843fe5066ddbaae5a44e831ecf0fcbd14a9802d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/quiver--6b1d8a627d88452d9e9a2b73.md) | 53 | `declaration-track:6b1d8a627d88452d9e9a2b73cdf52e9b621e426fcf52d5c4f73a1768637e66fa` |
| 2 | `structure` | [Prefunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/prefunctor--b920c2c9c2d532d7f0c2679d.md) | 67 | `declaration-track:b920c2c9c2d532d7f0c2679d29075b44b3ed3d57cbca26c651e3ac53a9fbf25b` |
| 3 | `lemma` | [mk_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/mk-obj--e7e2cfe11d8f9ce5b5d327c5.md) | 81 | `result-track:e7e2cfe11d8f9ce5b5d327c5d4b8e89f8e0d29d104ece36cc2e629bdd5de623b` |
| 4 | `lemma` | [mk_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/mk-map--e8db05c7e7022f8f46a5153a.md) | 82 | `result-track:e8db05c7e7022f8f46a5153a6473abf9eeaac983de903ee35c81b3736a278e88` |
| 5 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/ext--d49f080bb3e7c9146374e3f0.md) | 86 | `result-track:d49f080bb3e7c9146374e3f0498f3c50f9d4da3c8582ccfb09040f33d3c01c9d` |
| 6 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/id--1a0a712d48c372c1b5df35dd.md) | 102 | `declaration-track:1a0a712d48c372c1b5df35ddcc91f495a4c9341fab57eb08d093bd8529a0e947` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/instance--843b2ed244aef9d8dc2481b5.md) | 109 | `declaration-track:843b2ed244aef9d8dc2481b51cfeadb0fb03aa9ed560b0bd75f629803693489d` |
| 8 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/comp--ee62040a3e4c1e026b14d364.md) | 114 | `declaration-track:ee62040a3e4c1e026b14d3640f89c7b44f029a5a3af2466e87878886a42270c1` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/comp-id--c50e29777b21f9c7b5996f67.md) | 123 | `result-track:c50e29777b21f9c7b5996f6747dc2f4d6c1474d0c41cb0cd61bf4135fce2a9b1` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/id-comp--0fa7b57150c94b72bded72f7.md) | 128 | `result-track:0fa7b57150c94b72bded72f7e5a4660e37439067a69cce5836f8d6eed82c33cb` |
| 11 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/comp-assoc--f16ef40c5fac621242b93f58.md) | 133 | `result-track:f16ef40c5fac621242b93f58c0035ae7e60e0dcd17cd8195498bac0491cdf985` |
| 12 | `instance` | [opposite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/opposite--74c5652783e3410f473f06dd.md) | 153 | `declaration-track:74c5652783e3410f473f06dd98582f45ea81b3be26d93cca8427285c1ec01a73` |
| 13 | `def` | [Hom.op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/hom-op--71ed9fb1678faf25636aa4ec.md) | 159 | `declaration-track:71ed9fb1678faf25636aa4ecfecb47565476d0f15a4c4a94eb11f751fde9b865` |
| 14 | `def` | [Hom.unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/hom-unop--0122a2d4dd175e7768544f84.md) | 164 | `declaration-track:0122a2d4dd175e7768544f847768e9481f517f51d6e430619a527873c1e97c4c` |
| 15 | `def` | [Empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/empty--e2114b46a1bdc4c7d26d8128.md) | 170 | `declaration-track:e2114b46a1bdc4c7d26d8128f1674132f48148af8c6511db479d8c0aff5928b5` |
| 16 | `instance` | [emptyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/emptyquiver--003818165fa1c7df81dec22d.md) | 173 | `declaration-track:003818165fa1c7df81dec22d88947aa692b2932c085ee3262d949df949da1e21` |
| 17 | `theorem` | [empty_arrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/empty-arrow--e63a5cefc82d2472d92bb366.md) | 177 | `result-track:e63a5cefc82d2472d92bb3667cbe18257e23a5d57f575d67b9ca9c902185f59a` |
| 18 | `def` | [IsThin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantcc861dabc7c561b7ecd85b2abaa635c2c8a5e05fb8bd2829d67481b1f31077c2.lean/declarations/isthin--3cfff8fcb3f8a4503d5b0dec.md) | 182 | `declaration-track:3cfff8fcb3f8a4503d5b0dec06285afcfe921d08813e933f640525d5587704d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
