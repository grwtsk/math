# Verification target: GRWTSK.Geometry.ConvexGeometry.AbsConvex.Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f4cabd866723569ef9807177a35853cda5fd57e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f4cabd866723569ef9807177a35853cda5fd57e`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.TotallyBounded` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex--8f9f91ae24eb27b93e9dcfe9.md) | 59 | `declaration-track:8f9f91ae24eb27b93e9dcfe9c557b9dd6d4ce42a6be0233d36bfce05d56c1509` |
| 2 | `theorem` | [AbsConvex.empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-empty--1b168e83e573865e0535ff1e.md) | 63 | `result-track:1b168e83e573865e0535ff1ec638e8af4b87d21f55e13d2c50cc666f135eacf0` |
| 3 | `theorem` | [AbsConvex.univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-univ--94303c3843134bece10168b0.md) | 65 | `result-track:94303c3843134bece10168b02b827a4f4b8ed33f7c506ccf86988674e4d76d5f` |
| 4 | `theorem` | [AbsConvex.inter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-inter--8d29e9578dbf52981fff0661.md) | 67 | `result-track:8d29e9578dbf52981fff0661f19a58faa047376a857dc023ff96302c1fdab5f0` |
| 5 | `theorem` | [AbsConvex.sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-sinter--3acabf1d271c068424024929.md) | 70 | `result-track:3acabf1d271c0684240249290ad79011e58457f857e334cc2aad7d382169882a` |
| 6 | `theorem` | [AbsConvex.iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-iinter--1548bf322ab3e21003041831.md) | 73 | `result-track:1548bf322ab3e21003041831f351c264851c52459bb3ad79163f9374183f87ce` |
| 7 | `theorem` | [AbsConvex.iInter₂](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-iinter--a80fbe6acbcddc6e2c320514.md) | 77 | `result-track:a80fbe6acbcddc6e2c3205141a0606023ecd9e4c8c5c13c14263ee3a87780914` |
| 8 | `def` | [absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull--47b2a965ff021998d9d2194d.md) | 85 | `declaration-track:47b2a965ff021998d9d2194d25c5f87a2b5181207a360736b6247895ff62ea9c` |
| 9 | `theorem` | [subset_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/subset-absconvexhull--fbe38ca8bfce98eaf13eda6c.md) | 90 | `result-track:fbe38ca8bfce98eaf13eda6c6e9378799534bede9858718c569b9f50d8aa503d` |
| 10 | `theorem` | [absConvex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-absconvexhull--d294602a0de41cd533e7448a.md) | 93 | `result-track:d294602a0de41cd533e7448a13aa54b7a71d8293c8bf5c9f54473f10042385b6` |
| 11 | `theorem` | [balanced_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/balanced-absconvexhull--345b1dc039a0717f8fcbb3a9.md) | 96 | `result-track:345b1dc039a0717f8fcbb3a96b163366595dde9585c789bcd6a48b23c716dc39` |
| 12 | `theorem` | [convex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/convex-absconvexhull--1040734677660b1de1395a81.md) | 99 | `result-track:1040734677660b1de1395a8163ce821e8634386a05545e924180bb388d87d1b8` |
| 13 | `theorem` | [absConvexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-eq-iinter--c669b5fab7b259f93898f639.md) | 103 | `result-track:c669b5fab7b259f93898f6399a84d744720aafb9e8fccd1f3b191719583db8d0` |
| 14 | `theorem` | [mem_absConvexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/mem-absconvexhull-iff--fe4a3453fbe194ee39a5490f.md) | 109 | `result-track:fe4a3453fbe194ee39a5490f51626b58b8238356b6c0e53838862ec0dac41526` |
| 15 | `theorem` | [absConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-min--d853b85b1121b48d35132cbf.md) | 112 | `result-track:d853b85b1121b48d35132cbfd20462fe757311d32bda77f3a6a79b688ae38afb` |
| 16 | `theorem` | [AbsConvex.absConvexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-absconvexhull-subset-iff--5d45422ee50bc03b92a96d24.md) | 115 | `result-track:5d45422ee50bc03b92a96d248c77e3f9cd9ab7c6ce6c2bcd0bc70d5b85d1a700` |
| 17 | `theorem` | [absConvexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-mono--33e3af90a26be57934e62e6f.md) | 119 | `result-track:33e3af90a26be57934e62e6f1c857f004b58627efe70d5d88a4a7c185b79eae7` |
| 18 | `lemma` | [absConvexHull_eq_self](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-eq-self--174c750477762491a546462d.md) | 122 | `result-track:174c750477762491a546462d269a544833de87f719a26e3de19b8411d093b49b` |
| 19 | `theorem` | [absConvexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-univ--2042c475e5a94898814b2418.md) | 128 | `result-track:2042c475e5a94898814b2418750d851093334dbae3b41cffa4ebbe5e1fc50648` |
| 20 | `theorem` | [absConvexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-empty--086eba3a7d27f604baeb3100.md) | 132 | `result-track:086eba3a7d27f604baeb31007f9160920d64dc8ec6d62de9e034b739f7769c6e` |
| 21 | `theorem` | [absConvexHull_eq_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-eq-empty--707650b94df23f9ccd5ef0b7.md) | 136 | `result-track:707650b94df23f9ccd5ef0b76c96a9dcc816fadca1d6ff27c403259a56eb2e2c` |
| 22 | `theorem` | [absConvexHull_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-nonempty--f926710383535bb547b20d41.md) | 145 | `result-track:f926710383535bb547b20d413b388e3f41b2c3786529ff8aa5865f62ca9a1c39` |
| 23 | `theorem` | [absConvex_closed_sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-closed-sinter--83e7b0f23c4b3404f287a299.md) | 153 | `result-track:83e7b0f23c4b3404f287a299a121353da900aaef226577426fd946f4669f5a99` |
| 24 | `def` | [closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/closedabsconvexhull--de45e6dffbd269d491180053.md) | 161 | `declaration-track:de45e6dffbd269d491180053354d959a1cb7d507f6155f3c6d36ee4b465ba26e` |
| 25 | `theorem` | [absConvex_convexClosedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-convexclosedhull--fa77fd16e4dee6f4dea11adc.md) | 164 | `result-track:fa77fd16e4dee6f4dea11adc970aedf7453129181d6fa9e8a41917a781f0baee` |
| 26 | `theorem` | [isClosed_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/isclosed-closedabsconvexhull--00ac2254def9901b8ba0e6a5.md) | 167 | `result-track:00ac2254def9901b8ba0e6a58e8f476f6c7a07d705a2646a8ce01d11ca897341` |
| 27 | `theorem` | [subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/subset-closedabsconvexhull--ac3cb05b995da94e235a9ff9.md) | 170 | `result-track:ac3cb05b995da94e235a9ff98fdd1705343451c9e944fbcc19858c97504cfbb9` |
| 28 | `theorem` | [closure_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/closure-subset-closedabsconvexhull--7811ea1b7b47e5daffab1d43.md) | 173 | `result-track:7811ea1b7b47e5daffab1d43a5cbfbe7227de86091eff0a4dd06ef891b563bb1` |
| 29 | `theorem` | [closedAbsConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/closedabsconvexhull-min--a66305aeb49211bb5936c016.md) | 176 | `result-track:a66305aeb49211bb5936c016578dce65373c95203169082d7ae37aa03ce9920a` |
| 30 | `theorem` | [absConvexHull_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-subset-closedabsconvexhull--118d1b57ff39143fa6a6bb8b.md) | 180 | `result-track:118d1b57ff39143fa6a6bb8ba4c2745fe8ee2f93d0636e1fea0262ccd1627495` |
| 31 | `theorem` | [closedAbsConvexHull_closure_eq_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/closedabsconvexhull-closure-eq-closedabsconvexhull--a1a49bac53cb714840aa6361.md) | 185 | `result-track:a1a49bac53cb714840aa6361a50025c6e1cedee77eaec1b4aaefe53babbe727d` |
| 32 | `theorem` | [AbsConvex.closure](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvex-closure--8b029d06c0ca9fec438978ed.md) | 199 | `result-track:8b029d06c0ca9fec438978ed27ee5240a8926ade223ac3a57072b12ac5b75988` |
| 33 | `theorem` | [closedAbsConvexHull_eq_closure_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/closedabsconvexhull-eq-closure-absconvexhull--8e25e38015579a801f4bc9b9.md) | 202 | `result-track:8e25e38015579a801f4bc9b9dcea7a3c4f7448f0a1b8207193f4503fe8b11b74` |
| 34 | `theorem` | [nhds_hasBasis_absConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/nhds-hasbasis-absconvex--49a440bd813a01432a9cc84a.md) | 217 | `result-track:49a440bd813a01432a9cc84ac2979176b1310db9650d534d4d80542944eb3c4e` |
| 35 | `theorem` | [nhds_hasBasis_absConvex_open](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/nhds-hasbasis-absconvex-open--ce090988df7d93c9e0948bd4.md) | 229 | `result-track:ce090988df7d93c9e0948bd4e6a04b3f162e1ddf35d4b3f5864cc032ed044b5e` |
| 36 | `theorem` | [absConvexHull_add_subset](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-add-subset--c3b22c905be8e0e90241ccfb.md) | 247 | `result-track:c3b22c905be8e0e90241ccfbbd5c98d081889bee1d578111d504bcbd0cfa10f1` |
| 37 | `theorem` | [absConvexHull_eq_convexHull_balancedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/absconvexhull-eq-convexhull-balancedhull--cb8016fada6305a2ea66d4f3.md) | 253 | `result-track:cb8016fada6305a2ea66d4f37d68d7298cb85501e4d56d1eada52ed62c16c4e3` |
| 38 | `theorem` | [balancedHull_convexHull_subseteq_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/balancedhull-convexhull-subseteq-absconvexhull--9b2b962cfc1aa094e89055fe.md) | 262 | `result-track:9b2b962cfc1aa094e89055feae2186165296a44f0fd396b2ba229a81ae565434` |
| 39 | `lemma` | [balancedHull_subset_convexHull_union_neg](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/balancedhull-subset-convexhull-union-neg--15ee024e78cafa184741a01f.md) | 273 | `result-track:15ee024e78cafa184741a01f992519868c67c5ece75adad4f82147666953a7d4` |
| 40 | `theorem` | [convexHull_union_neg_eq_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/convexhull-union-neg-eq-absconvexhull--782b890d5968b5e85bafb3ed.md) | 286 | `result-track:782b890d5968b5e85bafb3ed2eb2572b4783dd775dbca4309ed8a524ce9b3cef` |
| 41 | `theorem` | [totallyBounded_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/totallybounded-absconvexhull--fe17c2b64aaa8ea5aac3b827.md) | 300 | `result-track:fe17c2b64aaa8ea5aac3b827957fd9d87e8ac92f43fd0808b1acd69a88218362` |
| 42 | `lemma` | [zero_mem_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant6cdd5d6e61cd07a0257d36862069aed6c2911a4c6822302eca81f73dbcdf0a0c.lean/declarations/zero-mem-absconvexhull--8caf086ef4af460b68c44f40.md) | 309 | `result-track:8caf086ef4af460b68c44f4030ed72ddb61407223f20f0bd9b776d44882020b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
