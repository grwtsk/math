# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KernelVariationTransport.Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cfeaf3c4ff11cdece71e085945663951cb41d86",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cfeaf3c4ff11cdece71e085945663951cb41d86`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_sub_le_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/abs-sub-le-reciprocal--b6d296c091f376e17d271809.md) | 27 | `result-track:b6d296c091f376e17d271809699e441e329e0c258ddb55758fcb6a7f6f9b2d05` |
| 2 | `theorem` | [sqrt_reciprocal_step_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/sqrt-reciprocal-step-le--10cf36a5fae621734a68182e.md) | 67 | `result-track:10cf36a5fae621734a68182ef434b91c4a94e15c4d868da33d3be130e3384076` |
| 3 | `theorem` | [sqrt_reciprocal_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/sqrt-reciprocal-variation-le--6fea3ed8f34dc76326c7396f.md) | 95 | `result-track:6fea3ed8f34dc76326c7396f272fa02062bf7669f8c56e8e8dbef175550a9642` |
| 4 | `theorem` | [composed_abs_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composed-abs-sub-le--c05c1932be2b770f4fa05be7.md) | 122 | `result-track:c05c1932be2b770f4fa05be7843bd15498c58b5043c20b875cef4dca603eb524` |
| 5 | `def` | [composedVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composedvariation--0fe8ed9b3a2602642843f016.md) | 155 | `declaration-track:0fe8ed9b3a2602642843f016092959b8899af0f6805ead06e326663be1491fd8` |
| 6 | `theorem` | [composedVariation_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composedvariation-zero--06a23eeba02b9ef2416006c4.md) | 160 | `result-track:06a23eeba02b9ef2416006c4bde17d8bcedf2f502b9a55df65b38083f7bfa0ef` |
| 7 | `theorem` | [composedVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composedvariation-le--69b0132fc118b09778fda397.md) | 163 | `result-track:69b0132fc118b09778fda3971a6c24c6a4a6859f407a95ff9fffe72188f6f5f5` |
| 8 | `theorem` | [composedVariation_nat_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composedvariation-nat-le--686293b934bc4c47c8060aef.md) | 227 | `result-track:686293b934bc4c47c8060aef3ce13d6799ee7b0d5210b7220a5c953c298288be` |
| 9 | `theorem` | [rpow_three_halves](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/rpow-three-halves--692dffc0929a29755cf8e917.md) | 239 | `result-track:692dffc0929a29755cf8e917321436aa8677b77ecebd178e5b7d6d4bda5f2641` |
| 10 | `theorem` | [composedVariation_nat_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/declarations/composedvariation-nat-le-rpow--a15a3b9da281fea8d35f80d6.md) | 244 | `result-track:a15a3b9da281fea8d35f80d664674b329757ed7992a0dbc78beaae6c5fec9c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
