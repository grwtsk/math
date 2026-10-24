# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Unique.Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9cfb16dedc566f92326d19f506216f1481d5cc8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9cfb16dedc566f92326d19f506216f1481d5cc8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.AEMeasurable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lpMeas.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/lpmeas-ae-eq-zero-of-forall-setintegral-eq-zero--8ef126a3fe62d45d86c0ee36.md) | 54 | `result-track:8ef126a3fe62d45d86c0ee36ca942eb9084877a4489c1c5d855eca6749aad447` |
| 2 | `theorem` | [Lp.ae_eq_zero_of_forall_setIntegral_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/lp-ae-eq-zero-of-forall-setintegral-eq-zero--dc84a740271f059426eba72f.md) | 74 | `result-track:dc84a740271f059426eba72f2bc7753c79b228648230bf41e997e63abd36fda7` |
| 3 | `theorem` | [Lp.ae_eq_of_forall_setIntegral_eq'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/lp-ae-eq-of-forall-setintegral-eq--beaff0b5731cc7b537e694b2.md) | 94 | `result-track:beaff0b5731cc7b537e694b237db00b28f688c6efb86e15df8498b65fb20cfb5` |
| 4 | `theorem` | [ae_eq_of_forall_setIntegral_eq_of_sigmaFinite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/ae-eq-of-forall-setintegral-eq-of-sigmafinite--43f5f3a9d18112acc9c0a2de.md) | 116 | `result-track:43f5f3a9d18112acc9c0a2de111b3a284a321de41650d99c2aa22894a775a3dd` |
| 5 | `theorem` | [integral_norm_le_of_forall_fin_meas_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/integral-norm-le-of-forall-fin-meas-integral-eq--28e25955961e2cdda51fe1b0.md) | 166 | `result-track:28e25955961e2cdda51fe1b0eab70722907d12ed4fbd482b7643516e9cd4ebfc` |
| 6 | `theorem` | [lintegral_enorm_le_of_forall_fin_meas_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/declarations/lintegral-enorm-le-of-forall-fin-meas-integral-eq--e128a32dd8aa6aa0b915e706.md) | 198 | `result-track:e128a32dd8aa6aa0b915e7066155058d2eab6d7100e701ab5a6d91ed5d4b1eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
