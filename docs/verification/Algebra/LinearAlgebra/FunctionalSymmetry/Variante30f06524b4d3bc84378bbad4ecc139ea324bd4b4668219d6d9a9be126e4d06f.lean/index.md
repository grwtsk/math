# Verification target: GRWTSK.Algebra.LinearAlgebra.FunctionalSymmetry.Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dbd52b8e44dc99da745dc6605cd23a3ee9275c6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dbd52b8e44dc99da745dc6605cd23a3ee9275c6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.SelfAdjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionalSymmetry](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/declarations/functionalsymmetry--fa4addf82817b9ae3a448525.md) | 14 | `declaration-track:fa4addf82817b9ae3a448525bb8f6d9a8b8372f522cc212b05bdde2aab8b1e7d` |
| 2 | `def` | [IsEigenpair](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/declarations/iseigenpair--f4253b15246afe7092163335.md) | 27 | `declaration-track:f4253b15246afe7092163335e86bda5a0642797a860e24c260c1578099af1e9e` |
| 3 | `theorem` | [functional_symmetry_reflects_eigenpair](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/declarations/functional-symmetry-reflects-eigenpair--9e33937db4f0f881ea6c4e77.md) | 35 | `result-track:9e33937db4f0f881ea6c4e775d11386b7be3bfa6b5dc00cd5ba074d8f76de564` |
| 4 | `structure` | [ArithmeticPurityObligation](../../../../../mathematics/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/declarations/arithmeticpurityobligation--e8334fd6ef75cce08d0a6da2.md) | 57 | `declaration-track:e8334fd6ef75cce08d0a6da23489a84347f6df240e7ebbb41d2ca93d6ed9f35b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
