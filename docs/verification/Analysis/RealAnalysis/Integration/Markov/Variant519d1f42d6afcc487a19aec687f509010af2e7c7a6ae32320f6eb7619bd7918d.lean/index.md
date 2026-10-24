# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Markov.Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24acdcae62979d4c1694ef1226bb0061b55b7e91",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24acdcae62979d4c1694ef1226bb0061b55b7e91`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_add_mul_meas_add_le_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-add-mul-meas-add-le-le-lintegral--2a177d554c891a3948a0c244.md) | 28 | `result-track:2a177d554c891a3948a0c244a58adf7fe9986e6e826df15f71065f75e127ab25` |
| 2 | `theorem` | [mul_meas_ge_le_lintegral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/mul-meas-ge-le-lintegral--884e23b479ab8f949796b6eb.md) | 46 | `result-track:884e23b479ab8f949796b6eb87419c20ed412e46d6dabc0fb2378738870def55` |
| 3 | `theorem` | [mul_meas_ge_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/mul-meas-ge-le-lintegral--9968098170d43e9f2c65f14f.md) | 53 | `result-track:9968098170d43e9f2c65f14f16d13d801ce2c2d622d515a05749d527ac859bbe` |
| 4 | `lemma` | [meas_le_lintegral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/meas-le-lintegral--5ad078dc3b776660df4a713b.md) | 57 | `result-track:5ad078dc3b776660df4a713bc9bf3a2abdcb51b39e47a011515e87849048ca9a` |
| 5 | `lemma` | [lintegral_le_meas](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-le-meas--a09a1182b9ad247f791e615a.md) | 63 | `result-track:a09a1182b9ad247f791e615a194105d74798b0f0689ae34add6e7964d3318102` |
| 6 | `lemma` | [setLIntegral_le_meas](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/setlintegral-le-meas--adfe695af812f4790a91b687.md) | 70 | `result-track:adfe695af812f4790a91b687755e6f6b1c64f618a0aa640319fb9c05015a2f21` |
| 7 | `theorem` | [lintegral_eq_top_of_measure_eq_top_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-eq-top-of-measure-eq-top-ne-zero--9cb31fe7826cfcf019767893.md) | 77 | `result-track:9cb31fe7826cfcf0197678935cba1e30c2f88a34188629bf4e2eafd09a4cc26c` |
| 8 | `theorem` | [setLIntegral_eq_top_of_measure_eq_top_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/setlintegral-eq-top-of-measure-eq-top-ne-zero--6257afb6a110d883cbf22339.md) | 84 | `result-track:6257afb6a110d883cbf223396039e4107aa2f7f149e055960bb37441c953849e` |
| 9 | `theorem` | [measure_eq_top_of_lintegral_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/measure-eq-top-of-lintegral-ne-top--b422a5e6a212ab771c2b1077.md) | 93 | `result-track:b422a5e6a212ab771c2b1077830dba5f0dbbb219d02c737193023b93d87e5924` |
| 10 | `theorem` | [measure_eq_top_of_setLIntegral_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/measure-eq-top-of-setlintegral-ne-top--c538a63f77a1dd7e11cfcdca.md) | 97 | `result-track:c538a63f77a1dd7e11cfcdcac8b0914a090ce7a599a1b89e2bd2532ea907f899` |
| 11 | `theorem` | [meas_ge_le_lintegral_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/meas-ge-le-lintegral-div--2ba1b871fb839bb9afb9bb33.md) | 106 | `result-track:2ba1b871fb839bb9afb9bb33f118e5897a90c3e76a7fe537b1a30a7a766cb4cf` |
| 12 | `theorem` | [ae_eq_of_ae_le_of_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/ae-eq-of-ae-le-of-lintegral-le--04f8a2de1259c0580ec73f06.md) | 112 | `result-track:04f8a2de1259c0580ec73f06e995db42260bc68de5dd39e8ae25b7d751850f10` |
| 13 | `theorem` | [lintegral_strict_mono_of_ae_le_of_frequently_ae_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-strict-mono-of-ae-le-of-frequently-ae-lt--a9346be64074d56e893bdb33.md) | 127 | `result-track:a9346be64074d56e893bdb338a596df4ec3c9f85930dcfaebf4802229d084d86` |
| 14 | `theorem` | [lintegral_strict_mono_of_ae_le_of_ae_lt_on](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-strict-mono-of-ae-le-of-ae-lt-on--b5523c14d1f91ef908a9d77d.md) | 134 | `result-track:b5523c14d1f91ef908a9d77d99d78594e88ac0b19cfaef55e6b3377ef7ef89b5` |
| 15 | `theorem` | [lintegral_strict_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/lintegral-strict-mono--caf3ab4baf53473194a64630.md) | 140 | `result-track:caf3ab4baf53473194a646308169136ed524b87b61e5339e1dd8d65ab9fecb52` |
| 16 | `theorem` | [setLIntegral_strict_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/setlintegral-strict-mono--024fca64c2b4d8c3b1303a66.md) | 146 | `result-track:024fca64c2b4d8c3b1303a663b62cef5c4fd21c3e7efc9df13a3eb5492c37916` |
| 17 | `theorem` | [ae_lt_top'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/ae-lt-top--79bbc0d459539086e51e5ba9.md) | 151 | `result-track:79bbc0d459539086e51e5ba92af66ea20546ae6fc7e84b723f460cd678c78c03` |
| 18 | `theorem` | [ae_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant519d1f42d6afcc487a19aec687f509010af2e7c7a6ae32320f6eb7619bd7918d.lean/declarations/ae-lt-top--6c656b1bf49eeefd271a024e.md) | 156 | `result-track:6c656b1bf49eeefd271a024e13bd2da44aa4393d5e2d01f6963153ac3cb5bf1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
