# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b3197eac79c61eab514d6514150b3f91717efa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b3197eac79c61eab514d6514150b3f91717efa`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMEmbeddingEigenspaces`](../../../../mathematics/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularAction](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/declarations/regularaction--299ea4f732b700d4307b7668.md) | 36 | `declaration-track:299ea4f732b700d4307b7668a6a84e7d83b183b505c48fe43c0cbafe8fc77339` |
| 2 | `theorem` | [regularAction_tmul](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/declarations/regularaction-tmul--3af33fb356f3268387e0cd24.md) | 41 | `result-track:3af33fb356f3268387e0cd241bc18269bf3ff789be539706f7834ee3bb8c53d6` |
| 3 | `def` | [embeddingEigenspace](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/declarations/embeddingeigenspace--01abef81690dadae2c0421d5.md) | 47 | `declaration-track:01abef81690dadae2c0421d5ffea3599d5a23ac3cd67a0b9e6c11cb7344ce6b3` |
| 4 | `theorem` | [mem_embeddingEigenspace_iff](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/declarations/mem-embeddingeigenspace-iff--0b54150f4698502f6d9469de.md) | 51 | `result-track:0b54150f4698502f6d9469dea92f579f8bdc67d66f30304b4238388763ca0984` |
| 5 | `def` | [eigenlineRealization](../../../../mathematics/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/declarations/eigenlinerealization--3d32424a34a42e291618e946.md) | 61 | `declaration-track:3d32424a34a42e291618e9465c2036c7e8ab088c634fa4df29e8801872adb73b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
