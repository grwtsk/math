# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToNat.Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa4e803f2d89ec10e87082cb0064723226e38a04",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa4e803f2d89ec10e87082cb0064723226e38a04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.Do` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NoRepetition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition--7bc256984c7be9d2538cfb96.md) | 20 | `declaration-track:7bc256984c7be9d2538cfb966dc4bc2c6359217398c25df194480a77c44061d8` |
| 2 | `theorem` | [noRepetition_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-iff--f1173fb82fc88e4c89576828.md) | 23 | `result-track:f1173fb82fc88e4c8957682855dca890a7eb7ac8d87ac5a10bc46b199e92a46a` |
| 3 | `theorem` | [NoRepetition.right_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-right-of-append--29e1b1a0095dd593f5486653.md) | 26 | `result-track:29e1b1a0095dd593f5486653f98ffce519565311b0364fb8fc8fbc1b533e5972` |
| 4 | `theorem` | [NoRepetition.left_of_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-left-of-append--72912cc42f7382cb99c52456.md) | 30 | `result-track:72912cc42f7382cb99c524560d910ad69820b582a008224ebc55f89544086354` |
| 5 | `theorem` | [not_noRepetition_append_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/not-norepetition-append-of-right--d3f0ee0015a825e26ff011c4.md) | 34 | `result-track:d3f0ee0015a825e26ff011c47bd5bafe5156caf5e2ab7d8fa3a87902a1c488ab` |
| 6 | `theorem` | [not_noRepetition_append_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/not-norepetition-append-of-left--eb9f65932a75ea8f083b86d8.md) | 38 | `result-track:eb9f65932a75ea8f083b86d86afa07011f2eaad19c4c1efd86900465eda3e599` |
| 7 | `theorem` | [not_noRepetition_append_singleton_of_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/not-norepetition-append-singleton-of-suffix--c3d0a2cdce70b997aa43c8e7.md) | 42 | `result-track:c3d0a2cdce70b997aa43c8e7dbdac19664eb3a13261b305e55d354b3c99e23d8` |
| 8 | `theorem` | [NoRepetition.not_isSuffix_of_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-not-issuffix-of-append-singleton--b16fab621bbc1673f94763ff.md) | 46 | `result-track:b16fab621bbc1673f94763ffdb23b4d5996aeac50b6fb41d7a4b2bc27c51edee` |
| 9 | `theorem` | [NoRepetition.append_singleton_of_not_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-append-singleton-of-not-suffix--a250b2032b9bc14cd1f47d4b.md) | 50 | `result-track:a250b2032b9bc14cd1f47d4b62310b81b62ad633e4200b2a4c396d3ffdb2f083` |
| 10 | `theorem` | [NoRepetition.append_singleton_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-append-singleton-of-ne--05927dfe1fafd2aa93bc7457.md) | 55 | `result-track:05927dfe1fafd2aa93bc74577da562b91e1e911ff32333247646289b3edd542d` |
| 11 | `theorem` | [noRepetition_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-singleton--7bfc45bb33e7c4da63b88410.md) | 63 | `result-track:7bfc45bb33e7c4da63b8841063e636efd266d92fe29285b6bba59d4980602a35` |
| 12 | `theorem` | [noRepetition_cons_append_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-cons-append-append-iff--77fcb1d80cc292dab009cf77.md) | 66 | `result-track:77fcb1d80cc292dab009cf7743812eaec328ba974abb74f27bf9264f41b4c324` |
| 13 | `theorem` | [noRepetition_append_cons_of_noRepetition_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/norepetition-append-cons-of-norepetition-append-singleton--ff972cce6358bfce3283fc9d.md) | 79 | `result-track:ff972cce6358bfce3283fc9da2633181d1c435fae4c83e7bffed253d4b11afa0` |
| 14 | `theorem` | [isNat_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-iff--a9de2d36794ed59fbd7ff60f.md) | 100 | `result-track:a9de2d36794ed59fbd7ff60f2c6b41f5a79d16ea9c134156ffa600fff5baf115` |
| 15 | `theorem` | [isNat_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-iff--b2190e71e6fc7fe7ec392fdc.md) | 166 | `result-track:b2190e71e6fc7fe7ec392fdc80057c88ff1b9ec06641dadcffc9cfa22f6fc3c8` |
| 16 | `theorem` | [isNat_of_isDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-of-isdigit--22daad48a20950b8de3c44da.md) | 175 | `result-track:22daad48a20950b8de3c44daf7a4695f0d6c62afa9ade73a2b695fed0d5c6ff8` |
| 17 | `theorem` | [isSome_toNat?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/issome-tonat--b046b04878b4b51ed9966c75.md) | 187 | `result-track:b046b04878b4b51ed9966c750c602d65a2b291c62479a3565be91fb8378e9e57` |
| 18 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-of-tonat-eq-some--0d02017e49bc085efa0c727d.md) | 191 | `result-track:0d02017e49bc085efa0c727d933601bbc7d269bf8876e24ae3991cbdeedec24c` |
| 19 | `theorem` | [toNat?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-none-iff--fe129f2d42e978931b2fc1c0.md) | 195 | `result-track:fe129f2d42e978931b2fc1c0d73ae617c71f1cbaa8961fc3c530c9a2f890ed5e` |
| 20 | `theorem` | [toNat?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-none--6ca518275a3518ad4974b3fa.md) | 198 | `result-track:6ca518275a3518ad4974b3fad950e440e505cb01517c8a93b980ee58ac9630fb` |
| 21 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-some-ofdigitchars--f8490dd691caf398a63b1005.md) | 201 | `result-track:f8490dd691caf398a63b1005f3fe784c93cde40b352e02d147520c176fc08028` |
| 22 | `theorem` | [isNat_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-congr--4e5887302930dfce71a7000d.md) | 207 | `result-track:4e5887302930dfce71a7000d1e94918e7f77a4940059b24b9e59489c82101ad2` |
| 23 | `theorem` | [toNat?_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-congr--9039d0f071d4c2ce8ade6b6c.md) | 211 | `result-track:9039d0f071d4c2ce8ade6b6c54d4499730175ebc445a9a4219d09cd9e60acdf3` |
| 24 | `theorem` | [isNat_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-toslice--e52b0c97c7b196d65369bc8b.md) | 221 | `result-track:e52b0c97c7b196d65369bc8bfad1b7db6ca9e20f7ad80eb4ad3d5a2d8fd8173a` |
| 25 | `theorem` | [isNat_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-comp-toslice--98c761d604b0b39080422944.md) | 225 | `result-track:98c761d604b0b390804229441e7d5465dee9e16839187cc66b5699d9c1bb373b` |
| 26 | `theorem` | [toNat?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-toslice--d49ac1fbedb411a5d7a62c01.md) | 229 | `result-track:d49ac1fbedb411a5d7a62c01a2fb2e12c1be1d61d5166edbcdec2f3edd05860a` |
| 27 | `theorem` | [toNat?_comp_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-comp-toslice--b7b0a809e8de14148199d7ec.md) | 233 | `result-track:b7b0a809e8de14148199d7ec01bd0a5c82076657893aed536d04e8a081ff1cd7` |
| 28 | `theorem` | [Slice.isNat_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/slice-isnat-copy--7e489f255aea94851fb57719.md) | 237 | `result-track:7e489f255aea94851fb57719df77e44bc7b990e5e6a933ce825751c785736f8f` |
| 29 | `theorem` | [Slice.isNat_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/slice-isnat-comp-copy--7ad9e7abaa1568e2a356a8e1.md) | 241 | `result-track:7ad9e7abaa1568e2a356a8e139c19a12420acfda33f3738d1ebd901d957405bb` |
| 30 | `theorem` | [Slice.toNat?_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/slice-tonat-copy--26a1ffc7f4dda70a03078e23.md) | 245 | `result-track:26a1ffc7f4dda70a03078e23f313b2811087cd5cd05e64add03a258d7f78818f` |
| 31 | `theorem` | [Slice.toNat?_comp_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/slice-tonat-comp-copy--11e06f91d58ace75358b3c50.md) | 249 | `result-track:11e06f91d58ace75358b3c501708517dc940829c602eb1a5c9ff3bf2e9b7071d` |
| 32 | `theorem` | [isNat_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-iff--71c0e34fb9bba5da556e287b.md) | 252 | `result-track:71c0e34fb9bba5da556e287b33bf1f69da094e5d31935decbfe5281dfda63384` |
| 33 | `theorem` | [isNat_of_isDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-of-isdigit--371eed5a4d21e2d5410519e4.md) | 261 | `result-track:371eed5a4d21e2d5410519e40a44a2eb918e89e564a0c54b6d8d0bf3eb00078e` |
| 34 | `theorem` | [isSome_toNat?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/issome-tonat--b6581805c31449e1848ae21f.md) | 266 | `result-track:b6581805c31449e1848ae21fe2f352cee99f057a327163a49b9dc01032693d5d` |
| 35 | `theorem` | [isNat_of_toNat?_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-of-tonat-eq-some--857eeee43fc7df484d18b1bf.md) | 269 | `result-track:857eeee43fc7df484d18b1bf48ad412c34e9aa6e34ba99f24b1c5b031b2cf5a5` |
| 36 | `theorem` | [toNat?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-none-iff--83299e91876cd134909cd917.md) | 273 | `result-track:83299e91876cd134909cd917dab8495e40fc445730eb2a75e68acbee63845439` |
| 37 | `theorem` | [toNat?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-none--b286a5b43467af73cdb3b16f.md) | 276 | `result-track:b286a5b43467af73cdb3b16f1ae151295a4c5b24625a94e2989de88e718997ea` |
| 38 | `theorem` | [toNat?_eq_some_ofDigitChars](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-eq-some-ofdigitchars--c336053f5a7ab32bf3a00acc.md) | 279 | `result-track:c336053f5a7ab32bf3a00acc49f6350dc71a85e5e62d5c0125bcaa3896f23122` |
| 39 | `theorem` | [isNat_append_underscore_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-append-underscore-append--9de92213913bd1a1b7a585fd.md) | 283 | `result-track:9de92213913bd1a1b7a585fd0d81725236858fb5642e56983a22b9149b05da72` |
| 40 | `theorem` | [toNat?_append_underscore_append_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-append-underscore-append-eq-some--c0ff4f8e9a8624a7eebec705.md) | 296 | `result-track:c0ff4f8e9a8624a7eebec70588e905db2164621f64bcacf8ab881bdc7c522bcd` |
| 41 | `theorem` | [isNat_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/isnat-repr--6f151fef56f59bc96026004d.md) | 315 | `result-track:6f151fef56f59bc96026004d2fae2a186ba3649c32621216bb97a553f8a9bff7` |
| 42 | `theorem` | [toNat?_repr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/tonat-repr--56af9995ce897e512c22adba.md) | 320 | `result-track:56af9995ce897e512c22adba7c0b78e28ad5792263742862aa569995c13affca` |
| 43 | `theorem` | [repr_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/repr-injective--98d9e48cb0de492c534e6f49.md) | 326 | `result-track:98d9e48cb0de492c534e6f498971d046a786ab2af2086923de54bc966b6cfcd1` |
| 44 | `theorem` | [repr_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant87ab28181b3fc8037b87c49d9197a9564605c71ea78fbfae76afb53784a412b7.lean/declarations/repr-inj--4aeefec0d20639735445dfee.md) | 330 | `result-track:4aeefec0d20639735445dfee773356d07642e7f1fb2cfaa28de9d0b0d045bf58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
