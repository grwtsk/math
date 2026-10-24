# Verification target: GRWTSK.Analysis.ComplexAnalysis.AbsMax.Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac45bb956abae9cc51d77b9872ea1c047a26c741",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac45bb956abae9cc51d77b9872ea1c047a26c741`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean.json)

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
| 1 | `theorem` | [norm_max_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-max-aux--f529ffa303ea750f866097f8.md) | 110 | `result-track:f529ffa303ea750f866097f851d43d5f90b3ad4781bef71c7a6264f9b4cfb847` |
| 2 | `theorem` | [norm_max_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-max-aux--20b7c74056612368a822146b.md) | 148 | `result-track:20b7c74056612368a822146b4ea6aca81dcdd721ccc6b3695c0f62bc0e1ab81a` |
| 3 | `theorem` | [norm_max_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-max-aux--4bc54c451084a371b8a76ac5.md) | 162 | `result-track:4bc54c451084a371b8a76ac5e7f06db7b034153bfa11b8f5cf9249c6c1c7b8e6` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-eqon-closedball-of-ismaxon--2aea696ee7e1456e6cfac92b.md) | 183 | `result-track:2aea696ee7e1456e6cfac92b36c61c37a086fd8fffed7801e276cace261663dd` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset--bb33bd71d7948a6bef221127.md) | 203 | `result-track:bb33bd71d7948a6bef2211275c2ce44bffc1ffc5d3e48da97d2497bcee6abe3b` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-eventually-eq-of-islocalmax--1efcf224784832e905cc2565.md) | 211 | `result-track:1efcf224784832e905cc2565b779008dc7d141338decd4b0001b6e4aa6207968` |
| 7 | `theorem` | [isOpen_setOfPred_mem_nhds_and_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/isopen-setofpred-mem-nhds-and-ismaxon-norm--a43fb273e59fe7186c99b8f7.md) | 220 | `result-track:a43fb273e59fe7186c99b8f74d278029a15fd0de676efd5635b3de86a3e95d9f` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--d03a78c32fbdb858876f9b47.md) | 233 | `result-track:d03a78c32fbdb858876f9b4760b892fec5c5fbaf6ea0d2fbb354cd195d2cdfe3` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon--e187ad5a2ac9edd5cc5692e3.md) | 255 | `result-track:e187ad5a2ac9edd5cc5692e3ab456c79c98b94b06840a33769ad8083c8f6bdaf` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--508f3fde6ebfdf7b411a504f.md) | 282 | `result-track:508f3fde6ebfdf7b411a504fd773581dda39d8d262218f033fcfd806a1ff4d20` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm--60e9f40186036513a3cd9e48.md) | 294 | `result-track:60e9f40186036513a3cd9e486c19a43c92d82418d07e6973fef078dcac71f834` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eq-of-ismaxon-of-ball-subset--983f9335e796dd4166bf63b8.md) | 305 | `result-track:983f9335e796dd4166bf63b849ffb3cd67831179b7271aa25345841c196a838a` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eqon-closedball-of-ismaxon-norm--6b66c41298d71d04df8e52be.md) | 320 | `result-track:6b66c41298d71d04df8e52be555d399c7e9e7f044783c566f489363afbed91de` |
| 14 | `lemma` | [eq_const_of_exists_max](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eq-const-of-exists-max--e380c5c33a617230bc0b76aa.md) | 327 | `result-track:e380c5c33a617230bc0b76aaa6c27bfde55bae76c2a2af6f6a0035fe521d7aee` |
| 15 | `lemma` | [eq_const_of_exists_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eq-const-of-exists-le--e421dd99e9575ed16dd7e6f7.md) | 336 | `result-track:e421dd99e9575ed16dd7e6f7eadeccbcbd64b51bfd7418b9e3438dbfc269f2c6` |
| 16 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eventually-eq-of-islocalmax-norm--663efce634b71b5c021473fb.md) | 352 | `result-track:663efce634b71b5c021473fb8d867defa6ef069494bf0df1612c9341b197b400` |
| 17 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm--2bddddb08ed67e7141130bd6.md) | 361 | `result-track:2bddddb08ed67e7141130bd67b2879ed93e56c620f4248128fb5627568d43e11` |
| 18 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/exists-mem-frontier-ismaxon-norm--d7d26bebdc7e2b891eb649f0.md) | 386 | `result-track:d7d26bebdc7e2b891eb649f0242d5156d32774f01f015924b4137539b1859703` |
| 19 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/norm-le-of-forall-mem-frontier-norm-le--211ae51597705591268ef74f.md) | 403 | `result-track:211ae51597705591268ef74f4928e532343ad49b6c9a4eaacf0a26439ca28d11` |
| 20 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eqon-closure-of-eqon-frontier--8d0109e3f26e0dd412cc222a.md) | 426 | `result-track:8d0109e3f26e0dd412cc222aeb1986e883a3ebcb94a0db17e55dfc2c26c7cc04` |
| 21 | `theorem` | [eqOn_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant157fab68842ba112c200713e3167904553d76c7021762400512c3a113e1afc35.lean/declarations/eqon-of-eqon-frontier--bcad98f0ccd96378f56dcc33.md) | 435 | `result-track:bcad98f0ccd96378f56dcc33d7fdffb5fa6ba4e06bec9f17ed3f55eef5e22641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
