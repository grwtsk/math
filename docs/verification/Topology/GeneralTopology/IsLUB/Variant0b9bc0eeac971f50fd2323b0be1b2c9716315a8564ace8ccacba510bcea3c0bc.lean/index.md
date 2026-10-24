# Verification target: GRWTSK.Topology.GeneralTopology.IsLUB.Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df2188d74d0f987d6b8d760084b3b103fa36f015",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df2188d74d0f987d6b8d760084b3b103fa36f015`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LeftRightNhds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLUB.frequently_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-frequently-mem--71455df69672559313d969ba.md) | 23 | `result-track:71455df69672559313d969ba63607d0a4549ccba2c9a299f511dc3691b46e535` |
| 2 | `theorem` | [IsLUB.frequently_nhds_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-frequently-nhds-mem--bd0a3b8d0bf4307da98a57fd.md) | 33 | `result-track:bd0a3b8d0bf4307da98a57fd76e4cebe0bf79b2b35f4040d095521aff569cf74` |
| 3 | `theorem` | [IsGLB.frequently_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-frequently-mem--58ea8fa58f67327625650203.md) | 37 | `result-track:58ea8fa58f67327625650203e8d4abd6c4ce3364614588947f4ebe265d113ed8` |
| 4 | `theorem` | [IsGLB.frequently_nhds_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-frequently-nhds-mem--03369a32d5dd820e3c233035.md) | 41 | `result-track:03369a32d5dd820e3c23303510cf4ad621b98625088997877fb40ce05808e081` |
| 5 | `theorem` | [IsLUB.mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-mem-closure--ff3fff1239c868ab30a6c7f8.md) | 45 | `result-track:ff3fff1239c868ab30a6c7f8ebbc9f2a9e8f7aed949208b517bd8514f2dc7b3d` |
| 6 | `theorem` | [IsGLB.mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-mem-closure--518ef0ff88731e18c1c6feb5.md) | 48 | `result-track:518ef0ff88731e18c1c6feb5604ec3730065f1af86db0cfba2141504bc2c9bd5` |
| 7 | `theorem` | [IsLUB.nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-nhdswithin-nebot--6beff372d8dfa6f1eebd1a1a.md) | 51 | `result-track:6beff372d8dfa6f1eebd1a1ace48630d0264502230647cdb4d9746400e4aa341` |
| 8 | `theorem` | [IsGLB.nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-nhdswithin-nebot--a31fb2d7a2d0337d2b250847.md) | 55 | `result-track:a31fb2d7a2d0337d2b25084767d1a749e1763a26ac667fcca727e1e04100881b` |
| 9 | `theorem` | [isLUB_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-of-mem-nhds--5edc0c5333b6f1839d7c085b.md) | 59 | `result-track:5edc0c5333b6f1839d7c085be142041e3246f205b5ea0c09173c313e4e59d6dd` |
| 10 | `theorem` | [isLUB_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-of-mem-closure--f9a52fdc72184d9ec14328ae.md) | 68 | `result-track:f9a52fdc72184d9ec14328ae86b1e482e05ed83b3ce04462ae3fcd8fd2e17cc5` |
| 11 | `theorem` | [isGLB_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-of-mem-nhds--d6ce468fb33896ab50118fe7.md) | 73 | `result-track:d6ce468fb33896ab50118fe72837536dfabe72a1d0163eedf0c9d6eda86abce0` |
| 12 | `theorem` | [isGLB_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-of-mem-closure--bba2abb6ac04a4b88badb6ec.md) | 78 | `result-track:bba2abb6ac04a4b88badb6ecfe7f61e643303e4438ac802ab8eb7897e5ae18a6` |
| 13 | `theorem` | [IsLUB.mem_upperBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-mem-upperbounds-of-tendsto--6899dbfc83f9bc7e8c50f736.md) | 82 | `result-track:6899dbfc83f9bc7e8c50f736e09ca982bf59987edc42d8b2bfbbf8b026947c76` |
| 14 | `theorem` | [IsLUB.isLUB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-islub-of-tendsto--9364d1260aba5224b6aaaaae.md) | 93 | `result-track:9364d1260aba5224b6aaaaae1a6a230b869227455bbaf80de4ac0a7cbd504322` |
| 15 | `theorem` | [IsGLB.mem_lowerBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-mem-lowerbounds-of-tendsto--80b16b33fc236c88e4985211.md) | 100 | `result-track:80b16b33fc236c88e49852115ca223e1b74333122f8fefeffe9d62ec99d24a14` |
| 16 | `theorem` | [IsGLB.isGLB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-isglb-of-tendsto--ec90fdf2eb0b5c6ac3a339d8.md) | 108 | `result-track:ec90fdf2eb0b5c6ac3a339d8902cd1ebe17c8c26afd61e7d8cc78d0a4e3ba387` |
| 17 | `theorem` | [IsLUB.mem_lowerBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-mem-lowerbounds-of-tendsto--c3c769a4ab809a879683dd2d.md) | 113 | `result-track:c3c769a4ab809a879683dd2d4d8bd6ea8c067690960372052dc169414ab5c54a` |
| 18 | `theorem` | [IsLUB.isGLB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-isglb-of-tendsto--6b1dda1ef5878a1b3a9a2d87.md) | 118 | `result-track:6b1dda1ef5878a1b3a9a2d87768e0489c92a59ce6ffd22db62acdfc10da88e50` |
| 19 | `theorem` | [IsGLB.mem_upperBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-mem-upperbounds-of-tendsto--b28d61807c406e6146f62393.md) | 123 | `result-track:b28d61807c406e6146f623939695049318a800cab7a344662442c8131da674d7` |
| 20 | `theorem` | [IsGLB.isLUB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-islub-of-tendsto--04f5febb274515aeef36ca1a.md) | 128 | `result-track:04f5febb274515aeef36ca1a7737e3772e5c7ad8b487f24e96bafb4bf695210e` |
| 21 | `theorem` | [IsLUB.mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-mem-of-isclosed--ab36416e1950737073a72b31.md) | 133 | `result-track:ab36416e1950737073a72b312f65578572ee2affb96145cf7e2a7f704ac223ae` |
| 22 | `theorem` | [IsGLB.mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-mem-of-isclosed--574e0f0f6e05d46e3e9d188b.md) | 139 | `result-track:574e0f0f6e05d46e3e9d188bbafaa1e19dc06188e36477f1bb8b2e9eaeea0739` |
| 23 | `theorem` | [isLUB_iff_of_subset_of_subset_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-iff-of-subset-of-subset-closure--27ba5a4bacd0a07792a85163.md) | 145 | `result-track:27ba5a4bacd0a07792a85163702f50aff5d250169c827f118edbbc57d6bd683e` |
| 24 | `theorem` | [isGLB_iff_of_subset_of_subset_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-iff-of-subset-of-subset-closure--b90cd055479cb1cf32f711f9.md) | 151 | `result-track:b90cd055479cb1cf32f711f9fa4d7175f4e590e05289530d27f3e1e8bcd03460` |
| 25 | `theorem` | [Dense.isLUB_inter_iff](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-islub-inter-iff--5c09a6b0f7bc8e01ddae7b3e.md) | 156 | `result-track:5c09a6b0f7bc8e01ddae7b3e8cad984977aafbcd02acd636f1134d3c7d14a113` |
| 26 | `theorem` | [Dense.isGLB_inter_iff](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-isglb-inter-iff--d6517fd4e7a4aba206633d3f.md) | 161 | `result-track:d6517fd4e7a4aba206633d3fd933eb7e59533371753fb66d0dcc9b538a54ce62` |
| 27 | `theorem` | [IsLUB.exists_seq_strictMono_tendsto_of_notMem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-exists-seq-strictmono-tendsto-of-notmem--08b018bcb721a73b973be57e.md) | 170 | `result-track:08b018bcb721a73b973be57e527171c6aa2fd9997e78d2e5ee5c17370619c623` |
| 28 | `theorem` | [IsLUB.exists_seq_monotone_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/islub-exists-seq-monotone-tendsto--b2d03f1a42a5f5220e66e53a.md) | 187 | `result-track:b2d03f1a42a5f5220e66e53a7c187a3ed3a69e7d9832087e973bf17c81d7637e` |
| 29 | `theorem` | [exists_seq_strictMono_tendsto'](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictmono-tendsto--b97015ecb10135ba90ab07c8.md) | 195 | `result-track:b97015ecb10135ba90ab07c899b8dfe16e2d44fcd44621c9cb15144c00164c2e` |
| 30 | `theorem` | [exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictmono-tendsto--f63c21b27c7e9149a94d089b.md) | 203 | `result-track:f63c21b27c7e9149a94d089b1827a53a8d7bc0540992a2e9aa9a048322178b97` |
| 31 | `theorem` | [exists_seq_strictMono_tendsto_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictmono-tendsto-nhdswithin--f663e6908a2399c115f4db3b.md) | 209 | `result-track:f663e6908a2399c115f4db3b7ef59f4a40e53df1583b1f10460b42af76bad4f9` |
| 32 | `theorem` | [exists_seq_tendsto_sSup](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-tendsto-ssup--b1c5be744ae4fcc8d24c4ea3.md) | 215 | `result-track:b1c5be744ae4fcc8d24c4ea37d044734985e9e060e50946531e7599339812a29` |
| 33 | `theorem` | [Dense.exists_seq_strictMono_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-exists-seq-strictmono-tendsto-of-lt--0387066c905cf0430df0f3b4.md) | 221 | `result-track:0387066c905cf0430df0f3b4e8ca0a8d4e1a4d708f72a1932c66984e22ab89ff` |
| 34 | `theorem` | [Dense.exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-exists-seq-strictmono-tendsto--989d460f59dcb5789886794f.md) | 231 | `result-track:989d460f59dcb5789886794f9a6cc84d65af26c58ba6514909ce65d660dc2e42` |
| 35 | `theorem` | [DenseRange.exists_seq_strictMono_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/denserange-exists-seq-strictmono-tendsto-of-lt--93e53f457bf87d7a75b7cf1e.md) | 238 | `result-track:93e53f457bf87d7a75b7cf1e450552fb2be18dae25f9a70b010fe1a57bba8353` |
| 36 | `theorem` | [DenseRange.exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/denserange-exists-seq-strictmono-tendsto--8f41be4c4ec772eada98360e.md) | 249 | `result-track:8f41be4c4ec772eada98360e86fed872c8bffd69f87361c213e6cfdb256f8754` |
| 37 | `theorem` | [IsGLB.exists_seq_strictAnti_tendsto_of_notMem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-exists-seq-strictanti-tendsto-of-notmem--38363db2e1c34b878f927ced.md) | 260 | `result-track:38363db2e1c34b878f927cedb5970324d6c759b4db55199967ff0242879df9a2` |
| 38 | `theorem` | [IsGLB.exists_seq_antitone_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/isglb-exists-seq-antitone-tendsto--7ecac89051fd6e7edffd2f8f.md) | 269 | `result-track:7ecac89051fd6e7edffd2f8f8dd04f7980f6693344c374fe070d4d3e8bfddabe` |
| 39 | `theorem` | [exists_seq_strictAnti_tendsto'](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictanti-tendsto--903dac410baf821de415acdd.md) | 274 | `result-track:903dac410baf821de415acdd038decfb287f5871866d009d13fbdfd3d5616c34` |
| 40 | `theorem` | [exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictanti-tendsto--13ef09bd1c51d1761d74ddfb.md) | 278 | `result-track:13ef09bd1c51d1761d74ddfb2ae6984a9e4c14bad778b496806ee76bc689fbec` |
| 41 | `theorem` | [exists_seq_strictAnti_tendsto_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictanti-tendsto-nhdswithin--bc39e90fc38ce867c6ec022a.md) | 282 | `result-track:bc39e90fc38ce867c6ec022a5ccc3ce48b4d86df617b4965c5bebcfd70bf7cd5` |
| 42 | `theorem` | [exists_seq_strictAnti_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-strictanti-strictmono-tendsto--0848e528098c467d4b6601eb.md) | 287 | `result-track:0848e528098c467d4b6601eb53c3e2c53a0fdcc5314e3b5e08b015ce37364c4a` |
| 43 | `theorem` | [exists_seq_tendsto_sInf](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/exists-seq-tendsto-sinf--425c295754da20111bd09e2c.md) | 297 | `result-track:425c295754da20111bd09e2c03bd5838c8d7fa9079e7a8d0b92657120406b080` |
| 44 | `theorem` | [Dense.exists_seq_strictAnti_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-exists-seq-strictanti-tendsto-of-lt--908aee824a8460e8ba36c4c4.md) | 302 | `result-track:908aee824a8460e8ba36c4c49001edcc554d98b9215cf93198c7ee1d20dcc175` |
| 45 | `theorem` | [Dense.exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/dense-exists-seq-strictanti-tendsto--2debbd66b3846601f94e36cf.md) | 307 | `result-track:2debbd66b3846601f94e36cf14f7062bf749e9aea6754283a6fe49f2e012901a` |
| 46 | `theorem` | [DenseRange.exists_seq_strictAnti_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/denserange-exists-seq-strictanti-tendsto-of-lt--8d41b99b32d6e12cd24d28b7.md) | 312 | `result-track:8d41b99b32d6e12cd24d28b7cb6298dd3fa7cc3167c3750b4a36aea883a83b3d` |
| 47 | `theorem` | [DenseRange.exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant0b9bc0eeac971f50fd2323b0be1b2c9716315a8564ace8ccacba510bcea3c0bc.lean/declarations/denserange-exists-seq-strictanti-tendsto--6996147b7fb6cb5ecd6235d8.md) | 319 | `result-track:6996147b7fb6cb5ecd6235d8922f1bf4f435e37154b29461d7ce90a9aefff518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
