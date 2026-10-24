# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bb28efb5ff2b348a0939d6c0c6d5afb80c4164f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bb28efb5ff2b348a0939d6c0c6d5afb80c4164f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [free_and_finite_fin](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/declarations/free-and-finite-fin--be73d7641e642e794356c80f.md) | 35 | `result-track:be73d7641e642e794356c80f96ff883271858d55abd69f764f1936cb0e4dd741` |
| 2 | `theorem` | [free_and_finite](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/declarations/free-and-finite--4cbf8226fcef5878dd646aea.md) | 58 | `result-track:4cbf8226fcef5878dd646aeabf63724ed725bcb1286048c4baf20f893a13bb32` |
| 3 | `instance` | [_root_.Module.Finite.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/declarations/root-module-finite-multilinearmap--c60ca3c2d102a1d4ac25a4cd.md) | 67 | `declaration-track:c60ca3c2d102a1d4ac25a4cd01993fdeff1314a3dad7f9f9248bc94c7aea6a2f` |
| 4 | `instance` | [_root_.Module.Free.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.lean/declarations/root-module-free-multilinearmap--21b9d3971b70436bb3ff0722.md) | 71 | `declaration-track:21b9d3971b70436bb3ff0722a2dc81ba16d2eeab0dd80a26ff80d2abf6662df6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
