# Verification target: GRWTSK.Analysis.Complex.Checks.RationalTentFamilyControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b55b48268e86d4ee1034f9fedc241f3a4e446c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalTentFamilyControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b55b48268e86d4ee1034f9fedc241f3a4e446c6`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalTentFamilyControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalTentFamilyControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentEnclosure`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalTentEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.Checks.RationalTentQuadratureControls`](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentQuadratureControls.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitFamily](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/unitfamily--f1cd58a38f24e2f1966a5cf5.md) | 18 | `declaration-track:f1cd58a38f24e2f1966a5cf57e1340d03ea7cbef7380322924a7f97f2d9a8a5c` |
| 2 | `def` | [unitEvaluations](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/unitevaluations--c65c2e52fe8a8dd24d879a8a.md) | 19 | `declaration-track:c65c2e52fe8a8dd24d879a8a1d4ec450c267966ce85687380c1eba9b2c3441b8` |
| 3 | `def` | [unitTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/unittrace--ff4f46a62c0236815cb3c7e1.md) | 22 | `declaration-track:ff4f46a62c0236815cb3c7e1779c2e116e9effbb59f77828a7ea790276798cbe` |
| 4 | `theorem` | [weighted_unit_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/weighted-unit-control--4fcdf3540bde1f43620ba1d3.md) | 24 | `result-track:4fcdf3540bde1f43620ba1d3b95597f1ed3170a8b57ebcf2cf0ae2fe65d84116` |
| 5 | `theorem` | [weighted_unit_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/weighted-unit-analytic--9da245561f5022b56efde62b.md) | 27 | `result-track:9da245561f5022b56efde62b5a9b370d826fc89e82d4e687538f07fa0c31e0d6` |
| 6 | `theorem` | [missing_extra_reordered_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/missing-extra-reordered-rejected--13b424182d144e70d7313cda.md) | 32 | `result-track:13b424182d144e70d7313cda759b80d2f42a2b3df296789fe3462b3e24c9acbe` |
| 7 | `theorem` | [duplicate_key_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/duplicate-key-rejected--f8cceac1bdeb0cb4e6a4924c.md) | 37 | `result-track:f8cceac1bdeb0cb4e6a4924cffb1e07a43f69fafab76a29fc435cd0c75f057d1` |
| 8 | `theorem` | [multiplicity_and_geometry_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/multiplicity-and-geometry-rejected--ae1ba3a99019cfeb034889f5.md) | 43 | `result-track:ae1ba3a99019cfeb034889f5ea2a58395d1806398d8a1f11e32b0d12eff8fdee` |
| 9 | `theorem` | [intermediate_and_imaginary_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/intermediate-and-imaginary-rejected--052ed51e63cc31078cb652cd.md) | 48 | `result-track:052ed51e63cc31078cb652cd3efe9e5e637a33be9369b90c82495dcfacb0a765` |
| 10 | `def` | [roundedTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/roundedtrace--341deda0a3a52dad788f5aa2.md) | 52 | `declaration-track:341deda0a3a52dad788f5aa2db32e4227b45a3038d735390ec5958bc0a2475d8` |
| 11 | `theorem` | [rounded_family_error](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/rounded-family-error--201b8c5da2381540edb58dc8.md) | 54 | `result-track:201b8c5da2381540edb58dc8f27c870525e38d9d21bd73612d613d2972bf51f5` |
| 12 | `def` | [nonconstantFamily](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/nonconstantfamily--e5d7fb88c484c9b511bd51ff.md) | 58 | `declaration-track:e5d7fb88c484c9b511bd51fff0042acb6213b4a30bd0e98c8c8fd874ec4b3e1e` |
| 13 | `def` | [nonconstantTrace](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/nonconstanttrace--a04fe476b3f7c42f46297b69.md) | 59 | `declaration-track:a04fe476b3f7c42f46297b690afc11829a5a706c51164ede2b097e2822ce1463` |
| 14 | `theorem` | [member_precision_not_family_precision](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/member-precision-not-family-precision--7243ce05c6f03eecf4dde3c0.md) | 63 | `result-track:7243ce05c6f03eecf4dde3c0e2219d8f5305c439fe8169aeb311e20a994c8b79` |
| 15 | `def` | [coordinateData](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/coordinatedata--a04a8e0245c01fef6a33ca70.md) | 68 | `declaration-track:a04a8e0245c01fef6a33ca705f01a5993b6a9f9a9c1a2ce1d6d29b158d99afa9` |
| 16 | `theorem` | [coordinate_charge_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/coordinate-charge-control--6a6c3e044fcd9b6ac80be70d.md) | 70 | `result-track:6a6c3e044fcd9b6ac80be70da955595c1a37b760c624a67fdcb0464cfc744602` |
| 17 | `theorem` | [missing_negative_radii_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/missing-negative-radii-rejected--d517dc5b99b1f40967625d32.md) | 76 | `result-track:d517dc5b99b1f40967625d32a10d7fe3d2b0d790beb52d9917f48eaa11af79b6` |
| 18 | `theorem` | [invalid_endpoint_log_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/invalid-endpoint-log-rejected--4a3231d7c5210f17df48ee3c.md) | 82 | `result-track:4a3231d7c5210f17df48ee3cdce4ab8dfd17efead8d079bcb4b7d5ef5306f8e6` |
| 19 | `theorem` | [nonbijective_source_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/nonbijective-source-controls--07e3709bc1ae77ef397f16ac.md) | 89 | `result-track:07e3709bc1ae77ef397f16ac889ca384c0ce86a8daa279255beccac8c83ca113` |
| 20 | `theorem` | [empty_family_controls](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/empty-family-controls--03d158952812fa9aa14ad14d.md) | 94 | `result-track:03d158952812fa9aa14ad14df61d49ef8a2aa455ab3d97596f344b9aa4f1ee00` |
| 21 | `theorem` | [negative_tolerance_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentFamilyControls.lean/declarations/negative-tolerance-rejected--c15235a5181f5cc7ada049a9.md) | 99 | `result-track:c15235a5181f5cc7ada049a9358dc119cb61a506b61a4e61ece79ce58b9cd913` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
