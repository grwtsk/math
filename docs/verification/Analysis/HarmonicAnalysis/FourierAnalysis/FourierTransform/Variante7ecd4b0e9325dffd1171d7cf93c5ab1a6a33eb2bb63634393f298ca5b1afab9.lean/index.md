# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierTransform.Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0816329edc631503b95ee4526c6042e5a10d223",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0816329edc631503b95ee4526c6042e5a10d223`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral--312d7c2dfd3b106039a874d6.md) | 75 | `declaration-track:312d7c2dfd3b106039a874d621bdb1324963a20134717aad07499b82391e37a7` |
| 2 | `theorem` | [fourierIntegral_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-smul-const--49c91efaf90dddc692916601.md) | 80 | `result-track:49c91efaf90dddc692916601d6801f6068fd3c4937fa31883f14380f87b420e7` |
| 3 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/norm-fourierintegral-le-integral-norm--e8a8a5dafa7d6a040be0187d.md) | 92 | `result-track:e8a8a5dafa7d6a040be0187dff837c661fd80b69e9d4ff86582dd2d9a1deb962` |
| 4 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-comp-add-right--2bea8331d9669ddc753517bb.md) | 100 | `result-track:2bea8331d9669ddc753517bbbafa413afbe8d3adffffab6acbc11f32308c5759` |
| 5 | `theorem` | [fourier_integral_convergent_iff](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourier-integral-convergent-iff--cfdbe020bc5c7076b3096c16.md) | 129 | `result-track:cfdbe020bc5c7076b3096c1655fbf07a25c49b5c1508e89e75103cccac5a7978` |
| 6 | `theorem` | [fourierIntegral_add](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-add--b8cf07bc935af8dbcc8ea486.md) | 152 | `result-track:b8cf07bc935af8dbcc8ea486acd236e9a84cb57189c2a2044f117ff9ea2d395c` |
| 7 | `theorem` | [fourierIntegral_continuous](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-continuous--178fd8c4b9aa0694575f8332.md) | 164 | `result-track:178fd8c4b9aa0694575f833287b8a621fa6d2b800da94fa1c6ad4cc9b76bc973` |
| 8 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral--c14233e356eff607307a4b97.md) | 196 | `declaration-track:c14233e356eff607307a4b971a8ab789d4c65f7203cc2ec8221215ed97983923` |
| 9 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-def--6623589d546c1ec0b3bcd3a0.md) | 200 | `result-track:6623589d546c1ec0b3bcd3a0b5d850e1e0a56bdbd060dea5e77a36343477bbe5` |
| 10 | `theorem` | [fourierIntegral_smul_const](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-smul-const--bfffb944c442059095eee821.md) | 205 | `result-track:bfffb944c442059095eee821f30f917d49f2796fca93d5536faad284ab01092e` |
| 11 | `theorem` | [norm_fourierIntegral_le_integral_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/norm-fourierintegral-le-integral-norm--eaeea99377971f1ffa469d78.md) | 211 | `result-track:eaeea99377971f1ffa469d78ab9812e0d4f06a2a153523fb8c30d8b72cdc7988` |
| 12 | `theorem` | [fourierIntegral_comp_add_right](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-comp-add-right--008829ddb31ea0ba85a6755c.md) | 217 | `result-track:008829ddb31ea0ba85a6755c5d0a66dc01ae200f7fe6ca477160a2156329a7d4` |
| 13 | `def` | [fourierChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierchar--2c2c0cdc0210b2ff79fe73f8.md) | 232 | `declaration-track:2c2c0cdc0210b2ff79fe73f8df3825c38cc808013980de4298c4bab2a1b87bfe` |
| 14 | `theorem` | [fourierChar_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierchar-apply--22fe014dd5d153bcdd64de38.md) | 238 | `result-track:22fe014dd5d153bcdd64de38a43b31343a36e28807e32814480eaaa7bac2cfe2` |
| 15 | `theorem` | [continuous_fourierChar](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/continuous-fourierchar--02629884e221eb0d4c3a7f70.md) | 243 | `result-track:02629884e221eb0d4c3a7f702d0709251e9bed54b37b4ab56dbec3f1a3eaeba8` |
| 16 | `theorem` | [vector_fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/vector-fourierintegral-eq-integral-exp-smul--aa8e8628db9164114d4cd5fe.md) | 249 | `result-track:aa8e8628db9164114d4cd5fe2913a359e669581fbc6e2b55eebe67c05b96fa53` |
| 17 | `def` | [fourierIntegral](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral--b5c42307d665dca2f45934e6.md) | 259 | `declaration-track:b5c42307d665dca2f45934e6136df92d4f3e72a98d61230b9806be56eb891e1a` |
| 18 | `theorem` | [fourierIntegral_def](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-def--75d6ffedfd48f6d47a3fd21f.md) | 263 | `result-track:75d6ffedfd48f6d47a3fd21fdf4d7536e2a98383a2bfb8d9c06b2e7f5fae42e3` |
| 19 | `theorem` | [fourierIntegral_eq_integral_exp_smul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variante7ecd4b0e9325dffd1171d7cf93c5ab1a6a33eb2bb63634393f298ca5b1afab9.lean/declarations/fourierintegral-eq-integral-exp-smul--dfede465d22c91b61a37293c.md) | 270 | `result-track:dfede465d22c91b61a37293c5c465c977629b86f3c2e991b8af4f2ac39458697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
