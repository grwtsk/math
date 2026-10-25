# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrderIsoNat.Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0aa729a63612b8d577bb05dfc5c1bb6966e2524`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Denumerable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/natlt--4005703d00ab281c7b56d29c.md) | 36 | `declaration-track:4005703d00ab281c7b56d29c22ccda91b7fa618f144b9dfaea37e3501a33a390` |
| 2 | `theorem` | [coe_natLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/coe-natlt--eb75b2bef1b49312be03f571.md) | 40 | `result-track:eb75b2bef1b49312be03f571331cb3ba86676969a8bdc743301a54b7e0f29e60` |
| 3 | `def` | [natGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/natgt--d56a2a55b70b46349f22ff39.md) | 44 | `declaration-track:d56a2a55b70b46349f22ff395aa9eac4d60e110ef96dea5d515d3616b4fb41c3` |
| 4 | `theorem` | [coe_natGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/coe-natgt--71eacb3daa1cad95ceffc99e.md) | 49 | `result-track:71eacb3daa1cad95ceffc99e77a7970795c2f21a9a2f8f0981df03a732e4fbef` |
| 5 | `theorem` | [exists_not_acc_lt_of_not_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-not-acc-lt-of-not-acc--d88e7d27bfbdc5f2e5d258c2.md) | 52 | `result-track:d88e7d27bfbdc5f2e5d258c23dcaa5e5b87b4bc16f8e8a8ad9f7a80a5413dc03` |
| 6 | `theorem` | [acc_iff_no_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/acc-iff-no-decreasing-seq--ecd867db7b3bd631d3342825.md) | 59 | `result-track:ecd867db7b3bd631d33428256536b40333d1ec8e4f6ab4d70937e308cc89219c` |
| 7 | `theorem` | [not_acc_of_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/not-acc-of-decreasing-seq--f059db7b5421bd3d7e24c127.md) | 76 | `result-track:f059db7b5421bd3d7e24c127515784c256876db9265438f7990eeb46c9ab4932` |
| 8 | `theorem` | [wellFounded_iff_no_descending_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfounded-iff-no-descending-seq--44ce3699ef4420b965e3ea98.md) | 83 | `result-track:44ce3699ef4420b965e3ea98290185d6639d2562fef8bf4cba1455ee0f16d532` |
| 9 | `theorem` | [not_wellFounded_of_decreasing_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/not-wellfounded-of-decreasing-seq--7f4fbee0df3c4173e169afa4.md) | 91 | `result-track:7f4fbee0df3c4173e169afa4dc5144d021a136f7b7ca5319c096cca2752406ad` |
| 10 | `theorem` | [not_strictAnti_of_wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/not-strictanti-of-wellfoundedlt--7c4561b6b5154089232b2fb0.md) | 97 | `result-track:7c4561b6b5154089232b2fb0a2c17f038b2958257fb021e85d2d96f08c0457fd` |
| 11 | `theorem` | [not_strictMono_of_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/not-strictmono-of-wellfoundedgt--3db9634ca0ce084d8317e36c.md) | 101 | `result-track:3db9634ca0ce084d8317e36ca95509507717a69d0a640f6741a8decffbe24d00` |
| 12 | `def` | [orderEmbeddingOfSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/orderembeddingofset--f74bf38d4684549bc8a74e8a.md) | 110 | `declaration-track:f74bf38d4684549bc8a74e8a334647663f2bd8d973d918a92b8398c141eb0838` |
| 13 | `def` | [Subtype.orderIsoOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/subtype-orderisoofnat--653684b959d3ce5f5ecf3d5b.md) | 117 | `declaration-track:653684b959d3ce5f5ecf3d5b4041fb0dc19988ee87be4e9377af88662e1e8007` |
| 14 | `theorem` | [coe_orderEmbeddingOfSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/coe-orderembeddingofset--18c911c66df9b317848719f9.md) | 128 | `result-track:18c911c66df9b317848719f9ba54e80e8d22ad7228b1d52ebba598ae7ad69d33` |
| 15 | `theorem` | [orderEmbeddingOfSet_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/orderembeddingofset-apply--5485a3387191f06780a78145.md) | 132 | `result-track:5485a3387191f06780a7814551272f454ed0780171e60cf47d915d145f7aced8` |
| 16 | `theorem` | [Subtype.orderIsoOfNat_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/subtype-orderisoofnat-apply--37796ab6711dacd092465bf3.md) | 137 | `result-track:37796ab6711dacd092465bf3edcf5509dd68b58dcf18095618ab4ff3c640f87e` |
| 17 | `theorem` | [orderEmbeddingOfSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/orderembeddingofset-range--268d267c120dcc50185378d6.md) | 143 | `result-track:268d267c120dcc50185378d6f18582e3003a668583fc2f6e1ce9040ef6a4b307` |
| 18 | `theorem` | [exists_subseq_of_forall_mem_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-subseq-of-forall-mem-union--b148f6317bef228bede29848.md) | 147 | `result-track:b148f6317bef228bede298482ba9534f7f37342f3128c5ccc438f720f55dc8b1` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-increasing-or-nonincreasing-subseq--96d5e254271812c33b6b204a.md) | 159 | `result-track:96d5e254271812c33b6b204a356c87d6a99a1deeb23c9f302e6c7d625506d437` |
| 20 | `theorem` | [exists_increasing_or_nonincreasing_subseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-increasing-or-nonincreasing-subseq--e97b7e21818138dc076f481f.md) | 194 | `result-track:e97b7e21818138dc076f481fb79915997e90cf5a171952b720797cfd4d984db6` |
| 21 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--e59b8d5e21e3621de4148cee.md) | 211 | `result-track:e59b8d5e21e3621de4148ceeffe4b7c1b6b7bad79feb3b03180487c3ed3b1d7a` |
| 22 | `theorem` | [WellFoundedGT.monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfoundedgt-monotone-chain-condition--dfce2abf7305f232d9589a9a.md) | 221 | `result-track:dfce2abf7305f232d9589a9a60ce59ae82f3882e0685e14357d65cf8ce9431dc` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--bfd1a982f2391d822fe80a9f.md) | 228 | `result-track:bfd1a982f2391d822fe80a9ffc8bc43463ddc5955bde84907e39baf8639451df` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfoundedgt-monotone-chain-condition--bf259a698ff09a6c341d27a5.md) | 235 | `result-track:bf259a698ff09a6c341d27a52bb7431c4a90a9211c66c74e375e53788eb6d2fe` |
| 25 | `theorem` | [WellFounded.monotone_chain_condition'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfounded-monotone-chain-condition--d333a853273a20880e1a62fc.md) | 240 | `result-track:d333a853273a20880e1a62fcc49aa3a7f42bc6b27560d7b91fc32aa1b023fee3` |
| 26 | `theorem` | [WellFounded.monotone_chain_condition](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfounded-monotone-chain-condition--99d54cf1b98de272790ce3b8.md) | 246 | `result-track:99d54cf1b98de272790ce3b8d4f89d716b410dceb51c4faa77a69f8eae5441a0` |
| 27 | `def` | [monotonicSequenceLimitIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/monotonicsequencelimitindex--9c59643f9bc4383364ff7fc0.md) | 255 | `declaration-track:9c59643f9bc4383364ff7fc08a38d12b28b9f396513a9c86c0ecd49c8224acda` |
| 28 | `def` | [monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/monotonicsequencelimit--3b6a0e9eba7da34652af1287.md) | 260 | `declaration-track:3b6a0e9eba7da34652af1287c32749559fe92e0df0f83cd2815073afd43a08a1` |
| 29 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfoundedgt-isup-eq-monotonicsequencelimit--24deb4d9fd569060bd948a06.md) | 264 | `result-track:24deb4d9fd569060bd948a06945ea022d004958ff1c139b0aee6e1df3a09d435` |
| 30 | `theorem` | [WellFounded.iSup_eq_monotonicSequenceLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/wellfounded-isup-eq-monotonicsequencelimit--102ad95e36fc4b571269663d.md) | 274 | `result-track:102ad95e36fc4b571269663daa010c79062632301179dd15fa70f7abfd802bde` |
| 31 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt--123b926fee6ed4f12581886c.md) | 280 | `result-track:123b926fee6ed4f12581886cf12172fec049933757f8a3bb442cd2f4ce5c40d9` |
| 32 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le--36795f73d748eb607735e57d.md) | 297 | `result-track:36795f73d748eb607735e57daf203ad1ec81b8ca4922494bf42751bd99ecc048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
