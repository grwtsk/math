# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3210bc02d20d31d80f7c04af8dca1a398f61ceb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3210bc02d20d31d80f7c04af8dca1a398f61ceb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 13; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/buildtable--ea37edc453bf77f28cc74368.md) | 32 | `declaration-track:ea37edc453bf77f28cc743683464d839de50e68b68bfea05a321edcbdb7bc18a` |
| 2 | `theorem` | [getElem_buildTable_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/getelem-buildtable-le--09619d4b4b7daf42c6dc9a74.md) | 70 | `result-track:09619d4b4b7daf42c6dc9a741a08bb33a42cbcbf09477d0be6193c8389fd1cd5` |
| 3 | `inductive` | [_root_.String.Slice.Pattern.ForwardSliceSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/root-string-slice-pattern-forwardslicesearcher--1f12d3db3362437addb5b0d2.md) | 81 | `declaration-track:1f12d3db3362437addb5b0d2f34239da852f4d07e184f66d0b690c8e34489ebf` |
| 4 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/iter--6a7a2359da8ff5506136c9df.md) | 90 | `declaration-track:6a7a2359da8ff5506136c9df8f7f06b6a7749f2f3776dd0fdadf6928fe23f0fc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--80f119ee7259c1be45f4d19f.md) | 97 | `declaration-track:80f119ee7259c1be45f4d19f5adeee569485eab02e4aa06108b8a7e6c5e3daa7` |
| 6 | `def` | [toOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/tooption--941079b309ae1251f94fe371.md) | 220 | `declaration-track:941079b309ae1251f94fe371e92f368804c09a09573c4ae679e12baccfb7d7e6` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--b0ed71771570df4bdd5f72dd.md) | 226 | `declaration-track:b0ed71771570df4bdd5f72dd0c91d1ba3a9b605e1b099dd20616b66e6936f2d6` |
| 8 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/finitenessrelation--3f125839e9a7dbdd9d4a295d.md) | 233 | `declaration-track:3f125839e9a7dbdd9d4a295d516ec423f9cb85b365b7cb828c916094f87285a4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--66362251ea44d5ebdc82e279.md) | 261 | `declaration-track:66362251ea44d5ebdc82e2799e993b68083a9ced9fa00f716df577edeecb15d7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--2a230d55a48453654a6e2d4f.md) | 264 | `declaration-track:2a230d55a48453654a6e2d4f2d53e0514a149edd478352d19f167da541b5bf97` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--616928a3a4f02e41faf1d321.md) | 267 | `declaration-track:616928a3a4f02e41faf1d3214c4dcaf69c1039e10071ed8b74b78d5b4637a292` |
| 12 | `def` | [startsWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/startswith--2cddfd9983a4910ceb1061a8.md) | 271 | `declaration-track:2cddfd9983a4910ceb1061a877d1bdb2f4871f4be0cb261fa67150188b775087` |
| 13 | `def` | [skipPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/skipprefix--cf6a1206a9f6a1cd86acbcba.md) | 282 | `declaration-track:cf6a1206a9f6a1cd86acbcba764cd22d1957be700fc1d6ae19255407f739a5b3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--e9631bdc1f1d4655e5a91196.md) | 288 | `declaration-track:e9631bdc1f1d4655e5a911960a0cabc08973758d10e01bd3e64682ca694c7d4d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--493cfb87e5064d4547f2c5fe.md) | 292 | `declaration-track:493cfb87e5064d4547f2c5fecad93a1fa987c95ea3e8bbd04ab306b522bcc189` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--981dd80dfe43fa8f6e5e9aa1.md) | 295 | `declaration-track:981dd80dfe43fa8f6e5e9aa1c1a826a1b763e498cf6c31ef56249c27194f73fb` |
| 17 | `def` | [endsWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/endswith--b2f894308f59cdbe39697bb9.md) | 304 | `declaration-track:b2f894308f59cdbe39697bb9533f2320676c4f5bef9a3948efb2e9c3e329c3f1` |
| 18 | `def` | [skipSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/skipsuffix--af65f6d5a34b5214c180d942.md) | 318 | `declaration-track:af65f6d5a34b5214c180d942d022ae8ee80335fd0c8423179b36ecca49d35be5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--55c20e59179fbbff46910e61.md) | 324 | `declaration-track:55c20e59179fbbff46910e6143451ad047a4c30fd415d393038458e8d80a759b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/declarations/instance--64387e9ae24e0b01b416b112.md) | 328 | `declaration-track:64387e9ae24e0b01b416b112fc957312bc53d16aa9c6f59a0fdbb25b4b0aa948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
