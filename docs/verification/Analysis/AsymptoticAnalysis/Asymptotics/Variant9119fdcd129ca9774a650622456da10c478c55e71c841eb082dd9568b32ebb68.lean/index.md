# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f164a89d203eaf7b4865ffeb5e31aa18b7a224",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f164a89d203eaf7b4865ffeb5e31aa18b7a224`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigOWith_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigowith-id--a3e9bbc3d81c256cb9d1e605.md) | 35 | `result-track:a3e9bbc3d81c256cb9d1e605eafece25a76effb8c2fac9da5c70a2069561dafc` |
| 2 | `theorem` | [isBigO_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-id--ec429953ec6ff17dc1023c00.md) | 38 | `result-track:ec429953ec6ff17dc1023c005363f3ac1478e933839bd0e522e177a11a448ebf` |
| 3 | `theorem` | [isBigOWith_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigowith-comp--5c8e6eefbcc00b7cbd5e17b9.md) | 41 | `result-track:5c8e6eefbcc00b7cbd5e17b93be12824bceeedfdc56477f7f3fe2fbd828fc4d2` |
| 4 | `theorem` | [isBigO_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-comp--7e4fd47c84a2715bc8a475b3.md) | 45 | `result-track:7e4fd47c84a2715bc8a475b3029374d21ca1e0e66f6c9e8d0b857c29dc1bd3ca` |
| 5 | `theorem` | [isBigOWith_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigowith-sub--aba15eb927318105bf802f14.md) | 49 | `result-track:aba15eb927318105bf802f145091545c239b0efa019081bfc8c05f85e15e2112` |
| 6 | `theorem` | [isBigO_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-sub--3c19fc5bc3abc0f5fc7bb2a6.md) | 53 | `result-track:3c19fc5bc3abc0f5fc7bb2a6bdcfb00c4e90289abbdea22f411c68106129c3dc` |
| 7 | `theorem` | [isBigO_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-comp--7fb129ce930104b4cf91b4b0.md) | 67 | `result-track:7fb129ce930104b4cf91b4b08714c329fc7856b9763ddd5afd71004fc2cda29f` |
| 8 | `theorem` | [isBigO_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-sub--8347d09edd6f4d652c726b8c.md) | 70 | `result-track:8347d09edd6f4d652c726b8c7744ca1a2641c64094e5ac6ee35032ec717b6f07` |
| 9 | `theorem` | [isBigO_comp_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-comp-rev--6d9f97da417b0fb7683e7fd0.md) | 79 | `result-track:6d9f97da417b0fb7683e7fd0043e58a4f3618b42f35927f95d8e875f67468f16` |
| 10 | `theorem` | [isBigO_sub_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant9119fdcd129ca9774a650622456da10c478c55e71c841eb082dd9568b32ebb68.lean/declarations/isbigo-sub-rev--14f8415e69c84f5d2ce81bab.md) | 82 | `result-track:14f8415e69c84f5d2ce81bab2dca3e81f7803d449896ca1fa82047eb2cb6115e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
