# Verification target: GRWTSK.Analysis.FunctionalAnalysis.IndexSpectralBridge.Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d94ea191a3fa6bc230b9fe57d0073f1aca22db6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d94ea191a3fa6bc230b9fe57d0073f1aca22db6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TraceFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.RH.SpectralRealization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndexSpectralComparisonData](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/declarations/indexspectralcomparisondata--7af3345ed8d74e4b0d2aa01e.md) | 35 | `declaration-track:7af3345ed8d74e4b0d2aa01e0f4f8dcb21e81f75a88790d7b12e7ec96f5708d3` |
| 2 | `def` | [IndexSpectralBridgeCondition](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/declarations/indexspectralbridgecondition--d390109efd9ce1672f444fa2.md) | 46 | `declaration-track:d390109efd9ce1672f444fa2b83e936800ca088811ca405b1885a0aa81d204e0` |
| 3 | `theorem` | [index_spectral_bridge_from_trace_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/declarations/index-spectral-bridge-from-trace-formula--83eba2cbb31e0ed9e7302600.md) | 50 | `result-track:83eba2cbb31e0ed9e7302600564eda25113b48a5b8972fa374d073d61e63a1c7` |
| 4 | `theorem` | [index_spectral_bridge_has_operator](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/declarations/index-spectral-bridge-has-operator--d4e7958919fa9ada5e113563.md) | 56 | `result-track:d4e7958919fa9ada5e1135637b98d7b7e5cce85508187a5bf7774a3935b35d61` |
| 5 | `theorem` | [index_spectral_bridge_has_pairing](../../../../../mathematics/Analysis/FunctionalAnalysis/IndexSpectralBridge/Variant7a51a9342d78d7e22736afa64fc77749f97b8ce8fe1de672f528c12fe2f0c375.lean/declarations/index-spectral-bridge-has-pairing--109188a7b547e72a1fa54b2a.md) | 61 | `result-track:109188a7b547e72a1fa54b2a587bab5bdc14dc7632bedd74603aeccc8b5c3848` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
