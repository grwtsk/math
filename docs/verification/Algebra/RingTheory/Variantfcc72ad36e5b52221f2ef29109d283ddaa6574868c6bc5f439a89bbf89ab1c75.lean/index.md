# Verification target: GRWTSK.Algebra.Ring.Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "746d1ea10552baa7a1bd57ee8121903794986aa0",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `746d1ea10552baa7a1bd57ee8121903794986aa0`.

Source path: `GRWTSK/Algebra/Ring/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/zero-pow--7eb2563bf61429e1b2206b0e.md) | 39 | `result-track:7eb2563bf61429e1b2206b0e26499b6d7757dac91acff61d00bbb1c481c14e03` |
| 2 | `theorem` | [zero_pow'](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/zero-pow--ee3ac6567533f81d3e2ccb1d.md) | 44 | `result-track:ee3ac6567533f81d3e2ccb1dbd18c4341d1af462d709afd2d41d68ab8e4dd8b3` |
| 3 | `theorem` | [zero_pow_eq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/zero-pow-eq--60751aa42b93b574118b79f8.md) | 51 | `result-track:60751aa42b93b574118b79f89e21b6ccf9c6e788d413f75abd24c1d1acc19ee9` |
| 4 | `theorem` | [pow_eq_zero_of_le](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-eq-zero-of-le--bf262df2dd1d36b6a88e8a1f.md) | 57 | `result-track:bf262df2dd1d36b6a88e8a1f2d3ca712b89bab0341898920be0890e54a038889` |
| 5 | `theorem` | [pow_eq_zero](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-eq-zero--31b35e83129d293eed684054.md) | 61 | `result-track:31b35e83129d293eed684054eeb0806b80a869581fe74ded4025b63a93977e97` |
| 6 | `theorem` | [pow_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-eq-zero-iff--2b8a46e8e10b461519411f40.md) | 70 | `result-track:2b8a46e8e10b461519411f402e9ffef12a80c1b96e0838e8d29282564c9ce3c3` |
| 7 | `theorem` | [pow_eq_zero_iff'](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-eq-zero-iff--98c1657cb9dcee04bff03396.md) | 76 | `result-track:98c1657cb9dcee04bff0339602b3f51f2ab4c4a986a15e3b659889055bf7f241` |
| 8 | `theorem` | [pow_ne_zero_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-ne-zero-iff--26082be5068ad2f3da624bc3.md) | 80 | `result-track:26082be5068ad2f3da624bc3e570ea698e3b1cb3192277cd10db0ea8e5b014ba` |
| 9 | `theorem` | [ne_zero_pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/ne-zero-pow--0a7d39f60138c37e64ce8f70.md) | 84 | `result-track:0a7d39f60138c37e64ce8f70059517145237f2822589ccb578c1e760c7aeae62` |
| 10 | `theorem` | [pow_ne_zero](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-ne-zero--ac3b43bc3d29e19f036d03a4.md) | 91 | `result-track:ac3b43bc3d29e19f036d03a497f87d37cdb3ee146da6261f0764dc75569ea0ce` |
| 11 | `instance` | [NeZero.pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/nezero-pow--0db399d53247fc022cd86f38.md) | 95 | `declaration-track:0db399d53247fc022cd86f38cc7958ac83544f522c5c19594f9274f8127ca57a` |
| 12 | `theorem` | [sq_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-eq-zero-iff--979163a054b5c87516b9d2ea.md) | 99 | `result-track:979163a054b5c87516b9d2ea8f344e2a434fccd88e7411d5858c5ea0e7b13957` |
| 13 | `theorem` | [zero_pow_eq_zero](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/zero-pow-eq-zero--9aef856bbdd5cab407403d68.md) | 104 | `result-track:9aef856bbdd5cab407403d68e423ea323292c9f1dafbd189d5e3c172f78aa518` |
| 14 | `theorem` | [Ring.inverse_pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/ring-inverse-pow--4c3df9c05c541a0f91d8f317.md) | 112 | `result-track:4c3df9c05c541a0f91d8f317de7863a30953513c104c7d2c773fcc5798d9d1d4` |
| 15 | `def` | [powMonoidWithZeroHom](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/powmonoidwithzerohom--da2983af16eeb3b90fae65ad.md) | 126 | `declaration-track:da2983af16eeb3b90fae65adce70f596af0ac03db065710272d89eced01beb4d` |
| 16 | `theorem` | [coe_powMonoidWithZeroHom](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/coe-powmonoidwithzerohom--c870f7634ef07bbccb17c060.md) | 131 | `result-track:c870f7634ef07bbccb17c060177c6b0361aa23514264b4a535415b7125aa40e1` |
| 17 | `theorem` | [powMonoidWithZeroHom_apply](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/powmonoidwithzerohom-apply--0b19faaf3cc96979e9182c35.md) | 135 | `result-track:0b19faaf3cc96979e9182c35b1efcfcc4653a2159475e55703079f1eea333702` |
| 18 | `theorem` | [pow_dvd_pow_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/pow-dvd-pow-iff--24d5a4cd2fc97e3373f89004.md) | 141 | `result-track:24d5a4cd2fc97e3373f89004650de7edd53d9bd9c94a5fd78a0a79d84c1e78fa` |
| 19 | `theorem` | [RingHom.map_pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/ringhom-map-pow--896ab9fb7395c1aa2ead3812.md) | 160 | `result-track:896ab9fb7395c1aa2ead38127c7143be7289539d3826c2c4fb43fd5a3eefc6c0` |
| 20 | `theorem` | [min_pow_dvd_add](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/min-pow-dvd-add--a45bee48227fd44ab3e0cadc.md) | 164 | `result-track:a45bee48227fd44ab3e0cadc9637efddb2a398acf6f8bc6c58901097abdf398c` |
| 21 | `theorem` | [add_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/add-sq--0154f58d579292f4be42e8a9.md) | 177 | `result-track:0154f58d579292f4be42e8a964faba919d8a4f340cb35a36d40435357efb6b71` |
| 22 | `theorem` | [add_sq'](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/add-sq--bc082f48b6889a58bb2bebff.md) | 181 | `result-track:bc082f48b6889a58bb2bebff251f18d9ee774a6f31136906d814a701ef0c1aae` |
| 23 | `theorem` | [neg_one_pow_eq_or](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-one-pow-eq-or--64e9f6af4bbd14f2e56784ff.md) | 196 | `result-track:64e9f6af4bbd14f2e56784ffd6777ecd1bc6db0f59e9bef9978c4fadc57e3ff9` |
| 24 | `theorem` | [neg_pow](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-pow--8927ff24ca61527ae4704c85.md) | 205 | `result-track:8927ff24ca61527ae4704c855c093298b45d29df3fcb3c644952d6856664d75a` |
| 25 | `theorem` | [neg_pow_bit0](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-pow-bit0--740a6ac11d17dd4c30ad8c43.md) | 212 | `result-track:740a6ac11d17dd4c30ad8c43385caaf9daf77bb47731af29350a5948e36ab11e` |
| 26 | `theorem` | [neg_pow_bit1](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-pow-bit1--08fac7c0a3afcecddc0d1cbb.md) | 217 | `result-track:08fac7c0a3afcecddc0d1cbb2332ef3d931b3a7aca43faa4c62d0f4dc4d3def9` |
| 27 | `theorem` | [neg_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-sq--862c67bec6186f4d81ad5c82.md) | 223 | `result-track:862c67bec6186f4d81ad5c82c368285d8466f4ec79c0fc85c95bc62124ad8656` |
| 28 | `theorem` | [neg_one_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-one-sq--188bec44962cccb91d3c6a48.md) | 227 | `result-track:188bec44962cccb91d3c6a489af16af806a0b420b663799ea8afe1c1043ea325` |
| 29 | `theorem` | [Commute.sq_sub_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/commute-sq-sub-sq--3fa0a5150f0eae2d98c831b7.md) | 242 | `result-track:3fa0a5150f0eae2d98c831b7bc3b8b8b075b3f8c9b72ada9e6d7d1aa2d6d826d` |
| 30 | `theorem` | [neg_one_pow_mul_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/neg-one-pow-mul-eq-zero-iff--d34cd446fc43c26d3fa5e638.md) | 247 | `result-track:d34cd446fc43c26d3fa5e6386d3704d281ca2a0b46d397f9962bc55434e200ad` |
| 31 | `theorem` | [mul_neg_one_pow_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/mul-neg-one-pow-eq-zero-iff--2f1b3a9e71a9a2c081601cfe.md) | 252 | `result-track:2f1b3a9e71a9a2c081601cfe3fafbf65ee6c206fc37984684de37bb755bf2a1b` |
| 32 | `theorem` | [Commute.sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/commute-sq-eq-sq-iff-eq-or-eq-neg--9bc1921fa94f42ce34816a82.md) | 258 | `result-track:9bc1921fa94f42ce34816a820f45911f325732631a514514ea434cf22099dd5e` |
| 33 | `theorem` | [sq_eq_one_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-eq-one-iff--b6a5ac64475095ff1c1ac6ce.md) | 264 | `result-track:b6a5ac64475095ff1c1ac6ceb85d53e81f5bd361d4ebda20b306ae7a0214322e` |
| 34 | `theorem` | [sq_ne_one_iff](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-ne-one-iff--f7a450d9946b2df257b36132.md) | 268 | `result-track:f7a450d9946b2df257b3613242ccf82125a95ad2d6b4a3f7dc0d97bde6559e77` |
| 35 | `theorem` | [sq_sub_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-sub-sq--4d75161908f18916eca93965.md) | 278 | `result-track:4d75161908f18916eca939656e18a198b601b1949d947c1e1ea6ea2fcf4deba9` |
| 36 | `theorem` | [sub_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sub-sq--b8178065ab9407427d6bfde7.md) | 285 | `result-track:b8178065ab9407427d6bfde7de6ddb0dfef67bf398b5f0a16ee268ff7442f448` |
| 37 | `theorem` | [sub_sq'](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sub-sq--da7d7aed3a15e89ff896c3e5.md) | 292 | `result-track:da7d7aed3a15e89ff896c3e5262efaa858bb2dfbbd6378d7cc47208e59baee4d` |
| 38 | `theorem` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--3efc795659967b2ca001cc61.md) | 298 | `result-track:3efc795659967b2ca001cc613710a835a15e3567a99ae15c907f5d124e1700cd` |
| 39 | `theorem` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--440d7b4743c4b0227615fb3b.md) | 302 | `result-track:440d7b4743c4b0227615fb3b7a3ad511b056c1bc1218e185cd957580ddbf94ef` |
| 40 | `theorem` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--9641cf03647670388f7f0fae.md) | 309 | `result-track:9641cf03647670388f7f0faea15275062f1458d05ecbbd66f01713d48bb942dd` |
| 41 | `theorem` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/RingTheory/Variantfcc72ad36e5b52221f2ef29109d283ddaa6574868c6bc5f439a89bbf89ab1c75.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--8cb1773679e107d9cb72ad00.md) | 313 | `result-track:8cb1773679e107d9cb72ad00f73b4a63f88a02ff2768e220254717948a46b9fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
