# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Finite.Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a06d0488a34998fcd6cb0eb9cf06d52aa11cbfb5",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a06d0488a34998fcd6cb0eb9cf06d52aa11cbfb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card--9c1691b97036f4af94f34177.md) | 45 | `declaration-track:9c1691b97036f4af94f3417768f00a5b446aa09e85487f26dc759feaba16453e` |
| 2 | `theorem` | [card_eq_fintype_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-fintype-card--6d76c0f4307e9fc4c189e606.md) | 50 | `result-track:6d76c0f4307e9fc4c189e606e92927b1c1f09712605a79ed9ed13b57a2d8054b` |
| 3 | `theorem` | [card_eq_zero_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-zero-of-infinite--3d84ae8b56c63c934bd47c0d.md) | 55 | `result-track:3d84ae8b56c63c934bd47c0dca2aa1b0eec92c564ebce6c54f6d845c621c500c` |
| 4 | `theorem` | [finite_of_card_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/finite-of-card-ne-zero--6a5683c1dd1be6fa352403da.md) | 59 | `result-track:6a5683c1dd1be6fa352403da397db4c9d1ee3d9039828605818ac9d091b395f1` |
| 5 | `theorem` | [card_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-congr--06f8f756f5aea136176a584e.md) | 63 | `result-track:06f8f756f5aea136176a584e4002c07235aaaa6819b909d9506a435feb90eb59` |
| 6 | `theorem` | [card_eq_of_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-of-bijective--44b13165966f703b165a3bf3.md) | 67 | `result-track:44b13165966f703b165a3bf3b99c870d72969b99335d2a38f0fb1188b970596f` |
| 7 | `theorem` | [card_eq_of_equiv_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-of-equiv-fin--9d65fcf0c6ab952cf6edefda.md) | 71 | `result-track:9d65fcf0c6ab952cf6edefda14984779a2e11f2b003a5e8ac14194c9c4559a6f` |
| 8 | `def` | [equivFinOfCardPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/equivfinofcardpos--6273e3e63e849fa9c81f43be.md) | 77 | `declaration-track:6273e3e63e849fa9c81f43be26e9b1c78cca9a6e96803eabcbe601724c0972cd` |
| 9 | `theorem` | [card_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-of-subsingleton--ebd40a3770f2e1146b3002a8.md) | 83 | `result-track:ebd40a3770f2e1146b3002a8efa1a85beb98d2725807c58bf303c11840fcad64` |
| 10 | `theorem` | [card_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-unique--b2fe5ad7fa004793f142fc1a.md) | 89 | `result-track:b2fe5ad7fa004793f142fc1a9df3fd750accb464d831cc02b05584cce720535c` |
| 11 | `theorem` | [card_eq_one_iff_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-one-iff-unique--a264cb9417aa10f5589d5beb.md) | 93 | `result-track:a264cb9417aa10f5589d5beb290313c0752af72341bfe47a947a2bc0c8bb0af6` |
| 12 | `theorem` | [card_eq_two_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-two-iff--de24732534ee0b982acb9691.md) | 97 | `result-track:de24732534ee0b982acb9691791bec62b9e998601a74a12da6349b8be8a32a43` |
| 13 | `theorem` | [card_eq_two_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-two-iff--0c017267580ac9b165ae3980.md) | 101 | `result-track:0c017267580ac9b165ae39805eaa523ba6788d7bac42d3a5be4271c353d8a823` |
| 14 | `theorem` | [card_of_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-of-isempty--d03f00992c567e72a4842ac5.md) | 105 | `result-track:d03f00992c567e72a4842ac5476c9ff83235b3ffaab2ff32013762a806e5dd86` |
| 15 | `theorem` | [card_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-sum--2b22a86146c3112b022fbaf8.md) | 109 | `result-track:2b22a86146c3112b022fbaf8a128e393610c5c4d300c5863a68ed8d49085eecf` |
| 16 | `theorem` | [card_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-prod--502602b9092775aa6ce141c2.md) | 115 | `result-track:502602b9092775aa6ce141c24b5f2c66cec726d1ad6204f33095bc0474d4954f` |
| 17 | `theorem` | [card_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-ulift--7479da6dd83395efd82fc4cb.md) | 120 | `result-track:7479da6dd83395efd82fc4cbd0c0dc1966be26007fb480665ddc4d5fb2c5ad41` |
| 18 | `theorem` | [card_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-plift--683f88cccce426308a2924c6.md) | 125 | `result-track:683f88cccce426308a2924c629782af67fa1da364031c0f5fa6a8d11797539aa` |
| 19 | `theorem` | [card_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-pi--4747c76a795a33bc8f820a0e.md) | 129 | `result-track:4747c76a795a33bc8f820a0e0cbc54927cbba376a5c98e997998b80a22ca7195` |
| 20 | `theorem` | [card_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-fun--d7ae327151c8dde79e6d22d8.md) | 133 | `result-track:d7ae327151c8dde79e6d22d80fee167dcdbf598e14177da5090db2aa8ecc56c8` |
| 21 | `theorem` | [card_zmod](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-zmod--c7ee77cec4d15cc23ac0f36a.md) | 139 | `result-track:c7ee77cec4d15cc23ac0f36a7c220afe6c6612069c02ed667baa5efad5997407` |
| 22 | `def` | [card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card--53444c8d8005efc967f6fa73.md) | 151 | `declaration-track:53444c8d8005efc967f6fa739df425fabfc43076e28e90a8afef615dc6a57c96` |
| 23 | `theorem` | [card_eq_coe_fintype_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-coe-fintype-card--cf93026387d3ddc1d25b00af.md) | 156 | `result-track:cf93026387d3ddc1d25b00af8f386d6f4b4b09399989e237f30c8c474a0c70d0` |
| 24 | `theorem` | [card_eq_top_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-top-of-infinite--43b7e40dd286eb77d6c9b456.md) | 161 | `result-track:43b7e40dd286eb77d6c9b4568dd5039654aaf5268b265031c5f53ed769540e06` |
| 25 | `theorem` | [card_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-sum--82b9dc45945c41d816ff98af.md) | 166 | `result-track:82b9dc45945c41d816ff98af19e632852b29247fd8cee8bc671b2ae7bccdb4d7` |
| 26 | `theorem` | [card_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-congr--312bca5de93f070b3c0cef4f.md) | 170 | `result-track:312bca5de93f070b3c0cef4f7da3ad8e8918802b0a7d1a7ddc27611e40aa124f` |
| 27 | `theorem` | [card_uLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-ulift--d33eae3779c35570fe5d0f26.md) | 174 | `result-track:d33eae3779c35570fe5d0f2602ed956422cd51f60e2825a8681aee3688299f1a` |
| 28 | `theorem` | [card_pLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-plift--48970c84e5690f0a07bf12e6.md) | 179 | `result-track:48970c84e5690f0a07bf12e6f406c7c68e657e5505cd79fcf07d578e28bd609e` |
| 29 | `theorem` | [card_image_of_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-image-of-injon--0c8d067a1b545a88e53a93e1.md) | 183 | `result-track:0c8d067a1b545a88e53a93e10efa27a389bc05306f7238fdb07c9c18556b641e` |
| 30 | `theorem` | [card_image_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-image-of-injective--3e410d1b4ab8b275a1bff5a2.md) | 188 | `result-track:3e410d1b4ab8b275a1bff5a2868cc061f7d2ae0f56dc31ccd671f1ec58b89fb9` |
| 31 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.natCast_le_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--528648bb353915606510453b.md) | 195 | `result-track:528648bb353915606510453beba6a13d2071df1aa178c8896fdb2bf17b086d7f` |
| 32 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_le_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--13eecf98a0782524021799c0.md) | 201 | `result-track:13eecf98a0782524021799c07cba5681b145460b943eddf59fae95761653c40e` |
| 33 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.natCast_eq_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--f629ec2fd9ceaf1df18b181c.md) | 207 | `result-track:f629ec2fd9ceaf1df18b181c3f7e8bd524e55f8020376f46ac96619a64a7e94b` |
| 34 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_eq_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--310f9f669624c9bc2ac93b42.md) | 214 | `result-track:310f9f669624c9bc2ac93b42c81998465ca59b29b10bc3a4b1315fe31b66a911` |
| 35 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.natCast_lt_toPartENat_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--3b5e4d6e19a860a085d05a74.md) | 220 | `result-track:3b5e4d6e19a860a085d05a74acc7c5ebb3793eb679e0977ccb5c185e74a943a8` |
| 36 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.Cardinal.toPartENat_lt_natCast_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-card-variant012d1c91--3633db3b943e8cb6eadc595e.md) | 226 | `result-track:3633db3b943e8cb6eadc595e005328e5063f95dd40d60cf0be35d9625c05f060` |
| 37 | `theorem` | [card_eq_zero_iff_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-eq-zero-iff-empty--3099f4895398563c0ed1a793.md) | 231 | `result-track:3099f4895398563c0ed1a793b761021ce025183190bcb742336bc95e6cbc1702` |
| 38 | `theorem` | [card_le_one_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/card-le-one-iff-subsingleton--fc28b44a16088a95e49b297a.md) | 238 | `result-track:fc28b44a16088a95e49b297ac4d130814ae6f23712c646fcd76f0285d48d5aae` |
| 39 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant5fbe5f61d3fed44ba730e7e22fcb694f9080bc0b8417e2208de92ddff87424d3.lean/declarations/one-lt-card-iff-nontrivial--e8a1443fff71d077241f2c68.md) | 245 | `result-track:e8a1443fff71d077241f2c68b44b5f36da5027823df26490d427a7bb5ce4b266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
