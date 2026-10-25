# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d348d6ffbda9c9f7dc4bd2fab1961f7a08f3d940",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d348d6ffbda9c9f7dc4bd2fab1961f7a08f3d940`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ineq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_eq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/add-eq-eq--59b68eb9e2d4a7508e2d9845.md) | 32 | `result-track:59b68eb9e2d4a7508e2d9845f050f41c3acc830125098f57b9db89e843c0b01e` |
| 2 | `theorem` | [add_le_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/add-le-eq--5e73fd2bc9f0aaa81b579d07.md) | 34 | `result-track:5e73fd2bc9f0aaa81b579d0796fe6f0c025dd3831d45d3b45c17162d30e309a1` |
| 3 | `theorem` | [add_eq_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/add-eq-le--451ff2e61d94b645b1c0f76a.md) | 38 | `result-track:451ff2e61d94b645b1c0f76ae0873117827c6094260c3d7d0e23550ade0bb53b` |
| 4 | `theorem` | [add_lt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/add-lt-eq--ec1fc429c47560a639dd4a27.md) | 42 | `result-track:ec1fc429c47560a639dd4a270daab53ea738e5a35cf3b1d6c3bcc6fe43ffa6d8` |
| 5 | `theorem` | [add_eq_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/add-eq-lt--8a747d42ea2082b9fc68c796.md) | 46 | `result-track:8a747d42ea2082b9fc68c796b2efdf076195557faa3efe477a399118c7e4049d` |
| 6 | `theorem` | [mul_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-eq-const--21b6e62dbdc4e3a6bba91a9a.md) | 52 | `result-track:21b6e62dbdc4e3a6bba91a9a4f9123f701aa3857918308b4fa509a80f380942f` |
| 7 | `theorem` | [mul_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-le-const--7c54526d40daf6fe7dfcaa35.md) | 54 | `result-track:7c54526d40daf6fe7dfcaa3552f458a4bdcb664329d9b4f2ecbea1878a79a84f` |
| 8 | `theorem` | [mul_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-lt-const--71727d627f61d7c513585897.md) | 59 | `result-track:71727d627f61d7c513585897b139fa981e9b11a8da71d37458201c8a30d9c6e4` |
| 9 | `theorem` | [mul_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-lt-const-weak--a6874f1b263bab4e7d7aff5c.md) | 64 | `result-track:a6874f1b263bab4e7d7aff5cb97ea88f62952003e2c5eaff7ce2a376d0083fc2` |
| 10 | `theorem` | [mul_const_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-const-eq--475605245420f694bf50a435.md) | 69 | `result-track:475605245420f694bf50a435b1dd3231f92b230722e6638b6bef98c10c652056` |
| 11 | `theorem` | [mul_const_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-const-le--dfe3847c6abb6c7c77a7c398.md) | 71 | `result-track:dfe3847c6abb6c7c77a7c3989c83a47ba0ac501e979671834705f7cfc687ceb0` |
| 12 | `theorem` | [mul_const_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-const-lt--9f205c9add4a8523bf925b76.md) | 76 | `result-track:9f205c9add4a8523bf925b769051ea852f52f8acb06014a88fc392522e8a643a` |
| 13 | `theorem` | [mul_const_lt_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mul-const-lt-weak--aa7ce3322e6a272c4ccd4607.md) | 81 | `result-track:aa7ce3322e6a272c4ccd46074dade6cdf4fdfc651950cfd04616ce489b8baf41` |
| 14 | `theorem` | [smul_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-eq-const--8ac590254adb91d500312d97.md) | 88 | `result-track:8ac590254adb91d500312d973310ae0868deb2898aa632e77e803fc11a50e197` |
| 15 | `theorem` | [smul_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-le-const--658dd30c39be1bc230efebbb.md) | 90 | `result-track:658dd30c39be1bc230efebbb774e7c0a445a622ec8e2aa40e7a917022aa2f64b` |
| 16 | `theorem` | [smul_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-lt-const--58ad0a6383c429e09b46be31.md) | 96 | `result-track:58ad0a6383c429e09b46be3143edb0c347dc2c0eb7a4a4322c034de009efa034` |
| 17 | `theorem` | [smul_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-lt-const-weak--e13cd45c55c965221f255df0.md) | 102 | `result-track:e13cd45c55c965221f255df0ebbff9933ce7fd0d970d0881478170f1103ca835` |
| 18 | `theorem` | [smul_const_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-const-eq--b0916455727dd06eee8de8fc.md) | 108 | `result-track:b0916455727dd06eee8de8fca83c7dd2cff6128c5a7e2323b36f11b37a331c5a` |
| 19 | `theorem` | [smul_const_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-const-le--64730aea620e2879c15fde4a.md) | 110 | `result-track:64730aea620e2879c15fde4af6fb460b40072db6eab2e6fdc41c685d362d7877` |
| 20 | `theorem` | [smul_const_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-const-lt--59c816e389b40ecffb2a270e.md) | 116 | `result-track:59c816e389b40ecffb2a270e80697c6814ed8a5bf4ecb16516ebcd08c9e95ce9` |
| 21 | `theorem` | [smul_const_lt_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smul-const-lt-weak--1ac5e0c04bf07c68de36f6eb.md) | 122 | `result-track:1ac5e0c04bf07c68de36f6eb40144b867be571da3039eaf105aebf85b205a5f8` |
| 22 | `theorem` | [div_eq_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/div-eq-const--83cf1450f6822a3f87c6674c.md) | 130 | `result-track:83cf1450f6822a3f87c6674c22174d22dba9de86341f6f45e9acf01356ad28ce` |
| 23 | `theorem` | [div_le_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/div-le-const--511dadeb6a9041713653e560.md) | 132 | `result-track:511dadeb6a9041713653e560cb734c974737db2384c54b05dc5e57a25ce9cf25` |
| 24 | `theorem` | [div_lt_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/div-lt-const--7cbf408bc06c9ad5703a8f15.md) | 136 | `result-track:7cbf408bc06c9ad5703a8f15a0761ec370e279017e851e781ff3a2442678dd3b` |
| 25 | `theorem` | [div_lt_const_weak](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/div-lt-const-weak--5fd11510696e4411a58c0988.md) | 140 | `result-track:5fd11510696e4411a58c098846534ae456dd50724da490cf2d73138220c36f19` |
| 26 | `theorem` | [eq_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/eq-of-eq--6945af825a6e57aa72ef3191.md) | 147 | `result-track:6945af825a6e57aa72ef319190fce0487877cba2e0c509dbe4678e4814bcb686` |
| 27 | `theorem` | [le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/le-of-le--5375fa0fc2eaaa6485b14fa3.md) | 152 | `result-track:5375fa0fc2eaaa6485b14fa342af2d0f11f04bcfe135a11706f72c070cb38c09` |
| 28 | `theorem` | [le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/le-of-eq--bfd741aa4e831877a3918f9c.md) | 159 | `result-track:bfd741aa4e831877a3918f9cd74f53a61fd5fbaf4b6c699a25b67fb3a856b2f4` |
| 29 | `theorem` | [le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/le-of-lt--655a7f4379f915624c482f90.md) | 164 | `result-track:655a7f4379f915624c482f903e6055eece1288c55df4f01e5275080d7bf2b2ec` |
| 30 | `theorem` | [lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/lt-of-le--63f8be60e7cfd0787bab0099.md) | 169 | `result-track:63f8be60e7cfd0787bab0099d6d8f49f198ee677718902036623d1934e1f39b2` |
| 31 | `theorem` | [lt_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/lt-of-eq--ac3f22779cc7d5b7e0faacf1.md) | 176 | `result-track:ac3f22779cc7d5b7e0faacf12d3b9e81cc3f41650cca0ca19ce5474df2274e71` |
| 32 | `theorem` | [lt_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/lt-of-lt--57a9e9e47e0856a221c45f13.md) | 181 | `result-track:57a9e9e47e0856a221c45f13a716f54e0640d4176197897f0ee21daaa1f7a632` |
| 33 | `theorem` | [le_rearrange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/le-rearrange--1c6b7d554e3a0cfd3fbcf8f2.md) | 190 | `result-track:1c6b7d554e3a0cfd3fbcf8f27cb6e935a976376cf96d5d05e130ae466ef7550c` |
| 34 | `theorem` | [lt_rearrange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/lt-rearrange--e340870553b388c60a126897.md) | 194 | `result-track:e340870553b388c60a126897d4c2b9f23523539242383a95a4bf40fecafaf6c0` |
| 35 | `theorem` | [eq_of_add_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/eq-of-add-pow--22c0c95f198500b727b0072f.md) | 198 | `result-track:22c0c95f198500b727b0072fad2e1dccce4f83a89f532ebda30ad75cfd9b996d` |
| 36 | `def` | [addRelRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/addrelreldata--958d8a5423701f2a627da4f9.md) | 211 | `declaration-track:958d8a5423701f2a627da4f91b15645f600f151c1c429dd38b49b8d8c0bcb9de` |
| 37 | `inductive` | [WithStrictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/withstrictness--2e7eab54eff6f1a34ec36f77.md) | 225 | `declaration-track:2e7eab54eff6f1a34ec36f7764a1f905115c8d1be6328de4c66368e8ae0b2683` |
| 38 | `def` | [mulRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mulrelconstdata--5146d6cea1821e15094ee833.md) | 233 | `declaration-track:5146d6cea1821e15094ee8335913527464cd3e1e57fcadf687a58f9d6205b13e` |
| 39 | `def` | [mulConstRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/mulconstreldata--aa7bc9c1f613d348c070391a.md) | 242 | `declaration-track:aa7bc9c1f613d348c070391a3485802726515020309107bed2e7c63bd498825a` |
| 40 | `def` | [smulRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smulrelconstdata--b26408c822f5dc554aeddfd6.md) | 251 | `declaration-track:b26408c822f5dc554aeddfd68b06d9d975e926a853c455354e25a69f3dc94f37` |
| 41 | `def` | [smulConstRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/smulconstreldata--8591b3f47455b6904fa3cfee.md) | 260 | `declaration-track:8591b3f47455b6904fa3cfee8540eb6a7e868dafeff66f5a8e4731efa22c4c93` |
| 42 | `def` | [divRelConstData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/divrelconstdata--1c22f716863741144bf3739f.md) | 268 | `declaration-track:1c22f716863741144bf3739fb56786cc4f056f6cf10d9a2518c8b6882ced39cf` |
| 43 | `def` | [relImpRelData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/relimpreldata--aab70a2356f8cd3b128eefcf.md) | 276 | `declaration-track:aab70a2356f8cd3b128eefcfe5c8e49099d0a0ecce968fb10259432758ca3eac` |
| 44 | `def` | [rearrangeData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62e9d52f509d5196a42b8d196d5c7ead51afd57793db4aa3a807105bd55ce51d.lean/declarations/rearrangedata--100e3a28dc2d2e5a23b1c48f.md) | 288 | `declaration-track:100e3a28dc2d2e5a23b1c48f096880a30bb2cbb2663ec44d747a253fb44da584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
