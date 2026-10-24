# Verification target: GRWTSK.Analysis.MeasureTheory.BesicovitchVectorSpace.Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0addb87793aa4a4b608addf8c967e86dc8cd00d`.

Source path: `GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Besicovitch` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/macro-rules--f9edf74bd620432a9b85af1b.md) | 47 | `declaration-track:f9edf74bd620432a9b85af1b1cabd71fefeb01ba133806943145fd28af6cb623` |
| 2 | `def` | [centerAndRescale](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/centerandrescale--e44ac0c90a8b99f35c0ea54c.md) | 65 | `declaration-track:e44ac0c90a8b99f35c0ea54c0436fc394deb58a4ad410df9ba500fab612d7bb2` |
| 3 | `theorem` | [centerAndRescale_center](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/centerandrescale-center--7501817781fca09db684d655.md) | 115 | `result-track:7501817781fca09db684d6552a789d9fdea31b831cbaba75749f9e71b6e696e3` |
| 4 | `theorem` | [centerAndRescale_radius](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/centerandrescale-radius--1ab8551290d43e2a571899fb.md) | 119 | `result-track:1ab8551290d43e2a571899fb60bd15a56f5b0820c541b0266a8b2f857350d2fc` |
| 5 | `def` | [multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/multiplicity--37094de207bb36b3c9c73f05.md) | 131 | `declaration-track:37094de207bb36b3c9c73f0580625f479f31e0caf2620f503fa668475d0e951c` |
| 6 | `theorem` | [card_le_of_separated](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/card-le-of-separated--2e58814e2ca7240c749e460e.md) | 142 | `result-track:2e58814e2ca7240c749e460e6d0c2587a8d2d28b881a64bf07560d3d26c11ef7` |
| 7 | `theorem` | [multiplicity_le](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/multiplicity-le--e38be49d84d35cce876bbf3e.md) | 186 | `result-track:e38be49d84d35cce876bbf3e2c001fef7aa4ba5e7979c755d156614b398c3d85` |
| 8 | `theorem` | [card_le_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/card-le-multiplicity--022408ad62b5e00a737602fd.md) | 193 | `result-track:022408ad62b5e00a737602fdad4afcf43f681a59be3b2e7a090bf018d5580fd1` |
| 9 | `theorem` | [exists_goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/exists-good--7c35f3776b854fa59127cb4f.md) | 207 | `result-track:7c35f3776b854fa59127cb4f62f20ad05e15b1a373d79ad10b4ee2af71cd2ed6` |
| 10 | `def` | [goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/good--6afbae7ecd71b306d1eeb80e.md) | 284 | `declaration-track:6afbae7ecd71b306d1eeb80e6760f08fd045b804757b9a990c6268e5bd222697` |
| 11 | `theorem` | [goodδ_lt_one](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/good-lt-one--4b599f473a8cea180986a41e.md) | 288 | `result-track:4b599f473a8cea180986a41e6b7decd0a5bde139c8ece8b5604381764e139def` |
| 12 | `def` | [goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/good--70a59147e1d37426f0ccad73.md) | 295 | `declaration-track:70a59147e1d37426f0ccad73060a9255f427fd3b528026d2767bea35bbb9dcf8` |
| 13 | `theorem` | [one_lt_goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/one-lt-good--b2e47d7a39d31b7f380a5fc3.md) | 299 | `result-track:b2e47d7a39d31b7f380a5fc330534262bd57f61dbc4aa78f86b19db26852ddab` |
| 14 | `theorem` | [card_le_multiplicity_of_δ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/card-le-multiplicity-of--0a0bfdf22164c83a01e48f38.md) | 305 | `result-track:0a0bfdf22164c83a01e48f386d0fcce961e947766a4b104a15d9ae5a7971f693` |
| 15 | `theorem` | [le_multiplicity_of_δ_of_fin](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/le-multiplicity-of-of-fin--899d862981fe47cfbb4387f9.md) | 310 | `result-track:899d862981fe47cfbb4387f97067b4a6aeda07e6fadc4c40735b87c97c12572a` |
| 16 | `theorem` | [exists_normalized_aux1](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/exists-normalized-aux1--696276062c5e7e013eecfd0c.md) | 355 | `result-track:696276062c5e7e013eecfd0c764912786bcd6e6a3023bc9d69778b475a2108ae` |
| 17 | `theorem` | [exists_normalized_aux2](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/exists-normalized-aux2--cbacff33757d49a741a20398.md) | 387 | `result-track:cbacff33757d49a741a20398d1c5cbfa1e1d16a6d200994438194f6043337521` |
| 18 | `theorem` | [exists_normalized_aux3](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/exists-normalized-aux3--61016b2158a154cf7f954d8f.md) | 443 | `result-track:61016b2158a154cf7f954d8febeab5af067276c8f8cae295205a8eca23709e7c` |
| 19 | `theorem` | [exists_normalized](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/exists-normalized--a1ee87dc787473e1cba09532.md) | 500 | `result-track:a1ee87dc787473e1cba09532ef513da4aa78e802a40c2f238d05239d3c630cc8` |
| 20 | `theorem` | [isEmpty_satelliteConfig_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/isempty-satelliteconfig-multiplicity--03b6b0c4ed5df33f9dbd72e2.md) | 538 | `result-track:03b6b0c4ed5df33f9dbd72e2b18d52928cf61f3e93f5f0467b82eef17cd70920` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/declarations/instance--96a5a112572b55c82c23057d.md) | 550 | `declaration-track:96a5a112572b55c82c23057df29be302f55ac07d32fb02214fc65542420c6d49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
