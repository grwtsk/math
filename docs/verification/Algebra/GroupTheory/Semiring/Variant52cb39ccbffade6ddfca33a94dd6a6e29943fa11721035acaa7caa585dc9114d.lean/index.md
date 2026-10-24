# Verification target: GRWTSK.Algebra.GroupTheory.Semiring.Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf5b2f203864c8a9e5488b5c255c516948d2481",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf5b2f203864c8a9e5488b5c255c516948d2481`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Kleene` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SetSemiring](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/setsemiring--9c2d77ad8e2150a05e9ee0df.md) | 31 | `declaration-track:9c2d77ad8e2150a05e9ee0df17f3f29712d0a6aaacf48bbdcb2a02cfa70953ae` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--bf0484b20d011a7c529c8f95.md) | 34 | `declaration-track:bf0484b20d011a7c529c8f95528c59f33509d5f01e1b3f0c0e542c86ebee5396` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--5f3317e67c1eaec254ae7bb4.md) | 37 | `declaration-track:5f3317e67c1eaec254ae7bb4f4da87c53fb42df6f1955b66d5c31be741f4c728` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--133148f92914db1337eaa686.md) | 40 | `declaration-track:133148f92914db1337eaa686c960edf4a8637995b259fe8db4678e3ae8465dda` |
| 5 | `def` | [Set.up](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/set-up--ba5f0fb5ba405ec0ff4d44a4.md) | 44 | `declaration-track:ba5f0fb5ba405ec0ff4d44a439be27cde63ad4a7391438b5e694b3d2be370f56` |
| 6 | `def` | [down](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down--06d7a86bba4eb06034b2d0ab.md) | 50 | `declaration-track:06d7a86bba4eb06034b2d0abba3fa15b520ec9b8f10b691a76c270ae4aee5404` |
| 7 | `theorem` | [down_up](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-up--b88d61b5c83042426a826250.md) | 57 | `result-track:b88d61b5c83042426a826250d4de5d593189ef91b638089a254b6071d7a18e81` |
| 8 | `theorem` | [up_down](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/up-down--179e682fa3d70890b4b63202.md) | 61 | `result-track:179e682fa3d70890b4b632025f196319f2ab589955ad5ab356e5d6192659418c` |
| 9 | `theorem` | [up_le_up](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/up-le-up--2df80a4dc2618e4fc9221bd5.md) | 65 | `result-track:2df80a4dc2618e4fc9221bd521cd2104fa44580b37ffa3333a133e434c01f9ab` |
| 10 | `theorem` | [up_lt_up](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/up-lt-up--0541392fab283539f2bddd13.md) | 68 | `result-track:0541392fab283539f2bddd1312e9bcde0dc62187801b600bb696718552ff9104` |
| 11 | `theorem` | [down_subset_down](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-subset-down--707f5ebd956549c6ab2bdbfa.md) | 72 | `result-track:707f5ebd956549c6ab2bdbfadbbdc06a8d329f1fc6c2a5f97787ee0a805c7377` |
| 12 | `theorem` | [down_ssubset_down](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-ssubset-down--9401691019fee3c78cba180d.md) | 76 | `result-track:9401691019fee3c78cba180d5f3fbffc358a4d362ec07d88ae4962d6ae8a0fe6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--799b5430aaec3fac218a5eea.md) | 79 | `declaration-track:799b5430aaec3fac218a5eea20cad77f1766f000e308375e37eab15024df989d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--ec3d954bd57a06c1385d8d5b.md) | 81 | `declaration-track:ec3d954bd57a06c1385d8d5b80607150b62b9789f9c8f28e17e9cbf57efd62ba` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--a914fe2d38dbb1cc3b6a5434.md) | 83 | `declaration-track:a914fe2d38dbb1cc3b6a5434067856ef0069d6b57b2704e9de5125f407f61e84` |
| 16 | `theorem` | [zero_def](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/zero-def--5079f4ab5451c40802b7119a.md) | 90 | `result-track:5079f4ab5451c40802b7119a0b56cd1fa55dca596aafc421b095edb4dc12aa60` |
| 17 | `theorem` | [down_zero](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-zero--4d491122677e5639420e1660.md) | 94 | `result-track:4d491122677e5639420e1660140dc483d270b193f26ca6d2268b6c871e68c6fa` |
| 18 | `theorem` | [_root_.Set.up_empty](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/root-set-up-empty--2fc8854b8b5b16fa43fb7c6c.md) | 98 | `result-track:2fc8854b8b5b16fa43fb7c6c56fc66fc9bb6768e03355f65f26abcc9e9b52057` |
| 19 | `theorem` | [add_def](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/add-def--e5803dafba5524fb5b2cd703.md) | 101 | `result-track:e5803dafba5524fb5b2cd703f77f6e7c553a819ba6b63c0daefc177e2b56e6d0` |
| 20 | `theorem` | [down_add](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-add--fdf6c4d4aadb65ccf09e74fd.md) | 105 | `result-track:fdf6c4d4aadb65ccf09e74fdc2e49fe588cff3932d102d228de227dc620946db` |
| 21 | `theorem` | [_root_.Set.up_union](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/root-set-up-union--9d48fd7f81b65162a15fc279.md) | 109 | `result-track:9d48fd7f81b65162a15fc279245876d0f14a3918297e1c19c542b74075639590` |
| 22 | `instance` | [addLeftMono](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/addleftmono--f9d9c523d5a9a2a7d0fc514a.md) | 114 | `declaration-track:f9d9c523d5a9a2a7d0fc514a70e084d250d6560c4e3dd215becbb052ea0342cb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--68cdff7911f8eda1ca1fa951.md) | 121 | `declaration-track:68cdff7911f8eda1ca1fa951b3273cf194d63edfdcc67443fa9007a3d63e56d0` |
| 24 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/mul-def--51257a30ea5d22fe3d780e71.md) | 129 | `result-track:51257a30ea5d22fe3d780e71fdccfbc90bbbb5f9be46443024a4d93cecd070e5` |
| 25 | `theorem` | [down_mul](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-mul--6c5b9ac3d5c4e51ffe9fdd38.md) | 133 | `result-track:6c5b9ac3d5c4e51ffe9fdd38520624e7e900c97c251c95d54b728b32d30999d6` |
| 26 | `theorem` | [_root_.Set.up_mul](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/root-set-up-mul--b768c4f7535e942fcf33adab.md) | 137 | `result-track:b768c4f7535e942fcf33adabfd035d90874b95ac8189aad8ba3c75bb0a0a2400` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--704f6bb6fce359ef8fe949f2.md) | 140 | `declaration-track:704f6bb6fce359ef8fe949f2f6be70c526f7a1db6fa516f8f0c2a082e1c79f5d` |
| 28 | `instance` | [mulLeftMono](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/mulleftmono--2ca4de4d646a75c4ad9b75d3.md) | 146 | `declaration-track:2ca4de4d646a75c4ad9b75d398db5eca4d76b3e8916dc6e97bddd235cc82ab7c` |
| 29 | `instance` | [mulRightMono](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/mulrightmono--31a0d420350c37a4114b1b98.md) | 149 | `declaration-track:31a0d420350c37a4114b1b9843c78551753f71fafa8e3b55064cf37ba8dcf677` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--605bdaabde126ce2b79913f2.md) | 159 | `declaration-track:605bdaabde126ce2b79913f293322581dd4bc7dc55f1d79b9f53409efe595c1e` |
| 31 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/one-def--4ea9f906198a205dd15c1575.md) | 161 | `result-track:4ea9f906198a205dd15c15750a68f9e80dd32a57f6b6469cec0503ab6cf600a1` |
| 32 | `theorem` | [down_one](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-one--afb9245962fc714dc227c7db.md) | 165 | `result-track:afb9245962fc714dc227c7db648ea612768d878e746b2a2160e07d8156950319` |
| 33 | `theorem` | [_root_.Set.up_one](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/root-set-up-one--f62823bf06d5867ae1bf3414.md) | 169 | `result-track:f62823bf06d5867ae1bf341496907dc2b2a22e023e3c674cbf1b651b2e765fc3` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--89c97578178a3ad01da403f3.md) | 174 | `declaration-track:89c97578178a3ad01da403f36ef2cbed439f91027bc68203c6f45fed8612afc1` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--00ed25e6ec01f394953d5fdd.md) | 178 | `declaration-track:00ed25e6ec01f394953d5fdd12a191020b656682e1663efd318e28118da69f90` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--1cf1a79d08c0db78d3208d53.md) | 181 | `declaration-track:1cf1a79d08c0db78d3208d531ad1d497aa072decda092cb55dbf50a96a84df10` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--625680558b9de818035e97e1.md) | 186 | `declaration-track:625680558b9de818035e97e1a469002c262e8164dd0040b92654b42dc2dae48e` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--0ac93c24605c04ca4d3fa150.md) | 189 | `declaration-track:0ac93c24605c04ca4d3fa1501069ff3fece4e3ad5f40f5e6b75fdd62ca6e8f18` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--6a710b0201e1ff04e1a17819.md) | 193 | `declaration-track:6a710b0201e1ff04e1a17819ff4496d5fec53d989c799eea4dc3cfa9925f8873` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--08c46b6578f1fd2925230ba0.md) | 196 | `declaration-track:08c46b6578f1fd2925230ba09f86e4260e1663dd4ffd231828f48ef64ae1777d` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/instance--e3e29343ec59a9df7cd43758.md) | 200 | `declaration-track:e3e29343ec59a9df7cd437589530b3e22dad6ad94d83a58dda4d4f26b5322dcd` |
| 42 | `def` | [imageHom](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/imagehom--bb18264fe4b4cda242223bbb.md) | 205 | `declaration-track:bb18264fe4b4cda242223bbb158be8d15ee802136abc093c7b58dfbcd2d1a424` |
| 43 | `lemma` | [imageHom_def](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/imagehom-def--61dc7f1e13445e6b72838b69.md) | 214 | `result-track:61dc7f1e13445e6b72838b694c4acc70ea23e7656adeccfa82f619f3efa4e98b` |
| 44 | `lemma` | [down_imageHom](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/down-imagehom--e4dba80da4fd298953a9185b.md) | 219 | `result-track:e4dba80da4fd298953a9185b6962997d74fefb955427e7ea9aa66dec3535c76e` |
| 45 | `lemma` | [_root_.Set.up_image](../../../../../mathematics/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean/declarations/root-set-up-image--0bc125d842e968ab38a1e79b.md) | 224 | `result-track:0bc125d842e968ab38a1e79b82b3381ebb7e7194151a6a9587ed46a1117bd0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
