# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntegralConvolution.Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02544ccdbd740acf61936746d571e79fdc0aeaac",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02544ccdbd740acf61936746d571e79fdc0aeaac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [integrable_mconv_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean/declarations/integrable-mconv-iff--ebc7124eba2864aa6d3a86e4.md) | 40 | `result-track:ebc7124eba2864aa6d3a86e4bedd3a4ff5d4bb05f1280f4259856dd9746369a5` |
| 2 | `lemma` | [integral_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntegralConvolution/Variantbac47400c9fcfc27ee8b8085fef4610e722c4428aaf2c14aef55482494242f89.lean/declarations/integral-mconv--f304e706035f09da8ec388c5.md) | 48 | `result-track:f304e706035f09da8ec388c5ca7032ec3f8ee9832eba36dd47ad76baa031dff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
