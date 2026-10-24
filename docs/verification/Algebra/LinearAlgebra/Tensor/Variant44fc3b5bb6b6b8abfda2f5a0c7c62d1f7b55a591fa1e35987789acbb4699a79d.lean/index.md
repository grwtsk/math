# Verification target: GRWTSK.Algebra.LinearAlgebra.Tensor.Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e1456b65ba2171f238c7d576786e927f3ae1e5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e1456b65ba2171f238c7d576786e927f3ae1e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/declarations/tensor--613f3b64e4e6cdcf1573a59f.md) | 39 | `declaration-track:613f3b64e4e6cdcf1573a59f92d686660fb8a57ca7388034e59b691cd20dc242` |
| 2 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/declarations/tensor--d756dfa7935f820da6300bc4.md) | 57 | `declaration-track:d756dfa7935f820da6300bc410fcf89ac4316e5a80e004b25369335e395ac846` |
| 3 | `def` | [isPresentationCoreTensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/declarations/ispresentationcoretensor--06f190f360e7de7db6a6f32c.md) | 72 | `declaration-track:06f190f360e7de7db6a6f32c3cf104369d9693e4653baf4dcd7efd079bdad825` |
| 4 | `lemma` | [IsPresentation.tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/declarations/ispresentation-tensor--7d6112bfee93c63514258bea.md) | 98 | `result-track:7d6112bfee93c63514258bea882dceced4f54d7bb28f807bd4a45bc26bec13fc` |
| 5 | `def` | [tensor](../../../../../mathematics/Algebra/LinearAlgebra/Tensor/Variant44fc3b5bb6b6b8abfda2f5a0c7c62d1f7b55a591fa1e35987789acbb4699a79d.lean/declarations/tensor--b7389970ef6e269adde1eec0.md) | 112 | `declaration-track:b7389970ef6e269adde1eec0f0e2a94e208815aa150da1afb6184eb5da4c8499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
