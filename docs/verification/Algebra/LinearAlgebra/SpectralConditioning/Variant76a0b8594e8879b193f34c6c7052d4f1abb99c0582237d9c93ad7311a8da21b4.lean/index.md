# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralConditioning.Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a9d62617387de46b45363623df426a1d7bcdbb3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a9d62617387de46b45363623df426a1d7bcdbb3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.End` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralConditioningModulus](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/declarations/spectralconditioningmodulus--31fcaa406ef09ea29a3f1987.md) | 22 | `declaration-track:31fcaa406ef09ea29a3f1987e0c4437747058c0e64eb9c05486644aa62ac1649` |
| 2 | `theorem` | [exact_spectral_distance_zero](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/declarations/exact-spectral-distance-zero--5e95d1ee374212a8cbf2284b.md) | 39 | `result-track:5e95d1ee374212a8cbf2284bc8de31d8614427231e9991559b9dcf6d6ab42ca1` |
| 3 | `structure` | [JordanOrderCertificate](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/declarations/jordanordercertificate--e313060a804e2efbf8654992.md) | 52 | `declaration-track:e313060a804e2efbf8654992549dcf2996ee64d7e235b4283a806f00bbfdb688` |
| 4 | `structure` | [JordanSensitiveObservable](../../../../../mathematics/Algebra/LinearAlgebra/SpectralConditioning/Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4.lean/declarations/jordansensitiveobservable--95890fa85660b09c5e5b7ff6.md) | 64 | `declaration-track:95890fa85660b09c5e5b7ff624d7716e376f1249ea93fa2190134c41a90910c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
