# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e7788f47a9d4d33df07a0b9a6b03a8bc9d0ae84",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e7788f47a9d4d33df07a0b9a6b03a8bc9d0ae84`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpenMap_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/isopenmap-exp--16d924948bbe6a6ac2dd400e.md) | 37 | `result-track:16d924948bbe6a6ac2dd400e717b8c2486da658186aa2ebb5b66b33c8a810cf7` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasstrictderivat-log--7d1a461b8196c37441e478f5.md) | 40 | `result-track:7d1a461b8196c37441e478f5a5ec69781e337b39a5719b00ed8f1cee19dda2ae` |
| 3 | `lemma` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasderivat-log--ef84b8e9b1060f93fd1b6165.md) | 45 | `result-track:ef84b8e9b1060f93fd1b6165c05a65312916caa62c73a181b25c77c5e7d5919c` |
| 4 | `lemma` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/differentiableat-log--480307f14e22facf851ad72a.md) | 49 | `result-track:480307f14e22facf851ad72a43534e171674d5182a8524621e66bdcd68734a84` |
| 5 | `theorem` | [hasStrictFDerivAt_log_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasstrictfderivat-log-real--a907e7b6b24c0182ebcd11d7.md) | 53 | `result-track:a907e7b6b24c0182ebcd11d7e763959691da9c0f994e2fbf6f92c2a2d46fa94c` |
| 6 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/contdiffat-log--f2e0b2b7ac03b093fb5172cb.md) | 57 | `result-track:f2e0b2b7ac03b093fb5172cb691c877ad04a4da33ccc5567b122d163174e875d` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/deriv-log--4aefe46517e8b53d43a64a8a.md) | 61 | `result-track:4aefe46517e8b53d43a64a8ae522d87a280b754a3ea5c050ab84aa024d8bd921` |
| 8 | `theorem` | [HasStrictFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasstrictfderivat-clog--2d7d2e6aaea19b2361b12490.md) | 74 | `result-track:2d7d2e6aaea19b2361b1249014cb8fd49a46efaee570163b41e4805da179bb55` |
| 9 | `theorem` | [HasStrictDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasstrictderivat-clog--76f122a444acd428707e9c4d.md) | 79 | `result-track:76f122a444acd428707e9c4d796798f18ee95a34a90df2b7e407f1171fdaba20` |
| 10 | `theorem` | [HasStrictDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasstrictderivat-clog-real--c708b6898a3ce1e264220b8c.md) | 83 | `result-track:c708b6898a3ce1e264220b8c3fd58f313a3786aeb244ca5733d47de38766260a` |
| 11 | `theorem` | [HasFDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasfderivat-clog--c4b737b11b818ac32ea57d50.md) | 87 | `result-track:c4b737b11b818ac32ea57d507cce11052b13104604caae2ad051f12b27cde60e` |
| 12 | `theorem` | [HasDerivAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasderivat-clog--8fb88c4cc7772c5714f37a2e.md) | 91 | `result-track:8fb88c4cc7772c5714f37a2e846b1ce703e6244b8fc548dec025f39429d8eb7e` |
| 13 | `theorem` | [HasDerivAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasderivat-clog-real--e0a9ee7a697bfc36dfa494bc.md) | 95 | `result-track:e0a9ee7a697bfc36dfa494bc2fae6484113f5ab87397837c2e97febc0bf00616` |
| 14 | `theorem` | [DifferentiableAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/differentiableat-clog--458c48e638e01a79bc86d7ab.md) | 100 | `result-track:458c48e638e01a79bc86d7ab676f4d13be5ac8ae874ccb1fb027c9147c25bee6` |
| 15 | `theorem` | [HasFDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasfderivwithinat-clog--cdc908e737c2a0a7816a13dc.md) | 104 | `result-track:cdc908e737c2a0a7816a13dcfc5d8493df2278a67cb69f8641816567ca5fb5ee` |
| 16 | `theorem` | [HasDerivWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasderivwithinat-clog--d370dff52cb2a6157e7ea632.md) | 109 | `result-track:d370dff52cb2a6157e7ea63203dccf9752b1d8aadf52074138fae8eb00f0e343` |
| 17 | `theorem` | [HasDerivWithinAt.clog_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/hasderivwithinat-clog-real--7f5f0d4ebcff26a2f7bd5fc7.md) | 114 | `result-track:7f5f0d4ebcff26a2f7bd5fc7fe8ce4de67216adecf70f4eb74f379494aea099a` |
| 18 | `theorem` | [DifferentiableWithinAt.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/differentiablewithinat-clog--9af1b736c83e541bcd023f44.md) | 120 | `result-track:9af1b736c83e541bcd023f4483419d69a2dd0590bb59389b17384d593622fa8a` |
| 19 | `theorem` | [DifferentiableOn.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/differentiableon-clog--f844180552b6688dbd3e397a.md) | 125 | `result-track:f844180552b6688dbd3e397a63a8abc3ef748e0b2cdc703a62c0ffa5711d6362` |
| 20 | `theorem` | [Differentiable.clog](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/differentiable-clog--7dc714567262c13280c02e46.md) | 129 | `result-track:7dc714567262c13280c02e465288a3094770d368f6a7b4e2242dbbb164867edc` |
| 21 | `lemma` | [Complex.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variante64e6cf46993e775bdda6e3804ff2309375b0a220950da451de4d803e8840ff9.lean/declarations/complex-deriv-log-comp-eq-logderiv--8ec810954c28b9cde4dca549.md) | 135 | `result-track:8ec810954c28b9cde4dca549e4f38ba2d531779b778c5c9c28495b2bab47ad20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
