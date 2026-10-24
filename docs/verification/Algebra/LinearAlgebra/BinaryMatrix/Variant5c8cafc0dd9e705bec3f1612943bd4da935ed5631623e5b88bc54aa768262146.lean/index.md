# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryMatrix.Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14f7a5c588fc075abff3274bbbb006c5020563ff",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14f7a5c588fc075abff3274bbbb006c5020563ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinMat](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/binmat--5baa2df36bdc0bbeff376f8b.md) | 39 | `declaration-track:5baa2df36bdc0bbeff376f8b9c9c535fd47d45c18a2bc0597c836fe26afc42e9` |
| 2 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/map--5ed16864094a8d7221f8b87c.md) | 48 | `declaration-track:5ed16864094a8d7221f8b87cdb84bdb0430765be93bd2e7400b71a36c9038d1f` |
| 3 | `def` | [zipWith](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/zipwith--5c9a1e2690ff07d1ae09e086.md) | 53 | `declaration-track:5c9a1e2690ff07d1ae09e0862a0dfbaabb181404628e2a9ad94a5c23c5bdd8e3` |
| 4 | `def` | [and](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/and--ab72a20c659004342945064f.md) | 61 | `declaration-track:ab72a20c659004342945064f09a64f6285375fd7f42335d3b9d4614c21907b0d` |
| 5 | `def` | [or](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/or--768226c8e588cdf0e358312b.md) | 66 | `declaration-track:768226c8e588cdf0e358312b971328759bc0a36dde58eee8e447a0d9cc1693d3` |
| 6 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/xor--e02cf2858607f6908cc98666.md) | 71 | `declaration-track:e02cf2858607f6908cc98666b42bd1702e62c687286fc3069f226292a89490fc` |
| 7 | `def` | [not](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/not--539fd1362d163a1d2d9ae401.md) | 76 | `declaration-track:539fd1362d163a1d2d9ae401d5f7c36f395ad7712266bd3adfe1e5825d6ba562` |
| 8 | `theorem` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/map-apply--50970b31848f603013277dad.md) | 80 | `result-track:50970b31848f603013277dadd86d7287f54fca7cdeb36e74351e22e12a6380d4` |
| 9 | `theorem` | [zipWith_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/zipwith-apply--11710e6c96d0a2c45606f618.md) | 89 | `result-track:11710e6c96d0a2c45606f6182da12306274d5d939d24d435a0f27cc0aac84a0a` |
| 10 | `theorem` | [and_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/and-apply--05af8f05a6bfffd113aa1ef9.md) | 98 | `result-track:05af8f05a6bfffd113aa1ef95781dab4a59b013d1b07cc6cf886fb5480badfd3` |
| 11 | `theorem` | [or_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/or-apply--0cbabd13cd9dee449b22b108.md) | 106 | `result-track:0cbabd13cd9dee449b22b108a6010d29770521f5c84e885210359f893c3335a1` |
| 12 | `theorem` | [xor_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/xor-apply--b5d3941e8e645b3f6a053877.md) | 114 | `result-track:b5d3941e8e645b3f6a05387745eec4271056606702690ad55f1996f060281394` |
| 13 | `theorem` | [not_apply](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/not-apply--54a6dbcb546528de10b03696.md) | 122 | `result-track:54a6dbcb546528de10b03696262fdc1248b539832da5e0aef6812929b839b552` |
| 14 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/ext--d4f6c7d634d16ca04dde3c4a.md) | 131 | `result-track:d4f6c7d634d16ca04dde3c4a52fe8ee1ddc40352a3f49b1a8f6f156bc69bdc5d` |
| 15 | `theorem` | [and_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/and-comm--b185d2dadbd54be7e45182ec.md) | 138 | `result-track:b185d2dadbd54be7e45182ec7bbc4915bd75bf2c5c5aad614ec7bd57427e687c` |
| 16 | `theorem` | [and_assoc](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/and-assoc--62bee12f47200b2b370a3db9.md) | 146 | `result-track:62bee12f47200b2b370a3db91f47a0a5b96ba2ba02a1018982a8fe329f5a43f9` |
| 17 | `theorem` | [or_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/or-comm--121ed1adde475a9da26ea54b.md) | 155 | `result-track:121ed1adde475a9da26ea54b3d3680add952ed2bdccc459a0e28ed1bf743866e` |
| 18 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/xor-comm--8a43968db808c76e016f1b2e.md) | 163 | `result-track:8a43968db808c76e016f1b2e222f4abf195c6c53b3b6b9b44aadfb81440105e6` |
| 19 | `theorem` | [not_not](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/not-not--86171a910da0bd5b5a8e1297.md) | 171 | `result-track:86171a910da0bd5b5a8e12977829eeaef1f2538223ed0f9fd2c57d7e9a959a2c` |
| 20 | `structure` | [BinMatMut](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/binmatmut--3640d5084a905d3d5a2d8f92.md) | 189 | `declaration-track:3640d5084a905d3d5a2d8f922888fa4edc9f15996a5f1050b9041dec4e231195` |
| 21 | `def` | [flatIdx](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/flatidx--e058426dbedf395a36f8e33c.md) | 203 | `declaration-track:e058426dbedf395a36f8e33c52c0db2b82574e4cc11011b9d734ada32cf5fa66` |
| 22 | `def` | [ofArray?](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/ofarray--02417dba2a498fd4862ad9d1.md) | 222 | `declaration-track:02417dba2a498fd4862ad9d1cc58359157bb6ef19ca9a2103309e57db43c06dd` |
| 23 | `def` | [fill](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/fill--caa92100fa82ff586eaeb7d4.md) | 233 | `declaration-track:caa92100fa82ff586eaeb7d48e156e13fc706fc5825eb316c3a40a35085d9a19` |
| 24 | `def` | [get](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/get--199b45940e7674db04702e3c.md) | 246 | `declaration-track:199b45940e7674db04702e3c874a856c67c7e06dc6d433badb561875a1a939d8` |
| 25 | `def` | [toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/todecl--88178f610a2479e89d2f49b7.md) | 256 | `declaration-track:88178f610a2479e89d2f49b73478cc3c75cba277add2cc4f461583959b18317a` |
| 26 | `def` | [mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/mapinplace--abd6f89c458cd558af748d3f.md) | 268 | `declaration-track:abd6f89c458cd558af748d3f3c4fa0e7ce27683762f3a2857eebe0184a35b687` |
| 27 | `def` | [zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/zipwithinplace--0260729a447a471c943810d3.md) | 282 | `declaration-track:0260729a447a471c943810d373043589245757d8c8628a066dce8ccd393ae884` |
| 28 | `def` | [andInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/andinplace--118a1de077077a1cfff54628.md) | 296 | `declaration-track:118a1de077077a1cfff546280a0ae00aa4425e58ca4ecb3e986642ddb58eff29` |
| 29 | `def` | [orInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/orinplace--53996d08ec34a77e2f70b982.md) | 302 | `declaration-track:53996d08ec34a77e2f70b98222fe1ac919c88dd93a3863c4ecd2a66d9ac1a9eb` |
| 30 | `def` | [xorInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/xorinplace--ac802da10c8c9fba2a80c3f3.md) | 308 | `declaration-track:ac802da10c8c9fba2a80c3f34e28763e793cf5fda68927e287fb090fa96a7a2a` |
| 31 | `def` | [notInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/notinplace--34c1e980584dd6e5b1e5b039.md) | 314 | `declaration-track:34c1e980584dd6e5b1e5b0397de5316befa476494b212915e1ce4a5a10717602` |
| 32 | `theorem` | [get_mapInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/get-mapinplace--ddebaf3c915d8adfd95cd095.md) | 326 | `result-track:ddebaf3c915d8adfd95cd095dd4c8ecbda9efdf374e9af4755bd3ae90ec05969` |
| 33 | `theorem` | [get_zipWithInPlace](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/get-zipwithinplace--7ebcf05047a2252a12272fd0.md) | 337 | `result-track:7ebcf05047a2252a12272fd09df63214ecfc661a8959b198f3d10b7d55a9ab36` |
| 34 | `theorem` | [mapInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/mapinplace-spec--b9576515f2af2c1ec053ff57.md) | 351 | `result-track:b9576515f2af2c1ec053ff573fe1ec5131aacfb4426afb0ccb511dd1b704a3eb` |
| 35 | `theorem` | [zipWithInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/zipwithinplace-spec--f42103b9ef918c23ca5c6b6f.md) | 366 | `result-track:f42103b9ef918c23ca5c6b6fcb6a25db19877b37432488c2d22b53babbe5e748` |
| 36 | `theorem` | [andInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/andinplace-spec--283d937de9168119e44158cf.md) | 375 | `result-track:283d937de9168119e44158cf97cc406217df81e3eab69c9abe02523dd2f98a95` |
| 37 | `theorem` | [orInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/orinplace-spec--7bb6519d08cc45ee62e6637b.md) | 382 | `result-track:7bb6519d08cc45ee62e6637bb5633490a8d46393ee09a5b166ab85564b4779b0` |
| 38 | `theorem` | [xorInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/xorinplace-spec--f32ccd73bbf8b3566c11bad7.md) | 389 | `result-track:f32ccd73bbf8b3566c11bad7cebfa9d4c2f10374173ddcbf334f46f4e9a5c68f` |
| 39 | `theorem` | [notInPlace_spec](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/notinplace-spec--a59bc66965ede61ebe2d54c6.md) | 396 | `result-track:a59bc66965ede61ebe2d54c6fba58bbce118e9e611c0b11b577d0876355dd0bf` |
| 40 | `def` | [Refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/refines--473e5c803a3c58f894bf23e7.md) | 410 | `declaration-track:473e5c803a3c58f894bf23e73eab07c630cbd61a638ae91dc2e8d279a26079f2` |
| 41 | `theorem` | [refines_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/refines-todecl--22817b96931be71fd8fc5624.md) | 416 | `result-track:22817b96931be71fd8fc5624e5df70be7d2bc82fd5d3a382f5e8e111e651a0a0` |
| 42 | `theorem` | [mapInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/mapinplace-refines--954ddc046c42169c2b8c7216.md) | 424 | `result-track:954ddc046c42169c2b8c72169ff50cd5bcc8c00467f8f204d49e21a736be6c5e` |
| 43 | `theorem` | [zipWithInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/zipwithinplace-refines--7492a46fa848a12aa8dee35f.md) | 438 | `result-track:7492a46fa848a12aa8dee35f75f00c68fa894898e531d0a0ba361348004be6d0` |
| 44 | `theorem` | [andInPlace_refines](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/andinplace-refines--66a1d8db7f4798edeaf8f583.md) | 450 | `result-track:66a1d8db7f4798edeaf8f58377ce614d27f5b2542f7ed5e884a1fa51eabfe97a` |
| 45 | `theorem` | [andInPlace_comm_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/andinplace-comm-todecl--43ab7ad29a4ea268a13114a9.md) | 475 | `result-track:43ab7ad29a4ea268a13114a936af771f5aeda68b50c8eedbf8825892d9f4a258` |
| 46 | `theorem` | [andInPlace_assoc_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/andinplace-assoc-todecl--063b0a55986b7f43689267c1.md) | 482 | `result-track:063b0a55986b7f43689267c152a618492f627ee60f913545fbd751eb490d001b` |
| 47 | `theorem` | [notInPlace_involutive_toDecl](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrix/Variant5c8cafc0dd9e705bec3f1612943bd4da935ed5631623e5b88bc54aa768262146.lean/declarations/notinplace-involutive-todecl--46986a52c97f5abe104e31cd.md) | 490 | `result-track:46986a52c97f5abe104e31cd5b233a2b55e8a6537f6dffedd1dc9839cd08fb9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
