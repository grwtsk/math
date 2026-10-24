# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Separation.Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c43adc2ddf870b6397ead073392db718cbc6e4e3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c43adc2ddf870b6397ead073392db718cbc6e4e3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/separate-convex-open-set--b7cf71aabf2f66a98cb307b0.md) | 47 | `result-track:b7cf71aabf2f66a98cb307b0a98456ce6ad5160397cded9fa0486deb6140ffbf` |
| 2 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-open--70bb26e2f4faa996002c8e08.md) | 84 | `result-track:70bb26e2f4faa996002c8e087ee3ea35cfb4861abe2c4114d3bad80e3de4e4d5` |
| 3 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-open-point--1eb734c170cf3f84732890ad.md) | 115 | `result-track:1eb734c170cf3f84732890ad56ea4cfe84d0d84783ccab1732f97ff8771ab211` |
| 4 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-point-open--fb864cefd4c45693b4123d05.md) | 122 | `result-track:fb864cefd4c45693b4123d05703677c5512a61ff99da549c2bed3923da3e554f` |
| 5 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-open-open--159b3c355d44ed442ff2aff4.md) | 128 | `result-track:159b3c355d44ed442ff2aff49240009556dd11fbdff52658f6f2059fce3075b8` |
| 6 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-compact-closed--a1878a76c699a29850edb33e.md) | 153 | `result-track:a1878a76c699a29850edb33e5eaff00bfb548be3d38d66f0d547fed9418ec06d` |
| 7 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-closed-compact--5fcbb5b7dec027be60ea8b0d.md) | 172 | `result-track:5fcbb5b7dec027be60ea8b0df015ce479cb670c214e36b279973c8756b4f83e0` |
| 8 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-point-closed--f439d9cd3890b313258dfee9.md) | 179 | `result-track:f439d9cd3890b313258dfee9111f36728082bc80a2d43a648446640d45a4c2f3` |
| 9 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-closed-point--9069e71b626f3ee781f714f8.md) | 187 | `result-track:9069e71b626f3ee781f714f8ba4bedc110224cae5efbf0507ef035b3fa4550ce` |
| 10 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/geometric-hahn-banach-point-point--9f52e64506f4a58ff623fcce.md) | 196 | `result-track:9f52e64506f4a58ff623fcce25c3e2cab783928f69715712243845e5f5742c83` |
| 11 | `theorem` | [iInter_halfspaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variante6a0138fe1317946cc2f5a7752a742f2b395a655b7e938ea11692cd4fc29ade8.lean/declarations/iinter-halfspaces-eq--63f15fbe56d8ec8bccf28f33.md) | 205 | `result-track:63f15fbe56d8ec8bccf28f3377431db8b3b08d3eb25adb4df7943e49c08674f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
