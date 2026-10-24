# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Proper.Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8403b187f6de49405ce22158d2b15d1aee8e6a84",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8403b187f6de49405ce22158d2b15d1aee8e6a84`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.CompNotation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsProper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper--b903ff2b2685a8505802912b.md) | 51 | `declaration-track:b903ff2b2685a8505802912b823c920ce508f89eadfb780a875f6bd03c34d125` |
| 2 | `lemma` | [isProper_iff_restrict_eq_indicator_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-iff-restrict-eq-indicator-smul--0f4144132341324f7c102618.md) | 56 | `result-track:0f4144132341324f7c10261888ac5a9f29a74a8b1bb40c657167dce8ebaca83b` |
| 3 | `lemma` | [isProper_iff_inter_eq_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-iff-inter-eq-indicator-mul--1408619d06bfc14a9021e747.md) | 61 | `result-track:1408619d06bfc14a9021e747438127a7fbaa714641948d04458b645ee2b8f170` |
| 4 | `lemma` | [IsProper.setLIntegral_eq_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-setlintegral-eq-comp--647a4d17515d53e79466237e.md) | 77 | `result-track:647a4d17515d53e79466237e98f472937619946073616b6f5ed7b9cb606a511f` |
| 5 | `lemma` | [IsProper.lintegral_indicator_mul_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-lintegral-indicator-mul-indicator--c38361b0a21ccf45437ba452.md) | 90 | `result-track:c38361b0a21ccf45437ba452abd76832f5e710228e5c91eeac6a68bbb637a249` |
| 6 | `lemma` | [IsProper.lintegral_indicator_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-lintegral-indicator-mul--a8f2191b9941847c78b5b1db.md) | 103 | `result-track:a8f2191b9941847c78b5b1dbb4e0af659e55cfc10db982b3b12c98e9bd3e0d68` |
| 7 | `lemma` | [IsProper.setLIntegral_eq_indicator_mul_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-setlintegral-eq-indicator-mul-lintegral--ae7f9ff48c146453b786c39f.md) | 120 | `result-track:ae7f9ff48c146453b786c39ffb0ea80867f8054bafbc2c8a7912daaacefbc740` |
| 8 | `lemma` | [IsProper.setLIntegral_inter_eq_indicator_mul_setLIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-setlintegral-inter-eq-indicator-mul-setlintegral--258bf25c8fa14171313b6f27.md) | 126 | `result-track:258bf25c8fa14171313b6f27e1edf988b5812f374ebffd018e8fcf13e05de5d7` |
| 9 | `lemma` | [IsProper.lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Proper/Variant88c971fd0d2af736920bde2eec137e0882ffd0215b0795ef174c777f64abfba2.lean/declarations/isproper-lintegral-mul--8cbaa0d93aaf3bbae7cbc43e.md) | 132 | `result-track:8cbaa0d93aaf3bbae7cbc43ec2ed0e6111f813a010db5942989aeb6bde189a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
