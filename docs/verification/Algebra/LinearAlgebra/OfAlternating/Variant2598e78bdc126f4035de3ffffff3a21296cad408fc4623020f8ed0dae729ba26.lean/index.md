# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAlternating.Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa2df6d3476e99586c418661782c584e177a3837",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa2df6d3476e99586c418661782c584e177a3837`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AlternatingMap.instModuleAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/alternatingmap-instmoduleaddcommgroup--a964824a8fbfe32578de25d9.md) | 43 | `declaration-track:a964824a8fbfe32578de25d9a7009e40766582370e16a6370136cc0fc50ca7af` |
| 2 | `def` | [liftAlternating](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating--68ecc52a63896ab9be0b147d.md) | 54 | `declaration-track:68ecc52a63896ab9be0b147d9fd68ab60de8b84dc783e68b431e2bc1c8a0c8ab` |
| 3 | `theorem` | [liftAlternating_ι](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating--20c5091960c8850dd1ea3a2c.md) | 78 | `result-track:20c5091960c8850dd1ea3a2c1a530884c99df182af1e6d60845bf0085abb6ef3` |
| 4 | `theorem` | [liftAlternating_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-mul--19a9dd67037f3e634e7a6753.md) | 89 | `result-track:19a9dd67037f3e634e7a6753147c72df5f439f9bb236d10c8101eb2a4dcc1eb8` |
| 5 | `theorem` | [liftAlternating_one](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-one--a62826c6e308d90f67b634d0.md) | 99 | `result-track:a62826c6e308d90f67b634d05c442e00b8a58b3623c6d99c38ae98b21b276b7e` |
| 6 | `theorem` | [liftAlternating_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-algebramap--a49c37652cdd3ad22b0adfda.md) | 106 | `result-track:a49c37652cdd3ad22b0adfdab40bc21246142411b9d97b32b592c2af4e851466` |
| 7 | `theorem` | [liftAlternating_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-apply-multi--6d61e499e2fa0872f02b6e0c.md) | 113 | `result-track:6d61e499e2fa0872f02b6e0cc3e7f82a2711ef2e2ab6a23f0ab77a3b7cf8b32c` |
| 8 | `theorem` | [liftAlternating_comp_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-comp-multi--5506634a8f909bb6d86050bb.md) | 129 | `result-track:5506634a8f909bb6d86050bbfa020bf583301f76662d95f9da1aa6c706969765` |
| 9 | `theorem` | [liftAlternating_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-comp--ddcb0113fe5b88f097995c3f.md) | 135 | `result-track:ddcb0113fe5b88f097995c3f6f011f80b78da3e076df0dbb3698751bf3989437` |
| 10 | `theorem` | [liftAlternating_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternating-multi--fe7e0a7a4801095c63395fc0.md) | 149 | `result-track:fe7e0a7a4801095c63395fc05dd92234329c8e24629955d0aa86f373064763eb` |
| 11 | `def` | [liftAlternatingEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/liftalternatingequiv--1882913ced2bd9f9c3b6c6b9.md) | 163 | `declaration-track:1882913ced2bd9f9c3b6c6b959fb0cbe1e9c673da6d0cb6af90ce65d8dfaf85c` |
| 12 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/OfAlternating/Variant2598e78bdc126f4035de3ffffff3a21296cad408fc4623020f8ed0dae729ba26.lean/declarations/lhom-ext--2aaf4db7668604d5939fc5f6.md) | 179 | `result-track:2aaf4db7668604d5939fc5f681a8ab596ea167b83f3ae39387c33f9ed7d5883d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
