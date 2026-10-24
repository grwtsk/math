# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleValue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ecae18c8d0de2352726ea4d2b1ebaf602ec12e5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleValue.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ecae18c8d0de2352726ea4d2b1ebaf602ec12e5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleValue.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPoleValue.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalPowerValue`](../../../../../mathematics/Analysis/ErrorBounds/RationalPowerValue.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleNormalizedJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Parameters](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/parameters--8b5222df5ad90f88471313ec.md) | 25 | `declaration-track:8b5222df5ad90f88471313ec933f882827554129200f62c21851fb4a2377c5bb` |
| 2 | `def` | [resolution](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/resolution--8fc64eddd26dd4e0c210312d.md) | 36 | `declaration-track:8fc64eddd26dd4e0c210312dd3899ad5942034fdb29a1495dab8a0af0566e566` |
| 3 | `def` | [logs](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/logs--a15c501c12dbde3ac483a4eb.md) | 39 | `declaration-track:a15c501c12dbde3ac483a4ebb6dfad0b0dc268401ea71b6f6062848447a7cf61` |
| 4 | `def` | [powers](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/powers--00938df647ac3fd38c5b55cf.md) | 42 | `declaration-track:00938df647ac3fd38c5b55cfe2d2bcb44e64adc43f0d0c1b11b2ae3635252f44` |
| 5 | `def` | [Valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/valid--8c3a2cd6c637116b92a3afa7.md) | 45 | `declaration-track:8c3a2cd6c637116b92a3afa750ac7265020bc43afa435ad7b0a840625311e9c0` |
| 6 | `instance` | [validDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/validdecidable--5232469f87002ef47d60c643.md) | 49 | `declaration-track:5232469f87002ef47d60c6439e03575686fc191ec2eaa1d28b5590464ac7002e` |
| 7 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/check--51c31003239f3674e6a4aa84.md) | 52 | `declaration-track:51c31003239f3674e6a4aa84c6e8366c0539331168678187d693d29ea3e1cf35` |
| 8 | `theorem` | [check_iff_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/check-iff-valid--d66617dae7d903b391e4a6f8.md) | 54 | `result-track:d66617dae7d903b391e4a6f82ee29a1940094367355784bc746eb1cee5facf96` |
| 9 | `def` | [finiteJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/finitejet--91a3b27638d5a3e8299b4a0f.md) | 58 | `declaration-track:91a3b27638d5a3e8299b4a0fe52c1e5977a326e177b3b4dfc9761130a04749f9` |
| 10 | `def` | [valueBall](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/valueball--8404ebf5d9bbe18597f82817.md) | 62 | `declaration-track:8404ebf5d9bbe18597f82817fc47b1b17769567b40e47a1d0f9a1d7b6aba5fc3` |
| 11 | `theorem` | [logs_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/logs-sound--18925ee081d6f16a187e4660.md) | 65 | `result-track:18925ee081d6f16a187e4660b31ad5ed6d8ab410f61ff748d0178afd7d840b6a` |
| 12 | `theorem` | [powers_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/powers-sound--23267db9d5dfdd96466e498b.md) | 71 | `result-track:23267db9d5dfdd96466e498bba39cd9ca1e87a97c9c1a6d46202ce73d321b6a6` |
| 13 | `theorem` | [finiteJet_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/finitejet-sound--92808886bbf7adc2467a7e14.md) | 78 | `result-track:92808886bbf7adc2467a7e14c2094fb1d197e060720a444821a58ebcc8c65b20` |
| 14 | `theorem` | [valueBall_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/valueball-sound--4fb87a3dd03cf041398fa843.md) | 88 | `result-track:4fb87a3dd03cf041398fa843bfe9a6b5622be7893a00de05c4b14e7d2d345914` |
| 15 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/evaluate--f16ea296eb5aee22f300b8bf.md) | 93 | `declaration-track:f16ea296eb5aee22f300b8bf880221f33859c363e60788850b497c1981a68535` |
| 16 | `theorem` | [evaluate_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/evaluate-eq-some-iff--a8579884d5c2e538ae21a4d2.md) | 96 | `result-track:a8579884d5c2e538ae21a4d2b70db919c68318d124d4484364522072602e6ecb` |
| 17 | `theorem` | [evaluate_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/evaluate-sound--7fee9622beef7ac375f32310.md) | 100 | `result-track:7fee9622beef7ac375f32310a2e0076f60bc84770cec5bb4cdc4a6d08fe41001` |
| 18 | `def` | [checkWithin](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/checkwithin--5e0cab5abcbfd2684399c033.md) | 106 | `declaration-track:5e0cab5abcbfd2684399c033104f8eb080310ec690c86189e365d87d95d62835` |
| 19 | `theorem` | [checkWithin_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleValue.lean/declarations/checkwithin-sound--7739460eb0001d411f7d04da.md) | 109 | `result-track:7739460eb0001d411f7d04da39ac343fe0d76d2ad601db8785d618a655aeb0b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
