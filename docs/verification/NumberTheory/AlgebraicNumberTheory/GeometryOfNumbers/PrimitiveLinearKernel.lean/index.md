# Verification target: GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e50b64465633c177a2ba115d72179b2de09640",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e50b64465633c177a2ba115d72179b2de09640`.

Source path: `GRWTSK/GeometryOfNumbers/PrimitiveLinearKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/PrimitiveLinearKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount`](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearBoxCount.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Int.GCD` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntPoint](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/intpoint--e5e97ab029a80f57b28c73b1.md) | 37 | `declaration-track:e5e97ab029a80f57b28c73b1c04911541ac671b72dfea3feac78f9bb30f19966` |
| 2 | `def` | [coefficientHom](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/coefficienthom--5015dda1301a8d9b9f457e54.md) | 40 | `declaration-track:5015dda1301a8d9b9f457e5460c976b83c622b46c1da14a2ce4d147cb1024b66` |
| 3 | `def` | [linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/linearkernel--85a1c3d48165df8a59246464.md) | 52 | `declaration-track:85a1c3d48165df8a59246464e1cfafb0a843380a18c4b801a5c06cf538764103` |
| 4 | `theorem` | [mem_linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/mem-linearkernel--8f79ae3e0a65a58803479410.md) | 55 | `result-track:8f79ae3e0a65a58803479410719856ef4f81a5912676b20b4f76e8dccfdfc767` |
| 5 | `def` | [scalePoint](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/scalepoint--626530820a0a9990f24d96d5.md) | 64 | `declaration-track:626530820a0a9990f24d96d59bd9eb05eec25856c0c09a6e4d39991415aaba57` |
| 6 | `theorem` | [coefficientHom_scale](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/coefficienthom-scale--e063e988c2d069df82fab31b.md) | 68 | `result-track:e063e988c2d069df82fab31b4e47962682b72efe7b849fc3d555475b6ccd46df` |
| 7 | `theorem` | [mem_linearKernel_of_scalePoint_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/mem-linearkernel-of-scalepoint-mem--7f37ffb0910b90c0b8d13120.md) | 83 | `result-track:7f37ffb0910b90c0b8d13120bc2d66fdac44841aa2effd19b825bc0451d8732c` |
| 8 | `def` | [primitiveNormalWitness](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/primitivenormalwitness--ec7a6111577d0818e79bb56c.md) | 96 | `declaration-track:ec7a6111577d0818e79bb56cf5ed062a567f08c5e112778ffe82041fc29afb0d` |
| 9 | `theorem` | [coefficientHom_primitiveNormalWitness](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/coefficienthom-primitivenormalwitness--27414742b8a16a569882918a.md) | 103 | `result-track:27414742b8a16a569882918a624eecffa09c0a520b7d5f4460fb359d2e69497a` |
| 10 | `theorem` | [coefficientHom_surjective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/coefficienthom-surjective--cb81e5ffe8fa3c89274867d4.md) | 129 | `result-track:cb81e5ffe8fa3c89274867d4c332ac100b83ad5e58746e6771674d343e1dbd07` |
| 11 | `def` | [intPointOfNat](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/intpointofnat--10ab6c9be91d78537f3e7bec.md) | 139 | `declaration-track:10ab6c9be91d78537f3e7becce3fe5583d586746a401d00e54b249af9c552f4f` |
| 12 | `theorem` | [intPointOfNat_mem_linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/intpointofnat-mem-linearkernel--4224db0f5d01889618fc0664.md) | 144 | `result-track:4224db0f5d01889618fc066476a31b32e91ac36dee02ef4bc465a8c76a67e15f` |
| 13 | `theorem` | [countedPoint_mem_linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/declarations/countedpoint-mem-linearkernel--57a69934618ab7266a93a87c.md) | 155 | `result-track:57a69934618ab7266a93a87c57808e9a81b7cd99462fc5d06952bd369e1d873a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
