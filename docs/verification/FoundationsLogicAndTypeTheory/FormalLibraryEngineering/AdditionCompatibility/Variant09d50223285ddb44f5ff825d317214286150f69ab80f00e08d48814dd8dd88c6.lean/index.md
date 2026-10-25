# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionCompatibility.Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e093ff69d03dfc63a8c469cc5d57280102f31edd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e093ff69d03dfc63a8c469cc5d57280102f31edd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.CorpusElement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdditionCompatibilityStatement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibilitystatement--78f051caa601f5317f4a99c7.md) | 19 | `declaration-track:78f051caa601f5317f4a99c7d9180f8cb95a73163e4937caa0e936eac829f55f` |
| 2 | `def` | [additionCompatibilityOpenElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibilityopenelement--d44ab6daf9eb3b1467e3c325.md) | 25 | `declaration-track:d44ab6daf9eb3b1467e3c3251f4dcb39ace732a135224955a30529c4e06f7ad3` |
| 3 | `def` | [additionOperationDependency](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additionoperationdependency--de84c82ef2937dc773fa9f1a.md) | 40 | `declaration-track:de84c82ef2937dc773fa9f1ae5b1628d32f8f866123271d2606e14f4cdaff091` |
| 4 | `def` | [additionEqualityDependency](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additionequalitydependency--5af3454634471512073a4316.md) | 50 | `declaration-track:5af3454634471512073a4316fb25ae48913808602866f74349ae8d9304527b0b` |
| 5 | `def` | [additionCompatibilitySeed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibilityseed--84f35694e55a44a78cf77f87.md) | 60 | `declaration-track:84f35694e55a44a78cf77f8765fa6cc1a8135c723b661a3c5b70370d1ee773ca` |
| 6 | `theorem` | [additionCompatibility](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibility--1c6d14fd166d7a6e6c27d519.md) | 74 | `result-track:1c6d14fd166d7a6e6c27d5192898c7d8931590abcd7914fa64102015e661220e` |
| 7 | `def` | [additionCompatibilityTheoremElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibilitytheoremelement--ee0327c742532c044b77e50e.md) | 81 | `declaration-track:ee0327c742532c044b77e50e6d145d1ed0a22b1b58166eb7b35afd0470c31cf0` |
| 8 | `def` | [additionCompatibilityCorpusItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AdditionCompatibility/Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6.lean/declarations/additioncompatibilitycorpusitem--e5068b9b6fe2c27f75f7fd4e.md) | 92 | `declaration-track:e5068b9b6fe2c27f75f7fd4ef3db298a260c84eb0cee16af23bd424eeb9bce75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
