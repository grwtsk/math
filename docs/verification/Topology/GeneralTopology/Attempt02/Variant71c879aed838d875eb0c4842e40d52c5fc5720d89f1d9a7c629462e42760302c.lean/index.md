# Verification target: GRWTSK.Topology.GeneralTopology.Attempt02.Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b0e141ed691b434d28ec7685a16c40daf55e0d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b0e141ed691b434d28ec7685a16c40daf55e0d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IntermediateValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SmallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/smallpositive--0814409f3589406968e566bf.md) | 17 | `declaration-track:0814409f3589406968e566bf1ede302abc4b0144bda09ff0cce5c65eb1b9ba41` |
| 2 | `def` | [GlobalNonnegative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/globalnonnegative--a6f772b01bd92b7ce361cf29.md) | 20 | `declaration-track:a6f772b01bd92b7ce361cf2999246f8049bcd51ce83387c6e457ff7796500db4` |
| 3 | `def` | [NonvanishingOnPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/nonvanishingonpositive--047718303112a70755ce2afd.md) | 23 | `declaration-track:047718303112a70755ce2afde84f47c70ada57194f4d988d521b862771696939` |
| 4 | `def` | [affineFixture](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture--2df3f06a71d0369e27b496d9.md) | 26 | `declaration-track:2df3f06a71d0369e27b496d915724fd90a46a89b7ec505fd890ac13e847cf566` |
| 5 | `theorem` | [affineFixture_continuous](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-continuous--77041bbb4b65909243f66057.md) | 28 | `result-track:77041bbb4b65909243f66057727df41112086f2c8a50497b56baa8b22dddad30` |
| 6 | `theorem` | [affineFixture_smallPositive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-smallpositive--488d2d428e8206ca2b0710c6.md) | 32 | `result-track:488d2d428e8206ca2b0710c6e73ac3398afd64487be9174446c4c17991eb4dec` |
| 7 | `theorem` | [affineFixture_later_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-later-negative--6c568ac87ef5c28199140ab5.md) | 38 | `result-track:6c568ac87ef5c28199140ab5f7e26f3edfa0e28fd552cb713fb5903c588c2b4d` |
| 8 | `theorem` | [affineFixture_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-not-global--f6ce7c6bbb40656b71345604.md) | 41 | `result-track:f6ce7c6bbb40656b71345604e8c628a0def1a1c4d64beef165d9887c19025b24` |
| 9 | `theorem` | [continuous_local_does_not_imply_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/continuous-local-does-not-imply-global--5ef32435cda779b8d8e386df.md) | 46 | `result-track:5ef32435cda779b8d8e386df13897573e1ce1d179b357b691edbf8065df1bbcd` |
| 10 | `theorem` | [bounded_window_can_miss_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/bounded-window-can-miss-negative--c3fe3d08942a2c239aebf88a.md) | 55 | `result-track:c3fe3d08942a2c239aebf88a6fd414cb5a0c9f7f0aab2d6138e54bad9f465167` |
| 11 | `theorem` | [affineFixture_unique_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-unique-crossing--2dad6fe59adcdb225369c331.md) | 67 | `result-track:2dad6fe59adcdb225369c331184779f249233f38608b13a7c87483244c49b304` |
| 12 | `theorem` | [zero_before_negative](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/zero-before-negative--b41f2162b5a65c171cc16877.md) | 73 | `result-track:b41f2162b5a65c171cc168775d686dc63cb87c373ee0b7ef6f5295f3e813ad3f` |
| 13 | `theorem` | [zero_of_not_global](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/zero-of-not-global--2bc3651cbc6feece310b4dd8.md) | 96 | `result-track:2bc3651cbc6feece310b4dd8d2eed3526c482af0b9677f5e3a098d02d8390314` |
| 14 | `theorem` | [positive_everywhere_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/positive-everywhere-of-nonvanishing--c2c3a5d145ad6141b5a7f01f.md) | 106 | `result-track:c2c3a5d145ad6141b5a7f01f5c2d93e0609605fd5f8888ed56bacc626a853a11` |
| 15 | `theorem` | [positive_everywhere_iff_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/positive-everywhere-iff-nonvanishing--f42a439858b572bc27ca8295.md) | 118 | `result-track:f42a439858b572bc27ca829510a21f4d0647db75e7a80bf301dc5d85ee85b944` |
| 16 | `theorem` | [global_nonnegative_of_nonvanishing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/global-nonnegative-of-nonvanishing--f328ee45575e628992e0bfa6.md) | 125 | `result-track:f328ee45575e628992e0bfa6806a7fc9070bc4c25f244cadfaadb001cd0e5f01` |
| 17 | `def` | [LowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/lowesteigenvalueprofile--eed2ceeed6345d3a63c3ed7e.md) | 132 | `declaration-track:eed2ceeed6345d3a63c3ed7ed1128a4577cd7f26e643ef9bf1bea2a909e6928e` |
| 18 | `theorem` | [lowestEigenvalue_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/lowesteigenvalue-crossing--9e0763b385969a559517b31e.md) | 135 | `result-track:9e0763b385969a559517b31ef0e6cf7c1f7a2a72abdb24c2a41a7db58952ae78` |
| 19 | `theorem` | [lowestEigenvalue_failure_crossing](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/lowesteigenvalue-failure-crossing--ea98bfb2ce67e2e524fa81d4.md) | 140 | `result-track:ea98bfb2ce67e2e524fa81d4a26b8e0c5deddc4a470957f7c9394ff1747a2772` |
| 20 | `theorem` | [lowestEigenvalue_nonvanishing_iff_positive](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/lowesteigenvalue-nonvanishing-iff-positive--0648bfe8d624ea1f3c4ecde9.md) | 145 | `result-track:0648bfe8d624ea1f3c4ecde90418069a6f4e904eb644a8998fc5848099c769c4` |
| 21 | `theorem` | [affineFixture_lowestEigenvalueProfile](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant71c879aed838d875eb0c4842e40d52c5fc5720d89f1d9a7c629462e42760302c.lean/declarations/affinefixture-lowesteigenvalueprofile--0ad842b40f44ee4141722d05.md) | 150 | `result-track:0ad842b40f44ee4141722d050a4aa68ed53e4dbf121a47739728cc78589a8e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
