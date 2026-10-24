# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Rounding.Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33c576d5d4be289fe7f870578b3e599467122e48",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33c576d5d4be289fe7f870578b3e599467122e48`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.GramField` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RoundingSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/roundingset--bb9959c7d45c87076dbfb50c.md) | 35 | `declaration-track:bb9959c7d45c87076dbfb50c85a40b3b6591eb77e2afbbb24d4af9c07b42ac1a` |
| 2 | `def` | [OnVoronoiWall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/onvoronoiwall--4aba70bcaa82ed5f16dcfbfa.md) | 47 | `declaration-track:4aba70bcaa82ed5f16dcfbfa5c27516988c8f4b28bfbdfaba7f3f58d3e767b03` |
| 3 | `structure` | [RoundingExistenceCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/roundingexistencecertificate--945d3fe3269f522d2c622af6.md) | 58 | `declaration-track:945d3fe3269f522d2c622af667577182551b28cdbe0d6faf90aa50b0cbbe0ae4` |
| 4 | `structure` | [FiniteRoundingCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/finiteroundingcertificate--0994bc85043375fade97cdf0.md) | 67 | `declaration-track:0994bc85043375fade97cdf02449440a8fefc0dafe4fd551bede41a481547e88` |
| 5 | `structure` | [RoundedBranch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/roundedbranch--254a3917e3b06012f766b0e8.md) | 81 | `declaration-track:254a3917e3b06012f766b0e8fa47c5ab1a6912067ee3e40bb430b44cc14934d0` |
| 6 | `def` | [residue](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/residue--3c6021284454aac571b8ffe6.md) | 100 | `declaration-track:3c6021284454aac571b8ffe60ff94db836d4ac6bd8fca853e84c597e5126a31d` |
| 7 | `theorem` | [integral_add_residue](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/integral-add-residue--207c82571a44232fa01f122c.md) | 104 | `result-track:207c82571a44232fa01f122c096ffd2016ec2f90997b5709b7a407ea1cfb3e93` |
| 8 | `theorem` | [equal_cost](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant49dbf6d4ad1cad8f66312220c0d1e8e774773b0420a9f6c5b837c40a43a34e5e.lean/declarations/equal-cost--1ef691ed9c92637e141f5c8a.md) | 109 | `result-track:1ef691ed9c92637e141f5c8ab1268c406ba9a411b6053bfc2eb2a7899426189b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
