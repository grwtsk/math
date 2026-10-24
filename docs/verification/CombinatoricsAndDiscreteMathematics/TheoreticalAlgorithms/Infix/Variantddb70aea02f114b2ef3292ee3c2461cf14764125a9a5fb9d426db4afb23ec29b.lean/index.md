# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Infix.Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "affd4ea991a46300bbc3a49c6a07da279b0233ed",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `affd4ea991a46300bbc3a49c6a07da279b0233ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Induction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPrefix.take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-take--dd4fc4e0866b69366f4572b0.md) | 47 | `result-track:dd4fc4e0866b69366f4572b06921ebac794f7958f6a28be5f2c33e6e816c419f` |
| 2 | `lemma` | [IsPrefix.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-drop--d053b17cc33cbe532f073227.md) | 50 | `result-track:d053b17cc33cbe532f073227e4a235b6e3aa388cd6e4f41b77b9099a236e4505` |
| 3 | `lemma` | [isPrefix_append_of_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-append-of-length--19a9fb0285b2e18fb7c7fd65.md) | 55 | `result-track:19a9fb0285b2e18fb7c7fd65398703365b089d1edcd11d3f82eef621aab8d588` |
| 4 | `lemma` | [take_isPrefix_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/take-isprefix-take--85b5b14e9d4c0db071dfa716.md) | 59 | `result-track:85b5b14e9d4c0db071dfa716663914664ff9653c6cc1cb387b78071b75b05db7` |
| 5 | `theorem` | [IsPrefix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-flatten--5419827a810e620ab6136298.md) | 63 | `result-track:5419827a810e620ab6136298cdd503e1660800a6657d273b1035d22a33aa3a29` |
| 6 | `theorem` | [IsPrefix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-flatmap--b54af68f759993d6ab4bdbb2.md) | 69 | `result-track:b54af68f759993d6ab4bdbb2a873da83194b574e523dd8d4a9ba9d9a41ca4167` |
| 7 | `theorem` | [IsSuffix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/issuffix-flatten--cae047b0e7fac2b2a59af6ed.md) | 74 | `result-track:cae047b0e7fac2b2a59af6edf9fa81b89bdf132caff55c86ece1f835e12dcdba` |
| 8 | `theorem` | [IsSuffix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/issuffix-flatmap--a2937263bd1eb82eb9746696.md) | 80 | `result-track:a2937263bd1eb82eb97466961d74d330cf4f26089d6f29424a2d55a305009228` |
| 9 | `theorem` | [IsInfix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isinfix-flatten--f40248a17b38673a5a644f27.md) | 85 | `result-track:f40248a17b38673a5a644f27a5f87cb964cbc233ca20aa1c12f075bfc907759f` |
| 10 | `theorem` | [IsInfix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isinfix-flatmap--52bb2771e9cf7e7d748feea0.md) | 91 | `result-track:52bb2771e9cf7e7d748feea0d8436ff24e2db6bfad839ab9442da602aa698ad6` |
| 11 | `lemma` | [dropSlice_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/dropslice-sublist--e90a989889d48350d4e41e1a.md) | 95 | `result-track:e90a989889d48350d4e41e1a5240b1e32c5b9fb1c992d9234ae217a798bdfe07` |
| 12 | `lemma` | [dropSlice_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/dropslice-subset--e11299f5124956a5489f69c2.md) | 101 | `result-track:e11299f5124956a5489f69c26d640bc16d163910e1c64ec9619177d8f1c8bd5c` |
| 13 | `lemma` | [mem_of_mem_dropSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/mem-of-mem-dropslice--94568fbeb7c6594232cc5c75.md) | 104 | `result-track:94568fbeb7c6594232cc5c75f289828a6bc285b3e4d2882a9f8996f3300f9d9d` |
| 14 | `theorem` | [tail_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/tail-subset--aaa4fc0131fa6cbf04ce3785.md) | 107 | `result-track:aaa4fc0131fa6cbf04ce3785520dcb6aecca87bf03caf3350cb39f54eed850f0` |
| 15 | `theorem` | [mem_of_mem_dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/mem-of-mem-droplast--bfc7b7ce6ca078c745dc3891.md) | 110 | `result-track:bfc7b7ce6ca078c745dc3891edd0a898d94e8a9697cd72aab6db663041ceebe0` |
| 16 | `theorem` | [concat_get_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/concat-get-prefix--8a9fbfcd7b78acde70ec5ea8.md) | 116 | `result-track:8a9fbfcd7b78acde70ec5ea88cba28f74bdd3f63dba7dca00d54fb9208cc601f` |
| 17 | `instance` | [decidableInfix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/decidableinfix--12af6bded03f769302a3dfdd.md) | 123 | `declaration-track:12af6bded03f769302a3dfdd36f0e02c4ead9a02e1b93bdcea6978642b842446` |
| 18 | `theorem` | [IsPrefix.reduceOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/isprefix-reduceoption--40c27b43dab87d787baa8970.md) | 131 | `result-track:40c27b43dab87d787baa8970116ad72b58baabd9db7b1490ddd0e12bdf5b0b17` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/instance--48941cdff54c7e6692fdc43e.md) | 135 | `declaration-track:48941cdff54c7e6692fdc43edf2a9a246ea0a1a5cc6048537bdc48e16597b980` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/instance--53150e8dee0e7e4d3b2e44d7.md) | 140 | `declaration-track:53150e8dee0e7e4d3b2e44d7468996f931af2044f4a706cfe0834c79b0c3c916` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/instance--b1c5c7cf935ca9a7ad33aec7.md) | 145 | `declaration-track:b1c5c7cf935ca9a7ad33aec7fed737dcf91068c54f28b7b0fce63319c9460c31` |
| 22 | `theorem` | [mem_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/mem-inits--733d1fbd75921164fd98ad12.md) | 155 | `result-track:733d1fbd75921164fd98ad1226890854ef8279be48125341f1171b0ecdb932c1` |
| 23 | `theorem` | [mem_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/mem-tails--39ce4743d6da150a63eaad53.md) | 175 | `result-track:39ce4743d6da150a63eaad5301b019c318abed19046c92ac7cfd0dacc1368e11` |
| 24 | `theorem` | [inits_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/inits-cons--a863c98e9418a0f1b37b0b88.md) | 191 | `result-track:a863c98e9418a0f1b37b0b8866c01f1b6f6ad0e500cfa8d38c3fc86b1daefc08` |
| 25 | `theorem` | [tails_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/tails-cons--c0f210f06507a0e4c4d53cc9.md) | 194 | `result-track:c0f210f06507a0e4c4d53cc9176fca6f10e6b5b7f13d2d4739f54372e307bf63` |
| 26 | `theorem` | [inits_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/inits-append--868c91a365aa38f9e2d94def.md) | 197 | `result-track:868c91a365aa38f9e2d94defd4e4bc2db3672f0947a1857e1db03323d5b16b7d` |
| 27 | `theorem` | [tails_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/tails-append--44d2f2f6b5a1f9b7f1407c38.md) | 203 | `result-track:44d2f2f6b5a1f9b7f1407c3843b67ca73b74c3be3eded196800c1ad8973d1347` |
| 28 | `theorem` | [inits_eq_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/inits-eq-tails--0a93bd9d9c15c560a1fff267.md) | 210 | `result-track:0a93bd9d9c15c560a1fff26794ea2e4568301be6299c0a33613230ad67162be0` |
| 29 | `theorem` | [tails_eq_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/tails-eq-inits--afa6214a108c3ac7619c6f55.md) | 214 | `result-track:afa6214a108c3ac7619c6f551fff63094fa8a623f373e7dde84641a24c0ea8e0` |
| 30 | `theorem` | [inits_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/inits-reverse--04c9e21fb4e3a5de4e2d9d68.md) | 218 | `result-track:04c9e21fb4e3a5de4e2d9d6860c8f684aa0556ad2e57b123708c522a9730e4f0` |
| 31 | `theorem` | [tails_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/tails-reverse--2923107b268076a4e536aa71.md) | 222 | `result-track:2923107b268076a4e536aa71f46f85ead1d1d54d5987654d62676ccbd9bd748d` |
| 32 | `theorem` | [map_reverse_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/map-reverse-inits--b25e176dd420716759a296b4.md) | 226 | `result-track:b25e176dd420716759a296b4b1d2ee762abf716c44dd3a437d3be93434d9e4e0` |
| 33 | `theorem` | [map_reverse_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/map-reverse-tails--21c0a9d3252ca9467d4c722c.md) | 230 | `result-track:21c0a9d3252ca9467d4c722c19858cae8f1ee5f4fbe28ee9dc3234ab22d138b9` |
| 34 | `theorem` | [length_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/length-tails--dc6f462fc9a5d6a45e542c08.md) | 235 | `result-track:dc6f462fc9a5d6a45e542c08ade7fb785c909b17e8e0b77af423319e73b59692` |
| 35 | `theorem` | [length_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/length-inits--4db1727a28ee6ee8880e9e18.md) | 241 | `result-track:4db1727a28ee6ee8880e9e1825e80282a7f882d3c7fe3e4e525bf2a53cec737a` |
| 36 | `theorem` | [getElem_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/getelem-tails--44f4915d80c6bd968535d61b.md) | 244 | `result-track:44f4915d80c6bd968535d61b9959503a8f70020f61738051068dd0ef6fdf882f` |
| 37 | `theorem` | [get_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/get-tails--cf5f27729137042ddf968b37.md) | 253 | `result-track:cf5f27729137042ddf968b37b3c72916cbd136d0827f61efdad0886183593508` |
| 38 | `theorem` | [getElem_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/getelem-inits--af7ab2252cb38ebf09cdd3ce.md) | 257 | `result-track:af7ab2252cb38ebf09cdd3ce85c630518f6b8db3575ba072fcbd5d1a4f17a42d` |
| 39 | `theorem` | [get_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/get-inits--24bafbc978129672e762124d.md) | 266 | `result-track:24bafbc978129672e762124df69466643e36091df487670496ed34c0d1dff48f` |
| 40 | `lemma` | [map_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/map-inits--e93f381dfb58c554d1755fa8.md) | 269 | `result-track:e93f381dfb58c554d1755fa847d0b7b333c5a7b387a18378ce8f3c17f26fc092` |
| 41 | `lemma` | [map_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/map-tails--3f5b4bb81d4474d2d74d1acf.md) | 272 | `result-track:3f5b4bb81d4474d2d74d1acf7c39e873c78bb4579992c85da24a79ffd7224ce8` |
| 42 | `lemma` | [take_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/take-inits--5cbace2036a5e28999cdf257.md) | 275 | `result-track:5cbace2036a5e28999cdf257e90c98034f861614f9e59ae2e0f976874b875902` |
| 43 | `theorem` | [insert_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/insert-eq-ite--90f019911526d4a6b8a7b803.md) | 287 | `result-track:90f019911526d4a6b8a7b803389646fd4b59c2a74e11347aee2e1dc7f36a61c4` |
| 44 | `theorem` | [suffix_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/suffix-insert--8a0a18938da2348bf3a49a9e.md) | 292 | `result-track:8a0a18938da2348bf3a49a9e8695ea936f239c1eb1097d792ded9015d475072e` |
| 45 | `theorem` | [infix_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/infix-insert--80996a647d96e39c9c76f082.md) | 297 | `result-track:80996a647d96e39c9c76f082258d394d014ad473490b43f1ab82d343abe23960` |
| 46 | `theorem` | [sublist_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/sublist-insert--a97d63133bb4bee1caf52003.md) | 300 | `result-track:a97d63133bb4bee1caf52003c90e139c3fb1d1a9d9ad6c9fcc0429903fc3c0a3` |
| 47 | `theorem` | [subset_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variantddb70aea02f114b2ef3292ee3c2461cf14764125a9a5fb9d426db4afb23ec29b.lean/declarations/subset-insert--4e166ba73bda7412b3ecf61e.md) | 303 | `result-track:4e166ba73bda7412b3ecf61ee2e2e6d4484459b3a336cdc0aa979c06008991b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
