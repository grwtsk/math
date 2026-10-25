# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "051359bd60df142da41af9ef4ee9f529c8536486",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `051359bd60df142da41af9ef4ee9f529c8536486`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ineq` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/add-eq-eq--2be661329d0fdf2a1be6238d.md) | 24 | `result-track:2be661329d0fdf2a1be6238dd6272c956cc16c1de1e58759d318ce33cb5a07cb` |
| 2 | `theorem` | [add_le_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/add-le-eq--bd97ea2b1107dc382e665ccf.md) | 26 | `result-track:bd97ea2b1107dc382e665ccf43aaa3b2493183d4f3a7bea65fd78b6f0bedf348` |
| 3 | `theorem` | [add_eq_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/add-eq-le--1dd6156cc7cfe25177c2eb83.md) | 30 | `result-track:1dd6156cc7cfe25177c2eb83dd8404e79146758c2ac9af645572c1672769ad23` |
| 4 | `theorem` | [add_lt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/add-lt-eq--e9c322c3ab9a9b5ff9815366.md) | 34 | `result-track:e9c322c3ab9a9b5ff98153660f3ca236e9c0cbc61c5f367bea556d4b00c29299` |
| 5 | `theorem` | [add_eq_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/add-eq-lt--a1da8678d1a888a14c46aeac.md) | 38 | `result-track:a1da8678d1a888a14c46aeac392b66f37ebd0015f761169805206af294df420f` |
| 6 | `theorem` | [mul_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-eq-const--33a696413fabcc25f3fa4c3b.md) | 44 | `result-track:33a696413fabcc25f3fa4c3b21bec370966f7d9473a373c33795bb72bee57c29` |
| 7 | `theorem` | [mul_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-le-const--82b5f7607f9d78401aa3ba98.md) | 46 | `result-track:82b5f7607f9d78401aa3ba9859260fa20e125e4d4d79b60c180dca4dbfddeca9` |
| 8 | `theorem` | [mul_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-lt-const--ed447b1b5f6b6a35ca1e1bf6.md) | 51 | `result-track:ed447b1b5f6b6a35ca1e1bf6a6fc2e8500aba2afdd16c799620845da4cc87ef2` |
| 9 | `theorem` | [mul_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-lt-const-weak--9f22a8a49ff903a35f7b4bc1.md) | 56 | `result-track:9f22a8a49ff903a35f7b4bc135f8cabe912181bfd562ecd19299849157f7ff1c` |
| 10 | `theorem` | [mul_const_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-const-eq--f5398baa30ff8bc2570c9cd5.md) | 61 | `result-track:f5398baa30ff8bc2570c9cd52ca92cd32c0bf4464ff57b9822e36a382225790e` |
| 11 | `theorem` | [mul_const_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-const-le--a74ac445262f112a7c313b37.md) | 63 | `result-track:a74ac445262f112a7c313b3768f1d258128a71b055a65d66ce101cd7ce926d56` |
| 12 | `theorem` | [mul_const_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-const-lt--8e89777ffe5850d482dd210e.md) | 68 | `result-track:8e89777ffe5850d482dd210ea7dee94d802de417e8a4006f187ff841290059bb` |
| 13 | `theorem` | [mul_const_lt_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mul-const-lt-weak--54946934badf39f2cc8e5ad0.md) | 73 | `result-track:54946934badf39f2cc8e5ad0238fbce24133fcb09e681481b1efc7227dc3bee1` |
| 14 | `theorem` | [smul_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-eq-const--cc9cab6f31bd79ce82f69c9e.md) | 80 | `result-track:cc9cab6f31bd79ce82f69c9e18fdc3d1bc15fa41862b84d39a449c86b9bb0c23` |
| 15 | `theorem` | [smul_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-le-const--8ee4641e74afb4722a60dd35.md) | 82 | `result-track:8ee4641e74afb4722a60dd35fe5336e8154283082194f07c2b68cf3f418ffadd` |
| 16 | `theorem` | [smul_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-lt-const--4a09d979c2317ce039ed656b.md) | 88 | `result-track:4a09d979c2317ce039ed656b292a8d8fa0a0d1169e8e7222f1a876a8272927e4` |
| 17 | `theorem` | [smul_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-lt-const-weak--92acffbd43c39c51657fd90d.md) | 94 | `result-track:92acffbd43c39c51657fd90dd7346032e8d894b0c91f1bb68d5e7e5f2277254e` |
| 18 | `theorem` | [smul_const_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-const-eq--019893d8642a2b3c9df2b3f3.md) | 100 | `result-track:019893d8642a2b3c9df2b3f3eb993e797f6be5943c83afb9bf12592fb3e94ce9` |
| 19 | `theorem` | [smul_const_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-const-le--2438075e93d324b7940a2c9a.md) | 102 | `result-track:2438075e93d324b7940a2c9a19fb46405b1566c0ec3ef2b0ef0cdbff0892eed3` |
| 20 | `theorem` | [smul_const_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-const-lt--2fa9e8a44045db1af0ff3369.md) | 108 | `result-track:2fa9e8a44045db1af0ff3369113282ba4844d7e94f38a18fdc41c2ccc8a75be7` |
| 21 | `theorem` | [smul_const_lt_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smul-const-lt-weak--70794b9ff78a134fba8b4839.md) | 114 | `result-track:70794b9ff78a134fba8b48398e750421fb71fedc618ecf55e293d37b7cae81fb` |
| 22 | `theorem` | [div_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/div-eq-const--94070cdd9f550dda80798cf4.md) | 122 | `result-track:94070cdd9f550dda80798cf4de1eb91f2eb7c8876b01d91838e4d42a4baecde6` |
| 23 | `theorem` | [div_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/div-le-const--2fa31f6990ea6909f83ca749.md) | 124 | `result-track:2fa31f6990ea6909f83ca749108ae39c62b038a351abc2b82b73fd1a0ed1558b` |
| 24 | `theorem` | [div_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/div-lt-const--665aaaf029a65bb9d50de89d.md) | 128 | `result-track:665aaaf029a65bb9d50de89d2adebcb697e69928d7b5bd0cb4d0295a157be0a5` |
| 25 | `theorem` | [div_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/div-lt-const-weak--cb7d252b2faf51b080a983c7.md) | 132 | `result-track:cb7d252b2faf51b080a983c70e7ff9be1d4267ca406a0f60148dd73afb0706a7` |
| 26 | `theorem` | [eq_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/eq-of-eq--61cc4e34a0cc4e8beb019f86.md) | 139 | `result-track:61cc4e34a0cc4e8beb019f86f8bd635473ce901b57ce0376b35c960d18ef765c` |
| 27 | `theorem` | [le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/le-of-le--3aecd29d7f9017db2ef670b2.md) | 144 | `result-track:3aecd29d7f9017db2ef670b22f5ce8355bfc80e2d8b5af0428885d185b5687f1` |
| 28 | `theorem` | [le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/le-of-eq--90fb0a6f20d6bb9ce4e73193.md) | 151 | `result-track:90fb0a6f20d6bb9ce4e73193f835d1d408fd30b0003efc1649c47ead428813b5` |
| 29 | `theorem` | [le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/le-of-lt--6b1a15b8ed7a677f54584ec8.md) | 156 | `result-track:6b1a15b8ed7a677f54584ec8f26fc80a32d13a7e6efdd2ccd7433818a52326fb` |
| 30 | `theorem` | [lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/lt-of-le--9d393e01bfeadecb15cafb50.md) | 161 | `result-track:9d393e01bfeadecb15cafb50cbf07492c45c39ce7f44774da89dd734713d1f2c` |
| 31 | `theorem` | [lt_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/lt-of-eq--c4ca7a6487cfb3008e47fd3b.md) | 168 | `result-track:c4ca7a6487cfb3008e47fd3ba497b3786982986db649d4043c460325ffdbc37c` |
| 32 | `theorem` | [lt_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/lt-of-lt--6fb9a330bd5b1ee7e74239d3.md) | 173 | `result-track:6fb9a330bd5b1ee7e74239d3705ed6079f488e27a68212e377a54395cd7f8a73` |
| 33 | `theorem` | [le_rearrange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/le-rearrange--013d09a14a56008330ef4c31.md) | 182 | `result-track:013d09a14a56008330ef4c3148e1f13b66280d008c045297dd4f967975c043aa` |
| 34 | `theorem` | [lt_rearrange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/lt-rearrange--ad0b547044c4c255ee69c81b.md) | 186 | `result-track:ad0b547044c4c255ee69c81bbe3e40ac3c7825f83c081a60f3dabd698262b9fa` |
| 35 | `theorem` | [eq_of_add_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/eq-of-add-pow--56f6cb5579eb995135980f5c.md) | 190 | `result-track:56f6cb5579eb995135980f5c3ad6836c61045ca9334f305ecca2fe7dca1e2e2e` |
| 36 | `def` | [addRelRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/addrelreldata--6a3e470e367921f83334365d.md) | 203 | `declaration-track:6a3e470e367921f83334365dc24a435a8aa109409fd935a840b428986043abda` |
| 37 | `inductive` | [WithStrictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/withstrictness--076d796fb295c61bb96943cd.md) | 217 | `declaration-track:076d796fb295c61bb96943cddbe33635b5f47ca3c76ed0795fa938387a1658e7` |
| 38 | `def` | [mulRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mulrelconstdata--dd76cbcf08b608f3bfaf769c.md) | 225 | `declaration-track:dd76cbcf08b608f3bfaf769c2f19703455ce7bdb3005d5139534bdeabf41b7e4` |
| 39 | `def` | [mulConstRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/mulconstreldata--ddb19258671cf261da952170.md) | 234 | `declaration-track:ddb19258671cf261da9521700a5eed0a4d87ca075c6917cee73a563e6b744545` |
| 40 | `def` | [smulRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smulrelconstdata--8094ddb98c6a2e06fd585aa2.md) | 243 | `declaration-track:8094ddb98c6a2e06fd585aa2c89b27a6ed03d1b47e89958aa5e62630fe9d21a7` |
| 41 | `def` | [smulConstRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/smulconstreldata--723b106f261923a1212d1a35.md) | 252 | `declaration-track:723b106f261923a1212d1a3558c78a7cfdc57b46431529ee07e565bcc69ab578` |
| 42 | `def` | [divRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/divrelconstdata--757af97f347b3925fc3a4ae0.md) | 260 | `declaration-track:757af97f347b3925fc3a4ae0c8188db39c692da85f484b266142679dd76ac495` |
| 43 | `def` | [relImpRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/relimpreldata--a1e3c476169e0e26773c2478.md) | 268 | `declaration-track:a1e3c476169e0e26773c24787b29066472b344f3e5118501a14a0f10b967f6d7` |
| 44 | `def` | [rearrangeData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant19fe7a9f492b879f57ace75fb619d773be7c2a804ea2e9e852baeb95977cc566.lean/declarations/rearrangedata--5735dd1ef79d57be1ede2955.md) | 280 | `declaration-track:5735dd1ef79d57be1ede2955d2cc13cd607625669ef04c3fb541affc54fb96b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
