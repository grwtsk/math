# Verification target: GRWTSK.Algebra.QuarticStabilizerOrder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b33d8da1089a10d446e9c232f0298709b5fb0f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticStabilizerOrder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b33d8da1089a10d446e9c232f0298709b5fb0f`.

Source path: `GRWTSK/Algebra/QuarticStabilizerOrder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticStabilizerOrder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticSplittingFaithfulness`](../../../mathematics/Algebra/QuarticSplittingFaithfulness.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence`](../../../mathematics/Algebra/QuarticAdjacencyGaloisCorrespondence.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootActionImage](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/rootactionimage--8989d44e31098b3e8c5a0e1a.md) | 29 | `declaration-track:8989d44e31098b3e8c5a0e1af027c076d29149464fd1181bdf3c4dfef12114f2` |
| 2 | `def` | [matchingKernel](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/matchingkernel--ffdaefe028a1701190bbb449.md) | 35 | `declaration-track:ffdaefe028a1701190bbb44925728076827c35b4fe2408bd9712a3cb3ca94084` |
| 3 | `def` | [rootImageKleinIntersection](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/rootimagekleinintersection--3afcf67cd6d70ff7d41a7830.md) | 39 | `declaration-track:3afcf67cd6d70ff7d41a783020f9b3607cacf737c517caee21ba00ba770c3f3d` |
| 4 | `def` | [stabilizerToImageIntersection](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/stabilizertoimageintersection--d5eae3f3da19ead3fe843240.md) | 46 | `declaration-track:d5eae3f3da19ead3fe84324051cb00a1dcfe53c37689b28992f5c5f849f8526d` |
| 5 | `theorem` | [stabilizerToImageIntersection_injective](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/stabilizertoimageintersection-injective--0bb3dce2c3734b31c8b370f3.md) | 58 | `result-track:0bb3dce2c3734b31c8b370f3037771f3fff552ab2f51bb6a89f34b00701ce2fd` |
| 6 | `theorem` | [stabilizerToImageIntersection_surjective](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/stabilizertoimageintersection-surjective--3dc02567428b94cfc97385f5.md) | 69 | `result-track:3dc02567428b94cfc97385f5ca09ee86fb930c5fe719c0f79fec2cd69ac62859` |
| 7 | `theorem` | [card_stabilizer_eq_card_image_intersection](../../../mathematics/Algebra/QuarticStabilizerOrder.lean/declarations/card-stabilizer-eq-card-image-intersection--530de46e725dfa0c1a31624c.md) | 86 | `result-track:530de46e725dfa0c1a31624c23095f35889c92422de258018b4dc64e7a300418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
