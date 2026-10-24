# Verification target: GRWTSK.Algebra.RingHomProperties.Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27506276bc4056f71e8d0f4ad267cdead01a9723",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27506276bc4056f71e8d0f4ad267cdead01a9723`.

Source path: `GRWTSK/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RespectsIso](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/respectsiso--2d9dadbb5a4afbd224b951cc.md) | 49 | `declaration-track:2d9dadbb5a4afbd224b951cca19fd6f67ad9b6b90e5b9e5e23d888ca46866118` |
| 2 | `theorem` | [RespectsIso.cancel_left_isIso](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/respectsiso-cancel-left-isiso--c0d521af57393c2411fa60f8.md) | 58 | `result-track:c0d521af57393c2411fa60f87fcd54890e6495efae905b1a23acecf2d48f97e0` |
| 3 | `theorem` | [RespectsIso.cancel_right_isIso](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/respectsiso-cancel-right-isiso--1832a3e45fa0c93639645ff5.md) | 65 | `result-track:1832a3e45fa0c93639645ff5abfaced5d225300cc609a6fdeb72c1dfe981b06f` |
| 4 | `theorem` | [RespectsIso.is_localization_away_iff](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/respectsiso-is-localization-away-iff--1a09bc42e27a4d5f8530bb10.md) | 73 | `result-track:1a09bc42e27a4d5f8530bb102c312354a33c1efdb05791bde7adb47145bc9f52` |
| 5 | `def` | [StableUnderComposition](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/stableundercomposition--1f90cf22a4117690344f1b7a.md) | 108 | `declaration-track:1f90cf22a4117690344f1b7a2e0910a5a36e80b21a3f08b683718af140a64844` |
| 6 | `theorem` | [StableUnderComposition.respectsIso](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/stableundercomposition-respectsiso--e4676afbc366a592174e4a95.md) | 115 | `result-track:e4676afbc366a592174e4a9523d2eb3b34b8239c68033a7db21b2156b9d2c74c` |
| 7 | `def` | [StableUnderBaseChange](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/stableunderbasechange--3aafa5320acf09425b6cb842.md) | 135 | `declaration-track:3aafa5320acf09425b6cb842d01f98d6ca93de3d5db8b2db808b6669c46c8675` |
| 8 | `theorem` | [StableUnderBaseChange.mk](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/stableunderbasechange-mk--09f70228a0c463e121617064.md) | 142 | `result-track:09f70228a0c463e1216170644364b0baf3978508902134406a7c23056b4d1abe` |
| 9 | `theorem` | [StableUnderBaseChange.pushout_inl](../../../../mathematics/Algebra/RingHomProperties/Variantf740986712b37b1eb63436a6c80fc2ee62acdd73baaae7f90cf59a2be74c073d.lean/declarations/stableunderbasechange-pushout-inl--9d0f214412c648bd37fe498d.md) | 178 | `result-track:9d0f214412c648bd37fe498de141cedf4eae2e5a218c8869f617aee565d0d6f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
