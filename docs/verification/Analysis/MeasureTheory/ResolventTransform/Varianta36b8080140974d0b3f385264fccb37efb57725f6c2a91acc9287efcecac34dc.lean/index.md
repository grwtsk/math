# Verification target: GRWTSK.Analysis.MeasureTheory.ResolventTransform.Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d3dc32243ae2ed2b49d485026264bc8c1f329f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d3dc32243ae2ed2b49d485026264bc8c1f329f`.

Source path: `GRWTSK/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.GelfandFormula` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_resolvent](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/measurable-resolvent--54f4ff183083908e53dd28e7.md) | 72 | `result-track:54f4ff183083908e53dd28e7cfdf8e85807e3c8c438ab6bf78ee20988adb5a39` |
| 2 | `theorem` | [norm_resolvent_le_inv_infDist_support](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/norm-resolvent-le-inv-infdist-support--8867154af7ccbeb5678e4f71.md) | 87 | `result-track:8867154af7ccbeb5678e4f7176e507542c97d45d2d78c76252bc6384aebcb40e` |
| 3 | `theorem` | [integrable_resolvent](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/integrable-resolvent--b9c482dce0971fca6640b51f.md) | 99 | `result-track:b9c482dce0971fca6640b51f2a9d18627310fb82615fd7d1d2c7a8ca36432fc6` |
| 4 | `def` | [resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/resolventtransform--54e40562925dd7da68ad9be8.md) | 116 | `declaration-track:54e40562925dd7da68ad9be881ed677656d0abf91e380e09bb7c26f5c95ef7a6` |
| 5 | `lemma` | [resolventTransform_def](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/resolventtransform-def--b70aaf5a345ce38358ce95bd.md) | 119 | `result-track:b70aaf5a345ce38358ce95bde270691a22c95105a69273761272c19de9576512` |
| 6 | `lemma` | [resolventTransform_apply](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/resolventtransform-apply--b9459a989dbc04737e2312d2.md) | 122 | `result-track:b9459a989dbc04737e2312d2e9a253d74da31b337336fcc5b0e65558a2582493` |
| 7 | `lemma` | [resolventTransform_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/resolventtransform-zero-measure--ca0909a9ddb22bebe017d601.md) | 126 | `result-track:ca0909a9ddb22bebe017d6019463f7b91a8ca92069fa890d9a15e3235f91c589` |
| 8 | `lemma` | [resolventTransform_dirac](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/resolventtransform-dirac--720da44a50e769e8ca6bc8e4.md) | 131 | `result-track:720da44a50e769e8ca6bc8e4e819941434a1a1e0357e5dcf103f2ebac6aa3051` |
| 9 | `theorem` | [hasDerivAt_resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/hasderivat-resolventtransform--55e1774edf13d893550b8201.md) | 142 | `result-track:55e1774edf13d893550b820133160d56eef7e863b4c333f1d70352d8bce1c2dc` |
| 10 | `theorem` | [analyticOn_resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Varianta36b8080140974d0b3f385264fccb37efb57725f6c2a91acc9287efcecac34dc.lean/declarations/analyticon-resolventtransform--6b75b23c99b855f11b9245ca.md) | 186 | `result-track:6b75b23c99b855f11b9245cad6ac4635f8b0b182b66d68c1053dd7cb38f3d759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
