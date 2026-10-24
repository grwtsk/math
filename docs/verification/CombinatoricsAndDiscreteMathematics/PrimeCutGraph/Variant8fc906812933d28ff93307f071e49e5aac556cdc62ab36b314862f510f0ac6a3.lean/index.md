# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93b1c21a41304a4bda5996fc54d5688d1821dcb8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93b1c21a41304a4bda5996fc54d5688d1821dcb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AnchoredPrimeCut.insertPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/declarations/anchoredprimecut-insertprime--00a968d3b3dfad325ac2878d.md) | 13 | `declaration-track:00a968d3b3dfad325ac2878da048dda91600eb5c80a7648bff58a2f023778dfc` |
| 2 | `theorem` | [insertPrime_preserves_archimedean_anchor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/declarations/insertprime-preserves-archimedean-anchor--c2430fc4588578410ca0fe85.md) | 26 | `result-track:c2430fc4588578410ca0fe85dd457ee6141459182ee8dd0b34855d3ed97d4f27` |
| 3 | `theorem` | [insertPrime_finite_places](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/declarations/insertprime-finite-places--01b15ce329fb254b98bb6e6d.md) | 36 | `result-track:01b15ce329fb254b98bb6e6d91851299518fec836ab8eafee96e3234b2efc091` |
| 4 | `theorem` | [insertPrime_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant8fc906812933d28ff93307f071e49e5aac556cdc62ab36b314862f510f0ac6a3.lean/declarations/insertprime-card--f41d34f892a35377009bcfa1.md) | 46 | `result-track:f41d34f892a35377009bcfa1716baedf7359a898de10529af1610c98e36b3afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
