# Verification target: GRWTSK.Algebra.LinearAlgebra.Permutation.Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18ba1debfc75428d36699ea0b55b345f262d6fff",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18ba1debfc75428d36699ea0b55b345f262d6fff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.PEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Equiv.Perm.permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/declarations/equiv-perm-permmatrix--eaf6b4f6bde5b09c7595eb7e.md) | 42 | `declaration-track:eaf6b4f6bde5b09c7595eb7e0009b4e7ec92710db843ab3262fab34841480c20` |
| 2 | `lemma` | [transpose_permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/declarations/transpose-permmatrix--b442d456c0b6afab735f61f1.md) | 48 | `result-track:b442d456c0b6afab735f61f1515339be8a1366e5be85ba058e7d2f6795fbf26f` |
| 3 | `lemma` | [conjTranspose_permMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/declarations/conjtranspose-permmatrix--1c18431a9f4b2afc242374e2.md) | 52 | `result-track:1c18431a9f4b2afc242374e25870a1f9dcefecb0390e4d5be6e1725e3f249d66` |
| 4 | `theorem` | [det_permutation](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/declarations/det-permutation--5390f3e0e2aa3d676972b80b.md) | 61 | `result-track:5390f3e0e2aa3d676972b80bb15eadcd91e84b21aa7263ae3769a0b089dae6cf` |
| 5 | `theorem` | [trace_permutation](../../../../../mathematics/Algebra/LinearAlgebra/Permutation/Variant0001cac8612da6630b57fe9a4bc0b13355db879d823c2fe6a52fd93cccf3f81a.lean/declarations/trace-permutation--062c286029ad1fe3266a9866.md) | 66 | `result-track:062c286029ad1fe3266a9866e7ea56a1a40d90459dbe2c21c29b2f00bdb863ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
