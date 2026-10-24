# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "158b79c6a72fe2e84104e1ca466d7006cd9102b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `158b79c6a72fe2e84104e1ca466d7006cd9102b8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/declarations/linearmap-clmofexistsboundedimage--ff9d8c84e49f6a8abfd15f09.md) | 43 | `declaration-track:ff9d8c84e49f6a8abfd15f09fd88d6c67411c3a5e0591ee35466f8644976622e` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/declarations/linearmap-clmofexistsboundedimage-coe--7b735e941104537ac0b7ab51.md) | 67 | `result-track:7b735e941104537ac0b7ab51870fc3fcc220580de493a95a861a436282ee930a` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/declarations/linearmap-clmofexistsboundedimage-apply--ce692fc3c6a0aa9722016a35.md) | 73 | `result-track:ce692fc3c6a0aa9722016a35c8d9432efbf125926c2861391e44520ee8b6ea17` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/declarations/linearmap-continuousat-zero-of-locally-bounded--f9a603507f40bf6b3572194c.md) | 80 | `result-track:f9a603507f40bf6b3572194ca5d888580f57da507e17a20ae7e70c28ea23a7e3` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantaa5073cade19875f6064c2d79eed17fe5620e12a059deb8c42c5f6be10f0a0a9.lean/declarations/linearmap-continuous-of-locally-bounded--7aa778e4c831bdc2f2842e42.md) | 125 | `result-track:7aa778e4c831bdc2f2842e425b8c2213a7a775b409158314038c2008410030d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
