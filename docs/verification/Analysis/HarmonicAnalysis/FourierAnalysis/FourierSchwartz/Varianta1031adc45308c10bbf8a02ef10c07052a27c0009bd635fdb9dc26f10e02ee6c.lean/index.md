# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierSchwartz.Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b1b1d854b9f26a2415f272883d832adc7753fda",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b1b1d854b9f26a2415f272883d832adc7753fda`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformCLM](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/declarations/fouriertransformclm--627937e6baa8056eac256e9a.md) | 31 | `declaration-track:627937e6baa8056eac256e9a081dd72cc5c091a73f69b86cf7c6ae228c9fb551` |
| 2 | `lemma` | [fourierTransformCLM_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/declarations/fouriertransformclm-apply--40f7d56ce18675bd1aeeadb5.md) | 78 | `result-track:40f7d56ce18675bd1aeeadb5b87d9c037c3e019df72308be37bf0735f0be5fd2` |
| 3 | `def` | [fourierTransformCLE](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/declarations/fouriertransformcle--27fd14005e15a809072c15f3.md) | 85 | `declaration-track:27fd14005e15a809072c15f374e322db43c60f822df19097d05ae8d9aea51c1d` |
| 4 | `lemma` | [fourierTransformCLE_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/declarations/fouriertransformcle-apply--fb28b207491aced1fdb1e19c.md) | 103 | `result-track:fb28b207491aced1fdb1e19c717e270cface24bef00fee24a43aacead4f0257e` |
| 5 | `lemma` | [fourierTransformCLE_symm_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierSchwartz/Varianta1031adc45308c10bbf8a02ef10c07052a27c0009bd635fdb9dc26f10e02ee6c.lean/declarations/fouriertransformcle-symm-apply--26503b6759c77b2cbab5a23b.md) | 106 | `result-track:26503b6759c77b2cbab5a23b3e59481dedc871ebd60c5d224016574207400194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
