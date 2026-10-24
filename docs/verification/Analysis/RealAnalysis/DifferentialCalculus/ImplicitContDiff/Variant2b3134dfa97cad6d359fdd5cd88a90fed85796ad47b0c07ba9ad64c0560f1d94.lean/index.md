# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ImplicitContDiff.Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1740a1b802e7d08d31af1170a192c05df337706",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1740a1b802e7d08d31af1170a192c05df337706`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean.json)

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
| 1 | `theorem` | [contDiffAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/contdiffat-implicitfunction--02b4127f4c8dc97be1e8ba54.md) | 49 | `result-track:02b4127f4c8dc97be1e8ba5414288147dfadf99ebbbbf91e8cb6fa23f47b064a` |
| 2 | `def` | [implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/implicitfunction--112caf1937dd7d161f0472f9.md) | 63 | `declaration-track:112caf1937dd7d161f0472f990c5b9e2f0a2952becfbd1cd14cc5b4d594551d1` |
| 3 | `theorem` | [implicitFunction_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/implicitfunction-def--50c98ded873b0db881ecea3a.md) | 68 | `result-track:50c98ded873b0db881ecea3aa22455735cf5efda5c65fce1cadf35ea34d6dae0` |
| 4 | `theorem` | [implicitFunction_apply_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/implicitfunction-apply-self--7d6d34589b5be88338a8309f.md) | 74 | `result-track:7d6d34589b5be88338a8309fdc3ceec7fe3f2e30e7b05510fe69fef61d68a969` |
| 5 | `theorem` | [eventually_apply_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/eventually-apply-implicitfunction--db3a49802af3271a3518629f.md) | 80 | `result-track:db3a49802af3271a3518629ffeb8a007efc01fb9ffe724f6ed2a6ec426fe93f2` |
| 6 | `theorem` | [eventually_apply_eq_iff_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/eventually-apply-eq-iff-implicitfunction--d760fa55c6abba927f21c321.md) | 85 | `result-track:d760fa55c6abba927f21c321b3125dc7ee9c42a22c3bb837d873a9e5d137d1f9` |
| 7 | `theorem` | [hasStrictFDerivAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/hasstrictfderivat-implicitfunction--3ea1ebefc19924ddf0da8fd1.md) | 90 | `result-track:3ea1ebefc19924ddf0da8fd11b2c31bef47e3f4d2b6cc2b019e8df2d5d17d77f` |
| 8 | `theorem` | [contDiffAt_implicitFunction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ImplicitContDiff/Variant2b3134dfa97cad6d359fdd5cd88a90fed85796ad47b0c07ba9ad64c0560f1d94.lean/declarations/contdiffat-implicitfunction--4d69ec12be6cd1f15f525156.md) | 98 | `result-track:4d69ec12be6cd1f15f525156f2c2dbdee84a1bbce81ab38cb3d248d575a2f6b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
