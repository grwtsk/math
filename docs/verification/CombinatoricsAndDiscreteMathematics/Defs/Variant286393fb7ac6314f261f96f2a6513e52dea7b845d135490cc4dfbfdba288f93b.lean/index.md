# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cc6119635787b9024149b09715154d1b718cfc7",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cc6119635787b9024149b09715154d1b718cfc7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Perm.Subperm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Quot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Multiset.](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/multiset--d7ed8e2f840aa43179f5046a.md) | 74 | `declaration-track:d7ed8e2f840aa43179f5046a89c72e50589159dadd98e162bdda4220c1782b6c` |
| 2 | `def` | [ofList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/oflist--cedd12fc64031860e5f65667.md) | 81 | `declaration-track:cedd12fc64031860e5f65667b89dc234204b7fcfee43e48644025aa90ce55951` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--3118aa5e42eb5e129ee3aeb1.md) | 84 | `declaration-track:3118aa5e42eb5e129ee3aeb1ff12d81919fc93ac62168059396f05326d6458d9` |
| 4 | `theorem` | [quot_mk_to_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/quot-mk-to-coe--87e3b1f0b2927724e9990c47.md) | 88 | `result-track:87e3b1f0b2927724e9990c47782ba55addd7ca92444824521611930a1c542777` |
| 5 | `theorem` | [quot_mk_to_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/quot-mk-to-coe--84bb61f5298d5b2d73c823ed.md) | 92 | `result-track:84bb61f5298d5b2d73c823edae850b486e190697941408974f80067564739083` |
| 6 | `theorem` | [quot_mk_to_coe''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/quot-mk-to-coe--062ce9f8ea3de8f15e9734ff.md) | 96 | `result-track:062ce9f8ea3de8f15e9734fff63df8ff6a36a759923aff8ec253fd4019592e33` |
| 7 | `theorem` | [lift_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/lift-coe--f8d1595c1bbe74902163322a.md) | 100 | `result-track:f8d1595c1bbe74902163322a45f1762231a9dda4d08daae0e857ea0ce244e199` |
| 8 | `theorem` | [coe_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-eq-coe--b2ba5653894ad0ad18847800.md) | 105 | `result-track:b2ba5653894ad0ad188478005e68b8a5893b24e4c8540afb06c4d42c58ff0353` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--ad4314e64bec03f163901e58.md) | 110 | `declaration-track:ad4314e64bec03f163901e586af639495cb043419f6dac3eabbebfa44f9dc2b0` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--4b202d7e07b30b5a7f232629.md) | 113 | `declaration-track:4b202d7e07b30b5a7f232629ba7fe3fff0976d4511ae78586dbb518e25a67bd6` |
| 11 | `instance` | [decidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidableeq--f234a68e3867ea09ecf7645b.md) | 116 | `declaration-track:f234a68e3867ea09ecf7645b9161543bcf4a6f1d9bded24c7a469ecdb1c83433` |
| 12 | `def` | [Mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem--384b85adbcc24eaf3e4eb35b.md) | 122 | `declaration-track:384b85adbcc24eaf3e4eb35be78ad316abed77f835b2c94ae51614cb92e7efba` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--d5c126e24b76846cc08275a2.md) | 125 | `declaration-track:d5c126e24b76846cc08275a27a8ed485d8b96845c52debd5436e93ea57f5f6ce` |
| 14 | `theorem` | [mem_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem-coe--cf89f535cc6f9ee3ff44612b.md) | 129 | `result-track:cf89f535cc6f9ee3ff44612b29713bf7abb339faced58faf90bf917d4cb17c22` |
| 15 | `instance` | [decidableMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidablemem--08a72dafbef906c0f0c0d56f.md) | 132 | `declaration-track:08a72dafbef906c0f0c0d56f15b43ddcf507c9a14c742cec1c1cb97e102bf31c` |
| 16 | `def` | [Subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/subset--96db220d24ef13df8b5b84f6.md) | 147 | `declaration-track:96db220d24ef13df8b5b84f651250c5f1839d5500a63abfb01cc6cd9c219f4ba` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--b13043b4ed18a0d8eda56617.md) | 150 | `declaration-track:b13043b4ed18a0d8eda5661709e792e0893a8a16e623047677740fba70c0a723` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--efe4648e0599227b7c920e0d.md) | 153 | `declaration-track:efe4648e0599227b7c920e0db116b7ff2a94e2abc54798ba6c1694bcb9f33278` |
| 19 | `instance` | [instIsNonstrictStrictOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instisnonstrictstrictorder--7b340b06630fd941bb22e0fe.md) | 156 | `declaration-track:7b340b06630fd941bb22e0fe2dbe6bc77678f71c3c40da1addc800e09bbdb7a1` |
| 20 | `theorem` | [coe_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-subset--84869709f9996d878c4a270d.md) | 160 | `result-track:84869709f9996d878c4a270dc5e3891de9e1349f96f1e73eef86f1273f5bebdc` |
| 21 | `theorem` | [Subset.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/subset-refl--7080f42846ceb7051670a517.md) | 164 | `result-track:7080f42846ceb7051670a517c63856c677d80437faa25ec072ea4a40f00322df` |
| 22 | `theorem` | [Subset.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/subset-trans--cf4411be1e5d458fd44c3f11.md) | 166 | `result-track:cf4411be1e5d458fd44c3f11212ba08aac4b2f1c258259f66467c6cb2235de10` |
| 23 | `theorem` | [subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/subset-iff--66e6eae996f2756ad2c36825.md) | 168 | `result-track:66e6eae996f2756ad2c368255590a5ebefe26322a8cfd83b27388b34461e3bb1` |
| 24 | `theorem` | [mem_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem-of-subset--6c6ec8e96f08f2fe0cf3c791.md) | 171 | `result-track:6c6ec8e96f08f2fe0cf3c7919891e3382f1b6b4c6f04c8bf107f3122b40284f0` |
| 25 | `def` | [Le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/le--1f2f016d66352f5f1311b65c.md) | 181 | `declaration-track:1f2f016d66352f5f1311b65cde3ed374f16631eae4be40acc5d0ac5abef5f302` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--8c2bc3e567e5955400514195.md) | 185 | `declaration-track:8c2bc3e567e59554005141951a54dfd9083fbf67766f0a885540470358aebf94` |
| 27 | `instance` | [decidableLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidablele--0664f36dfe33a4375faea000.md) | 191 | `declaration-track:0664f36dfe33a4375faea0000e56b4edfe79871fe7c79e7bc74ced5342f8645a` |
| 28 | `theorem` | [subset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/subset-of-le--ed2bff2ba5db4c6966d94d8d.md) | 198 | `result-track:ed2bff2ba5db4c6966d94d8dc0a466822a7694e38c17e1a9b0d50e092a1b9f21` |
| 29 | `theorem` | [mem_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem-of-le--bca303154ef97170a8628488.md) | 203 | `result-track:bca303154ef97170a8628488ec6548eede175e5a5ca74963445d6b14284e46c3` |
| 30 | `theorem` | [notMem_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/notmem-mono--f8b98bb574a035396e7132fe.md) | 206 | `result-track:f8b98bb574a035396e7132fee9008f5a4791de5886d2346a23cfc58d63da6a26` |
| 31 | `theorem` | [coe_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-le--f4cfd5f9e964700ca37cdebe.md) | 212 | `result-track:f4cfd5f9e964700ca37cdebebfde8506323f96d09aef7614fc13c2fb745e2766` |
| 32 | `theorem` | [leInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/leinductionon--ca927d64bf9c7d0393f18be1.md) | 216 | `result-track:ca927d64bf9c7d0393f18be1665bcdb6716a9e67f814929a6d534a0d285f7736` |
| 33 | `def` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card--d234285455553c17e5435d6d.md) | 227 | `declaration-track:d234285455553c17e5435d6de85898bac353b322d9d4b2e33844a670e950e84e` |
| 34 | `theorem` | [coe_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-card--514752d1844e0dbb3300f1ee.md) | 230 | `result-track:514752d1844e0dbb3300f1ee4b59c42812ccfca3bf3742d56bd75ed7fed54a6e` |
| 35 | `theorem` | [card_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-le-card--c67f9a938155de805f5dd5d5.md) | 233 | `result-track:c67f9a938155de805f5dd5d575e8f7a42328ba8be5b9775f7f3d679eca94bcd3` |
| 36 | `theorem` | [eq_of_le_of_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/eq-of-le-of-card-le--385ff1c32217b65a85d44083.md) | 236 | `result-track:385ff1c32217b65a85d44083ab38524233a59054faa1d85c16e3ec68f2381ef2` |
| 37 | `theorem` | [card_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-lt-card--5e263ae20b01b5732b8776b5.md) | 239 | `result-track:5e263ae20b01b5732b8776b5ae49492448bb9e2e721141e25f716aa58b8df7f9` |
| 38 | `theorem` | [card_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-mono--3644ff0cea9c80c40e806545.md) | 243 | `result-track:3644ff0cea9c80c40e8065459c49d32629e92ae37ca5fb0eea0bd1965cb1f282` |
| 39 | `lemma` | [card_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-strictmono--28ddf8b75fa919c7dbabef57.md) | 245 | `result-track:28ddf8b75fa919c7dbabef57fdb7d90e9318114f3edea8229881852aba620b43` |
| 40 | `instance` | [instWellFoundedLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instwellfoundedlt--73b5bc9a47a7f6e1a9dc11a6.md) | 248 | `declaration-track:73b5bc9a47a7f6e1a9dc11a6a07dcf8148c215cd8566b388c26cc8511d73688c` |
| 41 | `theorem` | [coe_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-reverse--c3bf6b2581d7ec50282c0405.md) | 252 | `result-track:c3bf6b2581d7ec50282c0405e7869f9d19c0980cd23b1f0e825cec43ec7d32e8` |
| 42 | `def` | [pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/pmap--5cfe777aba56d6dcc3314e85.md) | 259 | `declaration-track:5cfe777aba56d6dcc3314e858fee6d08a907fa5a1b8ef9a531da62130ce76ab4` |
| 43 | `theorem` | [coe_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-pmap--4a364364c5007b80805af2fe.md) | 269 | `result-track:4a364364c5007b80805af2fe468541263ad64b84bbcf1e66ce79a40514f91151` |
| 44 | `theorem` | [pmap_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/pmap-congr--ef697d26a709a28a85d9bca2.md) | 273 | `result-track:ef697d26a709a28a85d9bca2bf0e4466acca136968406f38cf2aa4df52b46d7f` |
| 45 | `theorem` | [mem_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem-pmap--97d8e664c553d3a82dd6dd75.md) | 278 | `result-track:97d8e664c553d3a82dd6dd75588229ed0481270ca45d8e52a4d5dfd22f39e6f4` |
| 46 | `theorem` | [card_pmap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-pmap--2a23649a5f2d860716f593d7.md) | 283 | `result-track:2a23649a5f2d860716f593d7431884cc50ecfb886ddb2ba7eba5a22ef29b7bce` |
| 47 | `def` | [attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/attach--fbcbbf5d2f674264e397ae19.md) | 288 | `declaration-track:fbcbbf5d2f674264e397ae19960aa39762980a1ebf33b71d42feca70c33db8a8` |
| 48 | `theorem` | [coe_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-attach--d1ddc45743df21ed099cb5ad.md) | 292 | `result-track:d1ddc45743df21ed099cb5ad23cbd1c3db6032f38f724c2cb108d6469e17de9b` |
| 49 | `theorem` | [mem_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/mem-attach--c1351a6bf2e9f159ab1ac328.md) | 296 | `result-track:c1351a6bf2e9f159ab1ac328e42d88dded2e8413387c0b7b1786f141781d92a4` |
| 50 | `theorem` | [card_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/card-attach--227fb65675fc6e7235d66804.md) | 300 | `result-track:227fb65675fc6e7235d66804ea488ab264dd0bb37c4f7ec5b15659309c3b2207` |
| 51 | `def` | [decidableForallMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidableforallmultiset--fe3c792b8f9b17651965a114.md) | 309 | `declaration-track:fe3c792b8f9b17651965a114c9d957dd9022bb482ff7420949db93fbfa214ffd` |
| 52 | `instance` | [decidableDforallMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidabledforallmultiset--6404cef25192ba8d053398be.md) | 313 | `declaration-track:6404cef25192ba8d053398bec5faae54d069c92b929bae1a34c798b9a352f27a` |
| 53 | `instance` | [decidableEqPiMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidableeqpimultiset--4d0e9b0292d811c35994712e.md) | 320 | `declaration-track:4d0e9b0292d811c35994712e1c30609b0948bf369193efa8606878bf1b406d74` |
| 54 | `def` | [decidableExistsMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidableexistsmultiset--4668149e3e15b705914ffc8d.md) | 326 | `declaration-track:4668149e3e15b705914ffc8d8d89a0f06be05b151a4ca51b6a605670baeb0089` |
| 55 | `instance` | [decidableDexistsMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/decidabledexistsmultiset--01fabaee490f7dc9e340f16d.md) | 329 | `declaration-track:01fabaee490f7dc9e340f16d222ffeab335ddbdb29d17bdf6b2ea3a3c340e90c` |
| 56 | `def` | [Pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/pairwise--5cd0ccc77b7c1c9d4635350e.md) | 340 | `declaration-track:5cd0ccc77b7c1c9d4635350e98175bc5c18e403528b0cfa2d9c969569af535a9` |
| 57 | `theorem` | [pairwise_coe_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/pairwise-coe-iff--7e8b189968cac9e82cb638d6.md) | 343 | `result-track:7e8b189968cac9e82cb638d6355685d1c9e11fa18c89028b19d5364c40e8af16` |
| 58 | `theorem` | [pairwise_coe_iff_pairwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/pairwise-coe-iff-pairwise--fc176d8eba314e052eea5735.md) | 347 | `result-track:fc176d8eba314e052eea5735e5f0e284c0bc34dffe332a621d40381264ef0561` |
| 59 | `def` | [Nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/nodup--d4cd6e5e34d91808344d43a5.md) | 355 | `declaration-track:d4cd6e5e34d91808344d43a540961bcccbe577e3d6eaa3311041bbf437c81484` |
| 60 | `theorem` | [coe_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/coe-nodup--43922ee31922c08a320dd25b.md) | 359 | `result-track:43922ee31922c08a320dd25bbe5301705dea08d919b0bed62997c6fc77795516` |
| 61 | `theorem` | [Nodup.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/nodup-ext--36f83e206de4febe285c1f48.md) | 362 | `result-track:36f83e206de4febe285c1f485446a1c9fddc30e5675d9cfb06d4e16327e152b5` |
| 62 | `theorem` | [le_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/le-iff-subset--39fabe2a2d2cb8344b80e1f2.md) | 365 | `result-track:39fabe2a2d2cb8344b80e1f2527c287712b9d86b05ffda175cd941b0edf34b68` |
| 63 | `theorem` | [nodup_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/nodup-of-le--6d4a8815950bf4033f0950e2.md) | 368 | `result-track:6d4a8815950bf4033f0950e2c92527652bc29656c1d3f7d76baeba63fa2fed1f` |
| 64 | `instance` | [nodupDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/nodupdecidable--3df797360dc291f07987176e.md) | 371 | `declaration-track:3df797360dc291f07987176edc263efc1c34f374a88917f3bfbf9c717caf4883` |
| 65 | `def` | [sizeOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/sizeof--8e765d49a2d34005b8d3b048.md) | 384 | `declaration-track:8e765d49a2d34005b8d3b04889e555d23750803d3ce2a3c9ec2f23b02ca7d9b0` |
| 66 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant286393fb7ac6314f261f96f2a6513e52dea7b845d135490cc4dfbfdba288f93b.lean/declarations/instance--53677e213cd4564d7139fcf7.md) | 387 | `declaration-track:53677e213cd4564d7139fcf78f92709bbabe7ed3991b932edef1c343ea3f54bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
