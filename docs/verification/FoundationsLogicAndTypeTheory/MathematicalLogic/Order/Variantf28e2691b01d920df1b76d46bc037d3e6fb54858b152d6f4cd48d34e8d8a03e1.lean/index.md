# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Order.Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80224aaec9d053c13812e14c3e0f52d75d14b204",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80224aaec9d053c13812e14c3e0f52d75d14b204`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--52c9693eeba99a51fae9a04f.md) | 36 | `declaration-track:52c9693eeba99a51fae9a04f01ae24acdad76270f6e928943d124eb68278ce66` |
| 2 | `lemma` | [le_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/le-def--aca47c7cc8e8f0fabe53cb2b.md) | 39 | `result-track:aca47c7cc8e8f0fabe53cb2b1f65a77b12c4a43d0ed22ce1816839d58a81dc7c` |
| 3 | `lemma` | [coe_le_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-le-coe--d1d5097c1471e3685c2bc625.md) | 41 | `result-track:d1d5097c1471e3685c2bc625dd7a0899df7ea601b53a0b415963d8ca93006e49` |
| 4 | `def` | [orderEmbeddingToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/orderembeddingtofun--249458e2426dbb61aaf6dabb.md) | 44 | `declaration-track:249458e2426dbb61aaf6dabbea255e5b6cc437bf34a8f0de37f41e959fd67709` |
| 5 | `lemma` | [coe_orderEmbeddingToFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-orderembeddingtofun--627a169e6f294b12f79aeaba.md) | 50 | `result-track:627a169e6f294b12f79aeaba8071b73a00ef32fc0774609fc1c94dbc71a67b19` |
| 6 | `theorem` | [orderEmbeddingToFun_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/orderembeddingtofun-apply--f8d5a8fd2d96b82eec0cfbeb.md) | 52 | `result-track:f8d5a8fd2d96b82eec0cfbeb0d30dbed5a2d325373918a4195eecad960691aca` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--34497ab6c2b46af2cbef9f76.md) | 61 | `declaration-track:34497ab6c2b46af2cbef9f76392583aad9c80019dc7250151534af0f644e6984` |
| 8 | `lemma` | [lt_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/lt-def--114f1cdf2e0142148fe016d0.md) | 66 | `result-track:114f1cdf2e0142148fe016d01c7ebfebf1bd376137389122de51cea5ba16fc0e` |
| 9 | `lemma` | [coe_lt_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-lt-coe--120e9f739a3dcf54a32450c8.md) | 67 | `result-track:120e9f739a3dcf54a32450c8f9d66ddb256c383878be177d1d899354f0df3c3f` |
| 10 | `lemma` | [coe_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-mono--16ce8dc6a9c33bfb007d6635.md) | 69 | `result-track:16ce8dc6a9c33bfb007d6635bc8ad4ea9f86ae303fd9c1e0bc53820b77072e28` |
| 11 | `lemma` | [coe_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-strictmono--54d16760f592c40d6c3985f5.md) | 71 | `result-track:54d16760f592c40d6c3985f57e92a113117f767b93834a6783a43581ad6929b1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--849db8f3a3988bb2bd1330b0.md) | 75 | `declaration-track:849db8f3a3988bb2bd1330b0bcf09a11bc1a9b3af1a7eddcd99e06be1cab4ace` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--1db275fe09266551a2ab5f96.md) | 79 | `declaration-track:1db275fe09266551a2ab5f963cd2298114cc4a29edb60d9e9fdf95bdc56d7c3c` |
| 14 | `lemma` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-inf--a880b3d718cc88ec178258b7.md) | 87 | `result-track:a880b3d718cc88ec178258b7814c84e4fba4b9051174540cc9b84cfd0ccabd3c` |
| 15 | `theorem` | [inf_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/inf-apply--f6bf19b7c259bfb0885bf323.md) | 89 | `result-track:f6bf19b7c259bfb0885bf3236053c2964b73871faa63503296fe4c5f33ad7c61` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--25faf14731bba392481ce2e3.md) | 92 | `declaration-track:25faf14731bba392481ce2e351be92031469b5133f67ec391cbe2028ffcb0a1a` |
| 17 | `lemma` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-sup--eba45c5658f077c80597e8c2.md) | 100 | `result-track:eba45c5658f077c80597e8c245980b029899e57e7b0de4e4aa7e92ee966b2144` |
| 18 | `theorem` | [sup_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/sup-apply--b2dbe34d0e71768669c5dd97.md) | 102 | `result-track:b2dbe34d0e71768669c5dd97edf6722f2aa744b223840ef73ad9070c48dc3f08` |
| 19 | `instance` | [lattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/lattice--f55af800e3033080de3aedb9.md) | 108 | `declaration-track:f55af800e3033080de3aedb96766c01b53aecdb76b2ec2795126b975d4c19d1b` |
| 20 | `theorem` | [support_inf_union_support_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-inf-union-support-sup--764d90851bf001c1d054662e.md) | 114 | `result-track:764d90851bf001c1d054662e06c35cd228105decc33415d18ab7bb8d0e857ed7` |
| 21 | `theorem` | [support_sup_union_support_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-sup-union-support-inf--2cbcbf2fb4709046099540fb.md) | 117 | `result-track:2cbcbf2fb4709046099540fbb988f13e3547de51fc4521815217951782411ac3` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--56802acaab526868a450fbcf.md) | 125 | `declaration-track:56802acaab526868a450fbcf33509128d2849a93c058fa5040b7a5b13fe7917f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--70d072a7166178ef5d91f012.md) | 129 | `declaration-track:70d072a7166178ef5d91f012956cc0ea8873513548978464ca9273dc71a1abf5` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--833e41a305ac269fbfb3fcc4.md) | 134 | `declaration-track:833e41a305ac269fbfb3fcc4fa064459cb5419a78a47c01efcafbe0c2de56e37` |
| 25 | `instance` | [instPosSMulMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instpossmulmono--5cf199967b836280eb01ca8e.md) | 142 | `declaration-track:5cf199967b836280eb01ca8ef4b4aad530bf1a3a383ea4247daf9e9c96ee038b` |
| 26 | `instance` | [instSMulPosMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instsmulposmono--e60144d019529066790846fc.md) | 145 | `declaration-track:e60144d019529066790846fc43f840eeec37bf777bb61061b572921db52cc949` |
| 27 | `instance` | [instPosSMulReflectLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instpossmulreflectle--576f01ae6aa6fc3bfaf1c326.md) | 148 | `declaration-track:576f01ae6aa6fc3bfaf1c32663e64d8aa81acdc940dcccb2a0d44a71662e2ee6` |
| 28 | `instance` | [instSMulPosReflectLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instsmulposreflectle--be80d70796a0154515e60553.md) | 151 | `declaration-track:be80d70796a0154515e60553154aafbe71b85c3d1b5a3124a68efdf1e034526b` |
| 29 | `instance` | [instPosSMulStrictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instpossmulstrictmono--43e6050a64931a01086eaf3a.md) | 160 | `declaration-track:43e6050a64931a01086eaf3af19c01bcfb83802b2a1a4ff50e0e66b1cc76aa95` |
| 30 | `instance` | [instSMulPosStrictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instsmulposstrictmono--c98951c12ee5b8509c2a1304.md) | 163 | `declaration-track:c98951c12ee5b8509c2a1304e05ce36b780a197e3e3a9e9f004a0bb049774059` |
| 31 | `instance` | [instSMulPosReflectLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instsmulposreflectlt--7a7a2fed9fe397c259f309d6.md) | 169 | `declaration-track:7a7a2fed9fe397c259f309d6f6ec4d4adf673123d01178af5d5324802e0e780a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--3114907c72298905cd44a458.md) | 178 | `declaration-track:3114907c72298905cd44a4583cc98e2e7fdc0d432ef4bfb7bd44439b689f0094` |
| 33 | `theorem` | [bot_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/bot-eq-zero--dd5713997d2a07a5b22f3925.md) | 184 | `result-track:dd5713997d2a07a5b22f39258bdcaa4499e0875e8b14662814722563ad32041f` |
| 34 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/add-eq-zero-iff--3b65d69686821eec356db899.md) | 188 | `result-track:3b65d69686821eec356db899d8e2e83575160ac03b4add45bc4cfeb58d2a1f78` |
| 35 | `theorem` | [le_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/le-iff--689abcc6ceff72f10bb997de.md) | 199 | `result-track:689abcc6ceff72f10bb997def2da40e535c9804eb0dff0725de7b07ed00f5be1` |
| 36 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/le-iff--87da7c4f3dafdd41556fe288.md) | 203 | `result-track:87da7c4f3dafdd41556fe288d8398b401c12a0f6e1f14c20c30d0d67f8af91b7` |
| 37 | `lemma` | [support_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-monotone--1d6e4d9dbaf8fee39c133239.md) | 206 | `result-track:1d6e4d9dbaf8fee39c13323950fc909377a5e11906fcbd59555dedfd58b5820d` |
| 38 | `lemma` | [support_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-mono--2364d41716393498076afc13.md) | 209 | `result-track:2364d41716393498076afc13d313b68a8db80c1721e2811efb26467c9550041f` |
| 39 | `instance` | [decidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/decidablele--468bf2bb97eba13eb0d039d6.md) | 212 | `declaration-track:468bf2bb97eba13eb0d039d65d3a9e71aa7c7c8b160b426dfb1bc636008e4708` |
| 40 | `theorem` | [single_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/single-le-iff--ddbf39206c88bad6042894bd.md) | 218 | `result-track:ddbf39206c88bad6042894bd319648394ad2a3432c830d4ed32d20942f93209f` |
| 41 | `instance` | [tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/tsub--c2a5a3a296904e7e37d7cd40.md) | 228 | `declaration-track:c2a5a3a296904e7e37d7cd409dd21786831902b82013184884474c0f6957bc3a` |
| 42 | `theorem` | [tsub_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/tsub-apply--4ccbac8e9afa1bbb15cdd677.md) | 233 | `result-track:4ccbac8e9afa1bbb15cdd677accf2a1367e3510908fb285310a1a0a10b2e1af2` |
| 43 | `theorem` | [coe_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/coe-tsub--5df1ba6456d55a4a5f11c486.md) | 237 | `result-track:5df1ba6456d55a4a5f11c486a8d3dd02fdb65fcb62de97f97acdfeccd89f201d` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--d0c7e107c750b3bd59a9b3b3.md) | 243 | `declaration-track:d0c7e107c750b3bd59a9b3b393a54212b6a5998afbd62325447ca28fe870a15a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/instance--4b044cf96649f8cd0d7dde23.md) | 246 | `declaration-track:4b044cf96649f8cd0d7dde237bd64679869decba70a97cb3fed94d011759ccbf` |
| 46 | `theorem` | [single_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/single-tsub--d3b423e55ecf1eb304ec3446.md) | 257 | `result-track:d3b423e55ecf1eb304ec34461a78fbe0028c74e94f07f9894e7fcfdc0c3d1e8c` |
| 47 | `theorem` | [support_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-tsub--dfc1c8590c188fd22efe9027.md) | 265 | `result-track:dfc1c8590c188fd22efe9027780c45b9ff474aee639d9bd47027a5b705cf8723` |
| 48 | `theorem` | [subset_support_tsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/subset-support-tsub--760be65c3a807de1226f23e8.md) | 269 | `result-track:760be65c3a807de1226f23e83774b817e08434868ec372f3dd97e65a06b0d1b2` |
| 49 | `theorem` | [support_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-inf--ea090f80a8c126e9ba4159ec.md) | 279 | `result-track:ea090f80a8c126e9ba4159ecf86d18ef40421a39817ee40d769cdf423c92d5e4` |
| 50 | `theorem` | [support_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/support-sup--9adcfc36f3bbab0c6bbd267b.md) | 285 | `result-track:9adcfc36f3bbab0c6bbd267bdbcf6b8892c13ef42a8b0d6b2ff93eaa6da01697` |
| 51 | `theorem` | [disjoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variantf28e2691b01d920df1b76d46bc037d3e6fb54858b152d6f4cd48d34e8d8a03e1.lean/declarations/disjoint-iff--60e9720b7a9a6851e02d5701.md) | 290 | `result-track:60e9720b7a9a6851e02d570117df5f2fca9d7cfa2f49f679f555e388a7023047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
