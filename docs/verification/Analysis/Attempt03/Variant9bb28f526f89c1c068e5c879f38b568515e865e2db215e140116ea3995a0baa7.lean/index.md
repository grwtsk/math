# Verification target: GRWTSK.Analysis.Attempt03.Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "807e6f33dae5a7b5fa5b90e15d7556e1f86a1903",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/index.md) · [Full source](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `807e6f33dae5a7b5fa5b90e15d7556e1f86a1903`.

Source path: `GRWTSK/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/compactlaplace--7911c742f439de8965ef25d0.md) | 29 | `declaration-track:7911c742f439de8965ef25d01834cc20ebb69f59b31ad1777ba5a517d59d496e` |
| 2 | `def` | [primitiveTransform](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/primitivetransform--04cb95328808bc937c9ac32d.md) | 32 | `declaration-track:04cb95328808bc937c9ac32ddaa622303ce4e8922b09dda8f59ef8ac76a84b6b` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/normalizedprimitivetransform--dd543939732d092dbc36a52f.md) | 34 | `declaration-track:dd543939732d092dbc36a52f26734786a28bf9215cc7811c5e6b8372036359ec` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/compactlaplace-integrable--b8aff2234a4b4cc42b1d3618.md) | 37 | `result-track:b8aff2234a4b4cc42b1d36187055fc96be24fca3a088ef408d7294d072c9b052` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/complex-weighted-derivative--5a27c0f254120dae38d8b250.md) | 44 | `result-track:5a27c0f254120dae38d8b250fd6837fdab1f3e82f7a116a74975174d37706267` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/actual-complex-pole-filter--8f79921572039750b8009aa7.md) | 73 | `result-track:8f79921572039750b8009aa768dfd52303565fdca81ebb72d1a926bae8b2b592` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/primitive-transform-normalization--e4f6223ca168d2aa2a7a589f.md) | 100 | `result-track:e4f6223ca168d2aa2a7a589f2633018f69f713df6378c094ea44882262bdcd71` |
| 8 | `theorem` | [boundary_transform_factored](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/boundary-transform-factored--8be44379c6a4e9bc6e6fead9.md) | 110 | `result-track:8be44379c6a4e9bc6e6fead9e996e4e6170c406f202eec5ef1f467eb277c9dfe` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../mathematics/Analysis/Attempt03/Variant9bb28f526f89c1c068e5c879f38b568515e865e2db215e140116ea3995a0baa7.lean/declarations/boundary-transform-factored-unnormalized--ab91e13a041a29fa70609094.md) | 117 | `result-track:ab91e13a041a29fa706090944aac55a4d786714c85f80f61d720d20ec0d2ea11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
