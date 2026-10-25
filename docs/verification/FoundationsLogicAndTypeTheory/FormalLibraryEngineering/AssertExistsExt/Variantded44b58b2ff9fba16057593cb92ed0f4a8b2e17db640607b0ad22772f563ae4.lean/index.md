# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertExistsExt.Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01a1ab3953f48b35d123f4cfe31144e01eda72b3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01a1ab3953f48b35d123f4cfe31144e01eda72b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Environment` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssertExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/declarations/assertexists--d7ba13abab2f62949ce52ada.md) | 22 | `declaration-track:d7ba13abab2f62949ce52ada4ebb7515985e4bb1454691649817a420603e4e26` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/declarations/initialize--d93292bbdb1103413a1c2a0d.md) | 33 | `declaration-track:d93292bbdb1103413a1c2a0dcfa0c9ef32a1a95ede6690fd1f64af4208018955` |
| 3 | `def` | [addDeclEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/declarations/adddeclentry--cc64e1f3446d3c7e73787fec.md) | 46 | `declaration-track:cc64e1f3446d3c7e73787fec996627b40bf154b07cbf5b1c4f353a53b2632d12` |
| 4 | `def` | [Lean.Environment.getSortedAssertExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertExistsExt/Variantded44b58b2ff9fba16057593cb92ed0f4a8b2e17db640607b0ad22772f563ae4.lean/declarations/lean-environment-getsortedassertexists--64706109dbccdf2a86d7893c.md) | 55 | `declaration-track:64706109dbccdf2a86d7893ce057c85ec119235f413bcfc49b4597b3448b19f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
