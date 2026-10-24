# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Count.Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77dc04be734d240e4db13c53fb8e6cc5a7bc60eb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77dc04be734d240e4db13c53fb8e6cc5a7bc60eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Catalan.Tree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Catalan.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/declarations/catalan--46567917f87c99cfa007ff95.md) | 28 | `declaration-track:46567917f87c99cfa007ff95da97e36a88a902b7008e3a1e230d8f82d50cdad8` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/declarations/catalan-zero--196a87a095e8205bf3fd997f.md) | 32 | `result-track:196a87a095e8205bf3fd997fd806bf8dd490c3b76fcfe06fb3328bbeb1e1e85a` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/declarations/catalan-succ--69893bcdf202bf21cfbede84.md) | 36 | `result-track:69893bcdf202bf21cfbede846fc5253ae5b1ed17a042c97258a5f73a004aaf9e` |
| 4 | `def` | [treesOfInternalCardinalityTarget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Count/Variant65aaec00582f317c0b68050488241a351677eae559379759b196f7d6a45d66f8.lean/declarations/treesofinternalcardinalitytarget--225b55b421c81ad41cc94c6e.md) | 48 | `declaration-track:225b55b421c81ad41cc94c6ed89b662a7e72dc58628e705a22fe8e0a32a5871c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
