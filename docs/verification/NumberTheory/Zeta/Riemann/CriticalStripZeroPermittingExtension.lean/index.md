# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5df790f34b8a0a17c6bb63104817ec4031e9d9e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5df790f34b8a0a17c6bb63104817ec4031e9d9e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [noTargetZero_union](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/notargetzero-union--ea551bb735a6ac079d0a94fa.md) | 22 | `result-track:ea551bb735a6ac079d0a94fa89fe27d0554c57301ff421dbfe629e67ae97cb61` |
| 2 | `def` | [extendZeroFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extendzerofree--c748a0ad906efe0a405892e5.md) | 33 | `declaration-track:c748a0ad906efe0a405892e557b3c57b4cd30cfbfbe8e47ada5647885593c7ca` |
| 3 | `theorem` | [extendZeroFree_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extendzerofree-count--4807973baa2616167c581fb9.md) | 49 | `result-track:4807973baa2616167c581fb93c6caebfdc664052305ed48a98f1652671568136` |
| 4 | `theorem` | [extendZeroFree_regions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extendzerofree-regions--8262c18848a4c6c95dd45c23.md) | 52 | `result-track:8262c18848a4c6c95dd45c237d792ccadc267c3f92aeb3719fac2ccd7184c7ee` |
| 5 | `theorem` | [extendZeroFree_carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extendzerofree-carrier--4e430f6406a347117754543c.md) | 56 | `result-track:4e430f6406a347117754543cc89e8be2efa55a2ea67a5b9950ed9b1f2c6295ee` |
| 6 | `theorem` | [extension_order_carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extension-order-carrier--38e09543aa45319d66fb6dba.md) | 61 | `result-track:38e09543aa45319d66fb6dba365434480cd4db0b9fec78734692cfc43360b93a` |
| 7 | `theorem` | [extension_assoc_carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/extension-assoc-carrier--0f87bdf0010717f83e3adaf1.md) | 70 | `result-track:0f87bdf0010717f83e3adaf10f4eaf70abb162fea07f1b420621c9c6a1a3334f` |
| 8 | `theorem` | [atMostOneTarget_of_count_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripZeroPermittingExtension.lean/declarations/atmostonetarget-of-count-one--f5febbe5d659ed3516f325ff.md) | 81 | `result-track:f5febbe5d659ed3516f325ffd8921bcade758a939f6331a7e50ce0940bc9ab4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
