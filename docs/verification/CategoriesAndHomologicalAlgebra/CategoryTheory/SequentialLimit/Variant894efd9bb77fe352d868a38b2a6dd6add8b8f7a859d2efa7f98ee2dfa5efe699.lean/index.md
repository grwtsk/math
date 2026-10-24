# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SequentialLimit.Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85956c867569556b6f93dfb3a73d544e72bae1c9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85956c867569556b6f93dfb3a73d544e72bae1c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.OfSequence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.LocallySurjective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Subcanonical` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [struct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/struct--f43af2ef37475bf54b94b692.md) | 49 | `declaration-track:f43af2ef37475bf54b94b6921eadea645a46e4d67a155b0356e21c58bb1cea6f` |
| 2 | `lemma` | [exists_effectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/exists-effectiveepi--2d45e533735f263fe12107d4.md) | 58 | `result-track:2d45e533735f263fe12107d4dae5d8700c050d7b5b469e253cad736b8adaa52d` |
| 3 | `def` | [preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/preimage--f917324b75b496dc37fa7c82.md) | 65 | `declaration-track:f917324b75b496dc37fa7c82b2c46b46446fd22a385bda3eec743c25bf6f5fec` |
| 4 | `def` | [preimageStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/preimagestruct--a7b8acb00f07a8413748bb19.md) | 72 | `declaration-track:a7b8acb00f07a8413748bb19d76dd4fda7cbf1f5cc9807eafc1efac721e5d3b6` |
| 5 | `def` | [preimageDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/preimagediagram--7449e5ca91a54a0a07dbc35f.md) | 79 | `declaration-track:7449e5ca91a54a0a07dbc35f1f885c391822caa77080e5a258c67b5bc0416052` |
| 6 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/cone--8cefafe29744ab0706a6f18c.md) | 84 | `declaration-track:8cefafe29744ab0706a6f18c52db68f57cd67c590d10de1607a0070b138e0498` |
| 7 | `lemma` | [isLocallySurjective_π_app_zero_of_isLocallySurjective_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/islocallysurjective-app-zero-of-islocallysurjective-map--138dbdfdebf58b548febce14.md) | 101 | `result-track:138dbdfdebf58b548febce14edeb4098bad432344f74bdb8eda91edada0dac27` |
| 8 | `lemma` | [epi_π_app_zero_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Variant894efd9bb77fe352d868a38b2a6dd6add8b8f7a859d2efa7f98ee2dfa5efe699.lean/declarations/epi-app-zero-of-epi--7c2b67990bd737fc025ac6b2.md) | 116 | `result-track:7c2b67990bd737fc025ac6b21f0333526268a36578523c2485127e00ffe9f1f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
