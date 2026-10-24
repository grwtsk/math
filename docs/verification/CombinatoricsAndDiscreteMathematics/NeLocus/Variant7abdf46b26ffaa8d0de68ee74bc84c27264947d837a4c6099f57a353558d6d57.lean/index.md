# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NeLocus.Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "153e2cf4293920b824d34b754b264c0054292aa9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `153e2cf4293920b824d34b754b264c0054292aa9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus--ef70bc81a0451f6832d99dce.md) | 34 | `declaration-track:ef70bc81a0451f6832d99dcecbe6d5acd30c5acfd1ad70f695bf4beb0c46a323` |
| 2 | `theorem` | [mem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/mem-nelocus--59a5e2a71a76426ed6db4e02.md) | 38 | `result-track:59a5e2a71a76426ed6db4e025b0d15da2384e75336ee91e3d1be59c6fcf84f49` |
| 3 | `theorem` | [notMem_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/notmem-nelocus--893dc18f27d5dc5cd3201f73.md) | 42 | `result-track:893dc18f27d5dc5cd3201f736f6c72b715e564b7c3659bdcc349d73d264d7151` |
| 4 | `theorem` | [coe_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/coe-nelocus--1ce1e4f408ca2be5ce79ac3d.md) | 48 | `result-track:1ce1e4f408ca2be5ce79ac3d263391fd8dc53a2a82388e2c047ddbba56bc1889` |
| 5 | `theorem` | [neLocus_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-eq-empty--25e5174dd54bc527f805af9a.md) | 52 | `result-track:25e5174dd54bc527f805af9a875ef0f9f2b09020cf4b565da47ab6e7aeabf69a` |
| 6 | `theorem` | [nonempty_neLocus_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nonempty-nelocus-iff--8aed0512a7d1fe5f0dbe80d8.md) | 58 | `result-track:8aed0512a7d1fe5f0dbe80d87d6389b21ac1d225f2e7e1550676956058af0788` |
| 7 | `theorem` | [neLocus_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-comm--f30fbc056f32ad4bba19192c.md) | 61 | `result-track:f30fbc056f32ad4bba19192ce5cfc695c4610d04420e9cdc246beab7d650c7c7` |
| 8 | `theorem` | [neLocus_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-zero-right--1ffa0d979429045b5d064665.md) | 65 | `result-track:1ffa0d979429045b5d0646657159422059ccf98a6bf0a332dc35423576726736` |
| 9 | `theorem` | [neLocus_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-zero-left--0019bf21c8a5b3585eb1ff90.md) | 70 | `result-track:0019bf21c8a5b3585eb1ff9087610f08d6d64c28b188b41675f3c5a605403950` |
| 10 | `theorem` | [subset_mapRange_neLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/subset-maprange-nelocus--9f164245d0d7bce4073a64a6.md) | 79 | `result-track:9f164245d0d7bce4073a64a6374c230c5805c9b9962b1b39e1a618aea1f28e73` |
| 11 | `theorem` | [zipWith_neLocus_eq_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/zipwith-nelocus-eq-left--e15098a355ed845e131f5750.md) | 84 | `result-track:e15098a355ed845e131f5750531ca1dcac1152dced911e1c13535d2a967977aa` |
| 12 | `theorem` | [zipWith_neLocus_eq_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/zipwith-nelocus-eq-right--c76b1b7baefc9bb6cb357d53.md) | 91 | `result-track:c76b1b7baefc9bb6cb357d533139055dc6e44e7f724e56a165f3c796e74a10c1` |
| 13 | `theorem` | [mapRange_neLocus_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/maprange-nelocus-eq--3ace2d564c366ffc8174bc96.md) | 98 | `result-track:3ace2d564c366ffc8174bc9696d9932d7b816e2adb779962898b7241d1933e3d` |
| 14 | `theorem` | [neLocus_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-add-left--6ab190aa00429053ff664956.md) | 109 | `result-track:6ab190aa00429053ff6649568795969d44a2f0a87514b06d674fec6c1503bcc6` |
| 15 | `theorem` | [neLocus_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-add-right--4e7af739701e8c03787bd8d8.md) | 114 | `result-track:4e7af739701e8c03787bd8d8fc081a344de2d9acb0ac4c6fe7307e2d74aca2bf` |
| 16 | `theorem` | [neLocus_neg_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-neg-neg--bfba8694ef5bed48c5c1646e.md) | 123 | `result-track:bfba8694ef5bed48c5c1646e78795f28cc375891d3d811bacdfc66a7f3f50563` |
| 17 | `theorem` | [neLocus_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-neg--53c4c69b79f4672d9f0bb553.md) | 126 | `result-track:53c4c69b79f4672d9f0bb553f3ba50ac549a3ae687dfd1aeb8a48bf534aebdfe` |
| 18 | `theorem` | [neLocus_eq_support_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-eq-support-sub--b3318645a2314a06f13d3d27.md) | 128 | `result-track:b3318645a2314a06f13d3d27e2f7abea77a326146e2c82dc863f03e7f65f0570` |
| 19 | `theorem` | [neLocus_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-sub-left--e31f2138582afc7f751ba46a.md) | 132 | `result-track:e31f2138582afc7f751ba46afdc4be36e71700ff96465b31a4168d9743ac2e4d` |
| 20 | `theorem` | [neLocus_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-sub-right--87703b4df70d55cb6fda7769.md) | 136 | `result-track:87703b4df70d55cb6fda7769e2f9a025fb14b5073a951be2d480f4fde2340bc3` |
| 21 | `theorem` | [neLocus_self_add_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-self-add-right--2dedc203cff78185470825e1.md) | 140 | `result-track:2dedc203cff78185470825e10c37482baf35e5cdf19fa65b469be4ae176714f3` |
| 22 | `theorem` | [neLocus_self_add_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-self-add-left--a961cfb385c5a40950677ad2.md) | 144 | `result-track:a961cfb385c5a40950677ad2ce90698092b73f153ff6f9a5d6ac94ce52b01edb` |
| 23 | `theorem` | [neLocus_self_sub_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-self-sub-right--9c7002a92eccf4a4f335f543.md) | 148 | `result-track:9c7002a92eccf4a4f335f543044631a3a1cf228985c9f71c50f4605b4f694b89` |
| 24 | `theorem` | [neLocus_self_sub_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NeLocus/Variant7abdf46b26ffaa8d0de68ee74bc84c27264947d837a4c6099f57a353558d6d57.lean/declarations/nelocus-self-sub-left--570aa87354ff7013cfe94a48.md) | 152 | `result-track:570aa87354ff7013cfe94a483e3a26596e990b35217ded081bf04d426e737f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
