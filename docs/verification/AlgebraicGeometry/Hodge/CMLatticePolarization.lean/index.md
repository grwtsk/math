# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMLatticePolarization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19e703009cbd6ce4e9005b05b735e9b806d9c3c8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19e703009cbd6ce4e9005b05b735e9b806d9c3c8`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMLatticePolarization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMArchimedeanPositivity`](../../../../mathematics/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.Integer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalBasis](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/rationalbasis--88eb52252c071d6f8075d06b.md) | 38 | `declaration-track:88eb52252c071d6f8075d06b36ec2144470bc395db8d7eff9f2d1107ad0771e1` |
| 2 | `def` | [latticeVector](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/latticevector--1a0956e234f9a126e7aefcab.md) | 43 | `declaration-track:1a0956e234f9a126e7aefcab7c23c72ff2b9225bf83925b3f95e1a0d95aa56d0` |
| 3 | `theorem` | [latticeVector_eq_sum](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/latticevector-eq-sum--8578f0016721f45e5e07e4a5.md) | 46 | `result-track:8578f0016721f45e5e07e4a53618f0f96c38111290b083b3bcc09476aa6628fa` |
| 4 | `theorem` | [latticeVector_injective](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/latticevector-injective--76e8d4acecfc4182805fe82d.md) | 52 | `result-track:76e8d4acecfc4182805fe82dfe220dcb3bc72e84b8619d07e339968e78193b7a` |
| 5 | `def` | [pairingMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/pairingmatrix--244e074fe59549434c05781f.md) | 61 | `declaration-track:244e074fe59549434c05781fb807440766c2f196446be11ca46bab11e69a915b` |
| 6 | `def` | [latticeScale](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/latticescale--b98accdb77c917369ac122a3.md) | 69 | `declaration-track:b98accdb77c917369ac122a3ce8285e77d513aeedbfda8fff27d3a8b0cdb288d` |
| 7 | `def` | [integralPairingMatrix](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/integralpairingmatrix--daaf45cecb904fe6593dbbae.md) | 75 | `declaration-track:daaf45cecb904fe6593dbbae0741188cc9b7384c8b973d4a7bcf4bfbb3fe3036` |
| 8 | `theorem` | [latticeScale_ne_zero](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/latticescale-ne-zero--91242c9301abb7b52df34fb9.md) | 81 | `result-track:91242c9301abb7b52df34fb9bc9a7f60660422be7ca4a988e4003d2081c88ed0` |
| 9 | `theorem` | [scaled_pairingMatrix_entry](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/scaled-pairingmatrix-entry--550b07c2c360ba7fdffc831a.md) | 88 | `result-track:550b07c2c360ba7fdffc831a5fba092c209f2c01c802edd5f8fd9b3fd8c091c6` |
| 10 | `def` | [integralPairing](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/integralpairing--93ffd4b850142fe87254c88a.md) | 102 | `declaration-track:93ffd4b850142fe87254c88ab22f6a02e3bae75f47085687cba944027cd6c29b` |
| 11 | `def` | [rationalCoordinatePairing](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/rationalcoordinatepairing--5023720c656c75fcf67ed5e0.md) | 110 | `declaration-track:5023720c656c75fcf67ed5e070238b152aa3bd6c43c088ee3db0504fa70780ea` |
| 12 | `theorem` | [scaled_rationalCoordinatePairing_eq_intCast](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/scaled-rationalcoordinatepairing-eq-intcast--dffa219d87f87d63b1112ded.md) | 119 | `result-track:dffa219d87f87d63b1112ded3918638e156269bb0e8bbb07c2d377587b42ecb6` |
| 13 | `theorem` | [tracePairing_latticeVector_eq_coordinate](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/tracepairing-latticevector-eq-coordinate--be2bbb76965b1dadf11d2656.md) | 143 | `result-track:be2bbb76965b1dadf11d2656da1f1dc6905ebe9b6ac1a84cbfcfe089833d333f` |
| 14 | `theorem` | [scaled_tracePairing_lattice_integral](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/scaled-tracepairing-lattice-integral--d2d7877343cb31159fa34fd2.md) | 157 | `result-track:d2d7877343cb31159fa34fd2773e3004392c0c08ea55164378c1d8d5f31db658` |
| 15 | `theorem` | [integralPairing_self](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/integralpairing-self--1332b50660bd5aa0c1744bf4.md) | 168 | `result-track:1332b50660bd5aa0c1744bf4a5d2e7f8a9bc82afef2762f2ffe869f193c66003` |
| 16 | `structure` | [IntegralLatticePolarization](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/integrallatticepolarization--6cf25d2cd605666a791c876a.md) | 180 | `declaration-track:6cf25d2cd605666a791c876a02c8f5c9e2fd536ef0cf8ab2e5af2603ce172a62` |
| 17 | `def` | [canonicalIntegralLatticePolarization](../../../../mathematics/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/declarations/canonicalintegrallatticepolarization--7b59de4941de545e80d8aa6e.md) | 195 | `declaration-track:7b59de4941de545e80d8aa6e55bbbb1e6068e3cf686028fdaaf3673e91d1113c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
