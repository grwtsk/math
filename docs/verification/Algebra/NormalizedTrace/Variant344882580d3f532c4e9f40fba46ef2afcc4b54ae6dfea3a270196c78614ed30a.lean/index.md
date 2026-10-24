# Verification target: GRWTSK.Algebra.NormalizedTrace.Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a68e220e09f1653768c4f812635e0798d79d93",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/index.md) · [Full source](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a68e220e09f1653768c4f812635e0798d79d93`.

Source path: `GRWTSK/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Trace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTraceAux](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtraceaux--eb79e84b79317f564a44cda5.md) | 43 | `declaration-track:eb79e84b79317f564a44cda5858fc297d018c16b6c9ba4456a125c8ed59e187e` |
| 2 | `theorem` | [normalizedTraceAux_def](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtraceaux-def--88044997fdc39b65b8a96da9.md) | 46 | `result-track:88044997fdc39b65b8a96da9047c906bc26dc913547a347d818e9242e678fa8f` |
| 3 | `theorem` | [normalizedTraceAux_map](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtraceaux-map--7cf7263a98db9e27ba312adc.md) | 49 | `result-track:7cf7263a98db9e27ba312adc4b90147c68df662a0bb24419dbcd1f25a862a0b2` |
| 4 | `theorem` | [normalizedTraceAux_intermediateField](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtraceaux-intermediatefield--a774e57bbcf721ad47a4b664.md) | 56 | `result-track:a774e57bbcf721ad47a4b6642b28ee033dff81875c8ee6b90cf236a78a860bf6` |
| 5 | `theorem` | [normalizedTraceAux_eq_of_fininteDimensional](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtraceaux-eq-of-finintedimensional--e9dfe97f92b7666d00680fd8.md) | 63 | `result-track:e9dfe97f92b7666d00680fd8c2da06e095b44456c1bb6e2e5f5d858ecc1bf492` |
| 6 | `def` | [normalizedTrace](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace--0b5add24e0207f986b0bff4f.md) | 74 | `declaration-track:0b5add24e0207f986b0bff4f7fea9a68cabfd034584ac53cb2e63981105da468` |
| 7 | `theorem` | [normalizedTrace_def](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-def--fe820385efba50a88cb87fd2.md) | 107 | `result-track:fe820385efba50a88cb87fd2380e707079b6e3335e2f73c4d7de915e0647e4ee` |
| 8 | `theorem` | [normalizedTrace_minpoly](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-minpoly--f5cd383369f1f5bfa6e1430c.md) | 114 | `result-track:f5cd383369f1f5bfa6e1430caeecd269737ea19d821970775b19798a2006fe80` |
| 9 | `theorem` | [normalizedTrace_self_apply](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-self-apply--e0b0770201d2404e7f7d5270.md) | 120 | `result-track:e0b0770201d2404e7f7d52703c3a6e009417dd0ab47163354507c82070690770` |
| 10 | `theorem` | [normalizedTrace_self](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-self--55d29289e06c348425b855b9.md) | 126 | `result-track:55d29289e06c348425b855b96553dfa62603df50786408b73272d59dbed69f9c` |
| 11 | `theorem` | [normalizedTrace_eq_of_fininteDimensional_apply](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-eq-of-finintedimensional-apply--1b73cb89a7cada949d4a0a0f.md) | 130 | `result-track:1b73cb89a7cada949d4a0a0f0150c338fa61b1354cdae498b50643c297ac9413` |
| 12 | `theorem` | [normalizedTrace_eq_of_fininteDimensional](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-eq-of-finintedimensional--fe1f275fad978ea6e53e5e70.md) | 134 | `result-track:fe1f275fad978ea6e53e5e70e12f9e49bb6aa2f5fdc535df32a384162a4fbd15` |
| 13 | `theorem` | [normalizedTrace_map](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-map--1f6872a9c20671f2aba51233.md) | 140 | `result-track:1f6872a9c20671f2aba5123347c3cad11dcf64cbad14ce4b996836ba4bb6cf96` |
| 14 | `theorem` | [normalizedTrace_intermediateField](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-intermediatefield--1ca126523cea6d7e0140a834.md) | 145 | `result-track:1ca126523cea6d7e0140a834cbdfac6586121c7b794d5a939c67334c04b56b57` |
| 15 | `theorem` | [normalizedTrace_algebraMap_apply](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-algebramap-apply--c674501988b685e638b46824.md) | 157 | `result-track:c674501988b685e638b46824eb817482c32992ac0e8d4d6ba6dce70c71ae73ce` |
| 16 | `theorem` | [normalizedTrace_algebraMap](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-algebramap--1e2e1e76b57b3264c2d98a5d.md) | 162 | `result-track:1e2e1e76b57b3264c2d98a5d9658fcb3e00939ef494048676b832bcdfa19ba7a` |
| 17 | `theorem` | [normalizedTrace_algebraMap_of_lifts](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-algebramap-of-lifts--ca2f69658befaa284a89dc70.md) | 169 | `result-track:ca2f69658befaa284a89dc7046c76fa4cb3e0c892b94b82ad2d6fadf58fbd6fc` |
| 18 | `theorem` | [normalizedTrace_trans_apply_aux](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-trans-apply-aux--92f2eaf0a2a3382cbbf318b5.md) | 181 | `result-track:92f2eaf0a2a3382cbbf318b56054f445763aaf09a84974839a23f0212d5191ad` |
| 19 | `theorem` | [normalizedTrace_trans_apply](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-trans-apply--40c43240253ac9089fe9cc01.md) | 202 | `result-track:40c43240253ac9089fe9cc0134f9d344e80d5fd26c9011fc12100b05fed47a7b` |
| 20 | `theorem` | [normalizedTrace_trans](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-trans--914c313e8498b6e634c971b3.md) | 218 | `result-track:914c313e8498b6e634c971b3446e2b20f788992e06f3f823d65a5e3b846e7bb7` |
| 21 | `theorem` | [normalizedTrace_algebraMap_apply_eq_self](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-algebramap-apply-eq-self--8938e45c9b4ed4bf85bfdffe.md) | 224 | `result-track:8938e45c9b4ed4bf85bfdffe70166aae71bfcb52cb0ff17b3b0870fc27f254cf` |
| 22 | `theorem` | [normalizedTrace_algebraMap_eq_id](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-algebramap-eq-id--2ffaa170f4b7ee11ca5e42b5.md) | 228 | `result-track:2ffaa170f4b7ee11ca5e42b5e946640f8dac8a75a2a40ed09caf8769e5d7edcd` |
| 23 | `theorem` | [normalizedTrace_comp_algHom](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-comp-alghom--6f214913f5b7c7c2324120b5.md) | 234 | `result-track:6f214913f5b7c7c2324120b56244fcd05c8419de3a1f7c45b53844377a48e837` |
| 24 | `theorem` | [normalizedTrace_surjective](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-surjective--4d6d2b3b02f9545c07e170f4.md) | 238 | `result-track:4d6d2b3b02f9545c07e170f4f8c86d3f1046e2290a2c1413fc8ec4334c8b9b7d` |
| 25 | `theorem` | [normalizedTrace_ne_zero](../../../../mathematics/Algebra/NormalizedTrace/Variant344882580d3f532c4e9f40fba46ef2afcc4b54ae6dfea3a270196c78614ed30a.lean/declarations/normalizedtrace-ne-zero--16869a3348aaac7dbe619d7a.md) | 242 | `result-track:16869a3348aaac7dbe619d7a54e8fcffe119af5a6f666bd7698107ca10717f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
