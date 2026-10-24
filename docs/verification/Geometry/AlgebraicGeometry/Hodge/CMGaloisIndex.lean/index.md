# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMGaloisIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029e33786be2556aeb3c4232d2ee8be5e7b329d3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029e33786be2556aeb3c4232d2ee8be5e7b329d3`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMGaloisIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMGaloisIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMFourBalance.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CentralInvolution](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/centralinvolution--7dc717a303ba0e0ec6f8cff1.md) | 21 | `declaration-track:7dc717a303ba0e0ec6f8cff1e05ef925acb83a19fc0586708abc792a38768595` |
| 2 | `def` | [CentralInvolution.conj](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/centralinvolution-conj--5c09c9aff6647dbddad4d965.md) | 28 | `declaration-track:5c09c9aff6647dbddad4d965ee409cc9c3883d951810a03d6df1321adcbe59af` |
| 3 | `theorem` | [CentralInvolution.conj_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/centralinvolution-conj-apply--b5b4ab86b1f2445192454027.md) | 34 | `result-track:b5b4ab86b1f24451924540277e69ffc5aee69953797da8d82bc81b25e827993a` |
| 4 | `theorem` | [CentralInvolution.conj_involutive](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/centralinvolution-conj-involutive--bb51f571028efe127191d247.md) | 40 | `result-track:bb51f571028efe127191d247b27b904695438b0a3eeddf82cff06f72507a7305` |
| 5 | `theorem` | [CentralInvolution.conj_eq_mul_right](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/centralinvolution-conj-eq-mul-right--dba0ed8dc86fe45a41d77fb2.md) | 46 | `result-track:dba0ed8dc86fe45a41d77fb2deacc40c24061ee95e1703030fe3a9f1978f507e` |
| 6 | `structure` | [CMOddSignRow](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/cmoddsignrow--59070edfec6c6494d40529f9.md) | 52 | `declaration-track:59070edfec6c6494d40529f9976df8488778802cd36fe3748abc61927d9954fd` |
| 7 | `def` | [CMOddSignRow.toOddSignRow](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/cmoddsignrow-tooddsignrow--5a09013b64b3e4011130f73c.md) | 59 | `declaration-track:5a09013b64b3e4011130f73c82d2d749b7b1f1a8b6ab379881ce5b4843fefc91` |
| 8 | `structure` | [CMEvenSignRow](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/cmevensignrow--8b818557260561ffae255c91.md) | 69 | `declaration-track:8b818557260561ffae255c91aebf7e4cda45d366044316ef6b67d41743541779` |
| 9 | `def` | [rescalingSign](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/rescalingsign--f5a4b4df516fe1c18460cfd7.md) | 77 | `declaration-track:f5a4b4df516fe1c18460cfd7523511e90675aa46b959915fa837ba9bb9702291` |
| 10 | `theorem` | [rescalingSign_conj](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/rescalingsign-conj--3a2af15433c5099f374832b9.md) | 91 | `result-track:3a2af15433c5099f374832b98644df584d2a005a194acb3454bcd5665c3dfa7a` |
| 11 | `def` | [CMFourBalance](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/cmfourbalance--d70518fbb3dc3d02d7e9092e.md) | 98 | `declaration-track:d70518fbb3dc3d02d7e9092ec4bb757e6137ac631217925496d447a23331874b` |
| 12 | `theorem` | [cmFourBalance_twoTwoSignProfile](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisIndex.lean/declarations/cmfourbalance-twotwosignprofile--ea6f6e11cf6ea7f3a19908b4.md) | 109 | `result-track:ea6f6e11cf6ea7f3a19908b42c075f898db52cd0de979a4186df6e7a5bac20de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
