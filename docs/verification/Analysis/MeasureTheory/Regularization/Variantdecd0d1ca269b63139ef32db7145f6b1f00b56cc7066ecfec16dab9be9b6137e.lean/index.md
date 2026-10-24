# Verification target: GRWTSK.Analysis.MeasureTheory.Regularization.Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c091387c0c5ba4223914510464a239f8be824e33",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c091387c0c5ba4223914510464a239f8be824e33`.

Source path: `GRWTSK/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.HeatKernel.Asymptotics` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Mellin` — import line 16; external provider; requires a separately pinned dependency.
- `spectral_rh.Spectral.Schrodinger.Operator` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expScalar](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/expscalar--1ecdf3c71569a3f186ab4264.md) | 37 | `declaration-track:1ecdf3c71569a3f186ab4264ed3e7c4c5f7373268f334729591be29a1d53c94e` |
| 2 | `def` | [heat](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/heat--205d1a1716da003b2f2ec5b6.md) | 47 | `declaration-track:205d1a1716da003b2f2ec5b65d036d7abc094ad8355710ff8c58418798fffc86` |
| 3 | `lemma` | [heat_semigroup](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/heat-semigroup--e308b6f96db9ece4d0d5a63d.md) | 51 | `result-track:e308b6f96db9ece4d0d5a63d65561ef171fe2ad928148532421567d10b68eea9` |
| 4 | `lemma` | [heat_traceClass](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/heat-traceclass--446dd99c232b01b1a232b7ff.md) | 62 | `result-track:446dd99c232b01b1a232b7ff33f66498e30c3ee66e51fa5e644ac79c940996f4` |
| 5 | `def` | [heatTrace](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/heattrace--fba1b0c7429bfc165f3b608c.md) | 67 | `declaration-track:fba1b0c7429bfc165f3b608cbf305350cd6e1364c4bed034ca26327ea436ab11` |
| 6 | `def` | [zeta](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/zeta--99f0ac2d45dc681c9399dee3.md) | 73 | `declaration-track:99f0ac2d45dc681c9399dee3ae01a7a940ec7aadac4f53922330b443d8e1c85f` |
| 7 | `lemma` | [zeta_meromorphic](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/zeta-meromorphic--5f53ae9009028d34a312ca66.md) | 82 | `result-track:5f53ae9009028d34a312ca665533f8094cb791fd3f267910a81be913881d0ff1` |
| 8 | `lemma` | [zeta_at0_reg](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/zeta-at0-reg--995403734de282df477b3c10.md) | 89 | `result-track:995403734de282df477b3c10663eb52bedd1037a1b0592036b1fabd0a7f695fb` |
| 9 | `def` | [detζ](../../../../../mathematics/Analysis/MeasureTheory/Regularization/Variantdecd0d1ca269b63139ef32db7145f6b1f00b56cc7066ecfec16dab9be9b6137e.lean/declarations/det--ac8abbb9bbc5ee5c9ed4d0c4.md) | 98 | `declaration-track:ac8abbb9bbc5ee5c9ed4d0c400dd6faed182a507e4a950be744b8d4c9f7968ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
