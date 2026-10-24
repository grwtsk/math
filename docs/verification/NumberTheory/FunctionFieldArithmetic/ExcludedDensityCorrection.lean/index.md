# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.ExcludedDensityCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec32300bf299f877ea008ae059bbfe079b649a57",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec32300bf299f877ea008ae059bbfe079b649a57`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.PositiveDensityCorrection`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/PositiveDensityCorrection.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [excludedDensityMoebius](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excludeddensitymoebius--7d0c6d35947e316126868035.md) | 19 | `declaration-track:7d0c6d35947e316126868035737b1f439e1fd7418dcd610b40622847c8166dd1` |
| 2 | `def` | [excludedDensityCorrection](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excludeddensitycorrection--79a3b430849541ae0847c7d2.md) | 22 | `declaration-track:79a3b430849541ae0847c7d21a1ca027661309c20f7eb71cb74b149586409610` |
| 3 | `theorem` | [excluded_density_source_apply](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-source-apply--6b842a18687b7b2c68802827.md) | 25 | `result-track:6b842a18687b7b2c6880282756518f879e181929c28967106d15ac38c84905c3` |
| 4 | `theorem` | [excluded_density_source_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-source-one--e0319bbc6c0f863ea61a37fb.md) | 28 | `result-track:e0319bbc6c0f863ea61a37fb88527db156b00a3bc93b2112e3377013157bb89a` |
| 5 | `theorem` | [excluded_density_source_multiplicative](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-source-multiplicative--929ccb072f6e5a871875a56b.md) | 31 | `result-track:929ccb072f6e5a871875a56ba772105ff29b12d2a35297e240ae494f28242553` |
| 6 | `theorem` | [excluded_density_correction_multiplicative](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-multiplicative--2511a876607e277af16b3dbc.md) | 42 | `result-track:2511a876607e277af16b3dbc26c581a16f2f9a7aaf43686905563c34b4876654` |
| 7 | `theorem` | [excluded_density_correction_return](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-return--0fbf2117efd274592a63fdf7.md) | 46 | `result-track:0fbf2117efd274592a63fdf7622c77f4d29b267a10a7ef20a554a7385eca5776` |
| 8 | `theorem` | [excluded_density_correction_divisors](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-divisors--a9286561d0db4e632c9b3dbb.md) | 53 | `result-track:a9286561d0db4e632c9b3dbbe89b740a5c07b6bca5201a6439400c53379392b0` |
| 9 | `theorem` | [excluded_density_correction_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-one--25062ecd6cb44a0d4bb2f2b3.md) | 58 | `result-track:25062ecd6cb44a0d4bb2f2b37c283bf634622f5e4f91b91062f83473966d179d` |
| 10 | `theorem` | [excluded_density_source_prime_power](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-source-prime-power--7b8445fd5c7a40eb6f545ee3.md) | 62 | `result-track:7b8445fd5c7a40eb6f545ee32a5e46f2531182b4cee9494d3d369bd6894c997b` |
| 11 | `theorem` | [excluded_density_correction_prime_power](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-prime-power--e5028841326f071371790c71.md) | 69 | `result-track:e5028841326f071371790c710060f5cd5bde78be19b0b36a1a141c68cf84cf7c` |
| 12 | `theorem` | [excluded_density_correction_bounds](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-bounds--385e6f73ea1046350dff1b9b.md) | 96 | `result-track:385e6f73ea1046350dff1b9b0929488cfb911ac6fe9a8a88522aa2d1616fee2e` |
| 13 | `theorem` | [excluded_density_correction_pos](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/ExcludedDensityCorrection.lean/declarations/excluded-density-correction-pos--168eba4c82ba0d1562de3191.md) | 115 | `result-track:168eba4c82ba0d1562de3191e3e3af2dd0df0eeaca7854dcc61601cad9aaf112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
