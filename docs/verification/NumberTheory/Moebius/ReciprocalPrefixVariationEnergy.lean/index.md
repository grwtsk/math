# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9de53d34374dc10f7703d7a1de446b77b532f4b1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9de53d34374dc10f7703d7a1de446b77b532f4b1`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalPrefixVariationSquare](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalprefixvariationsquare--284d39f6165fc43a31a76e76.md) | 28 | `declaration-track:284d39f6165fc43a31a76e768bfa4a1136bde014c52830eeb3427c2e4e1b2926` |
| 2 | `def` | [reciprocalFluxWeightSquareMass](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalfluxweightsquaremass--420ee0fbd5c43d13d06c93b4.md) | 33 | `declaration-track:420ee0fbd5c43d13d06c93b4cca392103d7e514fca3912645138ac1d42e0e59f` |
| 3 | `def` | [reciprocalCauchyBlock](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalcauchyblock--ccd130a46e003ca7d91e564a.md) | 37 | `declaration-track:ccd130a46e003ca7d91e564aeac2f8db6c85932473c351b584459c7c18df421c` |
| 4 | `theorem` | [reciprocalVariationBlock_le_cauchyBlock](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalvariationblock-le-cauchyblock--2c519e1b44cca1130551411f.md) | 45 | `result-track:2c519e1b44cca1130551411fc8cde8de2c00591de2ff1f6d1c745bc8183cda62` |
| 5 | `def` | [ReciprocalCauchyBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalcauchyblockuniform--a972578218dc7af1ac20903d.md) | 93 | `declaration-track:a972578218dc7af1ac20903ddf5206a047edab82562883b10f6c19905b176762` |
| 6 | `theorem` | [reciprocalVariationBlockUniform_of_cauchyBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/reciprocalvariationblockuniform-of-cauchyblockuniform--fd408d1c95f78c0931c05caa.md) | 97 | `result-track:fd408d1c95f78c0931c05caab4a46957f67100848c4e62fc3cdd72ced1e2015a` |
| 7 | `theorem` | [criticalBoundary_of_reciprocalCauchyBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixVariationEnergy.lean/declarations/criticalboundary-of-reciprocalcauchyblockuniform--3d2fecb3d866c9f694e90b27.md) | 112 | `result-track:3d2fecb3d866c9f694e90b270e40bdb434a20c765916c3195f23a3421c4d3b7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
