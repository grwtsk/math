# Verification target: GRWTSK.Analysis.Integral.UnitIntervalPrimitives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22faef968b6a35190daea882edfc2f1dba5dbb72",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integral/UnitIntervalPrimitives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22faef968b6a35190daea882edfc2f1dba5dbb72`.

Source path: `GRWTSK/Analysis/Integral/UnitIntervalPrimitives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integral/UnitIntervalPrimitives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.GreenKernel.UnitInterval`](../../../../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithm](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/logarithm--3c6336c32471d6beb2bd0fb1.md) | 19 | `declaration-track:3c6336c32471d6beb2bd0fb176d73bbd9645d1596b7e401003372fd7dc2c5094` |
| 2 | `def` | [logPrimitive](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/logprimitive--c34a20ac9f860c36bbd5babd.md) | 21 | `declaration-track:c34a20ac9f860c36bbd5babdb599e2d39bddc967d3c146283580ce4d16b4d24e` |
| 3 | `def` | [greenBackground](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/greenbackground--c35876863bc7f8525826c4fc.md) | 23 | `declaration-track:c35876863bc7f8525826c4fc40cdf5854a3d6e34e06356bc34d629054b5aa581` |
| 4 | `def` | [cellPrimitive](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/cellprimitive--eeb12f09dc87850abe03c632.md) | 25 | `declaration-track:eeb12f09dc87850abe03c63213b467c33bc92c5fa4df52ecaf8262112eb8d295` |
| 5 | `theorem` | [logarithm_hasDerivAt](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/logarithm-hasderivat--2ac3f66c231a3bc021220fc3.md) | 28 | `result-track:2ac3f66c231a3bc021220fc3fc0e7632da68d7f4ec5ad5474e8ad4c35448c25c` |
| 6 | `theorem` | [logPrimitive_hasDerivAt](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/logprimitive-hasderivat--8286e9301ccf28303a088689.md) | 33 | `result-track:8286e9301ccf28303a088689af63a078cb2ac18f99b583b16eeb30b019204553` |
| 7 | `theorem` | [inverse_one_add_continuousOn](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/inverse-one-add-continuouson--d990ad681528597df94bbb69.md) | 44 | `result-track:d990ad681528597df94bbb697b0312020068356f3a0193119922380503522be0` |
| 8 | `theorem` | [logarithm_continuousOn](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/logarithm-continuouson--8c72466a5bb729f1d1b4e806.md) | 50 | `result-track:8c72466a5bb729f1d1b4e8068ece8f32fac15b3f13693849bb8516d9ffa26682` |
| 9 | `theorem` | [integral_inverse_one_add](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/integral-inverse-one-add--1d45aef2b5b6376848253a63.md) | 54 | `result-track:1d45aef2b5b6376848253a63b60cb54d5f137649c154a39ae88ddd7a33232a1b` |
| 10 | `theorem` | [integral_logarithm](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/integral-logarithm--00b69bfbce8627c9bd095d15.md) | 61 | `result-track:00b69bfbce8627c9bd095d15977b971bb30b7b6bbade0622bf89b79cc3b5d868` |
| 11 | `theorem` | [cellPrimitive_hasDerivAt](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/cellprimitive-hasderivat--21678dc265669ffe8e8754cd.md) | 69 | `result-track:21678dc265669ffe8e8754cdecc0a7153da4fc91e76f1e266a4345dabdb271a3` |
| 12 | `theorem` | [greenBackground_endpoints](../../../../../../../mathematics/Analysis/RealAnalysis/Integration/UnitIntervalPrimitives/Variants/Variant0e92dd9d010c8bfa.lean/declarations/greenbackground-endpoints--19939e0b1847aafa77c9d627.md) | 81 | `result-track:19939e0b1847aafa77c9d627665efc54708730cb53c914bab94681d978a91fb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
