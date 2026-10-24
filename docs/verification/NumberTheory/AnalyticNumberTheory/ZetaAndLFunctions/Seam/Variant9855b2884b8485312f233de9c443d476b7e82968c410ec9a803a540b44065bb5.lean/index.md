# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Seam.Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec14fde94f25ff8ab862c750523f504c461f66d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec14fde94f25ff8ab862c750523f504c461f66d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [riemannZeta_analyticOnNhd_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/riemannzeta-analyticonnhd-compl-one--758548dd8c9624b1aa46990b.md) | 38 | `result-track:758548dd8c9624b1aa46990b366ee20c90bd755a69c97d43a011c32c7aa08577` |
| 2 | `lemma` | [isConnected_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/isconnected-compl-one--f126a246588842bc93d3f45e.md) | 44 | `result-track:f126a246588842bc93d3f45e254cb0233c5b9d695888e850226bd4d9134fcc98` |
| 3 | `lemma` | [analyticOrderAt_riemannZeta_ne_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/analyticorderat-riemannzeta-ne-top--cd71fe099ee945bcfdf67c8e.md) | 48 | `result-track:cd71fe099ee945bcfdf67c8e6d38cee042f64838d78d30ba4d30d6bc88a851a2` |
| 4 | `theorem` | [ZetaSeam.one_le_mult_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/zetaseam-one-le-mult-holds--6781dba30ecede09fe0d7512.md) | 58 | `result-track:6781dba30ecede09fe0d7512a5590ee95fd1485f25b2220233ed021991897e10` |
| 5 | `lemma` | [riemannZeta_zeros_locallyFinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/riemannzeta-zeros-locallyfinite--d0f91bb5092d59198702e32e.md) | 71 | `result-track:d0f91bb5092d59198702e32ee634e73cbc4af0823cd073aa2bc563aa1717e925` |
| 6 | `theorem` | [ZetaSeam.finite_window_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/zetaseam-finite-window-holds--31416255d821e1854eeba06e.md) | 99 | `result-track:31416255d821e1854eeba06ebcb05193a1b25c1aac22de97a61c62b676f25f91` |
| 7 | `theorem` | [ZetaSeam.of_reflect](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant9855b2884b8485312f233de9c443d476b7e82968c410ec9a803a540b44065bb5.lean/declarations/zetaseam-of-reflect--9bb95ddbb6220fead4ea9adc.md) | 116 | `result-track:9bb95ddbb6220fead4ea9adc2576a89efd10183f8c881c9cee8925aa4ca15232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
