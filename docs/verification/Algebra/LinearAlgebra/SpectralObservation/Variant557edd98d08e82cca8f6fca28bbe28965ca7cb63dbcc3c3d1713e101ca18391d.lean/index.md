# Verification target: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f87a7df61a341a0532862fe39aaafe6370272a62",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f87a7df61a341a0532862fe39aaafe6370272a62`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [featureGram](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/featuregram--98a3f536115946fb46a8d70f.md) | 29 | `declaration-track:98a3f536115946fb46a8d70f145c6b19b83967c568973fcc3aee06b085eb8446` |
| 2 | `theorem` | [complex_gram_norm_square](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/complex-gram-norm-square--5d781df8028fe89025f15df0.md) | 33 | `result-track:5d781df8028fe89025f15df0986b5f244df9f1039c98fb8a0158374818b861bf` |
| 3 | `theorem` | [real_gram_sum_squares](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/real-gram-sum-squares--bddc640752a5dd6536a33b9d.md) | 40 | `result-track:bddc640752a5dd6536a33b9de30852b4b999a1c1cb5c97a9e5c5964d73ff69a8` |
| 4 | `theorem` | [complex_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/complex-gram-possemidef--cc99c9fd2474e90ac714fbe5.md) | 49 | `result-track:cc99c9fd2474e90ac714fbe50d42a96c4ca8292b841d381961c8a8ecfb5fcf18` |
| 5 | `theorem` | [real_gram_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/real-gram-possemidef--d4f53a99eba929600b8d27ce.md) | 55 | `result-track:d4f53a99eba929600b8d27ced3f0d8896a02757ec0662fab19f7e26b7bec45e2` |
| 6 | `theorem` | [complex_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/complex-gram-rank-bound--8696eec755ec1b5b00bbf616.md) | 59 | `result-track:8696eec755ec1b5b00bbf616f1c939c77f91c56eee529585b75fe7d8a1b4722c` |
| 7 | `theorem` | [real_gram_rank_bound](../../../../../mathematics/Algebra/LinearAlgebra/SpectralObservation/Variant557edd98d08e82cca8f6fca28bbe28965ca7cb63dbcc3c3d1713e101ca18391d.lean/declarations/real-gram-rank-bound--de232a0a295d1a7517aa37af.md) | 64 | `result-track:de232a0a295d1a7517aa37af2e62ed501fcc99ab5de1ff3a9ff3cd3d9ec8a4b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
