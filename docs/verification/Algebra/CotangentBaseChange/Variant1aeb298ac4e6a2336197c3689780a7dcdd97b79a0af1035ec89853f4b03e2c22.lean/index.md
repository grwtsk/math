# Verification target: GRWTSK.Algebra.CotangentBaseChange.Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2a913bce2ee7585e812cbb9f2c8cb89c0dc314",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/index.md) · [Full source](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2a913bce2ee7585e812cbb9f2c8cb89c0dc314`.

Source path: `GRWTSK/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorCotangentHom](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangenthom--e63eef5a7b07a524743a2527.md) | 43 | `declaration-track:e63eef5a7b07a524743a25277c4d23bda4410d2fb07cb2024eadf5892497c27f` |
| 2 | `lemma` | [tensorCotangentHom_tmul](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangenthom-tmul--f337e897f472565ee0851369.md) | 58 | `result-track:f337e897f472565ee0851369f80de5778e87cbf5123df2a7ce23325f9a38b9cc` |
| 3 | `lemma` | [tensorCotangentHom_surjective](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangenthom-surjective--af14ba43063d2f959098c628.md) | 65 | `result-track:af14ba43063d2f959098c6281d6d2532297f8bdc5c9d8aedfbb4094f6c2c0bcf` |
| 4 | `lemma` | [tensorCotangentHom_injective_of_flat](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangenthom-injective-of-flat--28ccc84ec339329f9f4adda0.md) | 86 | `result-track:28ccc84ec339329f9f4adda0189a32305c659bf5246a34f3d89b634fc5f362d9` |
| 5 | `def` | [tensorCotangentEquiv](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangentequiv--380c29b055f51bff966f5583.md) | 111 | `declaration-track:380c29b055f51bff966f5583c4a1461e3d2b2e5651a766407ce62b233512ac19` |
| 6 | `lemma` | [tensorCotangentEquiv_tmul](../../../../mathematics/Algebra/CotangentBaseChange/Variant1aeb298ac4e6a2336197c3689780a7dcdd97b79a0af1035ec89853f4b03e2c22.lean/declarations/tensorcotangentequiv-tmul--b1f4c83d9307015c9a4411c9.md) | 118 | `result-track:b1f4c83d9307015c9a4411c99cb68f213b009f29cf762a93145327d213cece54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
