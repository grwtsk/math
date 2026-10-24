# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RestrictScalars.Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cac15836bc67aa3903004e617d35fb03083d5c81",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cac15836bc67aa3903004e617d35fb03083d5c81`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasstrictfderivat-restrictscalars--06ed0bdf8addec542e9e74aa.md) | 43 | `result-track:06ed0bdf8addec542e9e74aa982ffd283c9291b2043abcaa0e20589d10f12144` |
| 2 | `theorem` | [HasFDerivAtFilter.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasfderivatfilter-restrictscalars--c95c11a3f8f6617394adff5c.md) | 47 | `result-track:c95c11a3f8f6617394adff5cf240ddb6b42670c4198784b5299ba9f60f488e69` |
| 3 | `theorem` | [HasFDerivAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasfderivat-restrictscalars--6adedbe354cc19cf880af299.md) | 52 | `result-track:6adedbe354cc19cf880af2992187075d5c1607369c1212665e7cbeb9b86bebc9` |
| 4 | `theorem` | [HasFDerivWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasfderivwithinat-restrictscalars--186bec0db762bb0ad43b6854.md) | 57 | `result-track:186bec0db762bb0ad43b6854bc3cd1b064832b3511f1f8908a8cb1c7592ed196` |
| 5 | `theorem` | [DifferentiableAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiableat-restrictscalars--c2194d2fa19c8fd52b34c8f9.md) | 62 | `result-track:c2194d2fa19c8fd52b34c8f9d6cbba3c2ed5dcd968ce60f5c45fa698a5c8bede` |
| 6 | `theorem` | [DifferentiableWithinAt.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiablewithinat-restrictscalars--777314080fda67cd09be5688.md) | 66 | `result-track:777314080fda67cd09be56886da8a73dd035aeeae7976d2cd50789973a31d315` |
| 7 | `theorem` | [DifferentiableOn.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiableon-restrictscalars--8cac18fd2b341f3ffd0f8dae.md) | 71 | `result-track:8cac18fd2b341f3ffd0f8dae03c18a202f5a719ea55b97c4546cc6a6a6283706` |
| 8 | `theorem` | [Differentiable.restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiable-restrictscalars--a041f2fc673435d54384ab09.md) | 75 | `result-track:a041f2fc673435d54384ab0982dffb318a32d0e9f715bdd1c8126ef06504397a` |
| 9 | `theorem` | [HasFDerivWithinAt.of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasfderivwithinat-of-restrictscalars--cfd53597637850603496450b.md) | 79 | `result-track:cfd53597637850603496450bb179f51535f7996ac1fd4072cfd07716ad5ea606` |
| 10 | `theorem` | [hasFDerivAt_of_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/hasfderivat-of-restrictscalars--133366fe61278c218ad2bf43.md) | 85 | `result-track:133366fe61278c218ad2bf4354d1fcee4be50de9b87a084bf2afa8367d28c031` |
| 11 | `theorem` | [DifferentiableAt.fderiv_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiableat-fderiv-restrictscalars--54f9e6f39596eaa42d94fc2b.md) | 90 | `result-track:54f9e6f39596eaa42d94fc2bd1b4066e9b69889b8af5d42a9b5414f2fc937b88` |
| 12 | `theorem` | [differentiableWithinAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiablewithinat-iff-restrictscalars--34abf5b64d4f61836fdc8a10.md) | 94 | `result-track:34abf5b64d4f61836fdc8a10d29e2dc2ce8c8244a86d901aa8745e38f793595f` |
| 13 | `theorem` | [differentiableAt_iff_restrictScalars](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant4a53e098c6d711edadee9697c318113d2a7df7776da1435b3a4ee7092de86485.lean/declarations/differentiableat-iff-restrictscalars--9c07658830ab0a0902daf772.md) | 103 | `result-track:9c07658830ab0a0902daf772a518a9eea280eac4d347d0d7fc918d84ffa6c40b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
