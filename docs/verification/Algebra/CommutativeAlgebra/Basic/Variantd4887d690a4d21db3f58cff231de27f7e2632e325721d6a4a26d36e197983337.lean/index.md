# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab1c2198597faedcf09dbcc347ea8ed3e3c4abb1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/minpoly--12217236633dd25dde29fd57.md) | 37 | `declaration-track:12217236633dd25dde29fd5758ab7a4b0b69f37cbeca40a615aa2d74d532c284` |
| 2 | `theorem` | [monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/monic--994d13edc85da28cfb73bbc8.md) | 50 | `result-track:994d13edc85da28cfb73bbc89176aebb699789fc23ac31de3c238bc44cce07f7` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/ne-zero--8803f7f451b2cdf2fc609ca7.md) | 56 | `result-track:8803f7f451b2cdf2fc609ca74847ab1ffc193fe57b496d5f9743a49319baa450` |
| 4 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/eq-zero--40e75b424bd275f319c15684.md) | 59 | `result-track:40e75b424bd275f319c15684c61520d0ae6e9eb130d6f5491316ce51b3e31162` |
| 5 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/ne-zero-iff--82c92d9d6ec21cc2aaac7075.md) | 62 | `result-track:82c92d9d6ec21cc2aaac707595ccc722d830a2f0018d01fda80a11c6bccb3d76` |
| 6 | `theorem` | [algHom_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/alghom-eq--7c63e2a0638127ae08a9d88f.md) | 65 | `result-track:7c63e2a0638127ae08a9d88f42be2dc8f08f3e6936916b7506855beb96bbceb7` |
| 7 | `theorem` | [algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/algebramap-eq--81c731e977b15431a69d7f75.md) | 71 | `result-track:81c731e977b15431a69d7f75020198c16c163c3993a1c9a13b6c4e1227d2bf5d` |
| 8 | `theorem` | [algEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/algequiv-eq--112fe4074f7888c34797aa04.md) | 77 | `result-track:112fe4074f7888c34797aa04f91b18d5eb9f5fc155bcc9a7b5760ad80f358d8a` |
| 9 | `theorem` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/aeval--85c42f2536ab48d585fb2916.md) | 84 | `result-track:85c42f2536ab48d585fb291633fc9b19c595b72ed3520104b039c7ecac2a6d75` |
| 10 | `theorem` | [aeval_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/aeval-alghom--b196fd383c7398794870ed18.md) | 92 | `result-track:b196fd383c7398794870ed1821dc1eb0e4ee28c9960cd641f43114619c436cb0` |
| 11 | `theorem` | [ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/ne-one--e6b0055df0cf421722b31e88.md) | 96 | `result-track:e6b0055df0cf421722b31e88fa09a21b496acf19f495cb0dddd4c2a6dd0c3ade` |
| 12 | `theorem` | [map_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/map-ne-one--3c5b877b8f8c369350b807fe.md) | 101 | `result-track:3c5b877b8f8c369350b807fe9f76ebe58f433cbdffdeb964870eb55cc7a25187` |
| 13 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/not-isunit--0e0975b132036eed30e5dc0d.md) | 109 | `result-track:0e0975b132036eed30e5dc0d3b9a535561e8bc765a210a499afc0e3a8d8102cf` |
| 14 | `theorem` | [mem_range_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/mem-range-of-degree-eq-one--86aa02adbd37dae8d1e75814.md) | 116 | `result-track:86aa02adbd37dae8d1e75814d5a7691e4daf25e1fd578d8232ddf7c6ab36c83a` |
| 15 | `theorem` | [min](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/min--8230598f86efeacb9b924bfb.md) | 129 | `result-track:8230598f86efeacb9b924bfba0af4e0043e578e3a8790a3d4709bc0f0119173a` |
| 16 | `theorem` | [unique'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/unique--0c041b6b0680b4a08d41e8bd.md) | 135 | `result-track:0c041b6b0680b4a08d41e8bd20a284f400697e62c5281044fb3518c5b1ab8767` |
| 17 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/subsingleton--627ae25041bceafb6cc81086.md) | 160 | `result-track:627ae25041bceafb6cc810863da799763a604bc4ade7e7c17d2d7ac7683a6d8c` |
| 18 | `theorem` | [natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/natdegree-pos--3741b40255efcbcd98316a13.md) | 181 | `result-track:3741b40255efcbcd98316a13d0046522abda3666c03f4c3623e0d89c201ee43b` |
| 19 | `theorem` | [degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/degree-pos--cf910ebbc524382f433c5a04.md) | 191 | `result-track:cf910ebbc524382f433c5a04e6935bd524ea8bbedb142b4a0e4c313abb6e62b7` |
| 20 | `theorem` | [degree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/degree-eq-one-iff--2216a0557cbb943b6f20f2b4.md) | 198 | `result-track:2216a0557cbb943b6f20f2b467c7dca88e1648f9692d0e65d5b68ca38a21a298` |
| 21 | `theorem` | [natDegree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/natdegree-eq-one-iff--995db7bfc67fa3abf69d513d.md) | 205 | `result-track:995db7bfc67fa3abf69d513d894d4cb86bdc7dec049340bc2f33c9d937336496` |
| 22 | `theorem` | [two_le_natDegree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/two-le-natdegree-iff--3ccfcc93ef3830847d776cd1.md) | 210 | `result-track:3ccfcc93ef3830847d776cd157a284a76f91839cb0588188203cbf3e073dd3d7` |
| 23 | `theorem` | [two_le_natDegree_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/two-le-natdegree-subalgebra--ad5f6bbb40036bf90eb8caa4.md) | 215 | `result-track:ad5f6bbb40036bf90eb8caa41410b426f65a3e11e6472003c051472c77f8b07c` |
| 24 | `theorem` | [eq_X_sub_C_of_algebraMap_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/eq-x-sub-c-of-algebramap-inj--88712755557c4077ac13a086.md) | 224 | `result-track:88712755557c4077ac13a086ebafdf193e3a34fc036130efff4edfbb4e8f632b` |
| 25 | `theorem` | [aeval_ne_zero_of_dvdNotUnit_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/aeval-ne-zero-of-dvdnotunit-minpoly--583ed55cfc18503c8cc65aee.md) | 243 | `result-track:583ed55cfc18503c8cc65aeec21549e0a996a751c309ee5d6eeeb91c5d69a991` |
| 26 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantd4887d690a4d21db3f58cff231de27f7e2632e325721d6a4a26d36e197983337.lean/declarations/irreducible--e6265376329cd97770fe95ed.md) | 259 | `result-track:e6265376329cd97770fe95ed3661a8f6adad43b8d2cf629f1b59010781f7365c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
