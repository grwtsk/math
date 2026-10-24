# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Konigsberg.Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863b8429297539c3e9f02149881a61a1262d591f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863b8429297539c3e9f02149881a61a1262d591f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean.json)

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
| 1 | `inductive` | [Verts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/verts--d75867f898bd9c99194092f8.md) | 26 | `declaration-track:d75867f898bd9c99194092f88760600abd7d98a2eebb3300c765e85460a56923` |
| 2 | `def` | [edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/edges--e65ca70bc333fc2893dd26c3.md) | 37 | `declaration-track:e65ca70bc333fc2893dd26c3555a430ec18678bdbc29f7abc0400afa1066457f` |
| 3 | `def` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/adj--10ecc74efd7dbc56754e33fb.md) | 44 | `declaration-track:10ecc74efd7dbc56754e33fbe89b86e1b1469e86c95b6949ca94b7281edbd177` |
| 4 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/graph--5f93c1da46739572c91cf2aa.md) | 54 | `declaration-track:5f93c1da46739572c91cf2aa358c9cead3d108c9dd038c4efb5fb3f5055e9738` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/instance--0cfb39f81250f343bceb38a2.md) | 59 | `declaration-track:0cfb39f81250f343bceb38a224ea19f5cb21ad5f89d47224ebc94799d5abec92` |
| 6 | `def` | [degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/degree--7cdce392928b084dd6194361.md) | 63 | `declaration-track:7cdce392928b084dd61943610006cde98089c0783f8b845d8c58bcc303cab1a7` |
| 7 | `lemma` | [degree_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/degree-eq-degree--0618dc9ec66df0236c7e6933.md) | 68 | `result-track:0618dc9ec66df0236c7e69333cae5d6ab7fb84d98964a538ec8ac0fa5d034176` |
| 8 | `lemma` | [not_even_degree_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/not-even-degree-iff--619f9681d5d36c9d2d10d1e8.md) | 70 | `result-track:619f9681d5d36c9d2d10d1e83fee7069d9ed4911d2ba06471bfd8cf74eaef44b` |
| 9 | `lemma` | [setOfPred_odd_degree_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/setofpred-odd-degree-eq--e9f12906b1bb64715117d571.md) | 73 | `result-track:e9f12906b1bb64715117d571d1b493fd4c7b9f2b872bfa939c4d0888349b0e82` |
| 10 | `theorem` | [not_isEulerian](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/declarations/not-iseulerian--91511a9602529df4495bbba4.md) | 81 | `result-track:91511a9602529df4495bbba425ed5a09cd9548462dba323692d1e783acd4f7d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
