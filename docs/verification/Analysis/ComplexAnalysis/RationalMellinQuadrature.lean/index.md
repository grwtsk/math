# Verification target: GRWTSK.Analysis.Complex.RationalMellinQuadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe9bb430fef9fd223b23cea2616bbd33cfe3e217",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe9bb430fef9fd223b23cea2616bbd33cfe3e217`.

Source path: `GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalMellinQuadrature.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalMellinNode`](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinNode.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalFiniteSum`](../../../../mathematics/Analysis/ErrorBounds/RationalFiniteSum.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sample](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/sample--99febef190640f71da2dffff.md) | 26 | `declaration-track:99febef190640f71da2dffff7469ffe05d60192c09a3c3a7f196690a28140d4f` |
| 2 | `structure` | [Trace](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/trace--491767cfba34e8e547529fc4.md) | 31 | `declaration-track:491767cfba34e8e547529fc4d9384345920372f0336a386a3a49dcc40715eec2` |
| 3 | `def` | [defaultSample](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/defaultsample--05d8f199091f007a8d14e595.md) | 37 | `declaration-track:05d8f199091f007a8d14e5954d4c90617c532c4cb429279c54d77a2adc31ae8e` |
| 4 | `def` | [sampleAt](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/sampleat--0942c00f63fcc43af82344ba.md) | 38 | `declaration-track:0942c00f63fcc43af82344baf945172714b8e2d5270d91e63ac33275357657ec` |
| 5 | `def` | [cellWidth](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/cellwidth--c8bc36577d8463590ef494c0.md) | 40 | `declaration-track:c8bc36577d8463590ef494c085a375ddffe7c32e603d10507eba6d2e29db2cf8` |
| 6 | `def` | [node](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/node--26b937c6ed400122fcd98ad1.md) | 41 | `declaration-track:26b937c6ed400122fcd98ad17efaff6be8fe822ae50f7981f95269b4897ce172` |
| 7 | `def` | [sampleValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/samplevalue--3ee19f5315b96bf356b28ac6.md) | 43 | `declaration-track:3ee19f5315b96bf356b28ac6bb7093cbdf2269b98dec13e50b2c2fe28c88d445` |
| 8 | `def` | [sampleError](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/sampleerror--19a9ccc791b0fcd3350cf316.md) | 46 | `declaration-track:19a9ccc791b0fcd3350cf316b3dd8654f7cc04be3cfee6a159454dddadb9b7bd` |
| 9 | `def` | [terms](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/terms--b57b0c2fa431f0ac1015fbb9.md) | 50 | `declaration-track:b57b0c2fa431f0ac1015fbb9466f75ec52c1c25d8985eee5aeb3c6955518b899` |
| 10 | `def` | [meshError](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/mesherror--ee4e20d1590c902a22f8ec5b.md) | 53 | `declaration-track:ee4e20d1590c902a22f8ec5b00f9a434ac299315a4eeb287c5908e136e01e4fc` |
| 11 | `def` | [sampleBudget](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/samplebudget--612827d1a17c4d12c830f838.md) | 56 | `declaration-track:612827d1a17c4d12c830f838de12d4c12b985b857e22a39caa2a7fd444942a82` |
| 12 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/error--b80b9365ebf99d48b3957c06.md) | 59 | `declaration-track:b80b9365ebf99d48b3957c06881e81a25493f3cde20b837ebd45b5b19a55a417` |
| 13 | `def` | [output](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/output--a2a369813cb4fea94a13ab15.md) | 63 | `declaration-track:a2a369813cb4fea94a13ab15353717e8a19de51c877dc9594a949a9e41b2e35e` |
| 14 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/valid--bd27ece12ebd81ae5e904d80.md) | 66 | `declaration-track:bd27ece12ebd81ae5e904d80955ab36f68ab3cfb3ac3bbaed329ac9bc7d5d832` |
| 15 | `instance` | [instDecidableValid](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/instdecidablevalid--4ee7c84b5d4fd655a5081208.md) | 72 | `declaration-track:4ee7c84b5d4fd655a508120834823ac88f40ff9658541d33cbb9728a1fa1675b` |
| 16 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/check--6af89bcc51966b6aeb019837.md) | 75 | `declaration-track:6af89bcc51966b6aeb019837dbe1513468d62a519b6015e63291b75bb72672e1` |
| 17 | `def` | [checkWithin](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/checkwithin--4d3230b0219e887c002838c1.md) | 76 | `declaration-track:4d3230b0219e887c002838c1c967c660f987d9a730e726b7dd2ed0d440d6e883` |
| 18 | `theorem` | [check_iff_valid](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/check-iff-valid--2de7db5faf8eac0383447cf8.md) | 79 | `result-track:2de7db5faf8eac0383447cf88db11525e3fe4d5bb728edafea81dcace82c45d3` |
| 19 | `theorem` | [length_terms](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/length-terms--d0be47423e90806b8c73e0a7.md) | 82 | `result-track:d0be47423e90806b8c73e0a797108bca1e5e6e8d22df5ebde9eafca4f6cf1900` |
| 20 | `theorem` | [cast_node](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/cast-node--faf47b4586b9f7b66199f624.md) | 85 | `result-track:faf47b4586b9f7b66199f624f5ea9629380c6037c9f08eb505acaaedfe738807` |
| 21 | `theorem` | [node_endpoints](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/node-endpoints--0d62a08a516f2d42f6704625.md) | 90 | `result-track:0d62a08a516f2d42f6704625fa36f3737822d3f13a04bab2c35be027b752214f` |
| 22 | `theorem` | [cellWidth_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/cellwidth-nonneg--b3b089c1969d60e2dc698b78.md) | 99 | `result-track:b3b089c1969d60e2dc698b78e9799e2e0fa601f81db88bed4e5f0fe6d4e065b8` |
| 23 | `theorem` | [meshError_eq](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/mesherror-eq--ee86504192ca1efb45e2e169.md) | 103 | `result-track:ee86504192ca1efb45e2e1698a0b6cf8b03efce54a3616365c81cf0d3df64ed7` |
| 24 | `theorem` | [cast_meshError](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/cast-mesherror--06cb625502326502ce9e5c97.md) | 109 | `result-track:06cb625502326502ce9e5c97dee08fc392a0cba8bb541b5fd1990440988e7306` |
| 25 | `theorem` | [termAt_terms](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/termat-terms--c601c00066f21ba0fe56097a.md) | 114 | `result-track:c601c00066f21ba0fe56097a67fa1dff45dd2a940c817ef54cde3ad533500518` |
| 26 | `theorem` | [terms_interpretation](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/terms-interpretation--dfc3ce2517aa7c4313d8a450.md) | 121 | `result-track:dfc3ce2517aa7c4313d8a450d20e9af2ca0c382f3787d8a620a136564e00eef4` |
| 27 | `theorem` | [cast_sampleBudget](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/cast-samplebudget--c1b047459ffac6b5a427634d.md) | 131 | `result-track:c1b047459ffac6b5a427634d5e9f46f3d33468ec9d68ced97215147fe7286ba8` |
| 28 | `theorem` | [quadrature_samples_error](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/quadrature-samples-error--7add9c81de569a3892b075fc.md) | 139 | `result-track:7add9c81de569a3892b075fc9bc87ea91271ee32ec53d59140a0246e2de74b62` |
| 29 | `theorem` | [check_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/check-sound--7f6dc94748b7e0e2189cff77.md) | 168 | `result-track:7f6dc94748b7e0e2189cff77a515a4c5ee27229aed7821d2d5eec1748a73edcf` |
| 30 | `theorem` | [checkWithin_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/checkwithin-sound--36acf1344e5a142c31590398.md) | 183 | `result-track:36acf1344e5a142c31590398f65728ca131c0ee4e6edc94d023b4953f9f6eaec` |
| 31 | `theorem` | [checked_lengths](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/checked-lengths--4941ee1f4e7dd307782bcbf5.md) | 191 | `result-track:4941ee1f4e7dd307782bcbf5e741fa6391696b66d3ab62e29f120ee5c049f6bd` |
| 32 | `theorem` | [checked_mesh_charge_le](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/checked-mesh-charge-le--f0f17eed6315ac3bb37b48f6.md) | 198 | `result-track:f0f17eed6315ac3bb37b48f680ff66ad2134d81c7221e2646691424df8179c94` |
| 33 | `def` | [referenceSamples](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/referencesamples--0ccf4425e063d454ad57946e.md) | 215 | `declaration-track:0ccf4425e063d454ad57946ececfd5a0813e0b9eae8ee7036e41701a8c3617f3` |
| 34 | `def` | [referenceTrace](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/referencetrace--669f04a4a64a4d14e64ee2e2.md) | 219 | `declaration-track:669f04a4a64a4d14e64ee2e23dc6781c0090773cff079d7e3dba4be7a8bc7ca9` |
| 35 | `theorem` | [referenceSampleAt](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/referencesampleat--35ca9d66aeda41012f03efa7.md) | 224 | `result-track:35ca9d66aeda41012f03efa764ae9087e4128dfaf12586f6fefffb3f21c7ede5` |
| 36 | `theorem` | [reference_checked](../../../../mathematics/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/declarations/reference-checked--a2aba0c8016f26532d5ff6f4.md) | 233 | `result-track:a2aba0c8016f26532d5ff6f4ff40b1eb4c4b0f8fcb896ad02090e77b3663b693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
