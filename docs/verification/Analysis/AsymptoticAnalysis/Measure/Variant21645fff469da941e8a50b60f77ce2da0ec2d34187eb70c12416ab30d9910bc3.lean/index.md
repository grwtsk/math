# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Measure.Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86d1cadc1fba354ca3e787feb3548a3be4f3dcef",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86d1cadc1fba354ca3e787feb3548a3be4f3dcef`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.Residual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.LiouvilleWith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [setOf_liouvilleWith_subset_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/setof-liouvillewith-subset-aux--69fb193641624cedaa81a9f7.md) | 32 | `result-track:69fb193641624cedaa81a9f7ddb449bc76464a708fc7383a6a98333f0f4398e6` |
| 2 | `theorem` | [volume_iUnion_setOf_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/volume-iunion-setof-liouvillewith--28f30016934c04874266eca0.md) | 74 | `result-track:28f30016934c04874266eca09325bb52c90ae8b467cdcb4855cf71a808093910` |
| 3 | `theorem` | [ae_not_liouvilleWith](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/ae-not-liouvillewith--f6510d97dce9bade8fc254d2.md) | 105 | `result-track:f6510d97dce9bade8fc254d2c9834448891533ce7a95b5c8925ea2416c5b8b63` |
| 4 | `theorem` | [ae_not_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/ae-not-liouville--f08ef4cdec78476cde270896.md) | 109 | `result-track:f08ef4cdec78476cde27089678d076017e4537d977f53060d93a71afb7c70701` |
| 5 | `theorem` | [volume_setOf_liouville](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/volume-setof-liouville--5dcd535138ee63bd8e8e4d9a.md) | 114 | `result-track:5dcd535138ee63bd8e8e4d9a154ad289b4ea9058e604bf242169c2f70c1a9e93` |
| 6 | `theorem` | [Real.disjoint_residual_ae](../../../../../mathematics/Analysis/AsymptoticAnalysis/Measure/Variant21645fff469da941e8a50b60f77ce2da0ec2d34187eb70c12416ab30d9910bc3.lean/declarations/real-disjoint-residual-ae--530ca24453900a7c1bbffb44.md) | 119 | `result-track:530ca24453900a7c1bbffb443cdbca124e0c3822c0da367b68e31a66a6c6fa9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
