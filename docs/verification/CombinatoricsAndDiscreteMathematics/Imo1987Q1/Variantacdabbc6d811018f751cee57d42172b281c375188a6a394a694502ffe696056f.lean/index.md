# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1987Q1.Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1bdc444c6a4ede3543a2ac4823c912a37345f10",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1bdc444c6a4ede3543a2ac4823c912a37345f10`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/fixedpointsequiv--ccc5817eb704d21c8a186250.md) | 50 | `declaration-track:ccc5817eb704d21c8a186250e93d6075f46d7b9ca07b34edcb0cb609399d05d4` |
| 2 | `theorem` | [card_fixed_points](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/card-fixed-points--2efb5a05ee6261199e4c36fe.md) | 59 | `result-track:2efb5a05ee6261199e4c36fe7521acb2e0ec719d20225a3842a44cd2231a9548` |
| 3 | `def` | [fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/fiber--8ca22ccc89b4eeeb9c3c4f47.md) | 67 | `declaration-track:8ca22ccc89b4eeeb9c3c4f4791a7edccec6dce88bcdba012367df98a1760d542` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/instance--8964ce1b477f910893e85927.md) | 71 | `declaration-track:8964ce1b477f910893e85927bd170cb9f775f946d1cb4cf51543943ea2d47b8c` |
| 5 | `theorem` | [mem_fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/mem-fiber--fd5472ab0eb959147c12dbdf.md) | 74 | `result-track:fd5472ab0eb959147c12dbdf567680a8a5cded8345ff4de0a18b8b6b588ff2ba` |
| 6 | `def` | [p](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/p--d704d308145220601a12ee87.md) | 79 | `declaration-track:d704d308145220601a12ee87dabecb15df78de1d4085a154163b5748cfaebe2f` |
| 7 | `def` | [fixedPointsEquiv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/fixedpointsequiv--86a4ead7e22bb51259ccbb79.md) | 89 | `declaration-track:86a4ead7e22bb51259ccbb79d692c75de1e92b612053b07f6867e4a1bed7e52c` |
| 8 | `theorem` | [main_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/main-fintype--7a4e55ccc63605e03ef4edd4.md) | 103 | `result-track:7a4e55ccc63605e03ef4edd4000db896703d0dc4e9ade80804f4019489e74d58` |
| 9 | `theorem` | [main₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/main--6c6deef9fa970127ea91f67c.md) | 110 | `result-track:6c6deef9fa970127ea91f67c58a3a95df138a8056810ce41b6efc786eae6cf17` |
| 10 | `theorem` | [main](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variantacdabbc6d811018f751cee57d42172b281c375188a6a394a694502ffe696056f.lean/declarations/main--841565fa1b9b49aa6ff16f5f.md) | 115 | `result-track:841565fa1b9b49aa6ff16f5fbd90e1e78ffbec3bbf961afcef6f14c4eed2417c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
