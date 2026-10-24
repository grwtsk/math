# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Tutte.Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dde6a14ab51ee1b8aa624c9ddf0278ee57b829db",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dde6a14ab51ee1b8aa624c9ddf0278ee57b829db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Matching` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Metric` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.UniversalVerts` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/istutteviolator--04adfc65192fbcd614c61053.md) | 41 | `declaration-track:04adfc65192fbcd614c6105319bd6e9b7946f11cce8ae4752d6c4a8380e30a21` |
| 2 | `lemma` | [tutte_exists_isAlternating_isCycles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/tutte-exists-isalternating-iscycles--a1388cb75ecdfd2a9149b9fb.md) | 46 | `result-track:a1388cb75ecdfd2a9149b9fb0bf14cbe4de883c19984b3ed0d3286ce824124ea` |
| 3 | `lemma` | [IsTutteViolator.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/istutteviolator-mono--be0158484dd728129445e94b.md) | 65 | `result-track:be0158484dd728129445e94bf66dacb7975a782179dd301bcfbc0e259c43fa7d` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_verts_compl_subset_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/subgraph-ismatching-exists-verts-compl-subset-universalverts--dd13dd6cf00405be77253708.md) | 78 | `result-track:dd13dd6cf00405be77253708b1c6563e1c2490c548c8eb09ea4004789f66a320` |
| 5 | `theorem` | [Subgraph.IsPerfectMatching.exists_of_isClique_supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/subgraph-isperfectmatching-exists-of-isclique-supp--1594e13e30bd78d859dc3b55.md) | 125 | `result-track:1594e13e30bd78d859dc3b55862bc2723932a3067f0b05a97b0a402a9f555d30` |
| 6 | `theorem` | [IsTutteViolator.empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/istutteviolator-empty--14626163b15e4cef70225454.md) | 141 | `result-track:14626163b15e4cef702254543bbe31fe701bed8cb116f179a8dd32fd8ae139a0` |
| 7 | `lemma` | [not_isTutteViolator_of_isPerfectMatching](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/not-istutteviolator-of-isperfectmatching--62ce9339c3c27d1600c06cea.md) | 146 | `result-track:62ce9339c3c27d1600c06cea094173be802090ea194b5b8e4f4aa6f49cad802c` |
| 8 | `theorem` | [tutte_exists_isPerfectMatching_of_near_matchings](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/tutte-exists-isperfectmatching-of-near-matchings--8c03542de9884b1e7ed28cc2.md) | 159 | `result-track:8c03542de9884b1e7ed28cc2b05fa76c87d7ae4bf2b9bb0ae2af11fc30ce3f64` |
| 9 | `lemma` | [exists_isTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/exists-istutteviolator--b1714c1ac26631d9e5e6a424.md) | 277 | `result-track:b1714c1ac26631d9e5e6a424ed59f30fc0b9d5507f75d33ea43ed14509a1e0b7` |
| 10 | `theorem` | [tutte](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Varianta55124baab52ccec79a3d0b56c6a8e3cc06ce659122e29530d0f532cf8397bb8.lean/declarations/tutte--33344d61691b66913dddb3e5.md) | 324 | `result-track:33344d61691b66913dddb3e55ccdae8382feb36500e026eaf0df111f09974b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
