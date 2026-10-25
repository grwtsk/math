# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Expansion.Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9361562ec8aaae9b6b16a7edf18e0485a0a82019",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9361562ec8aaae9b6b16a7edf18e0485a0a82019`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Fiber` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralShellEncoded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/spectralshellencoded--4afcf34a7410691f360b3fa2.md) | 29 | `declaration-track:4afcf34a7410691f360b3fa216c9d14a46c762c575cd89930799c7c24dc312ba` |
| 2 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/ext--17e4aac6da9543dfb535f144.md) | 36 | `result-track:17e4aac6da9543dfb535f144fa4d8e40ca0dd0c752bd678738489f226a43edd4` |
| 3 | `def` | [encodeShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/encodeshell--147132dfd4e3c415aec71fb5.md) | 50 | `declaration-track:147132dfd4e3c415aec71fb5717cf794329a6487666fece3b5e96a5977a160d6` |
| 4 | `def` | [decodeShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/decodeshell--e7d230913f991dcc2b49b4a8.md) | 58 | `declaration-track:e7d230913f991dcc2b49b4a82778d5f19a795f7ed0b5354bf43e4d1d264943f2` |
| 5 | `theorem` | [encodeShell_center_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/encodeshell-center-value--e3a22b316d89f1c0bfb2b80c.md) | 70 | `result-track:e3a22b316d89f1c0bfb2b80c66b6a6dc5179f26064b6cbce54c30772ea95ed12` |
| 6 | `theorem` | [encodeShell_shell_value](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/encodeshell-shell-value--82944bcb373301972ddacf97.md) | 79 | `result-track:82944bcb373301972ddacf97ba0516b63f8efa5e7036c54b4e7157a1d30c4384` |
| 7 | `theorem` | [decode_encode_shell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/decode-encode-shell--cb4b949e8f746cf14a0be8e6.md) | 86 | `result-track:cb4b949e8f746cf14a0be8e62477fc46af0a4f6adbd101f5e631f459c6fb5a00` |
| 8 | `theorem` | [encode_decode_shell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/declarations/encode-decode-shell--1f9243860c3a14f22f056e0d.md) | 95 | `result-track:1f9243860c3a14f22f056e0d95f9efab3f80e1925d50ab056a5cd5600af59093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
