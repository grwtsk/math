# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CubicIntegration.Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f4d07931ea9b2231532f1e66797ea1de6287e22",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f4d07931ea9b2231532f1e66797ea1de6287e22`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Analysis.CubicSemantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cubic_integral_same](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean/declarations/cubic-integral-same--e672e5c169bff1c759ece975.md) | 27 | `result-track:e672e5c169bff1c759ece975a76170188ac9c4fe1ba795712506a87cac780003` |
| 2 | `theorem` | [cubic_integral_add_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean/declarations/cubic-integral-add-interval--a73fad8aa24f1583359cb4f7.md) | 33 | `result-track:a73fad8aa24f1583359cb4f7aa0c1d255deca1e726ad0884ada2a15c29bf48c8` |
| 3 | `theorem` | [cubic_cell_semantics_sound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CubicIntegration/Variant1a9e86739a49d4206ac49029f1a75452cf82ed02111e9cf5205a9683e8bf13c1.lean/declarations/cubic-cell-semantics-sound--a7e943e71da295049aadf0ed.md) | 39 | `result-track:a7e943e71da295049aadf0edb87108c40c3cd261fffdb0adf75d740d5d3c4d24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
