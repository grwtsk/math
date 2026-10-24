# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compare.Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bf63632315171a533d41479c7d831d9e6fcd175",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bf63632315171a533d41479c7d831d9e6fcd175`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Comparator.Axioms` — import line 6; external provider; requires a separately pinned dependency.
- `Export.Parse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/context--42c0ad591851ecff605d794e.md) | 13 | `declaration-track:42c0ad591851ecff605d794e663e547aa56ae570a54953abd72bffd7352b5d44` |
| 2 | `structure` | [State](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/state--a5365195dd8fc3d01e4067f8.md) | 19 | `declaration-track:a5365195dd8fc3d01e4067f8c36b6b030ba2591c661d1c47935269245dd44043` |
| 3 | `abbrev` | [CompareM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/comparem--fab78377dbdc86392800f0be.md) | 23 | `declaration-track:fab78377dbdc86392800f0bef4dfb151d80e8340021fb53b5971202cb26eaadd` |
| 4 | `def` | [addWorklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/addworklist--bf2faa04127e3ea894952223.md) | 30 | `declaration-track:bf2faa04127e3ea8949522236bc5281a26b83ec18d12379e381006ead6a27cdd` |
| 5 | `def` | [addRelevantConsts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/addrelevantconsts--c5b0048b37fc46347caced03.md) | 34 | `declaration-track:c5b0048b37fc46347caced03218a755c02f657dc8bc17ddbae87b818e53e2dd8` |
| 6 | `def` | [loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/loop--f56f332f3e7384edc7b00379.md) | 37 | `declaration-track:f56f332f3e7384edc7b003792468ecce3f97163afe594be17fdf1e641aa06fd8` |
| 7 | `def` | [definitionHoleMatches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/definitionholematches--39c1bc31d7a960e65a67b953.md) | 63 | `declaration-track:39c1bc31d7a960e65a67b9538528d4c55b044def44bcdd3a016dfe4bde81c9d5` |
| 8 | `def` | [compareAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant9bc34cb7de5a069a6fef7f3b13b20fea22f1d52603f74320a93d519b735ad3dd.lean/declarations/compareat--36838964fbabf63b9c409c38.md) | 67 | `declaration-track:36838964fbabf63b9c409c384efb7baa47388ddcc4db5d3fe6c7e63d4aec1f8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
