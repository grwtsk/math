# Verification target: GRWTSK.Algebra.GroupTheory.Rank.Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96fe49aba6cf8e4776066176bcd864930929eaa8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96fe49aba6cf8e4776066176bcd864930929eaa8`.

Source path: `GRWTSK/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank--d13df5e1b4e7a8429f17eb00.md) | 37 | `declaration-track:d13df5e1b4e7a8429f17eb00e3c817dfd7aad795a742d8fd17c46e70227aa848` |
| 2 | `lemma` | [rank_spec](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-spec--c5113f5e10f28fd7cf9cee73.md) | 41 | `result-track:c5113f5e10f28fd7cf9cee73c1e2f3622090b9b0480ec48bee1232f0e5799d7f` |
| 3 | `lemma` | [rank_le](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-le--31a27a76f0d78f1ec694b003.md) | 45 | `result-track:31a27a76f0d78f1ec694b0034cc84e11ac57b56b64e047b3f076c123d6b7e615` |
| 4 | `lemma` | [rank_le_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-le-of-surjective--0a1be284bca2429b5db5bf65.md) | 49 | `result-track:0a1be284bca2429b5db5bf659ffe8b3c844717e67025a52c81220268660c9646` |
| 5 | `lemma` | [rank_range_le](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-range-le--42ffbfa0dbda855da85d82c5.md) | 58 | `result-track:42ffbfa0dbda855da85d82c54083ee0b0ed43af0e86daae39130d51c3b3d47bf` |
| 6 | `lemma` | [rank_congr](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-congr--32ca5e63350550ced6215aeb.md) | 62 | `result-track:32ca5e63350550ced6215aebd1b6df10e946490cae79014b8c6ae43858a3e8f9` |
| 7 | `lemma` | [rank_congr](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-congr--94b43df54285f9a3892facd0.md) | 71 | `result-track:94b43df54285f9a3892facd0bf9851bb5dd9352bd88d25b6550bf7260b45e17d` |
| 8 | `lemma` | [rank_closure_finset_le_card](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-closure-finset-le-card--ee39057cfc620171ac44af0c.md) | 75 | `result-track:ee39057cfc620171ac44af0c76f11fc6f8526979d2677a2c227d4e8831bd8c90` |
| 9 | `lemma` | [rank_closure_finite_le_nat_card](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/rank-closure-finite-le-nat-card--248f02a9b1c41a5e84725675.md) | 88 | `result-track:248f02a9b1c41a5e8472567543b47cb80f3a88b5a1f3bcba721cf33cda2018b3` |
| 10 | `lemma` | [nat_card_centralizer_nat_card_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Rank/Varianta1bf8ceb9ea3e3ddb3852cf5c35524e50cece6176f7c74fa0f148a2c9c2f6554.lean/declarations/nat-card-centralizer-nat-card-stabilizer--71b344c4b5145b21af86e864.md) | 93 | `result-track:71b344c4b5145b21af86e86494d65016d8e29e340a4823c49513d19b9d3c78a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
