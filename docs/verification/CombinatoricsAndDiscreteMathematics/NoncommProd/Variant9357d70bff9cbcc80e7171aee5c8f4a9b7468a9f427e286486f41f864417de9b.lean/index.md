# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NoncommProd.Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d96b6c472c09693fdd814cb0e7f042f487ebb3a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d96b6c472c09693fdd814cb0e7f042f487ebb3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommFoldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfoldr--b4f4d6613a8283a3f28c3fa8.md) | 41 | `declaration-track:b4f4d6613a8283a3f28c3fa8d29421bab4d6624b9280f3a3186307933a7e2b17` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfoldr-coe--889046bee7c2db8f38a0e481.md) | 50 | `result-track:889046bee7c2db8f38a0e481cfa5bc8b805cb2c7fba230a63990d42bbba91368` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfoldr-empty--383d4a09efa02d8c572c10ba.md) | 57 | `result-track:383d4a09efa02d8c572c10baebac263af4beee8763d1b8400573f02a855eb28e` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfoldr-cons--2bc546fb949aec1a36f3991a.md) | 60 | `result-track:2bc546fb949aec1a36f3991aeb5895676d6ca37843c6475b56fe84eb741649c9` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfoldr-eq-foldr--39daaba6737f9e5373d155ee.md) | 65 | `result-track:39daaba6737f9e5373d155ee95fa3d4440ada215910624c6d758851ed71d9bc6` |
| 6 | `def` | [noncommFold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfold--f75a71b2c69aa9c903fbb16b.md) | 76 | `declaration-track:f75a71b2c69aa9c903fbb16b45d0538cd50abf2066d2b1c7f05c7df77cc3898f` |
| 7 | `theorem` | [noncommFold_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfold-coe--0e6e4538f052f96620b61376.md) | 81 | `result-track:0e6e4538f052f96620b61376cdfe3671cff392d4388c8949e423b94309f501e8` |
| 8 | `theorem` | [noncommFold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfold-empty--7a0526c2c4453ce90677cbea.md) | 85 | `result-track:7a0526c2c4453ce90677cbea30b87708721d64d2b3efdf7428b1b178fa983afc` |
| 9 | `theorem` | [noncommFold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfold-cons--fcce8c68218bf9ed87744aca.md) | 88 | `result-track:fcce8c68218bf9ed87744aca1f0b78a0b1b334b572182739f3f3b7326015630b` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommfold-eq-fold--fd33c81ec00e9053f45a94ae.md) | 93 | `result-track:fd33c81ec00e9053f45a94aecd721c16a8403080d2115beac1751091ea2d3341` |
| 11 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod--b42b88c265b8e5ca0c320408.md) | 107 | `declaration-track:b42b88c265b8e5ca0c320408f8d4b1a680e085d4738c278ef5dfc63a921b9e9d` |
| 12 | `theorem` | [noncommProd_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-coe--f70779093d40ce4ca6e22ed4.md) | 111 | `result-track:f70779093d40ce4ca6e22ed4f3f44f42c4e2a1a70f85aabb5f33631b49f386d9` |
| 13 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-empty--562eb6d260cb6467f2d2b295.md) | 121 | `result-track:562eb6d260cb6467f2d2b295898088e7927a260eb88fb13437fc0d90b97c1ef1` |
| 14 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-cons--d0975a3c5255701832d4c3bc.md) | 125 | `result-track:d0975a3c5255701832d4c3bc61e940bdc3dcf1e60d57a5cfbbdd7ababcf2e581` |
| 15 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-cons--b06e20bd69ca7093ecc4ab26.md) | 131 | `result-track:b06e20bd69ca7093ecc4ab26bfc02a51c1c8df694092c22b38c0269202fdb279` |
| 16 | `theorem` | [noncommProd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-add--aeb98f32ae828e59e53f5407.md) | 147 | `result-track:aeb98f32ae828e59e53f54077ecdd86864a4fc274cfaaaecace61653653c7d94` |
| 17 | `lemma` | [noncommProd_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-induction--57f373e60119ed25b641dd38.md) | 156 | `result-track:57f373e60119ed25b641dd38e9aa6fa636f2ac26899eed32563dbbc50b354254` |
| 18 | `theorem` | [map_noncommProd_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/map-noncommprod-aux--f3f6c854d124fbbbe34fec76.md) | 166 | `result-track:f3f6c854d124fbbbe34fec76a0373d3dc5195f96fca46fabbcbc5b8f91448dbf` |
| 19 | `theorem` | [map_noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/map-noncommprod--971bdfb04c071949387ae3bb.md) | 173 | `result-track:971bdfb04c071949387ae3bb04df62a501369206e0bd34fb10357018d75f5913` |
| 20 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-eq-pow-card--7d315e640ad007802cac0241.md) | 179 | `result-track:7d315e640ad007802cac0241147166faa047b4fb1c9a934daae85777ac9ccd46` |
| 21 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-eq-prod--d3752a722ff4682b20c0bcc1.md) | 186 | `result-track:d3752a722ff4682b20c0bcc1fdd69d5f1f2465e98a3d0b70ec8a22aa7f0b08d0` |
| 22 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-commute--4f2ea464a10ea002162646d3.md) | 192 | `result-track:4f2ea464a10ea002162646d33ae69a194560880077f65f723d3c6f5de7267061` |
| 23 | `theorem` | [mul_noncommProd_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/mul-noncommprod-erase--7de0789427795d8600d6a802.md) | 198 | `result-track:7de0789427795d8600d6a8022ddbb2e3d912c41dd3be529f69a0953a4c15c4f0` |
| 24 | `theorem` | [noncommProd_erase_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-erase-mul--259ad23315970565b409b02b.md) | 209 | `result-track:259ad23315970565b409b02b94ec7d1343bed7fef9ce719695155938457d601f` |
| 25 | `theorem` | [noncommProd_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-lemma--1fce437e4acb78ad707bf5b5.md) | 229 | `result-track:1fce437e4acb78ad707bf5b5d968ac593aa1d3c09f667288116b38e93d1ea804` |
| 26 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod--ec8569f41d2b23a99322ff63.md) | 241 | `declaration-track:ec8569f41d2b23a99322ff63e8570e43f4558c539913f68d3f442b7839b4ebfb` |
| 27 | `lemma` | [noncommProd_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-induction--3a0d8bf239f98157024ab696.md) | 246 | `result-track:3a0d8bf239f98157024ab696e8ec86ec7f417d79fba12cdb1272292dd7f72f1f` |
| 28 | `theorem` | [noncommProd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-congr--7f7fdc4625556302f1347a3e.md) | 254 | `result-track:7f7fdc4625556302f1347a3e93bc2e5334b6d07fd852a4002de4c76a87970750` |
| 29 | `theorem` | [noncommProd_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-tofinset--4123f861904acef9f6317159.md) | 265 | `result-track:4123f861904acef9f631715971dfaad84d3d4db04c0f0732d9018ad78db6a47b` |
| 30 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-empty--5b8629007f611f8efe3b99a6.md) | 271 | `result-track:5b8629007f611f8efe3b99a6891ca78b4f214151c09d85caa9c4fd5d61d6de54` |
| 31 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-cons--3145da85a74044b270e70ce2.md) | 275 | `result-track:3145da85a74044b270e70ce2af6bb20318875012a2db50761b3b3bb2403b59d2` |
| 32 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-cons--edd05f458230ca51cba4b4bb.md) | 282 | `result-track:edd05f458230ca51cba4b4bb3155f328c1123fe9bba048fdecc7b0adfae1fd1a` |
| 33 | `theorem` | [noncommProd_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-insert-of-notmem--824b243633c71c9dccd91f28.md) | 289 | `result-track:824b243633c71c9dccd91f28636e7ff5af65ac1907e48ac3f02f94f5ca5c92af` |
| 34 | `theorem` | [noncommProd_insert_of_notMem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-insert-of-notmem--427abf7fffc4fc8c927b09fe.md) | 302 | `result-track:427abf7fffc4fc8c927b09fee651b7ab9e95b79c687838e678c5f93e33a3000e` |
| 35 | `theorem` | [noncommProd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-singleton--89ffedc1ee7b36a73eb53527.md) | 315 | `result-track:89ffedc1ee7b36a73eb5352721ef1043cd05e82b5b5e3a36dfae2e2d231a86f1` |
| 36 | `theorem` | [map_noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/map-noncommprod--cf466e3979e78db1a53b0f4c.md) | 325 | `result-track:cf466e3979e78db1a53b0f4cdbe58b4558eb83ef67f528a3499efcce24ef6501` |
| 37 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-eq-pow-card--c003561a5c6fd1ec2f495e99.md) | 331 | `result-track:c003561a5c6fd1ec2f495e99da1a1154a229b4e9b8d347c57ac869b1e261e932` |
| 38 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-commute--2fed0d3e3d7b35ec417e9539.md) | 338 | `result-track:2fed0d3e3d7b35ec417e9539197b7abc5f18b73bbb3f8400fa6929497b3c9a05` |
| 39 | `theorem` | [mul_noncommProd_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/mul-noncommprod-erase--cd4ec755c0d0821ee477b99a.md) | 346 | `result-track:cd4ec755c0d0821ee477b99ae7909ff758289a0c9427e433e7312bc054b8cd98` |
| 40 | `theorem` | [noncommProd_erase_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-erase-mul--491fb775ada62110c605bb3b.md) | 353 | `result-track:491fb775ada62110c605bb3bc6d213d76c556df7f58818cc5ecacdec2148953e` |
| 41 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-eq-prod--ba8f4f6c8e07c4ab09430db5.md) | 361 | `result-track:ba8f4f6c8e07c4ab09430db5267c12e39c3e2c1b79bedd99d29fbf8e1c9bb544` |
| 42 | `theorem` | [noncommProd_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-union-of-disjoint--ff30d35d19166cf7bad31763.md) | 369 | `result-track:ff30d35d19166cf7bad3176338bd5807dd6926207e26990e7964c568fd912dc2` |
| 43 | `theorem` | [noncommProd_mul_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-mul-distrib-aux--769ba2fe2e0823693c914214.md) | 385 | `result-track:769ba2fe2e0823693c914214860db9d244444e5e7b3d1ee0f6c92fc98cd9f1c1` |
| 44 | `theorem` | [noncommProd_mul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-mul-distrib--3b865b1c6c456d2d846e3054.md) | 399 | `result-track:3b865b1c6c456d2d846e3054796e28adbebb7e94a3494c29f9465e86d34273d1` |
| 45 | `theorem` | [noncommProd_mul_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/noncommprod-mul-single--b0a284ab0785071fd554eda5.md) | 415 | `result-track:b0a284ab0785071fd554eda51baa4216dd81f309d718e73d70005031f6b410c9` |
| 46 | `theorem` | [_root_.MonoidHom.pi_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant9357d70bff9cbcc80e7171aee5c8f4a9b7468a9f427e286486f41f864417de9b.lean/declarations/root-monoidhom-pi-ext--ef407002f8f82b302a20f149.md) | 439 | `result-track:ef407002f8f82b302a20f1494784a07f365cfc6013d89133d0b003e93cc77b30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
