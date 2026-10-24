# Verification target: GRWTSK.Algebra.Opposite.Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a1ced355dc90c018a047412def773194e5c11b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a1ced355dc90c018a047412def773194e5c11b`.

Source path: `GRWTSK/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAlgEquiv](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/declarations/opalgequiv--b7e33ff8041a2e0515aab9c9.md) | 31 | `declaration-track:b7e33ff8041a2e0515aab9c9bb593a5a1ef7dad485783cd4c6016efd359158ae` |
| 2 | `theorem` | [opAlgEquiv_apply](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/declarations/opalgequiv-apply--cb63d0b27e8dc5b7364dac59.md) | 44 | `result-track:cb63d0b27e8dc5b7364dac59dd0c1adb5795306644e15bc75e83a16e1dc120d1` |
| 3 | `theorem` | [opAlgEquiv_symm_apply](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/declarations/opalgequiv-symm-apply--48f31d008c3b6c293c6f78bd.md) | 50 | `result-track:48f31d008c3b6c293c6f78bd1b59698211c2502b78b5c2db16ad2ccbcaafbeaf` |
| 4 | `theorem` | [opAlgEquiv_tmul](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/declarations/opalgequiv-tmul--8fb0ee9cdb7664a5bafc7245.md) | 56 | `result-track:8fb0ee9cdb7664a5bafc72453851df4b7bed2005f0023d39e96ec93b1c2154b3` |
| 5 | `theorem` | [opAlgEquiv_symm_tmul](../../../../mathematics/Algebra/Opposite/Variantac0a391bfe1854ad281a5a77d7b7935443879706eaa89f131b03ace16127785f.lean/declarations/opalgequiv-symm-tmul--9c81a58055b319a3b062af7b.md) | 61 | `result-track:9c81a58055b319a3b062af7beefd55b2ba2a4067b06623d6f1e062aa99b5b6bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
