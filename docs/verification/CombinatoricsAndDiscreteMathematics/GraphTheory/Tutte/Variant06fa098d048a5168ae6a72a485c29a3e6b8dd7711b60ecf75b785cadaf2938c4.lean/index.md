# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Tutte.Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d09d407176ff4701bac47e5494a1f302a79862b5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d09d407176ff4701bac47e5494a1f302a79862b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Matching` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Metric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.UniversalVerts` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/istutteviolator--c75daa4a26cbc93b597ebab5.md) | 33 | `declaration-track:c75daa4a26cbc93b597ebab513f456ffa36ae95a0337fcc353e84cdf7623ca80` |
| 2 | `lemma` | [tutte_exists_isAlternating_isCycles](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/tutte-exists-isalternating-iscycles--638d46dfbd64a227c5cdbb73.md) | 38 | `result-track:638d46dfbd64a227c5cdbb73eb112737595e4b7edb237893e9f462237d649032` |
| 3 | `lemma` | [IsTutteViolator.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/istutteviolator-mono--2aab488738a9197aef588159.md) | 57 | `result-track:2aab488738a9197aef588159cb3973f1840ad0f6ff2f8faaf69df07195a27eeb` |
| 4 | `lemma` | [Subgraph.IsMatching.exists_verts_compl_subset_universalVerts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/subgraph-ismatching-exists-verts-compl-subset-universalverts--a6a6c454c9116455f84e64ab.md) | 70 | `result-track:a6a6c454c9116455f84e64ab1cb4f65cee16e38e54b025c19b1656111f1fa6db` |
| 5 | `theorem` | [Subgraph.IsPerfectMatching.exists_of_isClique_supp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/subgraph-isperfectmatching-exists-of-isclique-supp--313d584447813d6856adf9b0.md) | 117 | `result-track:313d584447813d6856adf9b0306e1018027c985798a41c730b74fb46a9438733` |
| 6 | `theorem` | [IsTutteViolator.empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/istutteviolator-empty--3f5c3016392c2f6976462c6e.md) | 133 | `result-track:3f5c3016392c2f6976462c6e38e9739ebe8dd5557179eaca9791f68d00b4db2c` |
| 7 | `lemma` | [not_isTutteViolator_of_isPerfectMatching](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/not-istutteviolator-of-isperfectmatching--8656ebdae88f0aa943d688f1.md) | 138 | `result-track:8656ebdae88f0aa943d688f1d8e7869e3a593c2ec16a59c2c6c174d3f691e395` |
| 8 | `theorem` | [tutte_exists_isPerfectMatching_of_near_matchings](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/tutte-exists-isperfectmatching-of-near-matchings--7e5e453b30de19f97892a95d.md) | 151 | `result-track:7e5e453b30de19f97892a95df7b7ca51793030170e6d0dda45c52d57cd79ed7c` |
| 9 | `lemma` | [exists_isTutteViolator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/exists-istutteviolator--b7faae87379a755236cf59c2.md) | 269 | `result-track:b7faae87379a755236cf59c222ef292b7f01594226e8f460e8b212c215a0bc91` |
| 10 | `theorem` | [tutte](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variant06fa098d048a5168ae6a72a485c29a3e6b8dd7711b60ecf75b785cadaf2938c4.lean/declarations/tutte--c0fc49db5df7c2efa5f29bff.md) | 316 | `result-track:c0fc49db5df7c2efa5f29bffad3b22b2d861c3936ea9070854755dabe3a565f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
