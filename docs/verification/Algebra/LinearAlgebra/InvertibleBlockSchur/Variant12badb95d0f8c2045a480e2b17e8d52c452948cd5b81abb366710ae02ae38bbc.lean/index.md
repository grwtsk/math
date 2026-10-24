# Verification target: GRWTSK.Algebra.LinearAlgebra.InvertibleBlockSchur.Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "798b90a41744d33835954b33a351d2927ff96e93",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `798b90a41744d33835954b33a351d2927ff96e93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockSchur` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceCrossMap](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/provenancecrossmap--f98bb3e038562caf4ec4eb16.md) | 28 | `declaration-track:f98bb3e038562caf4ec4eb165d9be7e1419efa6a2f221a2d1443e6f79581e1dd` |
| 2 | `theorem` | [provenanceCrossMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/provenancecrossmap-apply--2ebd0ff2c2f91680331d877e.md) | 55 | `result-track:2ebd0ff2c2f91680331d877e5d10af4e515c250cf2a165735d9b2f239befa9a8` |
| 3 | `structure` | [InvertibleProvenanceBlock](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/invertibleprovenanceblock--24837b162c2b5d204eaf82ba.md) | 62 | `declaration-track:24837b162c2b5d204eaf82ba521f8acd3f7334c4be0a631685dab23ddbb532d5` |
| 4 | `def` | [solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/solve--f3cf84240d53fb8f4e783194.md) | 75 | `declaration-track:f3cf84240d53fb8f4e783194a2e572f861d4fe919df8e067152fa425f17f314a` |
| 5 | `theorem` | [gramEquiv_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/gramequiv-solve--4871034ec3f2d53f95d27b14.md) | 79 | `result-track:4871034ec3f2d53f95d27b146c24a0c7fe497cda0b324624d403e737ad8ef9ed` |
| 6 | `theorem` | [provenance_form_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/provenance-form-solve--9d258d4cf586e26c8d86d088.md) | 85 | `result-track:9d258d4cf586e26c8d86d0888ab3d243544067753440c5d8366845876b0b3568` |
| 7 | `theorem` | [form_sub_right](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/form-sub-right--29460e4eeb868be04bcd5fd8.md) | 97 | `result-track:29460e4eeb868be04bcd5fd84ff3f83bb228010f2b382a182f513e8a1e9dbf7c` |
| 8 | `def` | [blockSchurSolver](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/blockschursolver--a6e2271fd79b11de63f7c221.md) | 108 | `declaration-track:a6e2271fd79b11de63f7c22148154778b65139a91720f17cf3addfcfe53eebc7` |
| 9 | `theorem` | [blockSchurSolver_solve](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/blockschursolver-solve--def25976284fa6a1a0375b57.md) | 118 | `result-track:def25976284fa6a1a0375b57b0122edb59e53f060f7c37534bbf118bec731fe5` |
| 10 | `theorem` | [schur_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/schur-nonnegative--0a733ad263165440382d6df6.md) | 124 | `result-track:0a733ad263165440382d6df607ce3ca2541600bec9452c9da45afc8281c67a1f` |
| 11 | `theorem` | [schur_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/schur-eq-sub--413e968be02a648ba2435b33.md) | 130 | `result-track:413e968be02a648ba2435b33aec51c33460a61b221f39ede125638aee5ed1f43` |
| 12 | `theorem` | [schur_diagonal_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/InvertibleBlockSchur/Variant12badb95d0f8c2045a480e2b17e8d52c452948cd5b81abb366710ae02ae38bbc.lean/declarations/schur-diagonal-nonnegative--466b5a72df7eb9a5abfe7355.md) | 138 | `result-track:466b5a72df7eb9a5abfe735529c77b350d541d18bdaaeae2630a1881cbf38d18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
