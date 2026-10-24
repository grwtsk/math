# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2bc75e47d34aed3f8c934f9a28e97480385b9ed",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2bc75e47d34aed3f8c934f9a28e97480385b9ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [free_and_finite_fin](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/declarations/free-and-finite-fin--f8c0fdd5f6a44705976e53a1.md) | 43 | `result-track:f8c0fdd5f6a44705976e53a1fa9e564fa81c79253e75e806adba2ff5c7d041f2` |
| 2 | `theorem` | [free_and_finite](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/declarations/free-and-finite--2975b69402aeb9ab6802199c.md) | 66 | `result-track:2975b69402aeb9ab6802199c1cb9db4a487238a8709a8c02c572da192e7165e1` |
| 3 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.FreeAndFiniteFin.Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.Module.Finite.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/declarations/root-grwtsk-algebra-linearalgebra-freeandfinitefin-variant2ab5dead865ec7--2984c4c4cf20d7bdd73dc013.md) | 75 | `declaration-track:2984c4c4cf20d7bdd73dc013512bec300cca069cacd0ae644e73c6c24630552e` |
| 4 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.FreeAndFiniteFin.Variant2ab5dead865ec7bfaf5c202bf83524519cd0810baadacb41e96a94bf28423c7a.Module.Free.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant5fe56bd4abe2cf935c0b4f69dd7ec189ed673706e19912812f71341e4f1a79d5.lean/declarations/root-grwtsk-algebra-linearalgebra-freeandfinitefin-variant2ab5dead865ec7--b7287a3623ed880cd47fc879.md) | 79 | `declaration-track:b7287a3623ed880cd47fc879e71dcb5994ac1f96716684d973720e4751c0e33e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
