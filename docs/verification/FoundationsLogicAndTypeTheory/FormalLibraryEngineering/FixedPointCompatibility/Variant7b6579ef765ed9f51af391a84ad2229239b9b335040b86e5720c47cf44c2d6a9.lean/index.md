# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCompatibility.Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d75ff51c88968a21b2d38dfb3e2c41adae587008",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d75ff51c88968a21b2d38dfb3e2c41adae587008`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.FixedPointCompatibility` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compatibility_iff_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/compatibility-iff-obstruction-vanishes-if-supplied--a0f19a0f1834a620c4916f0f.md) | 19 | `result-track:a0f19a0f1834a620c4916f0feed942762a95cc1ec18aea65268a2da3601f45a2` |
| 2 | `theorem` | [offcritical_forces_nonzero_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/offcritical-forces-nonzero-obstruction-if-supplied--26735a2020d7e01590f5a25f.md) | 28 | `result-track:26735a2020d7e01590f5a25ff85fff2040b4e4ba22e95145f39f091b545a4d87` |
| 3 | `theorem` | [compatibility_implies_critical_line_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/compatibility-implies-critical-line-if-supplied--95056d1616e714379a6fb436.md) | 37 | `result-track:95056d1616e714379a6fb436cb0ec8cd6e98ba6076bd9554e37cd5dac4e1c4f3` |
| 4 | `theorem` | [compatible_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/compatible-obstruction-vanishes-if-supplied--26e56e4f3a2ad6905a915534.md) | 46 | `result-track:26e56e4f3a2ad6905a915534af5fe9ef54b35c6b8c7e34cc393a560728397c79` |
| 5 | `theorem` | [compatibility_obstruction_has_index_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/compatibility-obstruction-has-index-trace--97221bf8ef7cdd61f87027b8.md) | 55 | `result-track:97221bf8ef7cdd61f87027b897c256bbefa081d19544638da5db84a78d9ddfcd` |
| 6 | `theorem` | [compatibility_obstruction_has_spectral_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variant7b6579ef765ed9f51af391a84ad2229239b9b335040b86e5720c47cf44c2d6a9.lean/declarations/compatibility-obstruction-has-spectral-trace--3b4aabd72a5fcd3d14832f6c.md) | 60 | `result-track:3b4aabd72a5fcd3d14832f6c4e4cdf6d15c5b379f231d6420109afd92c201fb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
