# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingFiberEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dca9c84426bbc264bc93f15b388675470f2a815",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dca9c84426bbc264bc93f15b388675470f2a815`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingAdditiveEnergy`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingAdditiveEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfIndexBinaryMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/halfindexbinarymobiuscoefficient--f8e1b57975026e43f090e48f.md) | 39 | `declaration-track:f8e1b57975026e43f090e48fa83a69b1c44caa8a4c67a49a489d8473f3d1cd01` |
| 2 | `theorem` | [halfIndexZeroWindingCoordinate_lt_endpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/halfindexzerowindingcoordinate-lt-endpoint--be3f8265c1f9291db8e4daaf.md) | 46 | `result-track:be3f8265c1f9291db8e4daaf942ffa7173cd8e94a03068037bb27fce411819a3` |
| 3 | `def` | [parityHalfIndexZeroWindingFiber](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/parityhalfindexzerowindingfiber--ed168444aaa246bef643355d.md) | 56 | `declaration-track:ed168444aaa246bef643355d3e36f2cf079a64a98791a419cd1da8c135a632c5` |
| 4 | `def` | [parityHalfIndexZeroWindingFiberEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/parityhalfindexzerowindingfiberenergy--40a9f33a36db8af647bf4dfd.md) | 67 | `declaration-track:40a9f33a36db8af647bf4dfd4130f1af7ca2cff3bb5f9242789e01fb690993b3` |
| 5 | `theorem` | [halfIndexQuarticMobiusCoefficient_eq_binary_mul](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/halfindexquarticmobiuscoefficient-eq-binary-mul--3e98ae64cff804cf66eb7b8a.md) | 75 | `result-track:3e98ae64cff804cf66eb7b8a3a58fed25f22b462996c37367b18b78805b65511` |
| 6 | `theorem` | [zeroWindingFiberSquareExpansion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/zerowindingfibersquareexpansion--7c88519b2f6dfa08a4bd2d6a.md) | 85 | `result-track:7c88519b2f6dfa08a4bd2d6ad86f66b5c5890151f276c01731e2c45363c588c7` |
| 7 | `theorem` | [parityHalfIndexSignedQuarticZeroWinding_eq_fiberEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/parityhalfindexsignedquarticzerowinding-eq-fiberenergy--dd7a5874ad3908dbed484fb1.md) | 137 | `result-track:dd7a5874ad3908dbed484fb1723802c5a59fc38cc0abd44fa574cb61257bd0d7` |
| 8 | `theorem` | [parityHalfIndexZeroWindingFiberEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/parityhalfindexzerowindingfiberenergy-nonneg--c3b83e55981182570bc63969.md) | 158 | `result-track:c3b83e55981182570bc63969c95f45413b0b74b3d038699b7abdd3bbc68c9252` |
| 9 | `def` | [twoNonunitRegularZeroWindingFiberEnergyMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/twononunitregularzerowindingfiberenergymajorant--f1f90b111dc087c9541f8d6d.md) | 167 | `declaration-track:f1f90b111dc087c9541f8d6dfd44f802da9f63770e04be96bacf3aecfd35472f` |
| 10 | `structure` | [RegularZeroWindingFiberEnergySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/regularzerowindingfiberenergysourcedata--d6d0044a4300d0583c418ff4.md) | 183 | `declaration-track:d6d0044a4300d0583c418ff4d1816ea11d31114b1683a0bf44a58026c7b0d45f` |
| 11 | `def` | [RegularZeroWindingFiberEnergySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingFiberEnergy.lean/declarations/regularzerowindingfiberenergysource--b8ba01b496a94d763a697b19.md) | 193 | `declaration-track:b8ba01b496a94d763a697b19244402ee42a69a1b3706fd72aa50213689d1b101` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
