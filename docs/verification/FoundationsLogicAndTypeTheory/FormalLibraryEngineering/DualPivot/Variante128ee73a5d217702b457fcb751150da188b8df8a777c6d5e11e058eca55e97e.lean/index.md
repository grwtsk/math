# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DualPivot.Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11af7ede09749151ca69cef361a684d9b27b3ec6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11af7ede09749151ca69cef361a684d9b27b3ec6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PositiveNat` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/spectralpivot--acaf75c37fc03b99e414c526.md) | 22 | `declaration-track:acaf75c37fc03b99e414c5268bdbeff588b64d0e3afa8de968787454e2d93336` |
| 2 | `def` | [arithmeticPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/arithmeticpivot--fccc26234e9fe5955930afdf.md) | 25 | `declaration-track:fccc26234e9fe5955930afdf92c5dbdc9e77a4fd949f98946397601ac6cce66b` |
| 3 | `structure` | [DualPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/dualpivot--ab9c786295f1ce9e0f211a40.md) | 28 | `declaration-track:ab9c786295f1ce9e0f211a40ceac393c9516a5497933dab778129e21856c3553` |
| 4 | `def` | [defaultDualPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/defaultdualpivot--1d13797997ab6c17407e90f8.md) | 32 | `declaration-track:1d13797997ab6c17407e90f89296fc0ea18b563093fa98132f85a92727d74b6e` |
| 5 | `theorem` | [arithmeticPivot_val_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/arithmeticpivot-val-eq-one--438bc27c9708690b4de2fecd.md) | 37 | `result-track:438bc27c9708690b4de2fecd0a713839acb650612e449ef5d160b9143b861298` |
| 6 | `theorem` | [spectralPivot_eq_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/spectralpivot-eq-half--d343bbe89411ea230df8ad1a.md) | 41 | `result-track:d343bbe89411ea230df8ad1ae49cb5df4e66bde69941b856c5ac54dde6106c44` |
| 7 | `theorem` | [defaultDualPivot_arithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/defaultdualpivot-arithmetic--5d94f34ff3c14764b06a2e61.md) | 44 | `result-track:5d94f34ff3c14764b06a2e61d23e3c1e90ec4fd2085e2f6e11025bdf370514f9` |
| 8 | `theorem` | [defaultDualPivot_spectral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variante128ee73a5d217702b457fcb751150da188b8df8a777c6d5e11e058eca55e97e.lean/declarations/defaultdualpivot-spectral--b90b68339402bd82f3ff8359.md) | 47 | `result-track:b90b68339402bd82f3ff8359d20b7235dc1886bad4698f0e6e5544418bb0ee45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
