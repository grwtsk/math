# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31981494a8acd81b1393988a26cd70413268e1e6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31981494a8acd81b1393988a26cd70413268e1e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Star` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictFDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/hasstrictfderivat-star--0f4f3c48fcb7552137bdf658.md) | 39 | `result-track:0f4f3c48fcb7552137bdf65894581d94b7f5be309a1302917d3a88eecd2893a2` |
| 2 | `theorem` | [HasFDerivAtFilter.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/hasfderivatfilter-star--81cc3db29662bc7de78dec52.md) | 43 | `result-track:81cc3db29662bc7de78dec52bbd48f44dc71d2a36ab07632142642a3b9cdd42e` |
| 3 | `theorem` | [HasFDerivWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/hasfderivwithinat-star--2749ad2413c3e5536db655cf.md) | 48 | `result-track:2749ad2413c3e5536db655cf665fded983dd45e902d0d332da5ff7a1dc65ceaa` |
| 4 | `theorem` | [HasFDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/hasfderivat-star--8f78c49a4acf55836e8fdeea.md) | 53 | `result-track:8f78c49a4acf55836e8fdeea597fa4a09e19a95e02db154ef44794248ad4a682` |
| 5 | `theorem` | [DifferentiableWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiablewithinat-star--fcfa8185484b74298f024738.md) | 58 | `result-track:fcfa8185484b74298f024738749b01d95bd29bd0e40ca8612daf3580a117fb15` |
| 6 | `theorem` | [differentiableWithinAt_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiablewithinat-star-iff--aded81ea787fe15fd2a02acf.md) | 63 | `result-track:aded81ea787fe15fd2a02acf08e181a031faabce447b45b877e5ac8e60fa86b3` |
| 7 | `theorem` | [DifferentiableAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiableat-star--a84653dfbc93773890b0d582.md) | 68 | `result-track:a84653dfbc93773890b0d582fd960c0d6fcb77d013ae3abf6b0f96fb26a4ba17` |
| 8 | `theorem` | [differentiableAt_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiableat-star-iff--caf05ffe22fbc758c223cc19.md) | 73 | `result-track:caf05ffe22fbc758c223cc19d3363229f54260e556dbd4d0cb0d7fc0373ca10d` |
| 9 | `theorem` | [DifferentiableOn.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiableon-star--7dc3f906767faca57cd9b608.md) | 78 | `result-track:7dc3f906767faca57cd9b6086343a1af79d23216602fcd386a7baaf6617d1aa7` |
| 10 | `theorem` | [differentiableOn_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiableon-star-iff--262cd4e9eaca5710088178ff.md) | 82 | `result-track:262cd4e9eaca5710088178ffd2bf5cfca20fef541188f583fd637bb4641ddfc0` |
| 11 | `theorem` | [Differentiable.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiable-star--031dee6f88b5867b28376bb8.md) | 87 | `result-track:031dee6f88b5867b28376bb8d8f71b9f6eda3831da833ce40d947803d016aa30` |
| 12 | `theorem` | [differentiable_star_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/differentiable-star-iff--317fefe732232bdb54cb5b0b.md) | 91 | `result-track:317fefe732232bdb54cb5b0b3695a5fdd522cda551aa2bc17ce213a02cd35889` |
| 13 | `theorem` | [fderivWithin_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/fderivwithin-star--a6ee74b67278e7741bd83dda.md) | 94 | `result-track:a6ee74b67278e7741bd83dda793fa78c3e66bf24e1f79f6881441dfafad3af10` |
| 14 | `theorem` | [fderiv_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variantae2027642b3fbc27b770decf727bab8ec34f2b576572c04a4ebc8db2684c3832.lean/declarations/fderiv-star--6dde5d4ba373f1481e35ed2e.md) | 100 | `result-track:6dde5d4ba373f1481e35ed2e5cc0a46996f4ed221269b615a83d23df5b9c1850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
