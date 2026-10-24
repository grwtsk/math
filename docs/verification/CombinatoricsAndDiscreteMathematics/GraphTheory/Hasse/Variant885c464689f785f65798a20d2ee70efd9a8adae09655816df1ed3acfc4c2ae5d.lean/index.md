# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Hasse.Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "138fd1e4db8ba47304fabd2e14fb12a9cd670892",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `138fd1e4db8ba47304fabd2e14fb12a9cd670892`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Relation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hasse--205dbc279cbf8ec729f5cad8.md) | 44 | `declaration-track:205dbc279cbf8ec729f5cad8cc24b2b2dffe26a1491225b7d6bce397ed84ff0d` |
| 2 | `theorem` | [hasse_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hasse-adj--4b1b19ce4f68acd3aeddc72f.md) | 52 | `result-track:4b1b19ce4f68acd3aeddc72f8b3b58eef9f9b2ed01b6fa50526f5649fb989872` |
| 3 | `def` | [hasseDualIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hassedualiso--070d2e1e8299e2a0912449ab.md) | 56 | `declaration-track:070d2e1e8299e2a0912449abb5cbdeaef6c27f8bda28907b8a85a01c50caaa1a` |
| 4 | `theorem` | [hasseDualIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hassedualiso-apply--7a8631dec85b03e2ce2e6aed.md) | 60 | `result-track:7a8631dec85b03e2ce2e6aed8dec654e2e8c95be1280f012a8292205ef68fcd3` |
| 5 | `theorem` | [hasseDualIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hassedualiso-symm-apply--3e41821756cde83ed76d9c82.md) | 64 | `result-track:3e41821756cde83ed76d9c82ef41ba12bb08c8a36538310d5353a78d40254698` |
| 6 | `theorem` | [hasse_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hasse-prod--def3995cc142e162f17ca742.md) | 74 | `result-track:def3995cc142e162f17ca742193773a73db5bcd31cb73043f460156ecd5470e3` |
| 7 | `theorem` | [hasse_preconnected_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hasse-preconnected-of-succ--e322bbdcfb3207bd8685f4d3.md) | 85 | `result-track:e322bbdcfb3207bd8685f4d3b596858ca38bf94272ac7498a6fc02f38d4207ac` |
| 8 | `theorem` | [hasse_preconnected_of_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/hasse-preconnected-of-pred--73930347c43722e810fe55ff.md) | 92 | `result-track:73930347c43722e810fe55ff80d50348ecee8a82bfe7f0f4e28d0c586e1302c8` |
| 9 | `def` | [pathGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/pathgraph--5faa3ebb79edab10ab447bea.md) | 102 | `declaration-track:5faa3ebb79edab10ab447bea0d15ae6aff8efe0733a4d67a783e139033098755` |
| 10 | `theorem` | [pathGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/pathgraph-adj--e89bb554a1c175f78089d327.md) | 105 | `result-track:e89bb554a1c175f78089d327f977882e80b8e351e6e369ef1f3f803fcddc49cc` |
| 11 | `theorem` | [pathGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/pathgraph-preconnected--959945155660f1732fc12c7e.md) | 110 | `result-track:959945155660f1732fc12c7e697e8014ecfefa9ae87a6645fd930918a93b9af6` |
| 12 | `theorem` | [pathGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/pathgraph-connected--1e253d2a12f7d46938e55f27.md) | 113 | `result-track:1e253d2a12f7d46938e55f2749419f6bd84ac25a5f9186483eca95cd4b772503` |
| 13 | `theorem` | [pathGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Hasse/Variant885c464689f785f65798a20d2ee70efd9a8adae09655816df1ed3acfc4c2ae5d.lean/declarations/pathgraph-two-eq-top--3007af4c5fdd6b646f538dd0.md) | 116 | `result-track:3007af4c5fdd6b646f538dd01eb731a31e18733ed14a5a7358f91d148719a1dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
