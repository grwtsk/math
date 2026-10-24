# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd8fcb32870de7c8ca5d6ae8dd2b39049389b6eb",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd8fcb32870de7c8ca5d6ae8dd2b39049389b6eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SemiringInverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.InvariantBasisNumber` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Matrix.square_of_invertible](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean/declarations/matrix-square-of-invertible--a35cc6c49e611e63bc928fb5.md) | 27 | `result-track:a35cc6c49e611e63bc928fb5f3fc64aeec53c1825a830da9adf6ac809d7c5281` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variant150423f85bb56834e51e4e0df8da661040af9d710d8100801799b7acd181532a.lean/declarations/instance--963efff1b3530c623418f39b.md) | 36 | `declaration-track:963efff1b3530c623418f39bd6f52d84059730429b4eac6a57aa6ec76331e723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
