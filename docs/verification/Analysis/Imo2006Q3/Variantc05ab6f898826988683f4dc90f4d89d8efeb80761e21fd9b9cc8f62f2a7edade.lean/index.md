# Verification target: GRWTSK.Analysis.Imo2006Q3.Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63085f32c6fba1afdd1b7b75c5c4548477e6d18d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/index.md) · [Full source](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63085f32c6fba1afdd1b7b75c5c4548477e6d18d`.

Source path: `GRWTSK/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lhs_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/lhs-ineq--23b22eb353e72dd42c6bd393.md) | 44 | `result-track:23b22eb353e72dd42c6bd393a85d2395784fe1c6d64368f1406fb22cd978d3c4` |
| 2 | `theorem` | [four_pow_four_pos](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/four-pow-four-pos--04c7e1a9f67eaae0921a1f64.md) | 50 | `result-track:04c7e1a9f67eaae0921a1f64333547456254c27b27e42d110240c046e658c1b1` |
| 3 | `theorem` | [mid_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/mid-ineq--2ccf6c513ad090025cd83169.md) | 52 | `result-track:2ccf6c513ad090025cd83169e69fce7e1fbd0b3e7d1bc3bb144f8a13b13a211a` |
| 4 | `theorem` | [rhs_ineq](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/rhs-ineq--ea762586ee01c3ea54c22842.md) | 58 | `result-track:ea762586ee01c3ea54c22842e6e4474e769a688dc376ff210e0ce870c9c9d84e` |
| 5 | `theorem` | [zero_lt_32](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/zero-lt-32--18f156d53bde24d06b23d6aa.md) | 62 | `result-track:18f156d53bde24d06b23d6aa0a1b3d72268fd623fee167489dba7b82edad0448` |
| 6 | `theorem` | [subst_wlog](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/subst-wlog--f02df76de7677e6c086385b4.md) | 64 | `result-track:f02df76de7677e6c086385b43c4ad9f9859677a6cd50d36731862993da8d8f66` |
| 7 | `theorem` | [subst_proof₁](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/subst-proof--7df86301d29fae536501ca5e.md) | 86 | `result-track:7df86301d29fae536501ca5ed122978c53235245a4423eed5afbb5fb5259a7ab` |
| 8 | `theorem` | [proof₁](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/proof--4072c850d60dabbd2fca925b.md) | 95 | `result-track:4072c850d60dabbd2fca925bd28ba4e032bb3299f3215fab8904339d5e9863d3` |
| 9 | `theorem` | [proof₂](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/proof--2dbb4fb33662287d021cc67c.md) | 103 | `result-track:2dbb4fb33662287d021cc67ce8cef743a927ceaac004c3b917d335a229689666` |
| 10 | `theorem` | [imo2006_q3](../../../../mathematics/Analysis/Imo2006Q3/Variantc05ab6f898826988683f4dc90f4d89d8efeb80761e21fd9b9cc8f62f2a7edade.lean/declarations/imo2006-q3--4aaf1b6e65e3e6776efe75e1.md) | 126 | `result-track:4aaf1b6e65e3e6776efe75e177ba8c353e2c9f9947ede29420db8828be9fea38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
