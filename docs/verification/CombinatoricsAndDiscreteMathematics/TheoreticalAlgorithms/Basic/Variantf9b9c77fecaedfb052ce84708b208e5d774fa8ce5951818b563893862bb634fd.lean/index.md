# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0e3ba6da202318c045e74c774874744ecfcd7a0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0e3ba6da202318c045e74c774874744ecfcd7a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Char` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Match` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/instance--6db12853f7a58423aa2b8425.md) | 11 | `declaration-track:6db12853f7a58423aa2b84252cc06a1075b36a8c91acbd4e973ebd99417b33e5` |
| 2 | `theorem` | [Pos.ne_zero_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/pos-ne-zero-of-lt--b1aca39b9aa982e0714637ef.md) | 15 | `result-track:b1aca39b9aa982e0714637ef08937b8e62b4ed2f8d1c8961aca76f5c746550eb` |
| 3 | `structure` | [Matcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher--b320052ba4d2b2690ed97fd5.md) | 37 | `declaration-track:b320052ba4d2b2690ed97fd5fb6e4e548271e157d5dcb065fc7869ed1e10d4de` |
| 4 | `def` | [Matcher.ofSubstring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher-ofsubstring--5161841458126d24daa917fd.md) | 42 | `declaration-track:5161841458126d24daa917fd3acd2aaa13eb16bd8197849d1725d7039a4ca43d` |
| 5 | `def` | [Matcher.ofString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher-ofstring--d2cbd10c5fda48ac6216b889.md) | 47 | `declaration-track:d2cbd10c5fda48ac6216b889ba12fd245d0843ba4c49c6f5fbf54cb99c6c212a` |
| 6 | `abbrev` | [Matcher.patternSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher-patternsize--e5e32ec502dac021c6c4d33d.md) | 51 | `declaration-track:e5e32ec502dac021c6c4d33d283d7b253d1de91d88ff341cbc087d22b40f2edc` |
| 7 | `def` | [Matcher.findAll](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher-findall--6afed80c64e612b9c3940bc2.md) | 54 | `declaration-track:6afed80c64e612b9c3940bc2191cfd6b13878fc1b8e429eb436784ea994ded38` |
| 8 | `def` | [Matcher.find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/matcher-find--ee3b17d95640c301fcb13a7b.md) | 67 | `declaration-track:ee3b17d95640c301fcb13a7baa2d33043f2b1d1ef34f3b97b0cf972926617e1a` |
| 9 | `def` | [commonPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/commonprefix--aa409cd3e60af660a0b31570.md) | 83 | `declaration-track:aa409cd3e60af660a0b31570a7551aeb0d2de7146b97a701b28cbe4105cfd42a` |
| 10 | `def` | [commonSuffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/commonsuffix--ee5d9ee2ee46365ade88747c.md) | 102 | `declaration-track:ee5d9ee2ee46365ade88747c68a09bd2f14c79bedeb3d99c771101dfae8e3749` |
| 11 | `def` | [dropPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/dropprefix--7a4cd1699d2a5350e6712e29.md) | 122 | `declaration-track:7a4cd1699d2a5350e6712e293525e73737e74b968360f92fab97ea392f0a9129` |
| 12 | `def` | [dropSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/dropsuffix--bb30dfcd5993342d5e4dc7a8.md) | 132 | `declaration-track:bb30dfcd5993342d5e4dc7a80adf244b42b9ac756f1bac1026d24cfd51e31a1f` |
| 13 | `def` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/findallsubstr--ed78c372b18ae9efa42ee37a.md) | 142 | `declaration-track:ed78c372b18ae9efa42ee37a99e8e9c705a9a5a30ebc2c407a16dce639070712` |
| 14 | `def` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/findsubstr--00f167097229a645697a78e0.md) | 149 | `declaration-track:00f167097229a645697a78e03496fd59f49b44d4b1f653fb1323d840ab3ba50c` |
| 15 | `def` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/containssubstr--d213abd0b7ca79e8f112bb93.md) | 155 | `declaration-track:d213abd0b7ca79e8f112bb9302d2227041cfd01124ebabc5fb19350d47a06a93` |
| 16 | `abbrev` | [findAllSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/findallsubstr--e467c0c1d91b7cbdcdfd5cc4.md) | 163 | `declaration-track:e467c0c1d91b7cbdcdfd5cc4ff6ad6d59c29ef0092659e4743d96d6eece440eb` |
| 17 | `abbrev` | [findSubstr?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/findsubstr--a50892cf937e6ba30192763b.md) | 167 | `declaration-track:a50892cf937e6ba30192763b0342a54cb43b742f5ab22b1440905193072e6a2c` |
| 18 | `abbrev` | [containsSubstr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/containssubstr--22a8440add11bc359ea07ebc.md) | 171 | `declaration-track:22a8440add11bc359ea07ebc70d8a1c6a20fc92ce0ed902cfccb19cca64c0320` |
| 19 | `def` | [dropPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/dropprefix--310baf2fc86808eb5fc30d1e.md) | 177 | `declaration-track:310baf2fc86808eb5fc30d1e3728064966537765ac292866bd0974998b031f45` |
| 20 | `def` | [dropSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/dropsuffix--335c3a65d54e0d27e36df0d7.md) | 183 | `declaration-track:335c3a65d54e0d27e36df0d74f159680d28b036e640c738763a1523ce1b69c1a` |
| 21 | `def` | [stripPrefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/stripprefix--d6ff3b7b8bb0e936aa00b048.md) | 188 | `declaration-track:d6ff3b7b8bb0e936aa00b04861cb7e341a0bfa72d6680f8e93df7cab7c2e7be9` |
| 22 | `def` | [stripSuffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/stripsuffix--b62f49ba7f123b3411d1992c.md) | 193 | `declaration-track:b62f49ba7f123b3411d1992cd18edd9bc9de67aef8c97f492d07cb352bb03759` |
| 23 | `def` | [count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf9b9c77fecaedfb052ce84708b208e5d774fa8ce5951818b563893862bb634fd.lean/declarations/count--dfd55b936635c898d5921f81.md) | 197 | `declaration-track:dfd55b936635c898d5921f814ad7be926fb13d8057cd06ab61a20e60b4f2a0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
