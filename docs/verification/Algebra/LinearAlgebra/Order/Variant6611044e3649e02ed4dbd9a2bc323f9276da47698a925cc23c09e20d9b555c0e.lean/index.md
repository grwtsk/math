# Verification target: GRWTSK.Algebra.LinearAlgebra.Order.Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3781b143919a1f3047cb42196c47cdbc39d3a386",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3781b143919a1f3047cb42196c47cdbc39d3a386`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean.json)

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
| 1 | `abbrev` | [instPreOrder](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instpreorder--8ac597f182eb48971788a49f.md) | 49 | `declaration-track:8ac597f182eb48971788a49f42836200f8fd20e78f4c5dbc61a843470ac0253e` |
| 2 | `lemma` | [le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/le-iff--32f4c26f2e9a9a1b0d9195bb.md) | 58 | `result-track:32f4c26f2e9a9a1b0d9195bba7b631e2665d318a35f9851c900fec7802388256` |
| 3 | `lemma` | [nonneg_iff_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/nonneg-iff-possemidef--ed67cce4790bf2c33736ec32.md) | 60 | `result-track:ed67cce4790bf2c33736ec32236ae70dabcf10e10143e47ee70a2431d3563985` |
| 4 | `lemma` | [le_antisymm_aux](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/le-antisymm-aux--44f5e031ff3d52cd01735f4b.md) | 66 | `result-track:44f5e031ff3d52cd01735f4b779da63671e4509231e937e73ceb4c930c96f53e` |
| 5 | `abbrev` | [instPartialOrder](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instpartialorder--1c620a1b8917e090f82aee92.md) | 79 | `declaration-track:1c620a1b8917e090f82aee924c404e50a2d6b4f66cff9bb6b2118e238b840432` |
| 6 | `lemma` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instisorderedaddmonoid--7b16be4a3286988820eeb609.md) | 86 | `result-track:7b16be4a3286988820eeb609379b77c3f328d15c54bc254f14748a653107eea2` |
| 7 | `lemma` | [posSemidef_is_closed](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-is-closed--3497cff2ac994eb0c221e1eb.md) | 91 | `result-track:3497cff2ac994eb0c221e1eb831cc59bd012340af3bebb9aaddc7711baeaf7c5` |
| 8 | `lemma` | [instOrderClosedTopology](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instorderclosedtopology--e4f0a1dcb322b85c3a30608b.md) | 100 | `result-track:e4f0a1dcb322b85c3a30608b56bd69c1745238a7391cdfcc118b30c1e0414af5` |
| 9 | `lemma` | [instNonnegSpectrumClass](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instnonnegspectrumclass--f91699d359aecd3d46e6ff76.md) | 108 | `result-track:f91699d359aecd3d46e6ff7690c8dcc1e8ff4881eed82ff3a646d8fcbacba0de` |
| 10 | `lemma` | [instStarOrderedRing](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/inststarorderedring--6d7b918d98a14f7f767f0e5a.md) | 120 | `result-track:6d7b918d98a14f7f767f0e5a321deb725329d500a7f45cc9a28f5894cb8dc38a` |
| 11 | `lemma` | [inv_sqrt](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/inv-sqrt--ce4ea08da2f1e2f1ccf47e13.md) | 146 | `result-track:ce4ea08da2f1e2f1ccf47e13e07332c6dcb130a3d3f473957a1ee68e52f67c10` |
| 12 | `theorem` | [det_sqrt](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/det-sqrt--1ca76b48c97d6e7214d9494a.md) | 152 | `result-track:1ca76b48c97d6e7214d9494a4096104c87622b6afaf3c57a31abbfda26f0d393` |
| 13 | `theorem` | [IsHermitian.det_abs](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/ishermitian-det-abs--12e5268956584cae49650513.md) | 162 | `result-track:12e5268956584cae49650513457bf181db1e8783f754859c8665c8142ec10681` |
| 14 | `theorem` | [posSemidef_iff_isHermitian_and_spectrum_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-iff-ishermitian-and-spectrum-nonneg--9b538d1b6af24f3f26829a61.md) | 167 | `result-track:9b538d1b6af24f3f26829a611ece9874526f1729108fef8a16557cb7e36debce` |
| 15 | `theorem` | [PosSemidef.posDef_iff_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-posdef-iff-isunit--5dd4fde81b948f3bc7fd5c55.md) | 180 | `result-track:5dd4fde81b948f3bc7fd5c5524a91740051873e754e4b52b44c77b76eca497cf` |
| 16 | `theorem` | [isStrictlyPositive_iff_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/isstrictlypositive-iff-posdef--d6aa20d95b2475886b21fd2c.md) | 190 | `result-track:d6aa20d95b2475886b21fd2c604811b7b755c3b1a28cfc51ca8d39644690e13f` |
| 17 | `lemma` | [PosSemidef.posDef_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-posdef-iff-det-ne-zero--131824048c75b653514423ae.md) | 199 | `result-track:131824048c75b653514423ae14877064420743b44f93e2ffc59d73570b613e2e` |
| 18 | `theorem` | [PosSemidef.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-kronecker--550dcd47bee096ba5c8a1428.md) | 212 | `result-track:550dcd47bee096ba5c8a1428bc798096b31f3fbbf288e9763215d73f0e49b1db` |
| 19 | `theorem` | [PosDef.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/posdef-kronecker--33458dc8baabf223fc916ab4.md) | 223 | `result-track:33458dc8baabf223fc916ab4532de2d795e53a9982b5f079321023160f396261` |
| 20 | `theorem` | [PosSemidef.hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-hadamard--72c1ea811c5e6aa7ef355576.md) | 238 | `result-track:72c1ea811c5e6aa7ef355576a864c6561990f79d83f9514bc72e5ccca0000425` |
| 21 | `theorem` | [PosDef.hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/posdef-hadamard--ba42cfed44e6f174f7600d1a.md) | 254 | `result-track:ba42cfed44e6f174f7600d1a80d56fa923c809a9ea9ae9d7f6fb3067c55971c6` |
| 22 | `def` | [tracePositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tracepositivelinearmap--9c907d289fc9a9fd57530f43.md) | 279 | `declaration-track:9c907d289fc9a9fd57530f4324f7723a8b92830c6f19f012ecb603807f7dcbc3` |
| 23 | `lemma` | [toLinearMap_tracePositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tolinearmap-tracepositivelinearmap--0497bf4637b90efcd82d27f0.md) | 282 | `result-track:0497bf4637b90efcd82d27f02210a7b8f7c205660ddeadbf0d951adc989b248c` |
| 24 | `lemma` | [tracePositiveLinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tracepositivelinearmap-apply--2811cdcd71c3979c944f24c7.md) | 285 | `result-track:2811cdcd71c3979c944f24c73ae135b5c904de4fee0b1cc4d8fa7bca6776c1c7` |
| 25 | `abbrev` | [PosSemidef.matrixPreInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/possemidef-matrixpreinnerproductspace--b1a33de87a382d8943522dc5.md) | 293 | `declaration-track:b1a33de87a382d8943522dc5e71afa7d80c30cb10a9839340dd0d38d57766151` |
| 26 | `def` | [toMatrixSeminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tomatrixseminormedaddcommgroup--7e80638e582bfd35418a62c6.md) | 308 | `declaration-track:7e80638e582bfd35418a62c619a72eb23ef0c4584ec88baafb8a8665c4faf826` |
| 27 | `def` | [toMatrixNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tomatrixnormedaddcommgroup--f79ac5cd55c56893cda01d2f.md) | 317 | `declaration-track:f79ac5cd55c56893cda01d2f408a4d566fbf534c4367f312cc0b360d0a9bf207` |
| 28 | `def` | [toMatrixInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/tomatrixinnerproductspace--a427116731d951cb150c06d5.md) | 335 | `declaration-track:a427116731d951cb150c06d5ad5f0c475b095e9e5d6144537fc619318f64b217` |
| 29 | `instance` | [instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean/declarations/instisometriccontinuousfunctionalcalculus--89f1c186e7235cd40ad5c11f.md) | 343 | `declaration-track:89f1c186e7235cd40ad5c11f68d6e9f0912d114f205c3fb2d8bd172ce4372753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
