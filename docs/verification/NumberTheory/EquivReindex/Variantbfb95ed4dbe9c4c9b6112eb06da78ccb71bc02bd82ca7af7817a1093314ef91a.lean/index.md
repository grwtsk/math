# Verification target: GRWTSK.NumberTheory.EquivReindex.Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3862754f4aec49061f287de11ecfdbbe68d4224",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3862754f4aec49061f287de11ecfdbbe68d4224`.

Source path: `GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [equivReindex](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/equivreindex--c5ddfc7d2508ebd4f6bbf542.md) | 29 | `declaration-track:c5ddfc7d2508ebd4f6bbf5426982d07d11602d5970ecb6bc81bd289028b5f205` |
| 2 | `abbrev` | [basisMatrix](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/basismatrix--ae414fbcdce918296dd93490.md) | 36 | `declaration-track:ae414fbcdce918296dd93490d820e9a69e947c486dc701022fc7ff78d0332ebc` |
| 3 | `theorem` | [det_of_basisMatrix_non_zero](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/det-of-basismatrix-non-zero--6d3744b529d86738b2aca6b6.md) | 39 | `result-track:6d3744b529d86738b2aca6b67a70801299fdbfd97ee4f8cc640b8d04ed5fea4c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/instance--17b8ec6b541ea6751dac0ff2.md) | 52 | `declaration-track:17b8ec6b541ea6751dac0ff21509e603cd424ba092db006a6007803061c9ead6` |
| 5 | `theorem` | [canonicalEmbedding_eq_basisMatrix_mulVec](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/canonicalembedding-eq-basismatrix-mulvec--d7ab04d7fddedde636557c31.md) | 57 | `result-track:d7ab04d7fddedde636557c31230a8cd79760fe6b7dfbe830e9ec2258c4b4a623` |
| 6 | `theorem` | [inverse_basisMatrix_mulVec_eq_repr](../../../../mathematics/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/declarations/inverse-basismatrix-mulvec-eq-repr--bd4eff7ab3814eee9d84ca4d.md) | 66 | `result-track:bd4eff7ab3814eee9d84ca4d644726de388a5a8c7d0c08561a0baa59d60ad260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
