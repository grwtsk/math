# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a37341dbe68a57c93e77164b9648ac4ae6bdeeba",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a37341dbe68a57c93e77164b9648ac4ae6bdeeba`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/cubicideal--8497fb061890b90423713b00.md) | 23 | `declaration-track:8497fb061890b90423713b00032892f036c1c973581debad977bc7825e6beb61` |
| 2 | `abbrev` | [Coordinate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/coordinate--c4406f6e2c5b7ee8a00935fd.md) | 25 | `declaration-track:c4406f6e2c5b7ee8a00935fdd6ae80c66948faebec434e9b5a1d50eeeff70b6b` |
| 3 | `def` | [coordinateMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/coordinatemap--ea98962dbd5607ce26918ef8.md) | 28 | `declaration-track:ea98962dbd5607ce26918ef8f6dd48aa80f6f476e4e202c73037ae35d82807e0` |
| 4 | `def` | [curveSectionIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/curvesectionideal--b125f1edf6635dcaca9898b2.md) | 32 | `declaration-track:b125f1edf6635dcaca9898b29156e0c589767fb0b17ca63e6a83f8932e4c1d67` |
| 5 | `theorem` | [curveSectionIdeal_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/curvesectionideal-pow--07748b1e5f8b260ca5ad1cd5.md) | 36 | `result-track:07748b1e5f8b260ca5ad1cd562a5ea67ccb7b9ff7c186d3847e111ce2f29987a` |
| 6 | `abbrev` | [PowerQuotient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/powerquotient--0a0f7a22fab7893ce1092260.md) | 41 | `declaration-track:0a0f7a22fab7893ce1092260670426203f12384a3124ccf045cfd90b7210c621` |
| 7 | `def` | [transition](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/transition--8730d7db80c6fb018ba251b1.md) | 45 | `declaration-track:8730d7db80c6fb018ba251b1f86a7aaf93260d79a3a5d7373a263a085c481c91` |
| 8 | `theorem` | [transition_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/transition-mk--f5c35a53316f3a069134ed01.md) | 49 | `result-track:f5c35a53316f3a069134ed017c0d245e553be6b01fd9815c62de947704939ec6` |
| 9 | `theorem` | [transition_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/transition-comp--663e13a1cc5dad3f10198198.md) | 55 | `result-track:663e13a1cc5dad3f10198198c2f78d8f0bffc28d3aa98b69d04ef6757ab0b0ed` |
| 10 | `def` | [finiteEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/finiteequiv--144032ec0aabd0ce840e8fad.md) | 65 | `declaration-track:144032ec0aabd0ce840e8fadf11d3a826499a70e8726dd5ed0ee8a43d51267a0` |
| 11 | `theorem` | [finiteEquiv_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/finiteequiv-mk--aad95caa486d3e84b0fe3e1d.md) | 71 | `result-track:aad95caa486d3e84b0fe3e1d58adc32a1367ff3b2e10b6a58a1510a244dc0725` |
| 12 | `theorem` | [finiteEquiv_symm_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/finiteequiv-symm-mk--32af4724b4582ea7018494df.md) | 78 | `result-track:32af4724b4582ea7018494df50d279be58c9956a728aa55047807219a1dfa6c0` |
| 13 | `theorem` | [finiteEquiv_transition](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/finiteequiv-transition--65cbcabe1f2b2e3cd8dfce01.md) | 85 | `result-track:65cbcabe1f2b2e3cd8dfce01fd563e7bb8044067f31e5352b249a90cefd22f62` |
| 14 | `theorem` | [finiteEquiv_symm_transition](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/finiteequiv-symm-transition--c1733c0ab14a9e754d98103d.md) | 95 | `result-track:c1733c0ab14a9e754d98103d68cacb78e1eabd625ee0c28812f4651fd59a7328` |
| 15 | `theorem` | [powerQuotient_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/declarations/powerquotient-zero--9cd7f441f8ac9c76fc2c52d1.md) | 105 | `result-track:9cd7f441f8ac9c76fc2c52d1c7079be94b16ef1a17d64c41d0dfa76af92098f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
