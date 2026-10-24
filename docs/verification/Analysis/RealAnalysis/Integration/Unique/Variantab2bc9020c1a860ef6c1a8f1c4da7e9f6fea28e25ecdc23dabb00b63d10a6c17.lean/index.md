# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Unique.Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f8e1b66669897feb148da128c1f64b40b43fe3a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f8e1b66669897feb148da128c1f64b40b43fe3a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.AEMeasurable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lpMeas.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/lpmeas-ae-eq-zero-of-forall-setintegral-eq-zero--85c1ef1eb5a1f12d638e9366.md) | 46 | `result-track:85c1ef1eb5a1f12d638e936626ab02a6686e79fc1f35553586511d75779b3e84` |
| 2 | `theorem` | [Lp.ae_eq_zero_of_forall_setIntegral_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/lp-ae-eq-zero-of-forall-setintegral-eq-zero--a0ef9ba791fcbcf3efc41c56.md) | 66 | `result-track:a0ef9ba791fcbcf3efc41c56867486af1ece7a0a9bf7293e6273e354b2fcff64` |
| 3 | `theorem` | [Lp.ae_eq_of_forall_setIntegral_eq'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/lp-ae-eq-of-forall-setintegral-eq--172ed26120b7f834858baeb1.md) | 86 | `result-track:172ed26120b7f834858baeb10dbf518a7aba838337827c971f7c57029752be1e` |
| 4 | `theorem` | [ae_eq_of_forall_setIntegral_eq_of_sigmaFinite'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/ae-eq-of-forall-setintegral-eq-of-sigmafinite--b8ccc5ed5b31c068277a2a79.md) | 108 | `result-track:b8ccc5ed5b31c068277a2a79f09ff3c8187c7a81a76ac11025679e2cf70040d3` |
| 5 | `theorem` | [integral_norm_le_of_forall_fin_meas_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/integral-norm-le-of-forall-fin-meas-integral-eq--d86f6d6c4df04bea3d528d9f.md) | 158 | `result-track:d86f6d6c4df04bea3d528d9fe020c7d87833bffedaa17fe46e418c43eab787dd` |
| 6 | `theorem` | [lintegral_enorm_le_of_forall_fin_meas_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Unique/Variantab2bc9020c1a860ef6c1a8f1c4da7e9f6fea28e25ecdc23dabb00b63d10a6c17.lean/declarations/lintegral-enorm-le-of-forall-fin-meas-integral-eq--afe8644ca2ad4cc735c0f59f.md) | 190 | `result-track:afe8644ca2ad4cc735c0f59f2afcc7eb472403db331b82ef66ef25cacb34fb88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
