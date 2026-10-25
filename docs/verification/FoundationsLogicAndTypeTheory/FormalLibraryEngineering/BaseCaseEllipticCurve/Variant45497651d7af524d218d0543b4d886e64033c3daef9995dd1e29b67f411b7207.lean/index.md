# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseEllipticCurve.Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c5bc3d1b78dd45c2dee9c4d4205492ef67301d2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c5bc3d1b78dd45c2dee9c4d4205492ef67301d2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.EllipticCurve` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Research.ArithmeticBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.CriticalCenterNormalization` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedBaseCaseEllipticCurve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean/declarations/certifiedbasecaseellipticcurve--0ffee93dcbe73a4aff263ced.md) | 34 | `declaration-track:0ffee93dcbe73a4aff263ced353986ba9b80bc8c92dc71ca90991c7ffc28be4b` |
| 2 | `theorem` | [certified_base_curve_lvalue_nonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean/declarations/certified-base-curve-lvalue-nonzero--f129eec40b6bc060921e6b94.md) | 47 | `result-track:f129eec40b6bc060921e6b9493dcb1d4d953a2c125477c894faf3c2326e9bb84` |
| 3 | `theorem` | [certified_base_curve_center_normalized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseEllipticCurve/Variant45497651d7af524d218d0543b4d886e64033c3daef9995dd1e29b67f411b7207.lean/declarations/certified-base-curve-center-normalized--66ac7b73d22531354b3842cf.md) | 52 | `result-track:66ac7b73d22531354b3842cf8bec771c0a886efb1666ab4cc7670d2929406ad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
