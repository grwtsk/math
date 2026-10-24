# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt07.Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb37817a3b6e56ebadeebe5bc57890471aba7971",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb37817a3b6e56ebadeebe5bc57890471aba7971`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/fractionalweight--563c1eb5688b40155c958f67.md) | 17 | `declaration-track:563c1eb5688b40155c958f67bb75eb79e6e068b3273299a60a8735391afaea33` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/fractionalweight-integrable--4e0a32ac0b0b5c419f4b41b0.md) | 19 | `result-track:4e0a32ac0b0b5c419f4b41b0c73449ab42e1a1ea3170dfc901d49249a07d74de` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/fractionalweight-nonneg--f27a036dd5047d3f96d8f1e4.md) | 28 | `result-track:f27a036dd5047d3f96d8f1e4904f8f42e1df00f1e97edb47149d322ff69ae35c` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/real-centered-euler-integral--45360558174823f538a58ef2.md) | 32 | `result-track:45360558174823f538a58ef203067a41db341e086c3fcdd6ccb0a398cc273bd7` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/riemannzeta-real-euler--a28c52b0974ae5a9e17a3470.md) | 47 | `result-track:a28c52b0974ae5a9e17a347049d964ac63e81032adc75b4e06b8078234c344fd` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/riemannzeta-ofreal-neg--b7d5aca468cb14859be17990.md) | 78 | `result-track:b7d5aca468cb14859be179901d445e28450d67085549e436043e56fca24f5eb8` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/nontrivial-zero-im-ne-zero--a60ba93cfef9ddaea26de956.md) | 88 | `result-track:a60ba93cfef9ddaea26de9563483d1d91b5ab2a773a1f87eeb0307febf76813d` |
| 8 | `def` | [realGammaR](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/realgammar--2cf746bedb6790f450eb9c72.md) | 96 | `declaration-track:2cf746bedb6790f450eb9c7238424016b873cfd8844dd223036b7818b788f9d0` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/gammar-ofreal--7a78c1ed6eb65fea416eb794.md) | 98 | `result-track:7a78c1ed6eb65fea416eb79400299cdd1a1399f1372e8f1d332f2c3f04162036` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/realgammar-pos--19b722a6245de82cd420aaa9.md) | 105 | `result-track:19b722a6245de82cd420aaa9a6d13ccc8fc1dee0ec7a475575056a3c7a262301` |
| 11 | `theorem` | [xi_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/xi-real-euler--cbc8d6c8b015d716abf7839d.md) | 108 | `result-track:cbc8d6c8b015d716abf7839d19b9d8270725859ccf2ac0554fcd32a300179e0e` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/xi-ofreal-re-pos--fb32a1f6e07f9690ffa40a59.md) | 122 | `result-track:fb32a1f6e07f9690ffa40a5992c58bb620b155caedb78a73ed67308efd5928a9` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/coefficient-zero-exact--4fee175550402c103a10d0ec.md) | 133 | `result-track:4fee175550402c103a10d0ec863dda428438a4412d67d9cc2a297fdda2b7121a` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/coefficient-zero-pos--be9ddcd91d4a4d0a947ed837.md) | 144 | `result-track:be9ddcd91d4a4d0a947ed83768aa447c892143394c67af5c79aa248dce0296d8` |
| 15 | `theorem` | [coefficient_zero_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt07/Variantb7b5a9fde2b9ffb46be9b721c7e22115fb7272e8760b8919600d983d38b5de24.lean/declarations/coefficient-zero-lower-bound--a623be1ea2f0cb573170aeb6.md) | 150 | `result-track:a623be1ea2f0cb573170aeb64d62ae208e685d94db86a841467e1a8c3e84ef32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
