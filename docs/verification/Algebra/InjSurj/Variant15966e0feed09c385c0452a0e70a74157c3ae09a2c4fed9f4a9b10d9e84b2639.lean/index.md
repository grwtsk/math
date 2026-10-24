# Verification target: GRWTSK.Algebra.InjSurj.Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62e4cc7aac358ab9c0e8edf8f289e0aa1eac7f6b",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62e4cc7aac358ab9c0e8edf8f289e0aa1eac7f6b`.

Source path: `GRWTSK/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/leftdistribclass--8868955aec79354189021b88.md) | 23 | `result-track:8868955aec79354189021b88073fa5e19c2ca1aa5aab0b978c65c75d283ee4f7` |
| 2 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/rightdistribclass--297150576d83d60a8bab5ef3.md) | 28 | `result-track:297150576d83d60a8bab5ef32acf1a39a393aeb36e15af63b8e924cafaa96db3` |
| 3 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/distrib--bc69cb0c410860d11879417b.md) | 37 | `declaration-track:bc69cb0c410860d11879417be3aaa6ddb949498ab5ace72c7ab775bc32e1dc98` |
| 4 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/hasdistribneg--a88b1f56c2d78b9e08c83e90.md) | 45 | `declaration-track:a88b1f56c2d78b9e08c83e908534f4f87d5d0d168c801cbd45700da4eb05b4c0` |
| 5 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassocsemiring--5501cd36619a0d38640df7c1.md) | 54 | `declaration-track:5501cd36619a0d38640df7c1cb1e8b4cb25dc568f182623c055c72bcee0641e6` |
| 6 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalsemiring--bcb94172a8c963b314031209.md) | 63 | `declaration-track:bcb94172a8c963b314031209a52a488d0cd18c72a46af907b60ba39232234e2e` |
| 7 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonassocsemiring--ef5f654385bf3b0b650f9260.md) | 72 | `declaration-track:ef5f654385bf3b0b650f9260a7797928af9b2cd6805485be4acfc71e9d573d61` |
| 8 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/semiring--6104530cc690d96d87651e93.md) | 82 | `declaration-track:6104530cc690d96d87651e9330568a42ed97945de716ba5fb12cb843ec794f44` |
| 9 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassocring--98e1176599bc5a13bf7c4031.md) | 92 | `declaration-track:98e1176599bc5a13bf7c40319731e841ab0b8edb0272046a21af8ffc1d56d96c` |
| 10 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalring--a0b08d3cf1ae7f8cf56d6493.md) | 102 | `declaration-track:a0b08d3cf1ae7f8cf56d649309a01fb996a7ce44ddbcfea3f16d4e9958ec9af7` |
| 11 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonassocring--579d97e6d1296c83f06eb0ab.md) | 112 | `declaration-track:579d97e6d1296c83f06eb0abcd6860af18409550dcb78ef649c51686ca0ddc02` |
| 12 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/ring--06f8b68737341d4dffcd0412.md) | 124 | `declaration-track:06f8b68737341d4dffcd04124275649ce4fa55477b3e02acc12f23663568fe89` |
| 13 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassoccommsemiring--cec0b565f0113a16ac0a9d8a.md) | 136 | `declaration-track:cec0b565f0113a16ac0a9d8a51091484cabd3344256ddddeff46a6a0829522ba` |
| 14 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalcommsemiring--0c466c8379c3393108d1ae43.md) | 145 | `declaration-track:0c466c8379c3393108d1ae43605ce5d09f91117e0df8b7a43d96dbff834afe23` |
| 15 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/commsemiring--125fe1bdc346d1f35a9d178c.md) | 156 | `declaration-track:125fe1bdc346d1f35a9d178c94879240daa853fdc52c13d9466c894d65ba2a8c` |
| 16 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassoccommring--5f4cf4966a2a1c7437ffe145.md) | 166 | `declaration-track:5f4cf4966a2a1c7437ffe1457a2ba142cf5b915ef1fc2b5d57035aca2ece3f8b` |
| 17 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalcommring--817c980815367bf886bea952.md) | 176 | `declaration-track:817c980815367bf886bea9529dbc0e699f1157133a04c7ff5bc31fef5862341b` |
| 18 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/commring--395e95f8e504c2d56a4b4efb.md) | 186 | `declaration-track:395e95f8e504c2d56a4b4efb982103a568cd6b3faa2a2bb1edfce32dd2b3a498` |
| 19 | `theorem` | [leftDistribClass](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/leftdistribclass--4718b3c0e1ce07959b818903.md) | 204 | `result-track:4718b3c0e1ce07959b8189032586be9fa8ba80a20ed89436ccbb911f8faf5f4d` |
| 20 | `theorem` | [rightDistribClass](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/rightdistribclass--36964eb5e95adf130ea7d19c.md) | 209 | `result-track:36964eb5e95adf130ea7d19c71510cd150982ca411be633918ce7ce2ae65d029` |
| 21 | `abbrev` | [distrib](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/distrib--9f697410d2433caeabcc30f0.md) | 215 | `declaration-track:9f697410d2433caeabcc30f060d5f4a1f6c1932cfa177f9e7faea0131509e4b0` |
| 22 | `abbrev` | [hasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/hasdistribneg--0987cf9a0cee2b33d0761c24.md) | 226 | `declaration-track:0987cf9a0cee2b33d0761c2426efd6543cf276ce64bf47c0eba27cc493872d7f` |
| 23 | `abbrev` | [nonUnitalNonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassocsemiring--0043c22c6ae202d15430f012.md) | 234 | `declaration-track:0043c22c6ae202d15430f012b0c4c11af97e67aa7cf77dced9183d26ec6799cc` |
| 24 | `abbrev` | [nonUnitalSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalsemiring--43b9eb85881906410535731e.md) | 243 | `declaration-track:43b9eb85881906410535731e586b7732639c225fbb45e324fc7fe528ef6557fe` |
| 25 | `abbrev` | [nonAssocSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonassocsemiring--8ae26613d3b11a17cb22ceb5.md) | 251 | `declaration-track:8ae26613d3b11a17cb22ceb53ab17dfaa3eef90df969275a713208b6570ff812` |
| 26 | `abbrev` | [semiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/semiring--7937b58f53f13c2ffbd77f66.md) | 261 | `declaration-track:7937b58f53f13c2ffbd77f668274c0cb0cb67938d33702830c10f0e0b91efd2f` |
| 27 | `abbrev` | [nonUnitalNonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassocring--38e2c753dd49d5f724691c82.md) | 271 | `declaration-track:38e2c753dd49d5f724691c822f26ed3f141582adfc8de54a280b3c19d005795d` |
| 28 | `abbrev` | [nonUnitalRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalring--3dc81edaf5655d01d91adc10.md) | 281 | `declaration-track:3dc81edaf5655d01d91adc1090f8eed34163d3e9f434aa616baa9a0720739494` |
| 29 | `abbrev` | [nonAssocRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonassocring--4854449db2cb38c6c991a9d8.md) | 291 | `declaration-track:4854449db2cb38c6c991a9d8f39ecec9b34555534264c4ea7597998255e56a66` |
| 30 | `abbrev` | [ring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/ring--c082e2247c8f778b30de8864.md) | 302 | `declaration-track:c082e2247c8f778b30de8864bb3afab114fdb22305c7e7edfffe0960bdf80ab8` |
| 31 | `abbrev` | [nonUnitalNonAssocCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassoccommsemiring--04b5bd742ba7a48e8f28b28c.md) | 314 | `declaration-track:04b5bd742ba7a48e8f28b28c423bf0c2c736d5e7a83b5514d3bb354eb81bb0bb` |
| 32 | `abbrev` | [nonUnitalCommSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalcommsemiring--e73a929314fb2d1742ed4566.md) | 322 | `declaration-track:e73a929314fb2d1742ed45662d94d1a3b2aebd0a86a9cf28c8a07e28442fcc76` |
| 33 | `abbrev` | [commSemiring](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/commsemiring--802d88ed98f61c648bd557e5.md) | 330 | `declaration-track:802d88ed98f61c648bd557e5974118a45e87e53eb3b65c8488695767948a5107` |
| 34 | `abbrev` | [nonUnitalNonAssocCommRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalnonassoccommring--d3e6d31bad0329fce083688c.md) | 339 | `declaration-track:d3e6d31bad0329fce083688ce468482a1ae6dfbc9ad7fe489dc9ae094ce479a2` |
| 35 | `abbrev` | [nonUnitalCommRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/nonunitalcommring--28cadf767ac5e8a8ff18faf4.md) | 349 | `declaration-track:28cadf767ac5e8a8ff18faf4be9bed973270542944dca7b47eaaca13f5e92bc6` |
| 36 | `abbrev` | [commRing](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/commring--e64f414fd40b5d211e8367c7.md) | 359 | `declaration-track:e64f414fd40b5d211e8367c7e26b4c7f02ced5cf2b16facfafd68693d6443e19` |
| 37 | `instance` | [AddOpposite.instHasDistribNeg](../../../../mathematics/Algebra/InjSurj/Variant15966e0feed09c385c0452a0e70a74157c3ae09a2c4fed9f4a9b10d9e84b2639.lean/declarations/addopposite-insthasdistribneg--74817ad4cdb2ec6ec40cc8b9.md) | 372 | `declaration-track:74817ad4cdb2ec6ec40cc8b90305d6da294f2133b865e73b2adddc79bd2e5007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
