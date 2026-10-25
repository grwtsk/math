# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Definition.Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94ebbbae9ec16e6b4f5f26d83438bf988b410014",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94ebbbae9ec16e6b4f5f26d83438bf988b410014`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HorizonEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/declarations/horizonembedding--b066a34289152d73288d2879.md) | 17 | `declaration-track:b066a34289152d73288d2879e1cef3f6b91c03dfdedf0ca14855110f8660567a` |
| 2 | `def` | [HorizonEmbedding.mapCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/declarations/horizonembedding-mapcut--5b897226a6e41eb2fa916ac1.md) | 32 | `declaration-track:5b897226a6e41eb2fa916ac1530476566d231afa5996703908d1c8591dec776f` |
| 3 | `theorem` | [HorizonEmbedding.mapCut_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/declarations/horizonembedding-mapcut-empty--88bbdc7dbf241524abe4bec9.md) | 40 | `result-track:88bbdc7dbf241524abe4bec975e550829eb603e3ca97e731f127eecd6ad95ff2` |
| 4 | `theorem` | [HorizonEmbedding.mapCut_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/declarations/horizonembedding-mapcut-insert--941b3193531a19e1a4e3c171.md) | 47 | `result-track:941b3193531a19e1a4e3c1715abccfd0c84ee2ffa1708afdea4350c832ea500a` |
| 5 | `theorem` | [HorizonEmbedding.mapCut_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Definition/Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b.lean/declarations/horizonembedding-mapcut-inj--42b63b1c8533a573ea3f2cbd.md) | 58 | `result-track:42b63b1c8533a573ea3f2cbd623a38238b5ec57e3a8a21b45e80de755bbf796c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
