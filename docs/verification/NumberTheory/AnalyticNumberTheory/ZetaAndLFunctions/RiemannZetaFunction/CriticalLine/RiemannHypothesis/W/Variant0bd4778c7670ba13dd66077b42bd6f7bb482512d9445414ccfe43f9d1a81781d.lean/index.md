# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.W.Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66a3151faad91392cf595133a0dffa7df549aa1a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66a3151faad91392cf595133a0dffa7df549aa1a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Transfer` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.InputsW` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.StatementW` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Moments` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [GentryCW_eq_GentryW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/gentrycw-eq-gentryw--a71f8bf3f3514514e275d2e3.md) | 45 | `result-track:a71f8bf3f3514514e275d2e32b6eea790f7c5fde63836c7f0ad6b7b62a12fa50` |
| 2 | `def` | [L2T](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/l2t--acd7eca47eccd8074a6ccec4.md) | 54 | `declaration-track:acd7eca47eccd8074a6ccec43c449d3ce2ef34fa948f54f80f5cfd237f898493` |
| 3 | `theorem` | [ReexpansionW.toAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/reexpansionw-toat--fc4b2e2c8362f8f7253a9760.md) | 56 | `result-track:fc4b2e2c8362f8f7253a9760bda43c43449c21b8daab342cea2d7dc1b6fa8a10` |
| 4 | `lemma` | [L2star_eq_L2T_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/l2star-eq-l2t-add--e92b820b96fdd58ee3ffcd24.md) | 61 | `result-track:e92b820b96fdd58ee3ffcd2426dff9b8deba4d2a8698a8705ee90255fe376386` |
| 5 | `lemma` | [GpW1_sub_GpCW_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/gpw1-sub-gpcw-apply--ac5a0a87e835e81e8f563001.md) | 70 | `result-track:ac5a0a87e835e81e8f563001bc69fdad33f8f5d387a9e9cf3496d09339e964c8` |
| 6 | `lemma` | [GpCW_two_sub_GpC_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/gpcw-two-sub-gpc-apply--5be2c5896b8f2c680d65f3a9.md) | 84 | `result-track:5be2c5896b8f2c680d65f3a913f2cc563aea42f692e5d9891130e4c465d69e2a` |
| 7 | `lemma` | [integral_phiHat_sq_abs_PiX_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/integral-phihat-sq-abs-pix-le--6cef056033e07922827e43df.md) | 103 | `result-track:6cef056033e07922827e43df95548d0b0494e79950605aed8b669134c0cdff2d` |
| 8 | `lemma` | [abs_gentryNu_PiX_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/abs-gentrynu-pix-le--018a62f99ad5a4d6de926dfd.md) | 136 | `result-track:018a62f99ad5a4d6de926dfdf67d25a81dc634e67a5d4a01c479125613b5ee55` |
| 9 | `theorem` | [hatNegligible_entryDependenceW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/hatnegligible-entrydependencew--238e082366449455ddbefd34.md) | 195 | `result-track:238e082366449455ddbefd3428d7de1dce7832f9d3858f2a32a6be1cd756814d` |
| 10 | `theorem` | [hatNegligible_piPart](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/hatnegligible-pipart--0a9ba817c9bb4fdef0d68d69.md) | 220 | `result-track:0a9ba817c9bb4fdef0d68d6940a46e98f7b3ca5126000c9110f729bd34f6dce9` |
| 11 | `theorem` | [wTraceTransfer_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/W/Variant0bd4778c7670ba13dd66077b42bd6f7bb482512d9445414ccfe43f9d1a81781d.lean/declarations/wtracetransfer-of--a52211a0a5d0f6862d217f51.md) | 349 | `result-track:a52211a0a5d0f6862d217f51508e32c30d05e0fed50916d9fa7f63f3b94ea431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
