# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Halting.Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10909d0380a3600f38848554bfabbe2ada0253ed",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10909d0380a3600f38848554bfabbe2ada0253ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.PartrecCode` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [merge'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/merge--3b760e05276f9674a1e3796a.md) | 26 | `result-track:3b760e05276f9674a1e3796a834b14a3f3e200bd62c5bc75e9a836e8cdcfe1da` |
| 2 | `theorem` | [merge'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/merge--589b6a30b32e6c5ab8a325ed.md) | 73 | `result-track:589b6a30b32e6c5ab8a325ed013fc738a39deb9c5eaaa50c967c01fe9f0ddedb` |
| 3 | `theorem` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/merge--bc0ba6461a2bfe3aa85d5543.md) | 101 | `result-track:bc0ba6461a2bfe3aa85d554328b443f6ff6ac814006d80068eb7ff7d3a9e7e25` |
| 4 | `theorem` | [cond](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/cond--52eecbdba748d4903bd017c7.md) | 115 | `result-track:52eecbdba748d4903bd017c7f941c6b5760f41439756c506582ffd95c1c32310` |
| 5 | `theorem` | [sumCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/sumcaseson--106faeaf2fe90d6b60a21dc4.md) | 123 | `result-track:106faeaf2fe90d6b60a21dc41749b4794af9c207101c41e2f34a9294f453b1da` |
| 6 | `def` | [ComputablePred](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/computablepred--930ac5ddcdcc078f472285ff.md) | 136 | `declaration-track:930ac5ddcdcc078f472285ff2194c2857bab4a5751734c9933bf538a25e475d3` |
| 7 | `def` | [REPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/repred--6f7c8a5d984870b54e2897b1.md) | 141 | `declaration-track:6f7c8a5d984870b54e2897b1a639b1b3a7eff9ba5d0b2b834fdd3f11b77b770c` |
| 8 | `theorem` | [REPred.of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/repred-of-eq--55286430dac701f99c4db4a1.md) | 146 | `result-track:55286430dac701f99c4db4a1bda556c631747d1820cd1a7171c03e68955c65c3` |
| 9 | `theorem` | [Partrec.dom_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/partrec-dom-re--8411feb6a2116d717e6ca74c.md) | 152 | `result-track:8411feb6a2116d717e6ca74c03f42e01133fda243f359e2856d2eb1a242f082b` |
| 10 | `theorem` | [ComputablePred.of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/computablepred-of-eq--3bcfc3cbce759763db000eef.md) | 156 | `result-track:3bcfc3cbce759763db000eef1de8675780ff58e4db25b0a60f5a6e822ede7037` |
| 11 | `theorem` | [computable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/computable-iff--541b7694ba058faa0fba7077.md) | 168 | `result-track:541b7694ba058faa0fba7077af61bf74298354a2bf0f43ed4733f5607ff5ea50` |
| 12 | `theorem` | [not](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/not--18d8c2cfe28d28bb93033b5d.md) | 173 | `result-track:18d8c2cfe28d28bb93033b5d87498a39acf1ca93010611544caaa37987facd1e` |
| 13 | `theorem` | [ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/ite--8c5353f5706f9d1b253d538e.md) | 183 | `result-track:8c5353f5706f9d1b253d538ecc6ddb8683d44ca96eaec1049d923343efc3f476` |
| 14 | `theorem` | [to_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/to-re--2fb5ad2e580c47e58050623d.md) | 190 | `result-track:2fb5ad2e580c47e58050623d672b89c306d97357ed0d23b687082cd3ed271da6` |
| 15 | `theorem` | [rice](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/rice--3a00be6e86be8ad4b93e82a8.md) | 200 | `result-track:3a00be6e86be8ad4b93e82a837801512ad316bdcbca3bdbe37f74ee29dbed91e` |
| 16 | `theorem` | [rice₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/rice--b874ab93a3271c510d9b9b2a.md) | 216 | `result-track:b874ab93a3271c510d9b9b2af4efbf10c1c326d86634361635a6e57ddde2929e` |
| 17 | `theorem` | [halting_problem_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/halting-problem-re--4fcd658a6c4ee9d939333dd7.md) | 234 | `result-track:4fcd658a6c4ee9d939333dd73147ecf61fc6a171fcf31348932476722b356185` |
| 18 | `theorem` | [halting_problem](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/halting-problem--0c356a5e3b7c5fd7e0393b7a.md) | 238 | `result-track:0c356a5e3b7c5fd7e0393b7a3a1ee82c9df216d03723c4b1b0497fd7ecc1e56a` |
| 19 | `theorem` | [computable_iff_re_compl_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/computable-iff-re-compl-re--8da503db4dab627aff9a9661.md) | 245 | `result-track:8da503db4dab627aff9a966118c905dec98bc103baad8e35dfcfad2ae0a54cbc` |
| 20 | `theorem` | [computable_iff_re_compl_re'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/computable-iff-re-compl-re--b3bb7ab8592c0897ac36d27c.md) | 262 | `result-track:b3bb7ab8592c0897ac36d27c490a9cc5d02f17ac521bd843aa3d927e66ab6ccc` |
| 21 | `theorem` | [halting_problem_not_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/halting-problem-not-re--f03247397e0c008eb712547a.md) | 266 | `result-track:f03247397e0c008eb712547a6de7c23331a9e491d8957a885009772b115b4695` |
| 22 | `inductive` | [Partrec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/partrec--270505021ddc3a8ef7111373.md) | 276 | `declaration-track:270505021ddc3a8ef71113734ddf3585f5f9e2bb7c2a9db648e071011192fa56` |
| 23 | `theorem` | [to_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/to-part--8ca2cea2d336d2d0fa096431.md) | 292 | `result-track:8ca2cea2d336d2d0fa096431ef628d9de1d89f383b5dcc284d20239e75345952` |
| 24 | `theorem` | [of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/of-eq--4ea2a5aeb397cf17e2b4386b.md) | 303 | `result-track:4ea2a5aeb397cf17e2b4386b9e8af7efc9a2b31e9f699efac9d6dbff500a3f19` |
| 25 | `theorem` | [of_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/of-prim--10cb61640b23a9e66dae8f37.md) | 307 | `result-track:10cb61640b23a9e66dae8f37410ef90a43f499213a8dfeba4f2080806513e7e8` |
| 26 | `theorem` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/head--ece088ab7cd19e0ae14ea93a.md) | 310 | `result-track:ece088ab7cd19e0ae14ea93a60e84f02be78ff8df2754bf953510fc73d8da78d` |
| 27 | `theorem` | [tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/tail--4f7645bca6fc4c916da98f98.md) | 313 | `result-track:4f7645bca6fc4c916da98f9857b32e8e98222827d386984c918eec2587be13b3` |
| 28 | `theorem` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/bind--21f3f6a7d815df0739dd14e5.md) | 317 | `result-track:21f3f6a7d815df0739dd14e54fe102571d79c003bf1d61b38befa8aae23179ba` |
| 29 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/map--05c292c1aff165de311dde56.md) | 324 | `result-track:05c292c1aff165de311dde56a7bbdbcfe81b6780753f1f19aaa6b5d45d1b512e` |
| 30 | `def` | [Vec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/vec--49a6cf110f32dde1f58e5311.md) | 330 | `declaration-track:49a6cf110f32dde1f58e53115641695f4e1bd419ba8edb9c76408240c404a27d` |
| 31 | `theorem` | [Vec.prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/vec-prim--d442f62842713b47f81c7593.md) | 333 | `result-track:d442f62842713b47f81c75931b71561143a760245110dec8bb8632954821004d` |
| 32 | `theorem` | [nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/nil--1dbcb19e1413927a9400df7d.md) | 335 | `result-track:1dbcb19e1413927a9400df7d5369a6acc5eb5d5b2ae857e7149a96a52a4cb533` |
| 33 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/cons--3735373f3a6331684f065cf8.md) | 337 | `result-track:3735373f3a6331684f065cf87834582bf10a3c0347b9e7e8981b46cf1ca9ba5e` |
| 34 | `theorem` | [idv](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/idv--e2aa714de5b43f359a7ea9dc.md) | 341 | `result-track:e2aa714de5b43f359a7ea9dc4dc85748435e6f3e086f613e815a82c65c5a60de` |
| 35 | `theorem` | [comp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/comp--ecd71caa40d7f8ae2ea7c4f7.md) | 344 | `result-track:ecd71caa40d7f8ae2ea7c4f7e322154b95f4364aec56893a82c36b68f416d2d3` |
| 36 | `theorem` | [comp₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/comp--3c12d5ba6b3847e5cc7e408c.md) | 347 | `result-track:3c12d5ba6b3847e5cc7e408cfab52aa78296c29cb999d367a03abade8847ca66` |
| 37 | `theorem` | [rfindOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/rfindopt--563ba48cacd7049f8b41c2a9.md) | 351 | `result-track:563ba48cacd7049f8b41c2a91273ad9553c41642f45ddc0fcf725975b4e32186` |
| 38 | `theorem` | [of_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/of-part--2d9dd33fdbe8609974764285.md) | 375 | `result-track:2d9dd33fdbe86099747642855249a635d60dcc38c4ec242300d436ec2ec3087a` |
| 39 | `theorem` | [part_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/part-iff--5b505b2416002002ae023f10.md) | 392 | `result-track:5b505b2416002002ae023f1051ce0390ef7f06301fa04a62fafe4621b12bec40` |
| 40 | `theorem` | [part_iff₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/part-iff--e1e25004076c1b14486bb0fb.md) | 395 | `result-track:e1e25004076c1b14486bb0fb9e30a4c2a0ff410c235a5f554387ea49e17647b6` |
| 41 | `theorem` | [part_iff₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/part-iff--159f67a3e576829673ab27e8.md) | 402 | `result-track:159f67a3e576829673ab27e8ac72cdb709e77941f5c096da1d7ed2ce3272928e` |
| 42 | `theorem` | [vec_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Variantab2ad15d931d1d2f147c2e06864786886176c986bf9290f1f08851c1ad313dd0.lean/declarations/vec-iff--31da21964696e98254ca3db2.md) | 409 | `result-track:31da21964696e98254ca3db23af1ad432c8e1ac4459cf0de5bc277a88879a813` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
