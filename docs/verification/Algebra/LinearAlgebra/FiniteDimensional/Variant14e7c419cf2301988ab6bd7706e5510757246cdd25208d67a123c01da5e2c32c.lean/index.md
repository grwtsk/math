# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5b7b5a37968b6dbe4f3a149625913618584340d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5b7b5a37968b6dbe4f3a149625913618584340d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [free_and_finite_fin](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/declarations/free-and-finite-fin--2e68489649d5efb9f88af53b.md) | 29 | `result-track:2e68489649d5efb9f88af53bc6355f081811b6cb7939376c438ee25841983ef6` |
| 2 | `theorem` | [free_and_finite](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/declarations/free-and-finite--b27cbb0958054445f003db28.md) | 53 | `result-track:b27cbb0958054445f003db2879748e708205a3617c0781bc7635770f22ffedb8` |
| 3 | `instance` | [_root_.Module.Finite.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/declarations/root-module-finite-multilinearmap--d537ff7bb7cb6036ccf0df83.md) | 62 | `declaration-track:d537ff7bb7cb6036ccf0df832a959f5806546f31195eabb74791d9c1e37b259f` |
| 4 | `instance` | [_root_.Module.Free.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.lean/declarations/root-module-free-multilinearmap--e8e79991e92d6be3ec94d187.md) | 65 | `declaration-track:e8e79991e92d6be3ec94d187448bad4480e57efc01fd8e8799cba674e6f9ae1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
