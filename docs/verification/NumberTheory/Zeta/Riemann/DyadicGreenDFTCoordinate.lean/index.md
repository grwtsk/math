# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenDFTCoordinate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29da84ce803b31c62707d6729c12702d4dfe6fbc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29da84ce803b31c62707d6729c12702d4dfe6fbc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenArithmeticFourierCoordinate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenArithmeticFourierCoordinate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenDFTPhase](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greendftphase--6107a6321d1b6f08bb9545f6.md) | 39 | `declaration-track:6107a6321d1b6f08bb9545f65ae0406883c400e3cc2dca468be2b26131ab67d5` |
| 2 | `theorem` | [location_coe_eq_normalized_coe](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/location-coe-eq-normalized-coe--f930b00f736dcc48fe068f15.md) | 44 | `result-track:f930b00f736dcc48fe068f158018c0c482f96a3e5fbd5eacc697a378cac025b6` |
| 3 | `theorem` | [fourier_at_location_eq_DFTPhase](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/fourier-at-location-eq-dftphase--12fe0eb2ad19395905edf19e.md) | 54 | `result-track:12fe0eb2ad19395905edf19e2c00da025450195234b66574048bfbe3d66862fd` |
| 4 | `theorem` | [greenDFTPhase_eq_exp](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greendftphase-eq-exp--e29e24f8eeee582b76a3c21c.md) | 62 | `result-track:e29e24f8eeee582b76a3c21cb88c2441d42c9c15665b4d52927fb9fce53674df` |
| 5 | `theorem` | [fourierModeValue_location_eq_DFT](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/fouriermodevalue-location-eq-dft--7e6b34a60c642124cdcc7840.md) | 75 | `result-track:7e6b34a60c642124cdcc7840c520112ed1706df3875609617ec68940bcc4f5d2` |
| 6 | `def` | [greenWeightedDFTPhaseSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greenweighteddftphasesum--043154e602c1829f1e0362df.md) | 84 | `declaration-track:043154e602c1829f1e0362df5da0c5cc6e3ced51c68bfe04c4c58e6cd1422938` |
| 7 | `def` | [greenWindowCoefficientMassComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greenwindowcoefficientmasscomplex--8525188fc3c3016215e0facb.md) | 89 | `declaration-track:8525188fc3c3016215e0facb7befb366cf11fcb49b3b935ee21dd64a68cb7ef6` |
| 8 | `theorem` | [greenFourierPrimeCoordinate_eq_weightedDFT](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greenfourierprimecoordinate-eq-weighteddft--63bcab90e9bff6fa780c253b.md) | 95 | `result-track:63bcab90e9bff6fa780c253b5999c72fc9ca5809d60895c74eea9550020816c6` |
| 9 | `theorem` | [greenArithmeticFourierCoordinate_eq_background_sub_weightedDFT](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenDFTCoordinate.lean/declarations/greenarithmeticfouriercoordinate-eq-background-sub-weighteddft--2ad4e4ff6a6bb8fbfd51cc64.md) | 112 | `result-track:2ad4e4ff6a6bb8fbfd51cc64aacb1f8ff4ec6b24b59b0dd97a371133d8d46075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
