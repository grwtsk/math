# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ShortExact.Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aabcc3e9c5fc7d3e83465760d3a9ac10c69224e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aabcc3e9c5fc7d3e83465760d3a9ac10c69224e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.ShortExact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.DerivedCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangleOfSESδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/declarations/triangleofses--13e2b937512168258399170c.md) | 42 | `declaration-track:13e2b937512168258399170c3e75a82c49ba90636b6adb1329b432cb01587244` |
| 2 | `def` | [triangleOfSES](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/declarations/triangleofses--29f995b48949d1b84b477685.md) | 52 | `declaration-track:29f995b48949d1b84b47768515c91520f1d49872fa2c7150e54ed0756477aeb1` |
| 3 | `def` | [triangleOfSESIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/declarations/triangleofsesiso--c2653393f05e531369304e7b.md) | 58 | `declaration-track:c2653393f05e531369304e7b7c49e9ffea6b19c30d96b80326c4d1d8bf96c50f` |
| 4 | `lemma` | [triangleOfSES_distinguished](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variant5e34d40f77b365dc351adf604b6fb70b91ccce72e15f0c03ec9e3a06cd34b271.lean/declarations/triangleofses-distinguished--1af31f56f68c7562a7458e59.md) | 70 | `result-track:1af31f56f68c7562a7458e59b653bf6a504664a9d7efda7453bd1b4fa212ae28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
