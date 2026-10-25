# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandSafePrefix.Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e832810218c99cf2365d26d8cd257b656585682b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e832810218c99cf2365d26d8cd257b656585682b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Exception` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SafeExpansionM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/safeexpansionm-state--e137f219822cacb3e6930a24.md) | 29 | `declaration-track:e137f219822cacb3e6930a240e322f894ab44ce2621f0c6a63d965171f0d9710` |
| 2 | `abbrev` | [SafeExpansionM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/safeexpansionm--1d3d86bbfbcad50ea9550240.md) | 32 | `declaration-track:1d3d86bbfbcad50ea9550240d7e6bff50df5061e78982f656468ed5223b80d93` |
| 3 | `def` | [Goal.isSafeExpanded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/goal-issafeexpanded--b4fbae0fff81cb610f90665e.md) | 36 | `declaration-track:b4fbae0fff81cb610f90665e86076847701f2af5a1cd87e1a43caf77ce6ddae5` |
| 4 | `def` | [liftSearchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/liftsearchm--f19573e9aa8d41260b56ff9f.md) | 41 | `declaration-track:f19573e9aa8d41260b56ff9ff47500a93b941c29243da86367042b23d00c5912` |
| 5 | `def` | [expandSafePrefixGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/expandsafeprefixgoal--8853d7079a4de8b04d249b58.md) | 45 | `declaration-track:8853d7079a4de8b04d249b58fc1a0e88f5ea9a8e03b707c636e14f8666dc9486` |
| 6 | `def` | [expandFirstPrefixRapp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/expandfirstprefixrapp--f56540ec1d96e9bfa36d18a3.md) | 73 | `declaration-track:f56540ec1d96e9bfa36d18a3bb2f919d00b2133c497bd7cdf0fd82793e5bbea5` |
| 7 | `def` | [expandSafePrefixMVarCluster](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/expandsafeprefixmvarcluster--a1a7116caeb93d3228b1d406.md) | 77 | `declaration-track:a1a7116caeb93d3228b1d4060c017a290692d1ca266ecde951e4de6cac601087` |
| 8 | `def` | [expandSafePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandSafePrefix/Variant4d78dd1a6a1d1f2930748a8be65de6d59e4353f2adf2d629e05cba2dc087bf81.lean/declarations/expandsafeprefix--8d964d93ea4b16c66e7d7d23.md) | 82 | `declaration-track:8d964d93ea4b16c66e7d7d236072cbe567e69b9047fcba1eaf71b3fe8fd919fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
