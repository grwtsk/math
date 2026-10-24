# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryGlobalUnitWeakMertens

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66df4148a06701caba735db1f0694ec54730a319",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66df4148a06701caba735db1f0694ec54730a319`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryUnitIntervalWeakMertens`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicGlobalUnitWeakMertensEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/dyadicglobalunitweakmertensenergy--7bf6ad97803ebac44647a601.md) | 20 | `declaration-track:7bf6ad97803ebac44647a601c4e57f1f7e49e199fcb517545b6b84b81db55efd` |
| 2 | `theorem` | [weakMertensUnitKernel_nonneg](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/weakmertensunitkernel-nonneg--4f389d10d89e76c6e5097a89.md) | 25 | `result-track:4f389d10d89e76c6e5097a8997ae13770d1f547ef0b82688e21962e884111db7` |
| 3 | `theorem` | [sum_range_reverse_kernel](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/sum-range-reverse-kernel--7940a4d206534d8781add0de.md) | 35 | `result-track:7940a4d206534d8781add0de914650a42938e618263b0ec2d823fd52c89a3969` |
| 4 | `theorem` | [boundaryUpperUnitFamily_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundaryupperunitfamily-eq-ico--22d883ed3d35aa3fc66f1a00.md) | 59 | `result-track:22d883ed3d35aa3fc66f1a00bd4f9c265b40b3470d375e24f173492354798700` |
| 5 | `theorem` | [boundaryLowerUnitFamily_eq_range](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundarylowerunitfamily-eq-range--f14d11a38b6588e26934cb3a.md) | 92 | `result-track:f14d11a38b6588e26934cb3a22ebf03ecb3bb054cb9ce2a4ea1690666b210664` |
| 6 | `theorem` | [boundaryFirstTwoUnitFamilies_eq_global](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundaryfirsttwounitfamilies-eq-global--97ad88505d425cb618b48b9e.md) | 118 | `result-track:97ad88505d425cb618b48b9e7559df20f9976895da277dee30cdbb567b23e6fb` |
| 7 | `theorem` | [boundaryThirdUnitFamily_le_global](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundarythirdunitfamily-le-global--9fb4e0bc3dab556ea974a83f.md) | 136 | `result-track:9fb4e0bc3dab556ea974a83ff27623cf9db699d20c4fae0038f83313ff941cee` |
| 8 | `theorem` | [boundaryLocalizedUnitWeakMertensEnergy_le_two_global](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundarylocalizedunitweakmertensenergy-le-two-global--d9328088899fa5cf4aadd2ee.md) | 206 | `result-track:d9328088899fa5cf4aadd2ee60d95890394004fd1de9dde97b22f94a6595160e` |
| 9 | `def` | [DyadicGlobalUnitWeakMertensSource](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/dyadicglobalunitweakmertenssource--af1ce46b96ea8aa06eaa87c4.md) | 218 | `declaration-track:af1ce46b96ea8aa06eaa87c4225453bda7de592ce3939b650b937cca6016fd93` |
| 10 | `theorem` | [boundaryUnitIntervalWeakMertensSource_of_global](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/boundaryunitintervalweakmertenssource-of-global--7753fccc38953b38a3b9542f.md) | 226 | `result-track:7753fccc38953b38a3b9542fc9a958b23fe6712f9e979a78d27965042d37a355` |
| 11 | `theorem` | [subpolynomialCoreBoundarySignedPacket_of_globalUnitWeakMertens](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/subpolynomialcoreboundarysignedpacket-of-globalunitweakmertens--fb0da64783e9ba02c71818d9.md) | 242 | `result-track:fb0da64783e9ba02c71818d992b2cf6fdbe2749e12f2e69d658ce738d879fae9` |
| 12 | `structure` | [ClassicalWeakMertensToDyadicGlobalUnitAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/declarations/classicalweakmertenstodyadicglobalunitadapter--8d6f3b7833b1b80a63ea94ac.md) | 250 | `declaration-track:8d6f3b7833b1b80a63ea94ac39096eda8b75b7f06ce15a9095273542f0d919be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
