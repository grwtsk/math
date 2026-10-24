# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "850387ad019a58be0c1ef0e2b974b4007bccf65a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `850387ad019a58be0c1ef0e2b974b4007bccf65a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon--59fe21793bfb96572e895b75.md) | 74 | `declaration-track:59fe21793bfb96572e895b7597195ac2990ad3aa86c5cad8c07b3f7914522326` |
| 2 | `def` | [IsMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat--3af8ae71d6639a43acbd1507.md) | 80 | `declaration-track:3af8ae71d6639a43acbd1507395316b78b5a2567652e1c4de2e7142c48bb50f0` |
| 3 | `def` | [IsMIntegralCurve](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve--8e5d65a99aaaf855378b36c5.md) | 85 | `declaration-track:8e5d65a99aaaf855378b36c5d66cb3480edfeaeea43122c43f58622eacea6298` |
| 4 | `lemma` | [IsMIntegralCurve.isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve-ismintegralcurveon--43cbccfe3c8576fe2a02d15d.md) | 90 | `result-track:43cbccfe3c8576fe2a02d15d92d67c26a1e81087658cd3551b6a2f99705b00b7` |
| 5 | `lemma` | [isMIntegralCurve_iff_isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve-iff-ismintegralcurveon--0e4ec7d53b5c08ab48bbf1b0.md) | 93 | `result-track:0e4ec7d53b5c08ab48bbf1b066131075cc7229dca42a8e08daa20570a9787b42` |
| 6 | `lemma` | [isMIntegralCurveAt_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-iff--c0bf30f543db3c6b8f51e8a9.md) | 97 | `result-track:c0bf30f543db3c6b8f51e8a96ad17caa15941a821440d6ac98230794d07e4590` |
| 7 | `lemma` | [isMIntegralCurveAt_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-iff--bb0542ca891e8375ccd0df0c.md) | 115 | `result-track:bb0542ca891e8375ccd0df0c502ee60006319a55c2b25ccb6df849e835e1a69d` |
| 8 | `lemma` | [IsMIntegralCurve.isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve-ismintegralcurveat--7fcf9193192a6e1c4e3931c5.md) | 126 | `result-track:7fcf9193192a6e1c4e3931c562faf98e47a769b1358f934a8b049ca54515b48a` |
| 9 | `lemma` | [isMIntegralCurve_iff_isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve-iff-ismintegralcurveat--7eb1086e2f3333a0fd8cd5c5.md) | 130 | `result-track:7eb1086e2f3333a0fd8cd5c5707484d92734d595b45c02b3f1d5867ecf9589a2` |
| 10 | `lemma` | [IsMIntegralCurveOn.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-mono--a9fcd8b1f54bd71ef0795e26.md) | 136 | `result-track:a9fcd8b1f54bd71ef0795e263b86b9845958289f9b5714ce6e1d9a7bb64a4c31` |
| 11 | `lemma` | [IsMIntegralCurveAt.hasMFDerivAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-hasmfderivat--489fdd81a6257091c36d3f52.md) | 139 | `result-track:489fdd81a6257091c36d3f5207cb3ea9542c9e4f44977b75c31b2451ce31b927` |
| 12 | `lemma` | [IsMIntegralCurveOn.isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-ismintegralcurveat--b58d2ce90445f202371cd59d.md) | 144 | `result-track:b58d2ce90445f202371cd59d0f34c0dfad17bd625392265cc29c897bfb6af0fd` |
| 13 | `lemma` | [IsMIntegralCurveAt.isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-ismintegralcurveon--96f929ed65ef029c869c3d18.md) | 148 | `result-track:96f929ed65ef029c869c3d186c3ce82b99852fbb96a3990cded1809ec1520062` |
| 14 | `lemma` | [isMIntegralCurveOn_iff_isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-iff-ismintegralcurveat--b30b91c3d6d41889591146ef.md) | 155 | `result-track:b30b91c3d6d41889591146efca5f7232e8bd62600fc7b4b9e18aada92c8a95d7` |
| 15 | `lemma` | [IsMIntegralCurveOn.continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-continuouswithinat--3221747d26cddf5f58155a91.md) | 159 | `result-track:3221747d26cddf5f58155a917c4567d2fed0428058171d2800c6af611cdea6c5` |
| 16 | `lemma` | [IsMIntegralCurveOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-continuouson--38662542f0c14ed883a5e37c.md) | 162 | `result-track:38662542f0c14ed883a5e37c175c52956f1317d8001bcb58348ddec21f5432d0` |
| 17 | `lemma` | [IsMIntegralCurveAt.continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-continuousat--fe1bbfb872091a073f154ed4.md) | 165 | `result-track:fe1bbfb872091a073f154ed48bdd0552187f08b194748093ed25bc701d5f15e7` |
| 18 | `lemma` | [IsMIntegralCurve.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurve-continuous--f795777527d67206e571e5ac.md) | 170 | `result-track:f795777527d67206e571e5ac49272030ff2448c98e114ad79895396a452b5dd7` |
| 19 | `lemma` | [IsMIntegralCurveOn.hasDerivWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveon-hasderivwithinat--f7e6c0a2242753ce26f1988e.md) | 178 | `result-track:f7e6c0a2242753ce26f1988e8944ea8d68732bcd6cb85f718b1380f5056643c9` |
| 20 | `lemma` | [IsMIntegralCurveAt.eventually_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb4de8000ed772386a7eb05c127982f861243856e47e091064a1c5e8ad8fbe075.lean/declarations/ismintegralcurveat-eventually-hasderivat--e570cc8278ed99a96473c6fc.md) | 196 | `result-track:e570cc8278ed99a96473c6fc663e422186e2ef2c45dec1123eecafb9b831f7d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
