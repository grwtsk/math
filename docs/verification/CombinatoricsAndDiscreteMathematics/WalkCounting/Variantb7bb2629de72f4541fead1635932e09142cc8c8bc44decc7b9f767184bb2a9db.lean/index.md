# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WalkCounting.Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94c1111e81555a91a37824333407c55748c2f72e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94c1111e81555a91a37824333407c55748c2f72e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_walk_self_length_zero_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/set-walk-self-length-zero-eq--75a3b1c2b2973e4f06c8ebee.md) | 39 | `result-track:75a3b1c2b2973e4f06c8ebee23622804d0f7656723a8ae5c914de57f2fe102d0` |
| 2 | `theorem` | [set_walk_length_zero_eq_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/set-walk-length-zero-eq-of-ne--ae4c2a8e144b0fb1a9abb37d.md) | 43 | `result-track:ae4c2a8e144b0fb1a9abb37d2b96ab4d9cbd6f1dd78cd043343e46e40d123573` |
| 3 | `theorem` | [set_walk_length_succ_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/set-walk-length-succ-eq--61a6f76596d4df083f92587b.md) | 49 | `result-track:61a6f76596d4df083f92587b271c156b30870b59ffa6bb92f2a0eb9928af0f59` |
| 4 | `def` | [walkLengthTwoEquivCommonNeighbors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/walklengthtwoequivcommonneighbors--3f75c75a165838df5bdfd34d.md) | 67 | `declaration-track:3f75c75a165838df5bdfd34d400ee43ce1a32018fc2dd36344b9f94ec6d35ae3` |
| 5 | `def` | [finsetWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/finsetwalklength--3bc960f029543db12672b838.md) | 85 | `declaration-track:3bc960f029543db12672b838b7258d5cc5ac6d3589fe1e63201ff04ec95fabd8` |
| 6 | `theorem` | [coe_finsetWalkLength_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/coe-finsetwalklength-eq--057809b3c5892292bc6cbc93.md) | 96 | `result-track:057809b3c5892292bc6cbc935eadf8e6792b863ff6c30b3cbbacfa7ef4daead0` |
| 7 | `theorem` | [mem_finsetWalkLength_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/mem-finsetwalklength-iff--077c94eccbae08e21c5ddb31.md) | 114 | `result-track:077c94eccbae08e21c5ddb318545ca99c179d5d2de3308cd66ac5ec909653396` |
| 8 | `def` | [finsetWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/finsetwalklengthlt--1f52efabbb9ae658e626d3f7.md) | 120 | `declaration-track:1f52efabbb9ae658e626d3f7e94f07541dcbea81097e9eaae91671b4a52170c9` |
| 9 | `theorem` | [coe_finsetWalkLengthLT_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/coe-finsetwalklengthlt-eq--d0a11b82d058dad5dc80c9ce.md) | 129 | `result-track:d0a11b82d058dad5dc80c9ce2544080316d1cb159beab1d51f5e01ed9eacd88e` |
| 10 | `theorem` | [mem_finsetWalkLengthLT_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/mem-finsetwalklengthlt-iff--fc2a1ec18dd27c480089f49b.md) | 135 | `result-track:fc2a1ec18dd27c480089f49b488dc178de95ecb3b65fdd2fea2ab3d48d05023e` |
| 11 | `instance` | [fintypeSetWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesetwalklength--132d1095cb800e62928cc97e.md) | 139 | `declaration-track:132d1095cb800e62928cc97e81373544bcbabc37ae322a5b1e464751532a4f76` |
| 12 | `instance` | [fintypeSubtypeWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesubtypewalklength--1cdda0ac52a92bbb7fc82729.md) | 143 | `declaration-track:1cdda0ac52a92bbb7fc827298f43bc193677d695c71e826eb10de2cb58de8ccd` |
| 13 | `theorem` | [set_walk_length_toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/set-walk-length-tofinset-eq--a7f59390beb05be77a01204f.md) | 146 | `result-track:a7f59390beb05be77a01204ffc954c5d04a3fd5a24cab93b180945f009a7a7ad` |
| 14 | `theorem` | [card_set_walk_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/card-set-walk-length-eq--753702dcb186711d992d37b2.md) | 153 | `result-track:753702dcb186711d992d37b20ea71e61dbad8dc0a437412824a1e4fc3ac0fa3d` |
| 15 | `instance` | [fintypeSetWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesetwalklengthlt--a89ecbacc8f67fc594323b39.md) | 158 | `declaration-track:a89ecbacc8f67fc594323b393a226ae5167a3946a22bbe48820d0e21859881fe` |
| 16 | `instance` | [fintypeSubtypeWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesubtypewalklengthlt--64211f3456adcc13c1d6a303.md) | 162 | `declaration-track:64211f3456adcc13c1d6a3031099ddfafcb2d0e18de68f9236b23bbc994924d0` |
| 17 | `instance` | [fintypeSetPathLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesetpathlength--a02b32f4c32ca77276e599b6.md) | 165 | `declaration-track:a02b32f4c32ca77276e599b650d6986ce2e6ed0be6c6e7f8428c82797b132f97` |
| 18 | `instance` | [fintypeSubtypePathLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesubtypepathlength--ce78f0c0e270e85dfd0f0285.md) | 170 | `declaration-track:ce78f0c0e270e85dfd0f0285c432d7c6323535358a508d4ea8660e0b7161f4f4` |
| 19 | `instance` | [fintypeSetPathLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesetpathlengthlt--486ee154df483a5a7d9ff3ce.md) | 174 | `declaration-track:486ee154df483a5a7d9ff3ce47ecea1505f593657379d5ae9b683234c85ebf58` |
| 20 | `instance` | [fintypeSubtypePathLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/fintypesubtypepathlengthlt--34ef5bcb49cfb8c7addb2d44.md) | 179 | `declaration-track:34ef5bcb49cfb8c7addb2d447220c647ed21430fe50d95a0d1ff29593c725483` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instance--58b5b01817d73d3cb3680f4c.md) | 185 | `declaration-track:58b5b01817d73d3cb3680f4cb2d8d8b335418ae526ba54abeb645d58d4cf7c5b` |
| 22 | `theorem` | [reachable_iff_exists_finsetWalkLength_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/reachable-iff-exists-finsetwalklength-nonempty--880f4e88717ac7fdb5c245f5.md) | 191 | `result-track:880f4e88717ac7fdb5c245f58292cd17472e2543333e50c654dcf2dcc859e051` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instance--43659b7117e306c3c5205def.md) | 201 | `declaration-track:43659b7117e306c3c5205def71471ec58037b4b3df57589bc73474a1b127ba20` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instance--61c9edca32eab1b17dba0aae.md) | 204 | `declaration-track:61c9edca32eab1b17dba0aae60a7158576461b3bfe086380998b7a216ea4816e` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instance--b36ee00ba789f4fa9b611f9a.md) | 207 | `declaration-track:b36ee00ba789f4fa9b611f9a12cbb6d4aebbda985ea1c99e272ed78860b3e16a` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instance--82be70c871d6fcfd242c3e86.md) | 210 | `declaration-track:82be70c871d6fcfd242c3e860c4c8a9250df3a0995f14b4948702088ddcfe926` |
| 27 | `instance` | [Path.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/path-instfintype--252ef6e7ef6e786948dc159b.md) | 214 | `declaration-track:252ef6e7ef6e786948dc159b4e74ca8319c49a405b7350181c4bda2014642f25` |
| 28 | `instance` | [instDecidableMemSupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/instdecidablememsupp--55b3de6353c58a0dd98635f0.md) | 222 | `declaration-track:55b3de6353c58a0dd98635f08abbe913c2624a97a281a90580776bf1a1dd00f8` |
| 29 | `lemma` | [disjiUnion_supp_toFinset_eq_supp_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/disjiunion-supp-tofinset-eq-supp-tofinset--600757d762bb68db42dce691.md) | 227 | `result-track:600757d762bb68db42dce691d9ac1f876281ff2dc40300b6468aaa78d862fc00` |
| 30 | `abbrev` | [oddComponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/oddcomponents--0a9477ef58bf90affefa821b.md) | 239 | `declaration-track:0a9477ef58bf90affefa821bfa4f94e25288fcac6c6a82e933c2755713ada522` |
| 31 | `lemma` | [ConnectedComponent.odd_oddComponents_ncard_subset_supp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/connectedcomponent-odd-oddcomponents-ncard-subset-supp--2aba4506e248e03f5b98489e.md) | 241 | `result-track:2aba4506e248e03f5b98489e7b3a39a842318a41bd86186635ab7fc059175bee` |
| 32 | `lemma` | [odd_ncard_oddComponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/odd-ncard-oddcomponents--9b923324a6f7cdd1891ddbce.md) | 255 | `result-track:9b923324a6f7cdd1891ddbce139a893b42a8ec22435385025f982342956e68ae` |
| 33 | `lemma` | [ncard_oddComponents_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variantb7bb2629de72f4541fead1635932e09142cc8c8bc44decc7b9f767184bb2a9db.lean/declarations/ncard-oddcomponents-mono--6a95c8aca44012985869bbd2.md) | 268 | `result-track:6a95c8aca44012985869bbd2e6a4c38d709dbf254547631106613ae7fc93d157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
