# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c524cdc1b12b18ec1049cf6b322110480f68df4a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c524cdc1b12b18ec1049cf6b322110480f68df4a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.RelClasses` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lex_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/lex-cons-iff--4732432b2b169c8b2fedf587.md) | 38 | `result-track:4732432b2b169c8b2fedf5872966da897cedc1a71d9d77ecec426c46596cd5ca` |
| 2 | `theorem` | [lex_nil_or_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/lex-nil-or-eq-nil--5210f9148d4c32324060a0f9.md) | 44 | `result-track:5210f9148d4c32324060a0f9a739b95d44168286c7ebc225f550b7f2107c9551` |
| 3 | `theorem` | [lex_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/lex-singleton-iff--3eaf53879ea0321767303ba0.md) | 52 | `result-track:3eaf53879ea0321767303ba05c5a0cb1ff024704931044ab92f69d02808e910a` |
| 4 | `instance` | [isOrderConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/isorderconnected--c6eab600b0db50381fe4126a.md) | 59 | `declaration-track:c6eab600b0db50381fe4126ad98dba23289ffb7e6149e4332322e11527ddb043` |
| 5 | `instance` | [isTrichotomous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/istrichotomous--d7d1895fd4cf0562f393b9d3.md) | 74 | `declaration-track:d7d1895fd4cf0562f393b9d37729d28b34f8509a506e03fd25d22ded5c2b0fc9` |
| 6 | `instance` | [isAsymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/isasymm--95385377bf5d81b338ec333e.md) | 87 | `declaration-track:95385377bf5d81b338ec333e0868ef96e9b18b0888473fcb469c6d7c2ef20ccf` |
| 7 | `instance` | [decidableRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/decidablerel--d6acb044ea6a72854f8a80b5.md) | 95 | `declaration-track:d6acb044ea6a72854f8a80b54f3f24431494275365b5022fab09f18cd31c77d5` |
| 8 | `theorem` | [append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/append-right--cc3db34be0f9394980e092d6.md) | 108 | `result-track:cc3db34be0f9394980e092d68766005bbb2bf853b93bea62a3541843f7d8d11f` |
| 9 | `theorem` | [append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/append-left--ea6df1037b5150783efa35ae.md) | 113 | `result-track:ea6df1037b5150783efa35aec6f5ca883c6a9167fdeefdd3f221978b7ebc2b6d` |
| 10 | `theorem` | [imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/imp--a2195292f121836a4e278cf7.md) | 117 | `result-track:a2195292f121836a4e278cf7d496e5087dd92108b9d0172570c472c1461e9451` |
| 11 | `theorem` | [to_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/to-ne--3760bed4de5b6599b87142ff.md) | 122 | `result-track:3760bed4de5b6599b87142ff3bfef18ffb3ff6f0f81d6e6a0a1aa9c6200cedbb` |
| 12 | `theorem` | [_root_.Decidable.List.Lex.ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/root-decidable-list-lex-ne-iff--8a22a2dc23957ee3b22ad2a9.md) | 126 | `result-track:8a22a2dc23957ee3b22ad2a9b11e7c5e418107c6a49f5a695b0aac455bd2d6bf` |
| 13 | `theorem` | [ne_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/ne-iff--f1f522695ec117b7a6bd57c1.md) | 138 | `result-track:f1f522695ec117b7a6bd57c1e182f14ca64d0b8c6ec70f868cefb221459a4958` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/instance--d5b3f9bdd409a8063eae26b2.md) | 144 | `declaration-track:d5b3f9bdd409a8063eae26b2023ea98f576b4891b9bcec0c0df1fdc8c721602f` |
| 15 | `instance` | [LE'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/le--cc684947bb97808840b21ace.md) | 150 | `declaration-track:cc684947bb97808840b21acef37392bfab190d2442f25a596e12076c8e1bf1bc` |
| 16 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/lt-iff-lex-lt--c6bf06e665f611c246332be2.md) | 153 | `result-track:c6bf06e665f611c246332be2c4562ec9c0968daa46a3613ac148d80c38c1c44f` |
| 17 | `theorem` | [head_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/head-le-of-lt--198481a63379a617614efb1e.md) | 156 | `result-track:198481a63379a617614efb1ed3fc3bff1d69abaa723b33158b6649f977de00fd` |
| 18 | `theorem` | [head!_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/head-le-of-lt--af0742479f093b3c6b561728.md) | 162 | `result-track:af0742479f093b3c6b561728890ce819a56b4124874c5db4751601ed1946429a` |
| 19 | `theorem` | [cons_le_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant661502af9281c2f2dd5e997c12135710f9827ac8898486d75df2e69781e4c3c1.lean/declarations/cons-le-cons--e9178462e3b8a37ad6579da0.md) | 170 | `result-track:e9178462e3b8a37ad6579da0a86ae1cb44dfd7b0f1bede28047c936cd55718ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
