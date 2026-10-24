# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cech.Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6729b88eb46199e8d4aa58c0c819d898ef24c22c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6729b88eb46199e8d4aa58c0c819d898ef24c22c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [power](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/power--52de4578b7f87075870aa27c.md) | 42 | `declaration-track:52de4578b7f87075870aa27cc442c4e0b5d5109ca726bb9cbd6e1209fef1cb00` |
| 2 | `def` | [powerπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/power--8f4ba2a2c87bf3cb8322bfc9.md) | 54 | `declaration-track:8f4ba2a2c87bf3cb8322bfc9374fe10c8e4ef42aa3507e19755cdac2fedb626d` |
| 3 | `abbrev` | [powerFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powerfan--7bb4eed8106306d517f192cf.md) | 60 | `declaration-track:7bb4eed8106306d517f192cf0383dcc40d289fc645693677111abfbc6e6fa89c` |
| 4 | `def` | [isLimitPowerFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/islimitpowerfan--24909db39e1b31988da23633.md) | 67 | `declaration-track:24909db39e1b31988da2363366c75def5211747193abf8788111abd7e8ba20ca` |
| 5 | `def` | [powerMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powermap--ff21bcb63f4e876a7a53bc36.md) | 94 | `declaration-track:ff21bcb63f4e876a7a53bc36bb4f2a84a106bddf0ff2301039491ffa900240e0` |
| 6 | `lemma` | [powerMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powermap-id--d0a94ae2a1ae5a0486174c76.md) | 103 | `result-track:d0a94ae2a1ae5a0486174c762d27cfe3bbb4eb4acbddc13ed2be3ca52e87b48a` |
| 7 | `lemma` | [powerMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powermap-comp--d6365c501b3c644a19c4cad5.md) | 110 | `result-track:d6365c501b3c644a19c4cad580cb67df1c3841b5538dd672d6758aa590d9b88e` |
| 8 | `def` | [powerFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powerfunctor--f1c7f91f01ba9b2c8a92b335.md) | 126 | `declaration-track:f1c7f91f01ba9b2c8a92b335a0d36cba7fc5c0e94157cca77b2df25699e78999` |
| 9 | `def` | [mapPower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/mappower--f2dfd6b608209000abba8bb9.md) | 133 | `declaration-track:f2dfd6b608209000abba8bb93c2c2483804c3c7dc7ca4fe8a1920dba7a02f0af` |
| 10 | `lemma` | [mapPower_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/mappower-id--721d12e20f1a52feaf7be523.md) | 142 | `result-track:721d12e20f1a52feaf7be523517363223e226d244407b2601782d2ad7175ba90` |
| 11 | `lemma` | [mapPower_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/mappower-comp--15b2388403773937a603c387.md) | 150 | `result-track:15b2388403773937a603c3874d5ef1c7afdf50443bc0f990876de51423a456e1` |
| 12 | `lemma` | [mapPower_powerMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/mappower-powermap--d17fd747f210b0a185e6b213.md) | 163 | `result-track:d17fd747f210b0a185e6b213acc350596124c6ddf9c218ac5e864e6f04ef65ca` |
| 13 | `lemma` | [mapPower_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/mappower--0bb4b9cdf95637a86e65ecea.md) | 175 | `result-track:0bb4b9cdf95637a86e65eceaa20d9bc7fb3c11f24becc655336adc52ce6a02d5` |
| 14 | `def` | [powerBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/powerbifunctor--962a4148adbf837bf9b36006.md) | 187 | `declaration-track:962a4148adbf837bf9b3600616a4841fc310e732efe91d567402bf1536aa757f` |
| 15 | `def` | [cech](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/cech--0461bd9976ae5afc917625ac.md) | 198 | `declaration-track:0461bd9976ae5afc917625ac8e0e428e7cccd537aeda064011ac6890519f91af` |
| 16 | `def` | [cechFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cech/Variant86693180ebeadfe92add95dac0ea3c51a7a79dbad6df849b8ed2dfaed988c01b.lean/declarations/cechfunctor--be1e2d20fbfc6d1092d8019a.md) | 207 | `declaration-track:be1e2d20fbfc6d1092d8019a7178b5f109f0a35dd8bc3587d75d69105e91e631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
