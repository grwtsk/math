# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "295a7b2c8b5943f79e60804e258082364937d4b0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `295a7b2c8b5943f79e60804e258082364937d4b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Catalan.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/declarations/catalan--a9a7f58860218f0a6ea4e980.md) | 20 | `declaration-track:a9a7f58860218f0a6ea4e9807c015644eed57cb3279ad4641d7842d563278bfa` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/declarations/catalan-zero--cf00eb10ad4b6ec9bd6fee32.md) | 24 | `result-track:cf00eb10ad4b6ec9bd6fee3291646761d16a74519dc31bcb3f9ee4daf74543b5` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/declarations/catalan-succ--d49c4886db671d2a1c055c04.md) | 28 | `result-track:d49c4886db671d2a1c055c0434066aefe6125183d816688b3cbc670a7b51858b` |
| 4 | `def` | [treesOfInternalCardinalityTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variantffefb0d34bb04cb9e6246c3ad68015e8f26cadd9d632343927c9523abf9c4f84.lean/declarations/treesofinternalcardinalitytarget--7c3ec8cb9a78a5a59d9822a7.md) | 40 | `declaration-track:7c3ec8cb9a78a5a59d9822a7998590bec24c8c71ab5df06bfb5ef8afcebf68e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
