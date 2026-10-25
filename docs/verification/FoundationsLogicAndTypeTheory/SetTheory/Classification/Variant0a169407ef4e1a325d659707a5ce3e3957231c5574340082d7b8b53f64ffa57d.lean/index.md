# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Classification.Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea4fb551b9fb123e1a549c2c1b9e3950f4e69b17",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea4fb551b9fb123e1a549c2c1b9e3950f4e69b17`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AlgebraicIndependent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Cardinal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Cardinal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Algebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cardinal_mk_le_sigma_polynomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/cardinal-mk-le-sigma-polynomial--992461964c13b5cfec2371a0.md) | 50 | `result-track:992461964c13b5cfec2371a08614f2c4cabacb967dda15ed9164219573ce2b0a` |
| 2 | `theorem` | [cardinal_mk_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/cardinal-mk-le-max--acafc6e712c9737eb465e612.md) | 73 | `result-track:acafc6e712c9737eb465e612588e4ce01cbb09d56a36c4a0bf5ddbfbdd6dfc28` |
| 3 | `theorem` | [isAlgClosure_of_transcendence_basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/isalgclosure-of-transcendence-basis--e4a9095f89fe670e0facd1ba.md) | 110 | `result-track:e4a9095f89fe670e0facd1ba7a759472068fd599a1657f344b06a95592286058` |
| 4 | `def` | [equivOfTranscendenceBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/equivoftranscendencebasis--d828ca6befcd5c570d819b01.md) | 122 | `declaration-track:d828ca6befcd5c570d819b01644c02d24efb941ec86967e84dc702ee756e2e21` |
| 5 | `theorem` | [cardinal_le_max_transcendence_basis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/cardinal-le-max-transcendence-basis--5cfb3be7a0d5d1e012004852.md) | 150 | `result-track:5cfb3be7a0d5d1e01200485200e19f8803b53af5808f3ec42c6acf11cfb4576e` |
| 6 | `theorem` | [cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--6c5cc7b3f20a6d026e0f548e.md) | 163 | `result-track:6c5cc7b3f20a6d026e0f548e54c389c7d65fa9ea7303769c97b090c1006a0104` |
| 7 | `theorem` | [ringEquivOfCardinalEqOfCharZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/ringequivofcardinaleqofcharzero--d7e5d628c94a2d6ca0f976be.md) | 185 | `result-track:d7e5d628c94a2d6ca0f976bea07b0598ffd9098df4b90a90730503afe9e25436` |
| 8 | `theorem` | [ringEquivOfCardinalEqOfCharP](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/ringequivofcardinaleqofcharp--15dbbf4d8272845183101dbb.md) | 199 | `result-track:15dbbf4d8272845183101dbb7fafcf97e0511e0411834144cf0674f45fdcf438` |
| 9 | `theorem` | [ringEquivOfCardinalEqOfCharEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Classification/Variant0a169407ef4e1a325d659707a5ce3e3957231c5574340082d7b8b53f64ffa57d.lean/declarations/ringequivofcardinaleqofchareq--bd7a8c3d5cc92ee88e5741dd.md) | 218 | `result-track:bd7a8c3d5cc92ee88e5741dd2e519c8e93fe1e2c7700c5613c979d57ffc26e51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
