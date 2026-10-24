# Verification target: GRWTSK.Algebra.Algebra.Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c329a3fecb92f5e7952dc64c79451cc02ef4272",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c329a3fecb92f5e7952dc64c79451cc02ef4272`.

Source path: `GRWTSK/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Algebra.idealMap_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/algebra-idealmap-islocalizedmodule--bbd63fa174f1a9f91cd244db.md) | 46 | `declaration-track:bbd63fa174f1a9f91cd244dbdc292ad37dbb223aa84e934748502abf2e0a5668` |
| 2 | `lemma` | [IsLocalization.ker_map](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/islocalization-ker-map--b5aa275ce8c33adea7e1622b.md) | 58 | `result-track:b5aa275ce8c33adea7e1622b11914e4e010ce82da278af39b172fd03ddeefca3` |
| 3 | `def` | [RingHom.toKerIsLocalization](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/ringhom-tokerislocalization--edc369e2cd2ed2088c691ea5.md) | 68 | `declaration-track:edc369e2cd2ed2088c691ea5b760cea8534573e7fbeb6880c30eadd56b1ad274` |
| 4 | `lemma` | [RingHom.toKerIsLocalization_apply](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/ringhom-tokerislocalization-apply--fc13086ddf192484dd654403.md) | 78 | `result-track:fc13086ddf192484dd654403e8fb93335229566840002224aea58bd01acfb8cc` |
| 5 | `lemma` | [RingHom.toKerIsLocalization_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/ringhom-tokerislocalization-islocalizedmodule--7a01d192151914656ee4d1c9.md) | 84 | `result-track:7a01d192151914656ee4d1c95e108099a94b6448e11c9b1290c3815b3ec4404b` |
| 6 | `instance` | [isLocalization_algebraMapSubmonoid_map_algHom](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/islocalization-algebramapsubmonoid-map-alghom--c19da33dce7c81a3497337a1.md) | 107 | `declaration-track:c19da33dce7c81a3497337a114df900e186da24444aae702b7e5a0f63b215964` |
| 7 | `def` | [mapₐ](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/map--2728daf2c16dd4886d0d713a.md) | 114 | `declaration-track:2728daf2c16dd4886d0d713a2895cb4a879bab88f8bc229e7c3a77d4786f199a` |
| 8 | `lemma` | [mapₐ_coe](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/map-coe--543afaf13327c1d88594f7b9.md) | 120 | `result-track:543afaf13327c1d88594f7b9a5623a5e2c6121491e82580a0d6b56b20813f559` |
| 9 | `lemma` | [mapₐ_injective_of_injective](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/map-injective-of-injective--b25431b77a9ab07f300bfb0f.md) | 124 | `result-track:b25431b77a9ab07f300bfb0f15ba669cc4c36cc3e69af532a8590d93ba9521cb` |
| 10 | `lemma` | [mapₐ_surjective_of_surjective](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/map-surjective-of-surjective--610688c99fa58a04e10c4eb5.md) | 128 | `result-track:610688c99fa58a04e10c4eb5b0ff8fbb6542481eeeacba1eaaca240d7fb9b178` |
| 11 | `def` | [AlgHom.toKerIsLocalization](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/alghom-tokerislocalization--480dbde270c9f903e047d2e4.md) | 137 | `declaration-track:480dbde270c9f903e047d2e4b9b22f3832c6216faaee08ee8c79edd4968af3bc` |
| 12 | `lemma` | [AlgHom.toKerIsLocalization_apply](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/alghom-tokerislocalization-apply--50e40910c498976aa5212f2e.md) | 142 | `result-track:50e40910c498976aa5212f2ed101fc8f91327faa9ede0ec6c8d5e72ff3465e34` |
| 13 | `lemma` | [AlgHom.toKerIsLocalization_isLocalizedModule](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/alghom-tokerislocalization-islocalizedmodule--f71011660bd1e9f62d399b96.md) | 149 | `result-track:f71011660bd1e9f62d399b962f708205a7bcfe571491492830d0eb1734d17a98` |
| 14 | `lemma` | [isLocalization](../../../../mathematics/Algebra/Algebra/Variant615f0357506da28b510f5992dd79bd7b3233f2565b3ad7f1c72a32a6890a4c50.lean/declarations/islocalization--0c5df4ac6744d262787d9e5c.md) | 163 | `result-track:0c5df4ac6744d262787d9e5cdc2c0e3a9f01031c7bce8517aac784131834b137` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
