# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Order.Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8261f08f51dfefdc58e1ac30c9218e02e6614d8b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8261f08f51dfefdc58e1ac30c9218e02e6614d8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PartialBit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit--1706983fd71597bb6d1afec9.md) | 16 | `declaration-track:1706983fd71597bb6d1afec9d3f1dd842edf7670a4d7d4836f7dfaa338ff6a39` |
| 2 | `def` | [PartialBit.refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-refines--b390594717c36f04f0357053.md) | 22 | `declaration-track:b390594717c36f04f03570537787fe86ff8d287c8fe09226d84bc38ee1bdcbf2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/instance--7fce25e1e0ada75d56929a62.md) | 28 | `declaration-track:7fce25e1e0ada75d56929a622c88177abc133dd92619f3d70d3914ed773411b5` |
| 4 | `theorem` | [PartialBit.le_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-le-refl--7f3a5803e080f48d9b66d2ac.md) | 31 | `result-track:7f3a5803e080f48d9b66d2ac16edff7fe866edfd22a562e05ec048c870177c77` |
| 5 | `theorem` | [PartialBit.le_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-le-trans--5f1347b8bd38c3effa6c85ea.md) | 34 | `result-track:5f1347b8bd38c3effa6c85ea10b4fc6d99937ad793b9142565795bf6bde553aa` |
| 6 | `theorem` | [PartialBit.le_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-le-antisymm--aba83e853b59477c00bf7aeb.md) | 41 | `result-track:aba83e853b59477c00bf7aeb11b1958c9c714f7ef6126bba9468d5102e70c961` |
| 7 | `instance` | [partialBitPartialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbitpartialorder--76efb68916f6787aae72a055.md) | 48 | `declaration-track:76efb68916f6787aae72a055f93abd1982ac551b1941907ce2d98cf2ee298f5c` |
| 8 | `def` | [partialBit_partialOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-partialorder--6d14dd1cee8563b4b8aa4fad.md) | 53 | `declaration-track:6d14dd1cee8563b4b8aa4fad26e8b3e66d2586cd14eba949243a74314744d2f3` |
| 9 | `def` | [PartialBit.Resolved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-resolved--d351ff54b788a7e150740ce3.md) | 56 | `declaration-track:d351ff54b788a7e150740ce3f48c8afcc35e91dd82fb2d22532ed380e388a97c` |
| 10 | `theorem` | [PartialBit.resolved_le_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-resolved-le-eq--4dc24dc1c7df9931038451f1.md) | 61 | `result-track:4dc24dc1c7df9931038451f12ea072fa92eb6181a58444f3dbc980abdc098a37` |
| 11 | `def` | [PartialBit.ofBool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbit-ofbool--b637a982bcf06de5bb060cee.md) | 68 | `declaration-track:b637a982bcf06de5bb060cee76641058c3958dd59fd3b24053b17ce75b14036d` |
| 12 | `def` | [PartialBitfield](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/partialbitfield--1b5d36bf6ea45e9cd8ad9be6.md) | 72 | `declaration-track:1b5d36bf6ea45e9cd8ad9be689f5afe698ddb3709e2a464e6311892c5e79aaaf` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/instance--a9ab6603d49358ca40d40dab.md) | 75 | `declaration-track:a9ab6603d49358ca40d40dab999c4b0b5d3ca98a3a81617481e478012e013ff8` |
| 14 | `def` | [ResolvedSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/resolvedsupport--b7bd54a21cb5b499b7cf8119.md) | 79 | `declaration-track:b7bd54a21cb5b499b7cf8119a8386f119d4c6918257d6712ec3dfdcfcb3c72a0` |
| 15 | `structure` | [OneCoordinateResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/onecoordinateresolution--13fcba07c32696445a1ac537.md) | 83 | `declaration-track:13fcba07c32696445a1ac53773f6bd5d18dc9d1e9e1fc1126d1fb7c9c2772ec4` |
| 16 | `theorem` | [oneCoordinateResolution_extends](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/onecoordinateresolution-extends--191a40b8e4c1e76c35bd430d.md) | 96 | `result-track:191a40b8e4c1e76c35bd430d02b1a36241334c187f8d6b673714142eef7471b1` |
| 17 | `theorem` | [oneCoordinateResolution_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/onecoordinateresolution-support--0940645b92f3d4f7863f29fe.md) | 109 | `result-track:0940645b92f3d4f7863f29fe38d729150b066bcd700026a108c9cf10e4b74faf` |
| 18 | `theorem` | [oneCoordinateResolution_support_increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Order/Variant6682a46cb2dd373377d0f0495a496fbe942f64491944b0e6a61884acddd40102.lean/declarations/onecoordinateresolution-support-increment--e305bc107e03f952f22e2831.md) | 138 | `result-track:e305bc107e03f952f22e2831b2ebf84eb18ad5e64babcd39407cb158dc70c254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
