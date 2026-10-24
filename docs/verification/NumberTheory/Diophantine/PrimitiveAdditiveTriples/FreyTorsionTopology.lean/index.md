# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3079bd94e5a609cce1ebf748bb052d8906edae62",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3079bd94e5a609cce1ebf748bb052d8906edae62`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionCompletion.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionTopology`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionTopology.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.Topology.Algebra.DiscreteProjectionRigidity`](../../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completion_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/completion-continuous--fc1fcaff5d3bab3040ec088e.md) | 29 | `result-track:fc1fcaff5d3bab3040ec088e148d0f7e5fca05bbccf09a4b6a87b6d59a5446f0` |
| 2 | `theorem` | [completion_symm_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/completion-symm-continuous--4ab20a922f50ed22c2d85977.md) | 39 | `result-track:4ab20a922f50ed22c2d85977dabd753bfef545c066800919bd2793d53696035b` |
| 3 | `def` | [completionHomeomorph](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/completionhomeomorph--d4033ad0a1e876f5c26a5d75.md) | 50 | `declaration-track:d4033ad0a1e876f5c26a5d755258fd55dbad58f0b281736de19a8bc88c5cf8e0` |
| 4 | `theorem` | [completionHomeomorph_apply](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/completionhomeomorph-apply--7915d4bd6f9c76fb4838f85e.md) | 57 | `result-track:7915d4bd6f9c76fb4838f85ef5627b208666ed995724f12df04d0b3cab4d0cbf` |
| 5 | `theorem` | [completion_fiber_preimage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/completion-fiber-preimage--90e6d834cbb3ff6276496c2a.md) | 63 | `result-track:90e6d834cbb3ff6276496c2ac2b4725c3cde371ce4e046167b8574b8efa3f7b8` |
| 6 | `theorem` | [series_symm_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/series-symm-projection--43d55d81fe660ae870abad82.md) | 79 | `result-track:43d55d81fe660ae870abad823bac9852bbbc39613758bc6ea0779560e940261f` |
| 7 | `theorem` | [series_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/series-continuous--bbd287cb833482e9f5356d7a.md) | 91 | `result-track:bbd287cb833482e9f5356d7a3d772080ad8c316492153067aab7654863fb5051` |
| 8 | `theorem` | [series_symm_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/series-symm-continuous--4dc47eee775dc9340bbc2760.md) | 100 | `result-track:4dc47eee775dc9340bbc2760c40a843a8831896414edaa6c94165ba687ac2152` |
| 9 | `def` | [seriesHomeomorph](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/serieshomeomorph--e91f27100330fae86d9fca57.md) | 110 | `declaration-track:e91f27100330fae86d9fca57567b1fd5b669946b99236da6ec9c237edcd32bae` |
| 10 | `theorem` | [seriesHomeomorph_apply](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/serieshomeomorph-apply--431df9843e98233f3da4b74e.md) | 117 | `result-track:431df9843e98233f3da4b74ef90fcece4a020bcef66c3f2d25015e9eb4aec3a9` |
| 11 | `theorem` | [series_difference_filtration](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/series-difference-filtration--ae7bd23b479ef8feb0945a46.md) | 124 | `result-track:ae7bd23b479ef8feb0945a4663b504e7c2574ae36542ee2640d268ff936805da` |
| 12 | `theorem` | [canonical_path_constant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/canonical-path-constant--15feb936bd9eba944b12898c.md) | 137 | `result-track:15feb936bd9eba944b12898c58fa38b8f7f6dc5bdb74ecef2072326af3797700` |
| 13 | `theorem` | [series_path_constant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/series-path-constant--7b63bf2ae1059b9221d4f36e.md) | 151 | `result-track:7b63bf2ae1059b9221d4f36e253429a6f45b10bad7bcb51526240ac660067087` |
| 14 | `theorem` | [scalar_path_not_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/scalar-path-not-continuous--0924e4ee88c162299432052b.md) | 164 | `result-track:0924e4ee88c162299432052b65775ce809fdb5fdf68abf413b1f9fbd92fadf66` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/primitiveadditivetriple-freyt0canonicalhomeomorph--33c1858686f508480ef0b1be.md) | 177 | `declaration-track:33c1858686f508480ef0b1be4fdb7b0c376c2987d189f0e65fef854d16cec3ea` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyT0CanonicalHomeomorph_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/declarations/primitiveadditivetriple-freyt0canonicalhomeomorph-agrees--479626e76154a1a84ed35a86.md) | 186 | `result-track:479626e76154a1a84ed35a86c5b17c69a8ca1e099f7b5ba53ea5731fb3bf3874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
