# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78f8184a0309abe82486fa25aa9fba7c86ddae1f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78f8184a0309abe82486fa25aa9fba7c86ddae1f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean.json)

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
| 1 | `def` | [IsMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon--7b3c23eed1bdae9d07427da2.md) | 66 | `declaration-track:7b3c23eed1bdae9d07427da2757598694be65c3c99cc3ef2ea534b726e91a205` |
| 2 | `def` | [IsMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat--2ad806bdf56dbd17add8c3d2.md) | 72 | `declaration-track:2ad806bdf56dbd17add8c3d2f502fd5b631dc5c95988033593bae38075e97a44` |
| 3 | `def` | [IsMIntegralCurve](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve--b5a8fc451697df62f9355853.md) | 77 | `declaration-track:b5a8fc451697df62f9355853d216d001d82f041ce031c6e0327f28bbad1eeaf1` |
| 4 | `lemma` | [IsMIntegralCurve.isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve-ismintegralcurveon--bccfda4330953370e4c6b33a.md) | 82 | `result-track:bccfda4330953370e4c6b33a9c45e1cf38f8bc6c70e57b4fac4be875e63b72ea` |
| 5 | `lemma` | [isMIntegralCurve_iff_isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve-iff-ismintegralcurveon--146090b17ffb8649b094da1f.md) | 85 | `result-track:146090b17ffb8649b094da1f110edfdced34728867074a2bbfcceebdb7e7db99` |
| 6 | `lemma` | [isMIntegralCurveAt_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-iff--23f936f60e942b7545d9ace6.md) | 89 | `result-track:23f936f60e942b7545d9ace6694092a02be1612a2897d35e5080f9b331d480a9` |
| 7 | `lemma` | [isMIntegralCurveAt_iff'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-iff--86b942400ba52572996922eb.md) | 107 | `result-track:86b942400ba52572996922eb7bf38f7c2153dba90f2246a19946ab323d5cbafb` |
| 8 | `lemma` | [IsMIntegralCurve.isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve-ismintegralcurveat--a5f2719f9fe2d71a001834fb.md) | 118 | `result-track:a5f2719f9fe2d71a001834fb83475adf6564b38b23aab54a394334ad981d9d51` |
| 9 | `lemma` | [isMIntegralCurve_iff_isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve-iff-ismintegralcurveat--0955565d9caf1e884a233961.md) | 122 | `result-track:0955565d9caf1e884a233961f5d71cc4588cf6f1ca7277621cbe436f56e14887` |
| 10 | `lemma` | [IsMIntegralCurveOn.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-mono--c2131564b260be3725b949a3.md) | 128 | `result-track:c2131564b260be3725b949a3400a88c7cc5a2d2d2534e8a6fe36935fae08566e` |
| 11 | `lemma` | [IsMIntegralCurveAt.hasMFDerivAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-hasmfderivat--3e81667a1cc7bc898f372024.md) | 131 | `result-track:3e81667a1cc7bc898f3720240fb04bfd8139cc3e2f40f557ab9de3e529e7c505` |
| 12 | `lemma` | [IsMIntegralCurveOn.isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-ismintegralcurveat--6a14408ec18a14a55e88a46f.md) | 136 | `result-track:6a14408ec18a14a55e88a46f5eb9df8b063232a9537d500c4f8a9bbdcf6c5b58` |
| 13 | `lemma` | [IsMIntegralCurveAt.isMIntegralCurveOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-ismintegralcurveon--e01d2211eb0ccd30d238e8d8.md) | 140 | `result-track:e01d2211eb0ccd30d238e8d85478154e13b360880b562b1409e97748f8ad390c` |
| 14 | `lemma` | [isMIntegralCurveOn_iff_isMIntegralCurveAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-iff-ismintegralcurveat--840e9c3e607d6c09c634c416.md) | 147 | `result-track:840e9c3e607d6c09c634c416a981ad1ac03bb761763d5c4b4c12801ef1c02d0d` |
| 15 | `lemma` | [IsMIntegralCurveOn.continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-continuouswithinat--2464ae99d2fa187d2974a3cc.md) | 151 | `result-track:2464ae99d2fa187d2974a3cca8a47ed689a84c1a17e6be1d0d15696c69e0cf10` |
| 16 | `lemma` | [IsMIntegralCurveOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-continuouson--4e6621707dd484818dadf375.md) | 154 | `result-track:4e6621707dd484818dadf375334c95e692f78da49ef281628b331386f0701158` |
| 17 | `lemma` | [IsMIntegralCurveAt.continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-continuousat--31ca21613b5760f8f7dddf6a.md) | 157 | `result-track:31ca21613b5760f8f7dddf6aea13e4efb555a1e5991ee61b8f91aa85a0125185` |
| 18 | `lemma` | [IsMIntegralCurve.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurve-continuous--49e6092151723ad1887afa20.md) | 162 | `result-track:49e6092151723ad1887afa206775053e8595999f21e047fa920b109e11fdf622` |
| 19 | `lemma` | [IsMIntegralCurveOn.hasDerivWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveon-hasderivwithinat--4710a75bed58b6963210364e.md) | 170 | `result-track:4710a75bed58b6963210364e26df2a4ba6eea82e52c03b798378c5608fd47202` |
| 20 | `lemma` | [IsMIntegralCurveAt.eventually_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant568bb44836266e25c91bdef8a3b8f88068fb9d0de17a631f1f530f60caa877b0.lean/declarations/ismintegralcurveat-eventually-hasderivat--44a72c61f863b385e56a28a2.md) | 188 | `result-track:44a72c61f863b385e56a28a2ac14ff765fd3c0a0904a68717683070b8b47fcdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
