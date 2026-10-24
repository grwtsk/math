# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CompositeStack.Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0db8ff91e03e7dca6de64cfa55fced5a7d506dd5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0db8ff91e03e7dca6de64cfa55fced5a7d506dd5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.DualPivot` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Cellular.HeatQuantizedTorsion` — import line 9; external provider; requires a separately pinned dependency.
- `Folder.Monodromy.EllipticShellBridge` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompositeStack](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/declarations/compositestack--833dafee369f754b3099db8e.md) | 30 | `declaration-track:833dafee369f754b3099db8ee1c6c12715ba4c11d4f0ce8974f2916038b99072` |
| 2 | `def` | [CompositeStack.hasArithmeticPivot](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/declarations/compositestack-hasarithmeticpivot--da6af8ddccdec8893636427d.md) | 47 | `declaration-track:da6af8ddccdec8893636427de043431a572bf0492bbb154e6578ca5a1066383c` |
| 3 | `def` | [CompositeStack.hasSpectralPivot](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/declarations/compositestack-hasspectralpivot--178e7acb3542aa9a6555e73c.md) | 51 | `declaration-track:178e7acb3542aa9a6555e73c98f593374dccf2defb0974da5b5b602863d0f0ec` |
| 4 | `theorem` | [default_stack_pivots](../../../../../mathematics/Analysis/FunctionalAnalysis/CompositeStack/Variant53d78acedc01dbec37e381d065ef1153b03f2ee7db02df7dc97eab2d4eba0d38.lean/declarations/default-stack-pivots--42c817b2e81f4105cab1555c.md) | 55 | `result-track:42c817b2e81f4105cab1555cf0886a5f457c48da10bd6871070c31be74890d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
