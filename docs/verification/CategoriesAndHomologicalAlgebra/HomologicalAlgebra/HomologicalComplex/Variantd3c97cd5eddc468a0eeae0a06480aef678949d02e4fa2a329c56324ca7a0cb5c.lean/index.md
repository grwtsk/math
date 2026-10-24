# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplex.Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd3b90df9e64ef9c624883c426c090241648f900",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd3b90df9e64ef9c624883c426c090241648f900`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Double` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/declarations/separatingfamily--b1fb4829231547526fd1b9b7.md) | 38 | `declaration-track:b1fb4829231547526fd1b9b784528ee7e9345cebbaac0603bfc0cefb3f177110` |
| 2 | `lemma` | [isSeparating_separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/declarations/isseparating-separatingfamily--3b1ea8b228cd72767641136c.md) | 42 | `result-track:3b1ea8b228cd72767641136c6cb9d15e2c17f8dd7ea6275d9dbdf2782002dd4c` |
| 3 | `lemma` | [isSeparator_coproduct_separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/declarations/isseparator-coproduct-separatingfamily--6454bc73417cd984b54dfb8c.md) | 56 | `result-track:6454bc73417cd984b54dfb8c9f26b248e7d4cfdc5752de123c8a65e855730df7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c.lean/declarations/instance--d482a019b87ea886455abd6a.md) | 65 | `declaration-track:d482a019b87ea886455abd6a933c11925c3d0a3c4dec8668fb5dc6105b6a1b64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
