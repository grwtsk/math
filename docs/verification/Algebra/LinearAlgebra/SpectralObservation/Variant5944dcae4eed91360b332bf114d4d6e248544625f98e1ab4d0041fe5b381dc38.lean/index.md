# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c244d27b289ed5b524d51a390407b7a3b823be1b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c244d27b289ed5b524d51a390407b7a3b823be1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [featureGram](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/featuregram--e5b7ebb496dc0a9446d33cfa.md) | 21 | `declaration-track:e5b7ebb496dc0a9446d33cfaceb8996ce662d1e55e2331e7cb5a394be6d6433b` |
| 2 | `theorem` | [complex_gram_norm_square](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/complex-gram-norm-square--bf146d50e451ab315b426fff.md) | 25 | `result-track:bf146d50e451ab315b426fffedfbcf2110e96dbcae0da2f99b87ac7ea67483e5` |
| 3 | `theorem` | [real_gram_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/real-gram-sum-squares--1e934ad94a34430b64f34cfd.md) | 32 | `result-track:1e934ad94a34430b64f34cfdd87ed544c660821583c40b877e6681a42ee2231e` |
| 4 | `theorem` | [complex_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/complex-gram-possemidef--e3f2138fdb124c245475e67a.md) | 41 | `result-track:e3f2138fdb124c245475e67acf976a294815b18f51c266c70c3a78ae77609512` |
| 5 | `theorem` | [real_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/real-gram-possemidef--dfd9a74247478e4e7524677a.md) | 47 | `result-track:dfd9a74247478e4e7524677a0cf5f53809c19f4e70015819d267e5be4d32f30e` |
| 6 | `theorem` | [complex_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/complex-gram-rank-bound--a93f7339a6e5c83fa39500f0.md) | 51 | `result-track:a93f7339a6e5c83fa39500f0a9999624e2a09b4203666b527119c06556aec2d2` |
| 7 | `theorem` | [real_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38.lean/declarations/real-gram-rank-bound--671139773a16ffae7caec150.md) | 56 | `result-track:671139773a16ffae7caec150ccacd11e77ea205c1ee2e12254fc0545b6472f91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
