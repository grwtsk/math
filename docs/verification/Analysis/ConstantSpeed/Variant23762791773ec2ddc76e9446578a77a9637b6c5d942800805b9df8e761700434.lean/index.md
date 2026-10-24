# Verification target: GRWTSK.Analysis.ConstantSpeed.Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265495e81c37264ca455ad1a06a986d467c4b859",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/index.md) · [Full source](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265495e81c37264ca455ad1a06a986d467c4b859`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.BoundedVariation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasConstantSpeedOnWith](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith--5aabc90faee97f527cc87331.md) | 60 | `declaration-track:5aabc90faee97f527cc873312bf55830b7ab47bbc09db439254e7ece9d0fa700` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon--5735a3e126ca0ab95c27be69.md) | 65 | `result-track:5735a3e126ca0ab95c27be69fd15b20d8ff70a5dbb52b03352840f364c4fa53f` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-of-subsingleton--f9ebe49f65da17e44262176e.md) | 69 | `result-track:f9ebe49f65da17e44262176ea79709b5df9a30646b5ad528d80becbaca462aa9` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-iff-ordered--3f8edb0ac9977b23c78c0834.md) | 75 | `result-track:3f8edb0ac9977b23c78c08349b305be6f9e71bac3c0cad31b22700f6737ef939` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq--9f6aae2c50f8ffc250a88de5.md) | 88 | `result-track:9f6aae2c50f8ffc250a88de5fec28f46c3225294ad62152ddc24664ea64784ff` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-union--13ef288218d1a7538cbca6b2.md) | 104 | `result-track:13ef288218d1a7538cbca6b20819a3606aca41ec11fc5f4b6efa2e7231bebabe` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-icc-icc--97cfab69720cc409311799af.md) | 141 | `result-track:97cfab69720cc409311799aff7596aca9888ed8ec77d1265ee5c5a025761f7b2` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-zero-iff--c9014fef3b3a0040d8f8fe92.md) | 156 | `result-track:c9014fef3b3a0040d8f8fe92a27cad7e3294021e9fe246019a450aa294b97b81` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasconstantspeedonwith-ratio--8b626460d64971192b323b6b.md) | 175 | `result-track:8b626460d64971192b323b6b3ea5a9940f0dfbe7f16730e4e61d02589b37ac5a` |
| 10 | `def` | [HasUnitSpeedOn](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasunitspeedon--94fd4157821da084987ee4af.md) | 192 | `declaration-track:94fd4157821da084987ee4af2bba393cba8ea588be6f57d09cd70c74bc1f2612` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasunitspeedon-union--2ad00b9d7641aaf72875d822.md) | 195 | `result-track:2ad00b9d7641aaf72875d822b5981a748ad8574b4294c614d25a1185b204a8f7` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/hasunitspeedon-icc-icc--93255293b539cc45d9497aa6.md) | 200 | `result-track:93255293b539cc45d9497aa6399589df2445a59117741410002b13198d867a25` |
| 13 | `theorem` | [unique_unit_speed](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/unique-unit-speed--f9d9f19599392cdc862b30c1.md) | 207 | `result-track:f9d9f19599392cdc862b30c1daaaf57094e50d1c00c59307410f575d47db5790` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/unique-unit-speed-on-icc-zero--1419caa6109e0ee431124a05.md) | 216 | `result-track:1419caa6109e0ee431124a057ce9417a3f93c10dc2363e97db5b1bb844ab571c` |
| 15 | `def` | [naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/naturalparameterization--d1d7467e6047a2acd8be5260.md) | 236 | `declaration-track:d1d7467e6047a2acd8be5260d18ef435156ac9b11b946e001e70904c70a6d3f0` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/edist-naturalparameterization-eq-zero--1fbcdcc729e2dfccc190139e.md) | 239 | `result-track:1fbcdcc729e2dfccc190139eb8022afd103a030ee23669071ad4344ee0c0530c` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant23762791773ec2ddc76e9446578a77a9637b6c5d942800805b9df8e761700434.lean/declarations/has-unit-speed-naturalparameterization--fb1bb46235cfc2564afe095b.md) | 248 | `result-track:fb1bb46235cfc2564afe095bf519b18c5fdd435873a6766b6aff31343e889cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
