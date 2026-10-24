# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToNat.Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b2a521c8e2c87c6b11c4d34b03718f7bc6548dd",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b2a521c8e2c87c6b11c4d34b03718f7bc6548dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Iterate` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Tactic.Do` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NoRepetition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition--9659e6a7b38b9b5069d84f1b.md) | 28 | `declaration-track:9659e6a7b38b9b5069d84f1b04070ec4a76709be6ee79f61f61d69a971e77c07` |
| 2 | `theorem` | [noRepetition_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-iff--a1750305ee9d47ed9afdf15c.md) | 31 | `result-track:a1750305ee9d47ed9afdf15cf5e5bffad8627b8901946ce48bf52b6595be3e31` |
| 3 | `theorem` | [NoRepetition.right_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-right-of-append--548415454f831c3db4855da0.md) | 34 | `result-track:548415454f831c3db4855da0bca203b5687a7933154c787575c61a2813ee66f9` |
| 4 | `theorem` | [NoRepetition.left_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-left-of-append--6e0211cf11989fd1804f312c.md) | 38 | `result-track:6e0211cf11989fd1804f312c1dbda89e2388b507f866983637fa51a7f0e63126` |
| 5 | `theorem` | [not_noRepetition_append_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/not-norepetition-append-of-right--5fb76b469a19c536250e9924.md) | 42 | `result-track:5fb76b469a19c536250e992400f91048d8550279c3b195fdd42d6b56bd0ae0a0` |
| 6 | `theorem` | [not_noRepetition_append_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/not-norepetition-append-of-left--309f087b1b022098ec3ad345.md) | 46 | `result-track:309f087b1b022098ec3ad3454962dd4e12790eef18b8abdc5b6981a243ce855c` |
| 7 | `theorem` | [not_noRepetition_append_singleton_of_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/not-norepetition-append-singleton-of-suffix--7d28375ed998db1c0a7c7d54.md) | 50 | `result-track:7d28375ed998db1c0a7c7d54d55190654539f26e65ea0df3dc90fa1440c5c2d9` |
| 8 | `theorem` | [NoRepetition.not_isSuffix_of_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-not-issuffix-of-append-singleton--bfa3bcabf7435317fae85972.md) | 54 | `result-track:bfa3bcabf7435317fae859727481ce96958d8a18313d916f8c57fe3341126de2` |
| 9 | `theorem` | [NoRepetition.append_singleton_of_not_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-append-singleton-of-not-suffix--c90b46aed4952439f84c3872.md) | 58 | `result-track:c90b46aed4952439f84c3872e42b3662876da43fde58e2613425aee50734f8d1` |
| 10 | `theorem` | [NoRepetition.append_singleton_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-append-singleton-of-ne--1effedb0650f1e27cdf29511.md) | 63 | `result-track:1effedb0650f1e27cdf29511fcdda25616c4171c0439dc91ec0ac7ef252db9e9` |
| 11 | `theorem` | [noRepetition_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-singleton--0ab697a001fe088c9cdf55f9.md) | 71 | `result-track:0ab697a001fe088c9cdf55f92b7043b1eaa351b5b525b38d2a647d8db230a9ca` |
| 12 | `theorem` | [noRepetition_cons_append_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-cons-append-append-iff--346b6426e055a2e8531f6286.md) | 74 | `result-track:346b6426e055a2e8531f6286d01b3729d8693f27e119231e2019980d48b3d60c` |
| 13 | `theorem` | [noRepetition_append_cons_of_noRepetition_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/norepetition-append-cons-of-norepetition-append-singleton--ff5173408a276c0d8199e17d.md) | 87 | `result-track:ff5173408a276c0d8199e17dbc0e862afd701a1280c71ed36404faa6f2773469` |
| 14 | `theorem` | [isNat_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-iff--9a9086fee9f219f442a1af7e.md) | 108 | `result-track:9a9086fee9f219f442a1af7e62f285484acb1422b4567759f078d223e9a51a2f` |
| 15 | `theorem` | [isNat_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-iff--0ac974d068c155ab76879123.md) | 174 | `result-track:0ac974d068c155ab76879123d7d5a3a39d7d822b7381c6a522386ee5a04aa0c4` |
| 16 | `theorem` | [isNat_of_isDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-of-isdigit--fe14de3fcf9a58d6c03bdcca.md) | 183 | `result-track:fe14de3fcf9a58d6c03bdcca63befa41bbc9bf6c94a22eacd430e45b257bd0be` |
| 17 | `theorem` | [isSome_toNat?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/issome-tonat--a3e27191b279c7cc7c0433fa.md) | 195 | `result-track:a3e27191b279c7cc7c0433facea3d9727536bf155407c46f5757fc31568cb5c3` |
| 18 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-of-tonat-eq-some--2335996c9ad638cd59558b94.md) | 199 | `result-track:2335996c9ad638cd59558b94f3ffd0f7566297472ae56c0191738108afe132cf` |
| 19 | `theorem` | [toNat?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-none-iff--82fed7e471cd4547e3c50982.md) | 203 | `result-track:82fed7e471cd4547e3c509823a4863f1511f162639e7cd4386464d9caab845a2` |
| 20 | `theorem` | [toNat?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-none--f4c575e9bed43898432a925a.md) | 206 | `result-track:f4c575e9bed43898432a925ab47fb7c2a0f359f94801bcb2a20de809813c425d` |
| 21 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-some-ofdigitchars--98391ef5b288ae106b790594.md) | 209 | `result-track:98391ef5b288ae106b790594390817d6231bc83bd33dddea7acb653a81516a3d` |
| 22 | `theorem` | [isNat_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-congr--db36a5a2b881357a08e83ac7.md) | 215 | `result-track:db36a5a2b881357a08e83ac7847a0a6d90718259cc33ef90a27040284c14cdd5` |
| 23 | `theorem` | [toNat?_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-congr--5dd7300610ad84429ed9bd0d.md) | 219 | `result-track:5dd7300610ad84429ed9bd0de5e9d8bb09bcd57e928c662f3c1eddb956afcfd2` |
| 24 | `theorem` | [isNat_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-toslice--443da52689377c7be6b3aa2a.md) | 229 | `result-track:443da52689377c7be6b3aa2aa5c17033da35cff8768a86e047e5ccf0a63af1b2` |
| 25 | `theorem` | [isNat_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-comp-toslice--8778bb7ae4a7966599c95d26.md) | 233 | `result-track:8778bb7ae4a7966599c95d26e977eed8869a2a00c792a285794d8212bd9de62f` |
| 26 | `theorem` | [toNat?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-toslice--ca6fde213927cb62d57a0900.md) | 237 | `result-track:ca6fde213927cb62d57a0900a4baff87f3c38dabd8dac182349ce5f6b7f53aba` |
| 27 | `theorem` | [toNat?_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-comp-toslice--fef11c748fba66e37de64df0.md) | 241 | `result-track:fef11c748fba66e37de64df0bd9e838fed9607f262196776c71f40d3409fade2` |
| 28 | `theorem` | [Slice.isNat_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/slice-isnat-copy--7aa2fedb3a38c881908ccf35.md) | 245 | `result-track:7aa2fedb3a38c881908ccf356714790ab8dda14c0ada22c0b1618f244940988b` |
| 29 | `theorem` | [Slice.isNat_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/slice-isnat-comp-copy--eec5b6a8505cb82807c37282.md) | 249 | `result-track:eec5b6a8505cb82807c37282d4ba77e3269771dcc9f3eb91041bfe7ddabea6eb` |
| 30 | `theorem` | [Slice.toNat?_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/slice-tonat-copy--269fae09cef4dbffa9a46ed8.md) | 253 | `result-track:269fae09cef4dbffa9a46ed88381575760a1903b94201ea542f4d9f9a28d3142` |
| 31 | `theorem` | [Slice.toNat?_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/slice-tonat-comp-copy--c1d46f4ad50fa2e61516ee7b.md) | 257 | `result-track:c1d46f4ad50fa2e61516ee7b5896a529855eb17a8b9c49ed83374f958a910d90` |
| 32 | `theorem` | [isNat_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-iff--542034d606a6c53d9173a338.md) | 260 | `result-track:542034d606a6c53d9173a33835d7ed578fb0ac065178724e164ef55315da10ff` |
| 33 | `theorem` | [isNat_of_isDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-of-isdigit--bac7399c455a64f924a9f33f.md) | 269 | `result-track:bac7399c455a64f924a9f33fee78727932b289b11756cf59ce95cc8f56e592fe` |
| 34 | `theorem` | [isSome_toNat?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/issome-tonat--50bd5f21bebb31ad1d3f1437.md) | 274 | `result-track:50bd5f21bebb31ad1d3f143759cd61c8b1a74b1e88be060a29ac196c4fadfd6f` |
| 35 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-of-tonat-eq-some--ac6d4e00004faa4f804ffc74.md) | 277 | `result-track:ac6d4e00004faa4f804ffc74f100665882e6c10ec63811d28f6d76136b618dc8` |
| 36 | `theorem` | [toNat?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-none-iff--df9ab640c5f3ad8cf7e5ea15.md) | 281 | `result-track:df9ab640c5f3ad8cf7e5ea15844b72bf87d5cf893a118c6b4ffff6b645faddc1` |
| 37 | `theorem` | [toNat?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-none--b5488d7530892d07c7ffb51a.md) | 284 | `result-track:b5488d7530892d07c7ffb51aff035e1fe3a019ef4f89727cf0eeada57b7a73c4` |
| 38 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-eq-some-ofdigitchars--0f6555521fc8a56cc8497217.md) | 287 | `result-track:0f6555521fc8a56cc84972179ec1e7a7e8539cdf528b4869e49f2a30bac12130` |
| 39 | `theorem` | [isNat_append_underscore_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-append-underscore-append--3d6695822869bd3a59e36665.md) | 291 | `result-track:3d6695822869bd3a59e36665f506ac9ebec34da9ff2601bb7ffc80a064ef7274` |
| 40 | `theorem` | [toNat?_append_underscore_append_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-append-underscore-append-eq-some--b5c7f4c8e8e86f3c2ca108e2.md) | 304 | `result-track:b5c7f4c8e8e86f3c2ca108e25f67d6b024436f9a88fb2df3c52ca19aef097877` |
| 41 | `theorem` | [isNat_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/isnat-repr--6a89f8e3f8b66c937c6e7294.md) | 323 | `result-track:6a89f8e3f8b66c937c6e729455f73d460b8f2a0ea3328b174a89d978f2d8d379` |
| 42 | `theorem` | [toNat?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/tonat-repr--0ef414de45e4320496cf0274.md) | 328 | `result-track:0ef414de45e4320496cf027483de5d60b7ea8d2f6f6919c16dd88a128597b759` |
| 43 | `theorem` | [repr_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/repr-injective--65a9540a805bb9c8ae514b17.md) | 334 | `result-track:65a9540a805bb9c8ae514b1787e66cb5a969db1c967226f7f5666ded57f8cd20` |
| 44 | `theorem` | [repr_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean/declarations/repr-inj--009a1c8e2f4a259ca7d7173d.md) | 338 | `result-track:009a1c8e2f4a259ca7d7173d657085968608e57be4bc901688a21ac1ebb51a8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
