# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "700d350edd1fa91d57be345c2b7fbd1a5bca0af1",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `700d350edd1fa91d57be345c2b7fbd1a5bca0af1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/graph--bc7b732b56dabf9cfbf86006.md) | 78 | `declaration-track:bc7b732b56dabf9cfbf8600625c2c84e0f369bf63da589d8371d4e082ff0a99d` |
| 2 | `lemma` | [IsLink.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-edge-mem--8c71d5843b24d5ab639c36dd.md) | 107 | `result-track:8c71d5843b24d5ab639c36ddc31f2741dc6805190280ed57d44734461fc0b33e` |
| 3 | `lemma` | [IsLink.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-symm--ad68d49ea7fab8230ace72a0.md) | 110 | `result-track:ad68d49ea7fab8230ace72a0c1016515dc0667cfb177c322be2865e0dd9c2629` |
| 4 | `lemma` | [IsLink.left_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-left-mem--7dccb7c130ef16e8f6b746ce.md) | 113 | `result-track:7dccb7c130ef16e8f6b746ced6710f8f380b8fa5ecd539726492fcbc539ece63` |
| 5 | `lemma` | [IsLink.right_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-right-mem--725454f4d17cc97fae3a4855.md) | 116 | `result-track:725454f4d17cc97fae3a4855265a32075c1a244b93528e2de89304a87f3e5070` |
| 6 | `lemma` | [isLink_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-comm--7a6c96a292a05c370b836c1d.md) | 119 | `result-track:7a6c96a292a05c370b836c1d09ed64cc0414d060d475cc0cd9ae0191f75dac2c` |
| 7 | `lemma` | [exists_isLink_of_mem_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/exists-islink-of-mem-edgeset--ea40e309a81483c55f0e040c.md) | 122 | `result-track:ea40e309a81483c55f0e040c7fb17d969ddbd12257f2e964a3f2c5faf8d7f2e1` |
| 8 | `lemma` | [edgeSet_eq_setOf_exists_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/edgeset-eq-setof-exists-islink--4718d56672a7a51f058de5a0.md) | 125 | `result-track:4718d56672a7a51f058de5a0fcbbd7b816178ac495f75805aea3a4f7adac05d0` |
| 9 | `lemma` | [IsLink.left_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-left-eq-or-eq--8b652c75687b6865c07f6d03.md) | 128 | `result-track:8b652c75687b6865c07f6d03b33b6fcb194c2f682a87e8cd3ceda3c074d7f420` |
| 10 | `lemma` | [IsLink.right_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-right-eq-or-eq--b933bd9bfae046f8820f5392.md) | 131 | `result-track:b933bd9bfae046f8820f539249ae5efe338f91c6a6a0954fce6d38c2527e7a9e` |
| 11 | `lemma` | [IsLink.left_eq_of_right_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-left-eq-of-right-ne--b753e56725b60f05c2ecdc71.md) | 134 | `result-track:b753e56725b60f05c2ecdc716dfa419740c4ae1afc568afa75af4a58cd281fc4` |
| 12 | `lemma` | [IsLink.right_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-right-unique--8654e757f7d6b182ed47a2f1.md) | 138 | `result-track:8654e757f7d6b182ed47a2f11683c95029b58d8171c90179ea4f981464a82364` |
| 13 | `lemma` | [IsLink.left_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-left-unique--b642dfcc3230fb2f79b1d83a.md) | 143 | `result-track:b642dfcc3230fb2f79b1d83ab2c624ee7417f134316b50735739a9795398d5ff` |
| 14 | `lemma` | [IsLink.eq_and_eq_or_eq_and_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-eq-and-eq-or-eq-and-eq--e6ddec9f21a78f212b5ecde2.md) | 146 | `result-track:e6ddec9f21a78f212b5ecde23a9efe7dd71cf2962ac70f2b7cda4130dbde4109` |
| 15 | `lemma` | [IsLink.isLink_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-islink-iff--6c8ddac26e5ee07f93436972.md) | 152 | `result-track:6c8ddac26e5ee07f93436972db60776e67c0015085ff95a530f7761abefc9b27` |
| 16 | `lemma` | [IsLink.isLink_iff_sym2_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-islink-iff-sym2-eq--82f87749206589d0afaaf829.md) | 159 | `result-track:82f87749206589d0afaaf82912dd258309b4c575878657825471eec8b3657076` |
| 17 | `def` | [Inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc--17ba29cf90633977781d94bc.md) | 168 | `declaration-track:17ba29cf90633977781d94bcc15ae2d4ef265f091f23271ae9ad9f5995e902c6` |
| 18 | `lemma` | [Inc.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-edge-mem--b48684327925209747286bd6.md) | 171 | `result-track:b48684327925209747286bd6f3955a5b3eb8d3d455f1abe20bb2c2227b232fc4` |
| 19 | `lemma` | [Inc.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-vertex-mem--bdefde8e90e2b6d6344a1449.md) | 175 | `result-track:bdefde8e90e2b6d6344a14495a8f8ad69bf22d23d5042239d17e8114d2b265bb` |
| 20 | `lemma` | [IsLink.inc_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-inc-left--03d304b1a9dbf7fa25c23c32.md) | 179 | `result-track:03d304b1a9dbf7fa25c23c32c4a7c829bbb508da71b48d01d661216d77059ec1` |
| 21 | `lemma` | [IsLink.inc_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-inc-right--1fcbfa8e0b744fb819492beb.md) | 183 | `result-track:1fcbfa8e0b744fb819492beba46b555dee873d991519c63b39f53b1462901af2` |
| 22 | `lemma` | [Inc.eq_or_eq_of_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-eq-or-eq-of-islink--404e0bd4e56156d052b4a4ed.md) | 186 | `result-track:404e0bd4e56156d052b4a4ed9a07fd82c60b787ded9cf96bd1f17e453d1a8394` |
| 23 | `lemma` | [Inc.eq_of_isLink_of_ne_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-eq-of-islink-of-ne-left--58c0e5f3952d16a7b44ac9e0.md) | 189 | `result-track:58c0e5f3952d16a7b44ac9e0b2649d939d49a65a0ee1515bc22adf3ab0da45fc` |
| 24 | `lemma` | [IsLink.isLink_iff_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-islink-iff-eq--c9de55f8dd28d4443faf87d0.md) | 192 | `result-track:c9de55f8dd28d4443faf87d02896cb45ce1cd0ea1f4804148e759a821483dcb9` |
| 25 | `lemma` | [isLink_iff_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-iff-inc--7a55226532451a7f34d65421.md) | 196 | `result-track:7a55226532451a7f34d6542192516f6d16133da7c924c56c3e2e4c758db7eba2` |
| 26 | `def` | [Inc.other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-other--c5a0780be25b806dcc7dfde2.md) | 207 | `declaration-track:c5a0780be25b806dcc7dfde2ce03bfdc4a9fa49b05efd9307542c0607d1a2e64` |
| 27 | `lemma` | [Inc.isLink_other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-islink-other--be59476fe9983e8d522efdab.md) | 210 | `result-track:be59476fe9983e8d522efdab8bd8f8ac522643a2fa26ced5af011686c13c5891` |
| 28 | `lemma` | [Inc.inc_other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-inc-other--0fff19d2e730cc6767544015.md) | 214 | `result-track:0fff19d2e730cc6767544015fe58c8b2e356c89fc35349931923dcb3088c7a4a` |
| 29 | `lemma` | [Inc.eq_or_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-eq-or-eq-or-eq--d25aa3b055e2e1680492c610.md) | 217 | `result-track:d25aa3b055e2e1680492c610fe90dbf0a5d0ce8473a66cf7c2271d7b14acb863` |
| 30 | `def` | [IsLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat--c37f6e0f12cd08868f62b1ee.md) | 226 | `declaration-track:c37f6e0f12cd08868f62b1ee3884e3daac1f9df96462ce4f2b65ba2bbcf2305b` |
| 31 | `lemma` | [isLink_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-self-iff--9553ef8e16e701e1eab2e9d8.md) | 229 | `result-track:9553ef8e16e701e1eab2e9d81c5cd9a3f17c96edf989068210e73191e52fabce` |
| 32 | `lemma` | [IsLoopAt.inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-inc--bef4e06be2aeebb978a49c13.md) | 231 | `result-track:bef4e06be2aeebb978a49c1308af5fe1e99f181b1b014c9bb3132e8f6ae9aa2e` |
| 33 | `lemma` | [IsLoopAt.eq_of_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-eq-of-inc--7f2ca72bd76859694fedf4b1.md) | 234 | `result-track:7f2ca72bd76859694fedf4b181697649beaf3f8d4b5807237cc244495d45f7b5` |
| 34 | `lemma` | [IsLoopAt.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-edge-mem--ed14348b378297f473ce26b0.md) | 238 | `result-track:ed14348b378297f473ce26b00529f0234cb856c0e113f765334dfff027933129` |
| 35 | `lemma` | [IsLoopAt.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-vertex-mem--1bf20e8a6d6f9d49874748f6.md) | 242 | `result-track:1bf20e8a6d6f9d49874748f6b8436a653a48b166a88a47ddfac351c0dacd7455` |
| 36 | `def` | [IsNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat--6aab487523a0560fa0461e04.md) | 248 | `declaration-track:6aab487523a0560fa0461e045d1e0eb32e8a041f8ea1807c86172a66bb14ee13` |
| 37 | `lemma` | [IsNonloopAt.inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat-inc--d68ca749770888568d2682c3.md) | 250 | `result-track:d68ca749770888568d2682c3862fe34dc5bc9d817e571b869f97908d81b97201` |
| 38 | `lemma` | [IsNonloopAt.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat-edge-mem--6e6e0e21787da5bc308fcc78.md) | 254 | `result-track:6e6e0e21787da5bc308fcc78560eaab6b495042c0ce03fbcd1bcec564900f2d2` |
| 39 | `lemma` | [IsNonloopAt.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat-vertex-mem--d1921fba4a626161dd4efa6d.md) | 258 | `result-track:d1921fba4a626161dd4efa6d2253ffe176df661c0e041a053d731a0d03ea7003` |
| 40 | `lemma` | [IsLoopAt.not_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-not-isnonloopat--00350e21bbbb3f40852c8129.md) | 261 | `result-track:00350e21bbbb3f40852c8129a2e35bca3559d7570a825df7c0f668ebcefce01d` |
| 41 | `lemma` | [IsNonloopAt.not_isLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat-not-isloopat--aba77a77cca177665d00d9bb.md) | 266 | `result-track:aba77a77cca177665d00d9bb88bb130a5b8a2befed6fd27bce3f597eacc39fd6` |
| 42 | `lemma` | [isNonloopAt_iff_inc_not_isLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isnonloopat-iff-inc-not-isloopat--668eade515de9094cea2b4be.md) | 269 | `result-track:668eade515de9094cea2b4bec23a02183567f5c91261a9afb8eee57507449149` |
| 43 | `lemma` | [isLoopAt_iff_inc_not_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/isloopat-iff-inc-not-isnonloopat--91199c62e5c866f7769b52e7.md) | 272 | `result-track:91199c62e5c866f7769b52e75d444685282d12ef7262af67016c25bc8fcb14f9` |
| 44 | `lemma` | [Inc.isLoopAt_or_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/inc-isloopat-or-isnonloopat--abebabdeeb9f1e8dad199dbc.md) | 275 | `result-track:abebabdeeb9f1e8dad199dbc61e47c03313bd39f79b174ab75e751b6435ba51a` |
| 45 | `def` | [Adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/adj--f62c62d5c6ee4e425c1b854e.md) | 281 | `declaration-track:f62c62d5c6ee4e425c1b854edc630042758e374699734719a821ef576db780b6` |
| 46 | `lemma` | [Adj.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/adj-symm--7bbddc0fb69068bc68975601.md) | 283 | `result-track:7bbddc0fb69068bc689756013697415929370813746952b75813071e4b903891` |
| 47 | `lemma` | [adj_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/adj-comm--b5d1ca05e9bb8fb2749e3166.md) | 286 | `result-track:b5d1ca05e9bb8fb2749e3166db8a2d787c828d88caa7e23818c363a9c9811fff` |
| 48 | `lemma` | [Adj.left_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/adj-left-mem--c579f6a4eeda0d323ae61c3c.md) | 290 | `result-track:c579f6a4eeda0d323ae61c3ceb92d518fc990093d6552c813f6dee7d8a4a7613` |
| 49 | `lemma` | [Adj.right_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/adj-right-mem--c6a4f991b71084facc9716dc.md) | 294 | `result-track:c6a4f991b71084facc9716dcde7e5a660624efd6968d1322fc39d7844b2310a8` |
| 50 | `lemma` | [IsLink.adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/islink-adj--02e8fadeb3e61c36ce220a24.md) | 297 | `result-track:02e8fadeb3e61c36ce220a24c59fdcf5774d77bd31e2ffa5cfac415fc59fe5e6` |
| 51 | `lemma` | [mk_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/mk-eq-self--2eb91fd1c7f977d7c1b6de06.md) | 305 | `result-track:2eb91fd1c7f977d7c1b6de06eb0225bdb12f67dc0c90f8c047f9eef32cd31bf3` |
| 52 | `lemma` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/ext--366b6f832f0d4ab615e713fa.md) | 318 | `result-track:366b6f832f0d4ab615e713fa59f6c895efbc87698d0cb0cb1798f239d66e093c` |
| 53 | `lemma` | [ext_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean/declarations/ext-inc--fb48eb3a1ea617c48851d4e9.md) | 327 | `result-track:fb48eb3a1ea617c48851d4e938905b0dbb964de5fe31e5d688e5225fff9742aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
