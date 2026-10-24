# Verification target: GRWTSK.Analysis.SpecialFunctions.Y.Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe197cb5f0b3d92c9227c55fc92283fd0b26dfbb`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.StirlingVert` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_digamma_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/norm-digamma-le--b7506a37c9b9f123707e21e6.md) | 36 | `result-track:b7506a37c9b9f123707e21e608f356b2d0a77f970794963564f8da1317cd2508` |
| 2 | `lemma` | [re_digamma_ge](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/re-digamma-ge--4d54fff39c91b1e50186fda6.md) | 71 | `result-track:4d54fff39c91b1e50186fda62137a25583ca46459f5a5441b0137f6b94ed06b7` |
| 3 | `lemma` | [norm_deriv_zeta_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/norm-deriv-zeta-le--32ef01b78f501ee8e371535c.md) | 99 | `result-track:32ef01b78f501ee8e371535ca5e4f62c948bd8836fb033a54e23aae649b61272` |
| 4 | `lemma` | [norm_logDeriv_Gammaℝ_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/norm-logderiv-gamma-le--b9dbdec7ebaf29c13a977a92.md) | 141 | `result-track:b9dbdec7ebaf29c13a977a92fb82d7191492e8203afb4b365394e477a0bc82b4` |
| 5 | `theorem` | [Yfn_growth](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/yfn-growth--2e69385ce6395adc3503e0df.md) | 177 | `result-track:2e69385ce6395adc3503e0df63fb3d2ccc56e812d1e80d769f0c8c7cb2f55601` |
| 6 | `theorem` | [Yfn_analyticOnNhd_disc](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/yfn-analyticonnhd-disc--186c3d05302d704faefb8ad3.md) | 239 | `result-track:186c3d05302d704faefb8ad38e835656060a36e7b464bc6ab558946c523d4e4a` |
| 7 | `lemma` | [two_line_re](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/two-line-re--48d47d3a31fc12946a11682a.md) | 253 | `result-track:48d47d3a31fc12946a11682a65c697a4ed432b7ce5d76945e61dadd80ee0f0b5` |
| 8 | `lemma` | [two_line_im](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/two-line-im--1b1aeadacd7e83e1507ff5e0.md) | 254 | `result-track:1b1aeadacd7e83e1507ff5e037d6be9b5fb534300ccffccc18a0b75dfe183a1d` |
| 9 | `lemma` | [two_line_ne_one](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/two-line-ne-one--c839f3bbc716bb2bc575b9f9.md) | 255 | `result-track:c839f3bbc716bb2bc575b9f97619c3531655f2eda15b095daffa0d585e8fe9ae` |
| 10 | `lemma` | [two_line_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/two-line-ne-zero--9952d8879a6e563ac6ef6203.md) | 257 | `result-track:9952d8879a6e563ac6ef6203d0deda163703aafb8dc05849671891e8d2c338b5` |
| 11 | `lemma` | [zeta_two_line_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/zeta-two-line-ne-zero--b61e6226b674a01cd12e46c2.md) | 259 | `result-track:b61e6226b674a01cd12e46c242f153e1ae64b9817e0c39ba92bc055bf85952f7` |
| 12 | `lemma` | [norm_logDeriv_zeta_two_le](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/norm-logderiv-zeta-two-le--7cb1142734536d30d4fde665.md) | 263 | `result-track:7cb1142734536d30d4fde665fa34004394484d043d37203244ee3ea378779761` |
| 13 | `lemma` | [re_Lfn_two_ge](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/re-lfn-two-ge--5f92ed9830e6124e9af6a8c7.md) | 273 | `result-track:5f92ed9830e6124e9af6a8c76e8e378bf63b6961dc906061e298b1a512588cf9` |
| 14 | `theorem` | [two_line_lower](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/two-line-lower--a5199b0942e95fdafe17b5c1.md) | 305 | `result-track:a5199b0942e95fdafe17b5c1f6accbf22eaf329f55df012824ac6646bae54d5f` |
| 15 | `lemma` | [norm_logDeriv_Gammaℝ_le_log](../../../../../mathematics/Analysis/SpecialFunctions/Y/Variant9e6fb6384838ce6d32b8498810ea51040bccfba226a1fc03c58bcb7815a5f8f2.lean/declarations/norm-logderiv-gamma-le-log--9ae4a34363049639ccb808cc.md) | 352 | `result-track:9ae4a34363049639ccb808ccc9e9a77cc01ef34ca28cd80636c5be9dc4554841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
