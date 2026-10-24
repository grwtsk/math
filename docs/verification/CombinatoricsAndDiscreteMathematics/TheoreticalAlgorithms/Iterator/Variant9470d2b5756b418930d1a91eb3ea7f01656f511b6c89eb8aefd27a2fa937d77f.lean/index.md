# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "593ae97d4c9ee64e42da480fee3f414a1300980f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `593ae97d4c9ee64e42da480fee3f414a1300980f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/iterator--5fc433bd397904cb71a8f928.md) | 45 | `declaration-track:5fc433bd397904cb71a8f928d14a2e58200ef8cf94c5647796d7246e7452fb76` |
| 2 | `def` | [mkIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/mkiterator--d7b99bd85e9b4c5979dd22be.md) | 63 | `declaration-track:d7b99bd85e9b4c5979dd22bed95a13c51be3e8c8854c625d068c212a3f68f117` |
| 3 | `abbrev` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/iter--3d9a969b765df0caa9e97ad9.md) | 67 | `declaration-track:3d9a969b765df0caa9e97ad9f2737622a6a9384fb0aab5af6dd7615decee8383` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/instance--4e02b9ed83fcd52a7f98d69a.md) | 74 | `declaration-track:4e02b9ed83fcd52a7f98d69ab0a1f2b5638bca546b2baa6fb8ddd34be1b05e82` |
| 5 | `theorem` | [Iterator.sizeOf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/iterator-sizeof-eq--a78d516386bb6d27b3c60bc7.md) | 77 | `result-track:a78d516386bb6d27b3c60bc75c4a32babe70612f508664d53eb43081744d12a0` |
| 6 | `def` | [toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/tostring--4ada0dd6872429ca4ed38191.md) | 82 | `declaration-track:4ada0dd6872429ca4ed381914dbaa66858e6334e148f70d856ee83601b8915ed` |
| 7 | `def` | [remainingBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/remainingbytes--a7864ccb95d76afd383fbd96.md) | 87 | `declaration-track:a7864ccb95d76afd383fbd96f36a00c5689dfd85f5ef425ada844d8252436889` |
| 8 | `def` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/pos--6853d758ecea33950ec45f66.md) | 91 | `declaration-track:6853d758ecea33950ec45f6663e74f80ac7281d2c023cdc3235b0c4fee83b4cb` |
| 9 | `def` | [curr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/curr--b5a45f0827feede7c8d5f412.md) | 105 | `declaration-track:b5a45f0827feede7c8d5f412b851ad666f695232bb193a896ea1a0daa28b5236` |
| 10 | `def` | [next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/next--ec137ae38d395affd3b50a2c.md) | 119 | `declaration-track:ec137ae38d395affd3b50a2cce0a38d8e4dcfa3b6ba8a7820d6600a3230c894e` |
| 11 | `def` | [prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/prev--802544a1d96634b43575a6d7.md) | 127 | `declaration-track:802544a1d96634b43575a6d7d1d6bb442a8c1bb39dec94d4dcb1027a379bd132` |
| 12 | `def` | [atEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/atend--c27e3daf43615c96236d61a8.md) | 133 | `declaration-track:c27e3daf43615c96236d61a8fe9f02873958aaa0754d9057dbc3c45550a83d54` |
| 13 | `def` | [hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/hasnext--ced2ca78ac2053e9f7b37cf0.md) | 139 | `declaration-track:ced2ca78ac2053e9f7b37cf0b3e93c6627b41a5d6deb7eeafda2a24e1d851a2e` |
| 14 | `def` | [hasPrev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/hasprev--d63050457b579325b2d13ad3.md) | 145 | `declaration-track:d63050457b579325b2d13ad3e274b23d71f1a4a201c00a964a10b7109c05715b` |
| 15 | `def` | [curr'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/curr--cdc63ff3a415368a1826628a.md) | 154 | `declaration-track:cdc63ff3a415368a1826628a16ac68759a2a8ae4a115ac5725d10aab785d2282` |
| 16 | `def` | [next'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/next--79c2c71b6efa9abc35e52d8e.md) | 164 | `declaration-track:79c2c71b6efa9abc35e52d8efc46c7e4ce41f9f7f42b9e8da7ae234c0e2b4490` |
| 17 | `def` | [toEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/toend--39d90c50111a6a3d6571beab.md) | 171 | `declaration-track:39d90c50111a6a3d6571beab51100c6cc87df8804db6e035b48bf10bc0dec602` |
| 18 | `def` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/extract--626b4b21e51f457d52be7947.md) | 181 | `declaration-track:626b4b21e51f457d52be7947dc425a355e67640540b24d4ce03a72821740331c` |
| 19 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/forward--652971fb20279bd257fef4f7.md) | 192 | `declaration-track:652971fb20279bd257fef4f7f98f1b5250e95e025da55b6c62620d60522991ac` |
| 20 | `def` | [remainingToString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/remainingtostring--f2992a9c50ee94a5b94b417e.md) | 199 | `declaration-track:f2992a9c50ee94a5b94b417ee8dca16479438438a4dbceca4d22f8ce8b84b5b2` |
| 21 | `def` | [nextn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/nextn--f95d8e02c34b9f0e9796730e.md) | 203 | `declaration-track:f95d8e02c34b9f0e9796730ee11ce95193d8536d699e7960d6216bd9fa2a16a0` |
| 22 | `def` | [prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/prevn--9a143083ff53fecd9afa817d.md) | 211 | `declaration-track:9a143083ff53fecd9afa817db7c681e5292c31e1c6d0722b68a3f7acc870111e` |
| 23 | `theorem` | [sizeOf_next_lt_of_hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/sizeof-next-lt-of-hasnext--abe884c0a10f5f08f0a4432e.md) | 215 | `result-track:abe884c0a10f5f08f0a4432e341641e70f4578e99f5c8f5d5e4d57fa98c66cd1` |
| 24 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/macro-rules--0fd5d4a6694ea3dc854ac904.md) | 219 | `declaration-track:0fd5d4a6694ea3dc854ac9041d72d0ff218c48d5455e4ed6e1ab78125a481ee3` |
| 25 | `theorem` | [sizeOf_next_lt_of_atEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/sizeof-next-lt-of-atend--57d9fc3a8af18c7d6455cc09.md) | 223 | `result-track:57d9fc3a8af18c7d6455cc09b6f4ccc76f83c30c3860917d67db303ab5194b31` |
| 26 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/macro-rules--d4830ec62004628400f70f94.md) | 227 | `declaration-track:d4830ec62004628400f70f943a349bee14d0c88e931910605eb1e66d58a910b3` |
| 27 | `def` | [setCurr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/setcurr--226e423e65891e776b78a770.md) | 238 | `declaration-track:226e423e65891e776b78a7700d184532dcbc0d2d3e85872a2de64f9e611a760f` |
| 28 | `def` | [find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/find--72a61f44689d484bb83e4a7c.md) | 246 | `declaration-track:72a61f44689d484bb83e4a7cea3459ecefb0fa1d02361de3680415592865be55` |
| 29 | `def` | [foldUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/folduntil--f23047700bb02bc9c9722950.md) | 256 | `declaration-track:f23047700bb02bc9c97229503852af13ba8ffaa3b66a6a847f5d5740654f1dd0` |
| 30 | `def` | [toLegacyIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/tolegacyiterator--ba0fdb637bf7ff9f04bacb68.md) | 275 | `declaration-track:ba0fdb637bf7ff9f04bacb68ca0a8b54b442abdda37d67ee813e0e71a84610a4` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/instance--e7c69be2ec02c428c16a8e3b.md) | 281 | `declaration-track:e7c69be2ec02c428c16a8e3ba1f863a037db4a80b3c24bc83dc8d1b15c14e18f` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/instance--c294fc27ddb33724ca39c860.md) | 284 | `declaration-track:c294fc27ddb33724ca39c860557ea8c6e45730065d6401d15d4457f8214ab175` |
| 33 | `abbrev` | [String.Iterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-iterator--145528e4625dbe9abeb77936.md) | 290 | `declaration-track:145528e4625dbe9abeb77936e483457b77c636f7376977cd48c29fbf12f039f5` |
| 34 | `abbrev` | [String.iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-iter--631bc5d604de0d0db3c85942.md) | 292 | `declaration-track:631bc5d604de0d0db3c85942fb1f5291bca4acee4fe0800474e5f0c97968249f` |
| 35 | `abbrev` | [String.mkIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-mkiterator--aa8248561af15e6560a0286a.md) | 294 | `declaration-track:aa8248561af15e6560a0286ae32b7feef5565cad66d9b405ec265df249432951` |
| 36 | `abbrev` | [String.Iterator.curr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-iterator-curr--64cfb77ad1db572c9ba7c4ec.md) | 296 | `declaration-track:64cfb77ad1db572c9ba7c4ecfd24273a9bd40e1e7bd7b828af734c5dec1a5c8e` |
| 37 | `abbrev` | [String.Iterator.next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-iterator-next--0c63845b1fd1d892ad57b644.md) | 298 | `declaration-track:0c63845b1fd1d892ad57b6440a924cc3decbddce551ca0612d35a81b55857c08` |
| 38 | `abbrev` | [String.Iterator.hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/string-iterator-hasnext--0ab030e55e3cb530cee969ca.md) | 300 | `declaration-track:0ab030e55e3cb530cee969ca6690156415534ca52a7342f3ebabfb02a72370c9` |
| 39 | `abbrev` | [Substring.toIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant9470d2b5756b418930d1a91eb3ea7f01656f511b6c89eb8aefd27a2fa937d77f.lean/declarations/substring-toiterator--25148a569c419f5ef5bc8ec0.md) | 302 | `declaration-track:25148a569c419f5ef5bc8ec0db3379286712ad8441d98663db7b5079192da465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
