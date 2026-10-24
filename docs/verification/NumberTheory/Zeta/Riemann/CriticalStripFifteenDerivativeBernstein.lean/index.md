# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa38a402eef98530b48e54c0cb4b5ca3142e6bca",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa38a402eef98530b48e54c0cb4b5ca3142e6bca`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFifteenDerivativeJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/relower--052b698f8a4c722da29f16c8.md) | 23 | `declaration-track:052b698f8a4c722da29f16c8e83c2c7da2e154a010fdf2aeec66972ad63a18e4` |
| 2 | `theorem` | [reLower_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/relower-identity--620411d797355623983f3fbe.md) | 36 | `result-track:620411d797355623983f3fbe5e773f9323691f0a4eb00196d46cb903904b0795` |
| 3 | `def` | [reUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/reupper--b5eed7c8421e05f3928c99dd.md) | 43 | `declaration-track:b5eed7c8421e05f3928c99dd39ce48e02aac2416a0436f959a91d91a671c60d8` |
| 4 | `theorem` | [reUpper_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/reupper-identity--15c32401a232e2b29df603a5.md) | 56 | `result-track:15c32401a232e2b29df603a566dcc2d16fe81263e0978639f83105b89bec1d18` |
| 5 | `def` | [imLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/imlower--df55b935867e2ac8ed5bd6b5.md) | 63 | `declaration-track:df55b935867e2ac8ed5bd6b5e632cbe1fff688365207868429baecc5e82cb3a2` |
| 6 | `theorem` | [imLower_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/imlower-identity--8e6c886c66cada1886944571.md) | 76 | `result-track:8e6c886c66cada18869445718de07233e2bd7bec51819ed17bd8c6d622f8371f` |
| 7 | `def` | [imUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/imupper--4cc8b307c169c9d966a50590.md) | 83 | `declaration-track:4cc8b307c169c9d966a50590a3cdbd61dcd0f6101e2bff678234765343db43c9` |
| 8 | `theorem` | [imUpper_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/imupper-identity--2a6171e36b8579f0b3b4eb8e.md) | 96 | `result-track:2a6171e36b8579f0b3b4eb8eef3ba0e0e0af22918bf8cf187be16f18160e7a78` |
| 9 | `theorem` | [component_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/component-bounds--77762c0212e4b1ac5b144432.md) | 104 | `result-track:77762c0212e4b1ac5b144432c726b3b2071832b5f605c8f19a27b83029ee0f96` |
| 10 | `theorem` | [model_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/declarations/model-disk--03a9bc543c3fedad3068a9b8.md) | 124 | `result-track:03a9bc543c3fedad3068a9b877416690ac71760bfe2c01e1df628e9fc11f0718` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
