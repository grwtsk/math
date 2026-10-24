# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e9446985e8079fe7e0e161342d69bbc284887a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e9446985e8079fe7e0e161342d69bbc284887a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Perm` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm--82196c1d0070764fef98e8c5.md) | 40 | `declaration-track:82196c1d0070764fef98e8c5a0978de409c1a3f2239b2f303dd87deed3ac2fce` |
| 2 | `theorem` | [perm_iff_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-iff-tolist-perm--f4fe5c9d3d78a0e508dc0aa7.md) | 46 | `result-track:f4fe5c9d3d78a0e508dc0aa7cfde07f499750592737b1cfd7b6955dc4ee9a971` |
| 3 | `theorem` | [perm_iff_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-iff-toarray-perm--3b35c5eff6105a83a5626486.md) | 55 | `result-track:3b35c5eff6105a83a5626486cd9e33385f2c9ff0e576b99728755055480a0c12` |
| 4 | `theorem` | [Perm.of_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-of-toarray-perm--b2c54b1eced9a6bc2342eb4c.md) | 58 | `result-track:b2c54b1eced9a6bc2342eb4c4b3da0ce55acdacf75097bca49a8c844c5b8bb62` |
| 5 | `theorem` | [Perm.toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-toarray--6dc8cf890832f7ad439f20c0.md) | 61 | `result-track:6dc8cf890832f7ad439f20c0f522fd97807182337bfa4f24f14ec0287dcc9b8a` |
| 6 | `theorem` | [Perm.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-refl--2d6ccefc74ecbcee250ef979.md) | 70 | `result-track:2d6ccefc74ecbcee250ef979e357e49acd6c5eca0fa9b595f5cf6466263f7f13` |
| 7 | `theorem` | [Perm.rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-rfl--55a4660bf032f8110220e94b.md) | 74 | `result-track:55a4660bf032f8110220e94b415cb3ae160c01f6e5f1e1866ddb740274f97056` |
| 8 | `theorem` | [Perm.of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-of-eq--baf5cfcb64f51821f6862395.md) | 76 | `result-track:baf5cfcb64f51821f68623952d7d1bf983e61f73713c8499f9a1f52a05feeb67` |
| 9 | `theorem` | [Perm.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-symm--d97a5937712a35bc8b48eb1c.md) | 79 | `result-track:d97a5937712a35bc8b48eb1c43da728c5b401ee6c253848e77edbed7dd7699a8` |
| 10 | `theorem` | [Perm.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-trans--c3dbbe58ca39ce3a42d6e71f.md) | 84 | `result-track:c3dbbe58ca39ce3a42d6e71f734a27b15808366b1cd30848263a06c7eac9873e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/instance--4fc17dd0a3f1e68d8f07c0c6.md) | 89 | `declaration-track:4fc17dd0a3f1e68d8f07c0c69ee758fcbcab4a08091fc4a49ad7a3c1b6db9b10` |
| 12 | `theorem` | [perm_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-comm--d112bac36468f7cc3e568684.md) | 92 | `result-track:d112bac36468f7cc3e568684a3dd7d40bbdd5fb5a638c1479621f32c8ff15556` |
| 13 | `theorem` | [Perm.size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-size-eq--9006a8b1cae9f7b7fd737937.md) | 94 | `result-track:9006a8b1cae9f7b7fd737937781052857547c1bbd85230eadb2b2dfe2d46239f` |
| 14 | `theorem` | [Perm.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-mem-iff--f0ccc6bb4d7579fb955fd16c.md) | 99 | `result-track:f0ccc6bb4d7579fb955fd16c6216a589885d59e95deeb781af15df3145107a81` |
| 15 | `theorem` | [Perm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-append--6190b9c4be5ae86344767840.md) | 108 | `result-track:6190b9c4be5ae86344767840544fa6e84a9227997e90823ddf8a2aa1d9250840` |
| 16 | `theorem` | [Perm.push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-push--3165159ac6a927cba1130cc2.md) | 117 | `result-track:3165159ac6a927cba1130cc24ca64eef2f7ef2a78e57cada3b41b40816a6a8a0` |
| 17 | `theorem` | [Perm.push_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-push-comm--8cff5d1ee44700c0ec92c68c.md) | 125 | `result-track:8cff5d1ee44700c0ec92c68c5307bdc901df76ada32f971838d5a2776efd634f` |
| 18 | `theorem` | [swap_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/swap-perm--978a55dae39169ca40dd9119.md) | 132 | `result-track:978a55dae39169ca40dd91197df7778ee2d5d8b8542b7d9487893be211ae6c19` |
| 19 | `theorem` | [Perm.pairwise_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-pairwise-iff--a80cc1ea25ef044347e4d805.md) | 137 | `result-track:a80cc1ea25ef044347e4d80550b9c213b97d510211992fea1dc09fd15d518d09` |
| 20 | `theorem` | [Perm.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/perm-pairwise--8e2ed22a4391e5c309eaad6d.md) | 141 | `result-track:8e2ed22a4391e5c309eaad6d0f8290a6809a18c48c53038d5dde45901dc8a142` |
| 21 | `theorem` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant9819104e7bddf01c3d3ed9552822927205f7fd6ebf1b9213b9ba5bfc1a9e111e.lean/declarations/extract--fd318633d075798201b58f36.md) | 148 | `result-track:fd318633d075798201b58f36b8668ff02cba9cf4d252ef8d4c9cceacaad59379` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
