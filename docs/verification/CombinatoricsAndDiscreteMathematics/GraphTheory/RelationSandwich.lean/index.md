# Verification target: GRWTSK.Combinatorics.GraphTheory.RelationSandwich

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465feae8404461eae23cf504051668464ff71599",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/RelationSandwich.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465feae8404461eae23cf504051668464ff71599`.

Source path: `GRWTSK/Combinatorics/GraphTheory/RelationSandwich.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/RelationSandwich.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [EdgeRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/edgerelation--52058ecb7df17726be0eb6b8.md) | 31 | `declaration-track:52058ecb7df17726be0eb6b8dd27ba0ef16155712540a2b29c0c9c2eaf0d96eb` |
| 2 | `def` | [Subrelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/subrelation--60e4bc8967be464c1641f680.md) | 34 | `declaration-track:60e4bc8967be464c1641f680f0af43c74d79081f2e1584d0fbae5e82dec0505b` |
| 3 | `structure` | [Sandwich](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich--58faafdb6ea3448e8f09b1d8.md) | 38 | `declaration-track:58faafdb6ea3448e8f09b1d8a587165a4771fdfb5d965d99351a58eb8640c88b` |
| 4 | `def` | [UpwardClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/upwardclosed--cd12c63f694e09c986bf1efa.md) | 46 | `declaration-track:cd12c63f694e09c986bf1efa53e60305dd8a2a5daf362d6836a4b595c3e6b579` |
| 5 | `def` | [DownwardClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/downwardclosed--627c99666c037891601d5cd3.md) | 51 | `declaration-track:627c99666c037891601d5cd3910fee9b801134e790a8ace4b3459f5218780684` |
| 6 | `theorem` | [Sandwich.lower_le_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-lower-le-upper--02604bea4eec78e110c5cb15.md) | 58 | `result-track:02604bea4eec78e110c5cb15dabdc3314d7e0af9c76d4db217516fe9704130b0` |
| 7 | `theorem` | [Sandwich.middle_of_lower_upward](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-middle-of-lower-upward--8a263e35da4a28665a97bf8e.md) | 64 | `result-track:8a263e35da4a28665a97bf8e960766b1e1beaab9d2414002b4f7b107f043b81b` |
| 8 | `theorem` | [Sandwich.middle_of_upper_downward](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-middle-of-upper-downward--df5dfa1d565b4e6ff8e5ccd1.md) | 71 | `result-track:df5dfa1d565b4e6ff8e5ccd1d88eb3a1689b8ab0ccd75366a41db3a3306a5c05` |
| 9 | `inductive` | [Path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/path--59652d382fa4ed951e7866fd.md) | 78 | `declaration-track:59652d382fa4ed951e7866fd3814ee58faa73b0d8a13421e00faa76bd58621ac` |
| 10 | `def` | [Path.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/path-mono--7b60115cc6afa76459656b19.md) | 83 | `declaration-track:7b60115cc6afa76459656b197873989f1e55a573451cdd558705fcf2988b63fe` |
| 11 | `theorem` | [pathProperty_upwardClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/pathproperty-upwardclosed--6e2e83436ccb9c91c9a202d9.md) | 93 | `result-track:6e2e83436ccb9c91c9a202d9ca9e9b40901e11bf7fdf094eadda3bf651bdc467` |
| 12 | `def` | [Sandwich.lower_path_to_middle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-lower-path-to-middle--663700feec9395a2ca05f6e2.md) | 99 | `declaration-track:663700feec9395a2ca05f6e267a66ba05538827387d8d3ab2863a0235307ae79` |
| 13 | `def` | [Sandwich.middle_path_to_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-middle-path-to-upper--a7a13bf557dcc1451c93fb1b.md) | 104 | `declaration-track:a7a13bf557dcc1451c93fb1b766624f0de69c0faa2cd67e7e939ae2b6660e641` |
| 14 | `def` | [Acyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/acyclic--c096d41edc51d3310b75d9f7.md) | 109 | `declaration-track:c096d41edc51d3310b75d9f7828db242c5fa23d6d5158754174634629b751bc9` |
| 15 | `theorem` | [acyclic_of_subrelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/acyclic-of-subrelation--7993083a34a9b2f90a50ecba.md) | 113 | `result-track:7993083a34a9b2f90a50ecbaf2272f68f547d6b9fff46699d89edc2f0515bc21` |
| 16 | `theorem` | [acyclic_downwardClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/acyclic-downwardclosed--147c8374f54375c3d81ddb13.md) | 120 | `result-track:147c8374f54375c3d81ddb13f915508e8ab312eeb3b4ef6ef0cf5479dda08e90` |
| 17 | `theorem` | [Sandwich.middle_acyclic_of_upper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-middle-acyclic-of-upper--0feef88be785ce88290cd736.md) | 126 | `result-track:0feef88be785ce88290cd7363e7a90089ea8a044382e9114f202b29216274129` |
| 18 | `def` | [OrderedBy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedby--67a54fd5192867f70a8498c6.md) | 131 | `declaration-track:67a54fd5192867f70a8498c6af06747a0298dff597ce8ab3114d8a066cb52050` |
| 19 | `theorem` | [orderedBy_of_subrelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedby-of-subrelation--a51cca497f56bd27205797f0.md) | 135 | `result-track:a51cca497f56bd27205797f0b3a904f9e5f82a1bcafcca9f8bd15b721109283f` |
| 20 | `theorem` | [Path.rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/path-rank-lt--96e840db694236ecf3d0f7d8.md) | 142 | `result-track:96e840db694236ecf3d0f7d890041f23e4644f81324b43c717fcd97d5aeb00f7` |
| 21 | `theorem` | [acyclic_of_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/acyclic-of-ordered--b458106bf1a02216e4f81956.md) | 152 | `result-track:b458106bf1a02216e4f81956e5604d534859a67e49039d6c71bba7cb75b61cd1` |
| 22 | `theorem` | [Sandwich.middle_acyclic_of_upper_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/sandwich-middle-acyclic-of-upper-ordered--74e5370984a4a5e79907d815.md) | 158 | `result-track:74e5370984a4a5e79907d81519cc49fe396277c3ecac00650f3dddad94fe859f` |
| 23 | `structure` | [OrderedControl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedcontrol--024ab4d21777a2f418a8e392.md) | 169 | `declaration-track:024ab4d21777a2f418a8e3922b622631b4f4694229ef0d8884f3f40d27577e18` |
| 24 | `def` | [OrderedControl.accepts_lower_path](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedcontrol-accepts-lower-path--339838962edf45b1f6584a1e.md) | 176 | `declaration-track:339838962edf45b1f6584a1e2367d46a81613b185ffbdd527cd747bc2b1dc246` |
| 25 | `theorem` | [OrderedControl.middle_acyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedcontrol-middle-acyclic--c8c11e842ef69463a2fb0568.md) | 183 | `result-track:c8c11e842ef69463a2fb0568e06fb59210837434f4d3680e1d34e434485159c8` |
| 26 | `theorem` | [OrderedControl.certified_path_control](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/declarations/orderedcontrol-certified-path-control--962057ae4aa62911082ae184.md) | 190 | `result-track:962057ae4aa62911082ae184915524b811b5a07e13781bea1cbdd017581c0365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
