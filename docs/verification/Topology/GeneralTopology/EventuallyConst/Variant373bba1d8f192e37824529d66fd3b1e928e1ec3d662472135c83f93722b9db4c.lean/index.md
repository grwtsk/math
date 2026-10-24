# Verification target: GRWTSK.Topology.GeneralTopology.EventuallyConst.Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379daabf94826ab49743c6b148fd50a984e01bd1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379daabf94826ab49743c6b148fd50a984e01bd1`.

Source path: `GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Subsingleton` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EventuallyConst](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst--89c6c03066328df5a54cbd2b.md) | 39 | `declaration-track:89c6c03066328df5a54cbd2b41acfbc70a3e3f41a67fba13b9efc77678d12cbb` |
| 2 | `theorem` | [HasBasis.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/hasbasis-eventuallyconst-iff--bc9cf2f34ea714f24ed82194.md) | 41 | `result-track:bc9cf2f34ea714f24ed82194cef12a23aa6cc7ba9c89884bc680c908c7eddb0a` |
| 3 | `theorem` | [HasBasis.eventuallyConst_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/hasbasis-eventuallyconst-iff--1f201bb99f13c02217d12104.md) | 45 | `result-track:1f201bb99f13c02217d12104863a64f6bdf3306a49cf6aad04f2ab3e64496393` |
| 4 | `lemma` | [eventuallyConst_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-iff-tendsto--8ac00074df9d062b147f320e.md) | 51 | `result-track:8ac00074df9d062b147f320e0283103542e2003e722d5e1c13b4e1d60e203f3d` |
| 5 | `theorem` | [EventuallyConst.of_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-of-tendsto--6d03c5e4c0fdf28c82963bb5.md) | 57 | `result-track:6d03c5e4c0fdf28c82963bb57aa39f5c0ed951bb22e24d3bd5e8c302c5162eac` |
| 6 | `theorem` | [eventuallyConst_iff_exists_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-iff-exists-eventuallyeq--d58b29382672380079afee05.md) | 60 | `result-track:d58b29382672380079afee05d40433f5bcbb9a7d502f71fa093f295ff577f7d6` |
| 7 | `theorem` | [eventuallyConst_pred'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-pred--b183f070e6744fc4fc473e19.md) | 66 | `result-track:b183f070e6744fc4fc473e19abd9c9047cd210708e721c788f812387302b1123` |
| 8 | `theorem` | [eventuallyConst_pred](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-pred--9c20d888cb911017f970a1d2.md) | 70 | `result-track:9c20d888cb911017f970a1d2d5bcaaa28a2392160e2264252f2857c2847787f2` |
| 9 | `theorem` | [eventuallyConst_set'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-set--2a64b0f460760f7f9d042b60.md) | 74 | `result-track:2a64b0f460760f7f9d042b60e2009d4e1c4ecf5f133e3e637deb5e4fb437798e` |
| 10 | `theorem` | [eventuallyConst_set](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-set--83a9342d097484cff19855a5.md) | 78 | `result-track:83a9342d097484cff19855a5b52529952255f87a04456506cf56d33a988e3935` |
| 11 | `theorem` | [eventuallyConst_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-preimage--7db84c5a1aa68153ce3ebe06.md) | 82 | `result-track:7db84c5a1aa68153ce3ebe0655010fda9f33b04468aa9a46a3228cd490e02f67` |
| 12 | `theorem` | [EventuallyEq.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyeq-eventuallyconst-iff--82dadf9d8cf40cd0d0d203b6.md) | 86 | `result-track:82dadf9d8cf40cd0d0d203b63eee34f4a6206efd50c9e3b6f1ea2d28a8b71665` |
| 13 | `theorem` | [eventuallyConst_id](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-id--060ca7633386f8ad840c800f.md) | 90 | `result-track:060ca7633386f8ad840c800f36cf5da42a88daa6f246feeafd82c6afd8018b23` |
| 14 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/bot--9b8e9a6c86195f9b8b9cce2a.md) | 94 | `result-track:9b8e9a6c86195f9b8b9cce2a9e3a2091a2a638654814a6282a40d30ef6b08f8e` |
| 15 | `lemma` | [const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/const--2d947be22ed4e4e2f68b6ee7.md) | 97 | `result-track:2d947be22ed4e4e2f68b6ee76bbde4608c5014262c1247d65d8a258f2576fe16` |
| 16 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/congr--0a5b7070a3ddae48348c2168.md) | 100 | `result-track:0a5b7070a3ddae48348c21680e3eba557c620461c2f026254c40f2180182769f` |
| 17 | `lemma` | [of_subsingleton_right](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/of-subsingleton-right--c7f8f0c6cb61cb4f6dd5490c.md) | 104 | `result-track:c7f8f0c6cb61cb4f6dd5490c9fa17d65be55c48747734fa1d05f8a74f8081bb7` |
| 18 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/anti--cf87580abb3cbb8f524bb83e.md) | 106 | `result-track:cf87580abb3cbb8f524bb83e58a821368da6cc8513a032b1497391be8bda356e` |
| 19 | `lemma` | [of_subsingleton_left](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/of-subsingleton-left--a6a12d803d9e89dbc6c5ad2c.md) | 110 | `result-track:a6a12d803d9e89dbc6c5ad2c55630c76290611a072aa1775b92abfd9cdfb644c` |
| 20 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/comp--f6bf499344cd188745507768.md) | 113 | `result-track:f6bf499344cd18874550776888b281f78d0c1fa3433437554d949f519f14d335` |
| 21 | `lemma` | [inv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/inv--d17f746ea8836720ce03d75d.md) | 116 | `result-track:d17f746ea8836720ce03d75dfa9c01993234f1ffd882b226a38344a97863d01d` |
| 22 | `lemma` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/comp-tendsto--24e265b7d3c08e853cc69c33.md) | 118 | `result-track:24e265b7d3c08e853cc69c3340700fdd9fa7f3648d3ccc1793e12ed33830b14f` |
| 23 | `lemma` | [apply](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/apply--b3cbec6bcaae0f0ffa8b48c2.md) | 122 | `result-track:b3cbec6bcaae0f0ffa8b48c2fb323c26ec9b30c9bb8fe297d334c1bee682d245` |
| 24 | `lemma` | [comp₂](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/comp--038e281fa690e99a526a6d2a.md) | 126 | `result-track:038e281fa690e99a526a6d2af47c39a779144de704bd99f3bec4d8226c9ef80e` |
| 25 | `lemma` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/prodmk--6230465c33aa580952980f5c.md) | 131 | `result-track:6230465c33aa580952980f5c4c28280baffb2314ca875b40bbb7157dc24fa098` |
| 26 | `lemma` | [mul](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/mul--8859cf0778f660caac3a3588.md) | 139 | `result-track:8859cf0778f660caac3a35881a9f7e6fd71df87cf1e7aa7509885198a94708c2` |
| 27 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/of-mulindicator-const--6b614a8936bd7fa1d906bed5.md) | 146 | `result-track:6b614a8936bd7fa1d906bed518ae08c131a9521ae07c1f92bdde87470db6e1b6` |
| 28 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/mulindicator-const--877ccd28fb1b71d46e1a3e89.md) | 151 | `result-track:877ccd28fb1b71d46e1a3e8919260269a17405279f11c492605a53063033580d` |
| 29 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/mulindicator-const-iff-of-ne--7595464aca223be760e844ac.md) | 156 | `result-track:7595464aca223be760e844ac454ffcd70b21dde1c2a06d73241403ec77713c64` |
| 30 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/mulindicator-const-iff--55cc2002343aaddf6e9a8459.md) | 161 | `result-track:55cc2002343aaddf6e9a84591fd9d1e5bda7d67deef360065b52ab53b9df90e7` |
| 31 | `lemma` | [eventuallyConst_atTop](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-attop--3b9b6f5055d32c4ddc5c6305.md) | 167 | `result-track:3b9b6f5055d32c4ddc5c6305e89c4309fadc0f85c0013cf399d9b9fc7c92bb9d` |
| 32 | `lemma` | [eventuallyConst_atTop_nat](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variant373bba1d8f192e37824529d66fd3b1e928e1ec3d662472135c83f93722b9db4c.lean/declarations/eventuallyconst-attop-nat--e5d042e0355ea288b934bf24.md) | 172 | `result-track:e5d042e0355ea288b934bf241ded2504cff0ba3b63d7f84138d4104e18ea76e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
