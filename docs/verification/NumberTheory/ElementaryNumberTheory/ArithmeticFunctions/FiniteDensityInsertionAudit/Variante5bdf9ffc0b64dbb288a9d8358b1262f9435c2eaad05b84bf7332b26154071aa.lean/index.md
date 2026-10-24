# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.FiniteDensityInsertionAudit.Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b64085ce8ec7dc6fe8bbe5788518cffd1589c26",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b64085ce8ec7dc6fe8bbe5788518cffd1589c26`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeReciprocalSquareSum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimereciprocalsquaresum--5e99f79d35df8b3d8d5f2bef.md) | 14 | `declaration-track:5e99f79d35df8b3d8d5f2bef725a76dd14df958300e594e474514370bf78ab52` |
| 2 | `theorem` | [coprimeDensity_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimedensity-mul--187b7808206c69eff669efbd.md) | 18 | `result-track:187b7808206c69eff669efbda40c87b808c177b93ce01ee2cf08afddd93d9ef2` |
| 3 | `theorem` | [coprimeDensity_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimedensity-two--7d8e04aa9ab1797ace993a60.md) | 39 | `result-track:7d8e04aa9ab1797ace993a60f0594dcbf056dd83146e3587dae64a910f599ed2` |
| 4 | `theorem` | [coprimeDensity_two_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimedensity-two-mul--ea86e383ccda92e4432c5274.md) | 43 | `result-track:ea86e383ccda92e4432c5274a24eb10ee6603f24805e432834af3b6cbd7fe69b` |
| 5 | `theorem` | [coprimeReciprocalSquareSum_two_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimereciprocalsquaresum-two-split--9118091e28fb5d9f533bbf93.md) | 48 | `result-track:9118091e28fb5d9f533bbf93b3ceefc1cccaa4a5996fbe5e9221a4b1544850c5` |
| 6 | `theorem` | [coprimeReciprocalSquareSum_difference](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimereciprocalsquaresum-difference--e8ef869fa89bfd8d51f72daa.md) | 82 | `result-track:e8ef869fa89bfd8d51f72daa84a6280037fe1eb6f940a1985ee261eb3d03ec82` |
| 7 | `theorem` | [finiteSquarefreeDensity_two_error_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/finitesquarefreedensity-two-error-eq--d90a6382c386fe9004ea31b3.md) | 99 | `result-track:d90a6382c386fe9004ea31b36a612da74873fd4e3626a0934919902560dada1d` |
| 8 | `theorem` | [coprimeReciprocalSquareSum_tail_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/coprimereciprocalsquaresum-tail-abs-le--9dd6976531661d61175a5120.md) | 111 | `result-track:9dd6976531661d61175a51207370829fd58cbc0385a4f22c0b02dcfb132af221` |
| 9 | `theorem` | [finiteSquarefreeDensity_two_error_le_half_cutoff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/finitesquarefreedensity-two-error-le-half-cutoff--7fbb1d95673355ef7c535386.md) | 130 | `result-track:7fbb1d95673355ef7c535386ae0c0c71a985af3a0bdd1a4b3850ce8501aa92bf` |
| 10 | `theorem` | [finiteSquarefreeDensity_two_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/finitesquarefreedensity-two-error-le--72db5c2ad010ced1dd2fdace.md) | 145 | `result-track:72db5c2ad010ced1dd2fdace8436171913ce139627a7e1e5f61e2f11edcfb651` |
| 11 | `def` | [twoDensityFactor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/twodensityfactor--9b74fdb0ecb66437988d2c47.md) | 155 | `declaration-track:9b74fdb0ecb66437988d2c47982f37930142af7dab83d6c3f13fe7a4e5ac6c72` |
| 12 | `theorem` | [twoDensityFactor_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/twodensityfactor-eq--e880cff1a195df79f71a2721.md) | 157 | `result-track:e880cff1a195df79f71a27218c35364cd4638f7e99bf144fd7465b277b0cfcff` |
| 13 | `theorem` | [twoDensityFactor_bounds](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/twodensityfactor-bounds--d17283afd3ba9e06a62e610c.md) | 162 | `result-track:d17283afd3ba9e06a62e610c684dd3068591ca6b27eecef04f2bd83efe0c6106` |
| 14 | `theorem` | [signed_two_density_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/signed-two-density-error-le--c01d2203f930d7933a1d9a37.md) | 171 | `result-track:c01d2203f930d7933a1d9a37bef1380db9d8a3b81d21edd680762a257346e8c1` |
| 15 | `theorem` | [signed_two_density_abs_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/signed-two-density-abs-le--29b2834ea2bd570ee3219f7d.md) | 188 | `result-track:29b2834ea2bd570ee3219f7d16304b3ea7ff6f4dfb33ea4b72ff76da7694eca1` |
| 16 | `theorem` | [signed_two_density_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/signed-two-density-cutoffs-error-le--c98c4c0d9630d1b1eee41ade.md) | 211 | `result-track:c98c4c0d9630d1b1eee41ade0a4a98c7da25d3301f3a02c283bd267f75f1b3b3` |
| 17 | `theorem` | [signed_two_density_natural_cutoffs_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertionAudit/Variante5bdf9ffc0b64dbb288a9d8358b1262f9435c2eaad05b84bf7332b26154071aa.lean/declarations/signed-two-density-natural-cutoffs-error-le--3008d0824832f894dc636f66.md) | 244 | `result-track:3008d0824832f894dc636f66d95684d30a6888708b2d784272525ff77934cf55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
