# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1767ce28220305c8450b9ef84d34a9ac0d15860",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1767ce28220305c8450b9ef84d34a9ac0d15860`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/macro-rules--9304c1ed51cccff8265c18b1.md) | 37 | `declaration-track:9304c1ed51cccff8265c18b1fbd269a6a623847c24a8d1655cbd69626adf05d6` |
| 2 | `theorem` | [strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/strictconvexon-pow--01324e86bce70fc54c6d5ccf.md) | 40 | `result-track:01324e86bce70fc54c6d5ccf118c905a2dedcb53cb0325bb0e8c35b9f0fad69a` |
| 3 | `theorem` | [Even.strictConvexOn_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/even-strictconvexon-pow--d0bb99e946711cb722a8cd1f.md) | 49 | `result-track:d0bb99e946711cb722a8cd1f01985d12c410ede1417e365d878fb734dedfede0` |
| 4 | `theorem` | [Finset.prod_nonneg_of_card_nonpos_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/finset-prod-nonneg-of-card-nonpos-even--2e53fdad704b363bb18bccbe.md) | 58 | `result-track:2e53fdad704b363bb18bccbe64ac102eae57c450439f92157475dd3e0eb28359` |
| 5 | `theorem` | [int_prod_range_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/int-prod-range-nonneg--518e8db42772748f160b98da.md) | 73 | `result-track:518e8db42772748f160b98dab733629044a81376ea1b15316c333913a406da87` |
| 6 | `theorem` | [int_prod_range_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/int-prod-range-pos--6022a70ebc2e194f56717661.md) | 89 | `result-track:6022a70ebc2e194f5671766167197ec0ac40735f3d4ba3705cf5a76e6a4b8395` |
| 7 | `theorem` | [strictConvexOn_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/strictconvexon-zpow--8bdf05e77c246a461bd705f8.md) | 99 | `result-track:8bdf05e77c246a461bd705f8153bdda0e394a7f28c2985eff4698686e18126d1` |
| 8 | `theorem` | [hasDerivAt_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/hasderivat-sqrt-mul-log--c14aed637a3c1fa80217a4ac.md) | 116 | `result-track:c14aed637a3c1fa80217a4ac0a9f4921a89ea9db0285e39542c568ed22ca5504` |
| 9 | `theorem` | [deriv_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/deriv-sqrt-mul-log--a684d4a4a245754ca29365ad.md) | 123 | `result-track:a684d4a4a245754ca29365ad9488b17dc314ea205f7664bbfc6d24e495ce45dd` |
| 10 | `theorem` | [deriv_sqrt_mul_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/deriv-sqrt-mul-log--95492209cc14456e4f65da3f.md) | 133 | `result-track:95492209cc14456e4f65da3fb47bce0043c69f34b304b6192a9346589eaa3c41` |
| 11 | `theorem` | [deriv2_sqrt_mul_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/deriv2-sqrt-mul-log--a5b1eaa670503c51b8668935.md) | 138 | `result-track:a5b1eaa670503c51b8668935cb801a09b67a33a7a0c646b34a0c69e988837e79` |
| 12 | `theorem` | [strictConcaveOn_sqrt_mul_log_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/strictconcaveon-sqrt-mul-log-ioi--611d2a9f016c94fed6f77c80.md) | 155 | `result-track:611d2a9f016c94fed6f77c80345e14be2c91ef48c64d8c5c7630e2fcf5006a78` |
| 13 | `theorem` | [strictConcaveOn_sin_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/strictconcaveon-sin-icc--afdf659cfb5ad82d6409c621.md) | 169 | `result-track:afdf659cfb5ad82d6409c621103edf19332a335682262acf1a501f446d7165de` |
| 14 | `theorem` | [strictConcaveOn_cos_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0426cb0f571cf202e7dd91c30239f0792b9d0efaf47a70241c0eb046d5128057.lean/declarations/strictconcaveon-cos-icc--ddeeeb576693dc9f60769040.md) | 175 | `result-track:ddeeeb576693dc9f60769040861cfdb5b2d27a0461018535cb5b75cee9fb3e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
