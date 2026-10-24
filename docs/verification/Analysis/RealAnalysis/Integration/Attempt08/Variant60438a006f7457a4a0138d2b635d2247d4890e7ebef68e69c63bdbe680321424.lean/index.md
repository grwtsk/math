# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt08.Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbf018753bb387ccad36b11574f9cee2d79c4b6d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbf018753bb387ccad36b11574f9cee2d79c4b6d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/fractionalweight--a79d29ca1a1ffd83f111e367.md) | 25 | `declaration-track:a79d29ca1a1ffd83f111e3670b36b7e82b8324e2cabde187f5bd2239616ee2eb` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/fractionalweight-integrable--3db087872ce0b591c301cc8c.md) | 27 | `result-track:3db087872ce0b591c301cc8c3b331ad54021a4f2384f3ac9245cb738c444e0da` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/fractionalweight-nonneg--1c5cae71f705d3a1372bb29e.md) | 36 | `result-track:1c5cae71f705d3a1372bb29ea44f0b84b9c0457e2b8fb85ca7445aa6eabc73fd` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/real-centered-euler-integral--03977f053ce7bf615299bb55.md) | 40 | `result-track:03977f053ce7bf615299bb55ad97cdc31d0751b37b3b3ba5fde972162004c613` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/riemannzeta-real-euler--82a52613b64d0ed192594b4d.md) | 55 | `result-track:82a52613b64d0ed192594b4d077d93f0bbda5ce4665a91f34e0e9a9a72e4ce73` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/riemannzeta-ofreal-neg--463025ae234d729d1079fd6e.md) | 86 | `result-track:463025ae234d729d1079fd6e0c513aad38e89330447361f471b412c1777db93f` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/nontrivial-zero-im-ne-zero--8cba2f50cc54abb1e0fd5b6f.md) | 96 | `result-track:8cba2f50cc54abb1e0fd5b6f5dca946c3390720c404b8548372c69fc553fc762` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/realgammar--58ea4f3d266d390cb664c675.md) | 104 | `declaration-track:58ea4f3d266d390cb664c6752dd97d5ba4b0ae3152cf7692bf643d338707c44d` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/gammar-ofreal--4cd6a9fa316a124eb44f3ada.md) | 106 | `result-track:4cd6a9fa316a124eb44f3adad4e28c8e0a986896d6368caa88026655bfa263da` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/realgammar-pos--c0f7277b31848d112a5abd2e.md) | 113 | `result-track:c0f7277b31848d112a5abd2ee43d6c89b87ccc0e6b0a55ef0f6b36ef242104bd` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/xi-real-euler--3ec20d9d1f01ef958b0029f6.md) | 116 | `result-track:3ec20d9d1f01ef958b0029f6c441a01eb11c79bab640813e64e2a8f290db3036` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/xi-ofreal-re-pos--1505d724ef9799611d7e41c7.md) | 130 | `result-track:1505d724ef9799611d7e41c7693e55e93b4b88391086f0ea125f668534f5c034` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/coefficient-zero-exact--3ae652fefd0d2d16b310b88f.md) | 141 | `result-track:3ae652fefd0d2d16b310b88f01fc7fdf93140a1ebde3f61f290c90afcfc50bdf` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/coefficient-zero-pos--4a4175c667437cfba63400ae.md) | 152 | `result-track:4a4175c667437cfba63400ae9195dc4f6db082fda6371cc2e3da013bebe2dcdb` |
| 15 | `theorem` | [coefficient_zero_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt08/Variant60438a006f7457a4a0138d2b635d2247d4890e7ebef68e69c63bdbe680321424.lean/declarations/coefficient-zero-lower-bound--69496d5b0eba74d06b8e6d0c.md) | 158 | `result-track:69496d5b0eba74d06b8e6d0cebc6fa580232b01eaee3c8630c527d9c50ff3151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
