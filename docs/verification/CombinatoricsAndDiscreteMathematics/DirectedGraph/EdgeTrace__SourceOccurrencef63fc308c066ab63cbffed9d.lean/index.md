# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2189661dc9e8d2bb34d054ae2da0ab223afce171",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2189661dc9e8d2bb34d054ae2da0ab223afce171`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Combinatorics.Quiver.Covering` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TotalEdge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/totaledge--341bc2ced8aec0ae1654cd60.md) | 34 | `declaration-track:341bc2ced8aec0ae1654cd6080b8b27deee17f5cf0cc34bb38338be2afd91057` |
| 2 | `def` | [taggedPrefunctor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/taggedprefunctor--636875906845190a860f56e4.md) | 37 | `declaration-track:636875906845190a860f56e46e2850763cf1a20ad0eb655edb5b65cbe1d88c88` |
| 3 | `def` | [encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encodepath--8fb7441bddfd4fb2b0778abe.md) | 42 | `declaration-track:8fb7441bddfd4fb2b0778abeb0f97bf89983a0b60411ad163b9cd061ccf418a7` |
| 4 | `def` | [encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encode--b4b8724ec97d79def7c782ad.md) | 46 | `declaration-track:b4b8724ec97d79def7c782ad9a3c0bce96bb5e76172c3cab9fb7241ad1605a97` |
| 5 | `theorem` | [encodePath_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encodepath-nil--edf971d5042798ce89c725bc.md) | 49 | `result-track:edf971d5042798ce89c725bce2e549ab57438a2e2b69ebaee4d7b0fc8da7add4` |
| 6 | `theorem` | [encodePath_toPath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encodepath-topath--8ae7499412f518e03a57c4e8.md) | 52 | `result-track:8ae7499412f518e03a57c4e85fca761d3193911e04b570be63f374526ff1b6d1` |
| 7 | `theorem` | [encodePath_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encodepath-comp--53226d08e3708b178abeea2f.md) | 56 | `result-track:53226d08e3708b178abeea2f626082f4ce1edbd6e532fdc68ca95e3e08a6a29a` |
| 8 | `theorem` | [encodePath_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encodepath-cons--2307d7b476abc18f659988e3.md) | 61 | `result-track:2307d7b476abc18f659988e315536a3e3a83980981b6b521a447537f692c2ccc` |
| 9 | `def` | [ValidFrom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/validfrom--6f5c32f8b01ac0bd9634e16e.md) | 66 | `declaration-track:6f5c32f8b01ac0bd9634e16e6035f205740d7d5d82d5206fff5f97aa432cf32a` |
| 10 | `def` | [finish](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/finish--d9b4c381873c2c0ccd4a1c25.md) | 71 | `declaration-track:d9b4c381873c2c0ccd4a1c25f309dd82bb54d16d946b72889f1177777d5ac396` |
| 11 | `theorem` | [finish_append](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/finish-append--b498dd60c038fcf804bab0dd.md) | 75 | `result-track:b498dd60c038fcf804bab0ddb92b067a2732a6dfa87f5f4688abe02e8ab8fb12` |
| 12 | `theorem` | [validFrom_append_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/validfrom-append-iff--808d20c4cb43442227f08035.md) | 81 | `result-track:808d20c4cb43442227f08035b894b89718819618381e9db356452a9a27331eb8` |
| 13 | `theorem` | [finish_encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/finish-encodepath--1e8dbc7fd4423dba7cb74013.md) | 90 | `result-track:1e8dbc7fd4423dba7cb7401348857b0928d1e9dc5dcd7906ead941750e0c5b05` |
| 14 | `theorem` | [validFrom_encodePath](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/validfrom-encodepath--b020f89fe34dcd56d7c9bacc.md) | 97 | `result-track:b020f89fe34dcd56d7c9bacc5e1e7b02d2c4b729aee4f13f3c0e465ba0ca00d2` |
| 15 | `theorem` | [tagged_star_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/tagged-star-injective--7ca1cd0bb3a03c0010155c7a.md) | 105 | `result-track:7ca1cd0bb3a03c0010155c7ac20cad38699598c12d406eb0d28a4f7d61c2df5a` |
| 16 | `theorem` | [encode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encode-injective--887a8935f4872fb63f86429c.md) | 114 | `result-track:887a8935f4872fb63f86429c9eb73c0436eee51cafcd3c7dfbb225526f16e6ed` |
| 17 | `def` | [decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/decode--e957cbb0cebb2d2228bd30af.md) | 123 | `declaration-track:e957cbb0cebb2d2228bd30af75e5a7ba522243ca7ae539e25c80b98fc001db46` |
| 18 | `theorem` | [encode_decode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/encode-decode--6fb3bb22fb2ff802553345c8.md) | 131 | `result-track:6fb3bb22fb2ff802553345c86f0d26312eed7d9e5a145f54ef927a5ab5321e20` |
| 19 | `theorem` | [decode_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/decode-encode--847a8349f88ee550f3db2023.md) | 145 | `result-track:847a8349f88ee550f3db2023b89aa6b85989674c0974324d50fbf24a32bb7e96` |
| 20 | `theorem` | [decode_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/decode-endpoint--70e787605a0e60dc590e7438.md) | 151 | `result-track:70e787605a0e60dc590e7438675eb2d6ae24ab51bb7ad9d88d49f3a92f0bd24d` |
| 21 | `def` | [pathStarEquivTrace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/pathstarequivtrace--6c0194e615a7e32bdc8cc040.md) | 159 | `declaration-track:6c0194e615a7e32bdc8cc04062e7cad83d309d8ca5da11ac782955030ad970e1` |
| 22 | `theorem` | [wrong_root_not_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/wrong-root-not-valid--f5f84dd9c27ac5935cbb2a2b.md) | 167 | `result-track:f5f84dd9c27ac5935cbb2a2bf73598f671fee2ca33924873fffd0ba6f9696ff2` |
| 23 | `theorem` | [broken_join_not_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/declarations/broken-join-not-valid--582af56c838f503fec8c4825.md) | 171 | `result-track:582af56c838f503fec8c4825b817aeba0d661dbdc2e141703adabd54f3e069af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
