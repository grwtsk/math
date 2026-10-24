# Verification target: GRWTSK.NumberTheory.ModularBoundary.Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7333829df598650d817679d8a61b4dbd6ef77ec8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7333829df598650d817679d8a61b4dbd6ef77ec8`.

Source path: `GRWTSK/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Grassmannian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gate](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gate--2c6e89c23ed5cf1bf58387d4.md) | 26 | `declaration-track:2c6e89c23ed5cf1bf58387d424db6e1739fd3deb92f320aa3fc8c1eeb6685d4f` |
| 2 | `instance` | [gateDecidable](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gatedecidable--10f972ef41175d72ef9f696e.md) | 29 | `declaration-track:10f972ef41175d72ef9f696e67b58d1729ac0551c7cc401ec4062f72fc13e84f` |
| 3 | `def` | [gateBit](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gatebit--57ce1f51b9ad60a43ad51127.md) | 33 | `declaration-track:57ce1f51b9ad60a43ad51127b05cc99fda55c3d6e573b2e292185d2ed3fa9a9e` |
| 4 | `theorem` | [gate_self](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gate-self--3cf33e91c192eae7a061062b.md) | 36 | `result-track:3cf33e91c192eae7a061062be264e0eb94f00e53e182df16002ce18d7ecddbe6` |
| 5 | `theorem` | [prime_passes_gate](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/prime-passes-gate--5409dd60a9da40d106e35ac6.md) | 39 | `result-track:5409dd60a9da40d106e35ac6b7c346c15c6abedf1a92b7420af6dbb79408bcc7` |
| 6 | `theorem` | [gate_iff_defect](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gate-iff-defect--f3c1af40747879a717ce87f7.md) | 46 | `result-track:f3c1af40747879a717ce87f780ede059df4e44f48d10b8c4cba546eab72d2e8a` |
| 7 | `theorem` | [gate_iff_plane](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gate-iff-plane--9f79def793f754bb1f422f8b.md) | 52 | `result-track:9f79def793f754bb1f422f8b1b537e9a4ebb0388ca5235768614049766709d7e` |
| 8 | `theorem` | [gateBit_eq_fourier](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gatebit-eq-fourier--cd1f0f7e59c9f424024f71d5.md) | 58 | `result-track:cd1f0f7e59c9f424024f71d5131e7c96e62adbbe1740bcc7f07a7115a3cc0911` |
| 9 | `def` | [sieveModuli](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/sievemoduli--baefa1d3ab2b105574324e4c.md) | 67 | `declaration-track:baefa1d3ab2b105574324e4c0b431bac779f0207ad199f3729166cdcf232f89c` |
| 10 | `def` | [Passes](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/passes--303c25f8870af8918c379168.md) | 70 | `declaration-track:303c25f8870af8918c379168336ed9ee5e9857cd5b820e697105350132effa3f` |
| 11 | `instance` | [passesDecidable](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/passesdecidable--97163225cc77cb4037d4074b.md) | 73 | `declaration-track:97163225cc77cb4037d4074b87490c2044ae11e24a2a1d5d482bbd187a132c01` |
| 12 | `theorem` | [prime_iff_passes](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/prime-iff-passes--eebd3d9a5e7ac15298044c16.md) | 77 | `result-track:eebd3d9a5e7ac15298044c16618dee7afa7144418b1d7bb0c689e6d9d9aefa8e` |
| 13 | `def` | [sieveLabels](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/sievelabels--8fcbc5e06aec0f8f0e2f8c19.md) | 97 | `declaration-track:8fcbc5e06aec0f8f0e2f8c19965a5858c17c5b9da41715cb72a4ef9e8e65f18d` |
| 14 | `theorem` | [sieveLabels_eq_primesLE](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/sievelabels-eq-primesle--afdb7f8580163339e904a0c3.md) | 101 | `result-track:afdb7f8580163339e904a0c31c713203083676ba22fd1b3c922a618baf5ff322` |
| 15 | `theorem` | [sieveLabels_card](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/sievelabels-card--f84e9fdb8df2fbc9e276ee3a.md) | 112 | `result-track:f84e9fdb8df2fbc9e276ee3ad01a5b0ae475b199663019248e68343912200729` |
| 16 | `theorem` | [gate_product](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/gate-product--65d9006b9cae1473f07ce611.md) | 117 | `result-track:65d9006b9cae1473f07ce6111671465d4bd01cc6f839895d32388cf14efafe3d` |
| 17 | `theorem` | [primeCounting_eq_gate_sum](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/primecounting-eq-gate-sum--9fd14e6607cbaf9ce9019bc2.md) | 133 | `result-track:9fd14e6607cbaf9ce9019bc2c7016c28d57cf1d30aaf603163ee003d41eb30f6` |
| 18 | `def` | [primeGeometricGate](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/primegeometricgate--3847186fc0ed7a4560c7ea42.md) | 147 | `declaration-track:3847186fc0ed7a4560c7ea427996e628d69516596c332f4594927784e932aa0d` |
| 19 | `theorem` | [primeGeometricGate_iff](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/primegeometricgate-iff--1c9b89fd3b33cb69719e2553.md) | 152 | `result-track:1c9b89fd3b33cb69719e25535324b55b4c6c822fea26b64bc551421bc513fd71` |
| 20 | `theorem` | [prime_iff_geometric_sieve](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/prime-iff-geometric-sieve--1cff8e2d2b776f493e7715b6.md) | 158 | `result-track:1cff8e2d2b776f493e7715b65ca923b43cec1d98c83a5899b045262db96d850e` |
| 21 | `theorem` | [four_filters_incomplete](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/four-filters-incomplete--178879902f0d366d0e23c7a8.md) | 169 | `result-track:178879902f0d366d0e23c7a821134e7ea5d8908a33dbf8a35a0e0945bd432499` |
| 22 | `theorem` | [eleven_detects_square](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/eleven-detects-square--c5db6f6747ef9d9b8ce00788.md) | 174 | `result-track:c5db6f6747ef9d9b8ce00788b143282b08aa6296fab630050f98dfdc12e80f1b` |
| 23 | `theorem` | [self_exception_required](../../../../mathematics/NumberTheory/ModularBoundary/Variantf81266e7b167fe9e248cd9fc87cb76e13902d4dd578c6a828dde5c0f37d672e4.lean/declarations/self-exception-required--e24a48a8e2e8820acdd0e29c.md) | 177 | `result-track:e24a48a8e2e8820acdd0e29cf1d5bba36064a8121a281b8231fa442f99a1bb05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
