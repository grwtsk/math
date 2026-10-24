# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3da1085b5b42212c5ed5cd2f7aff14926b748e0c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3da1085b5b42212c5ed5cd2f7aff14926b748e0c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticBernsteinMass`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tangent7_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/tangent7-le--a1888e8402827a2b197a662b.md) | 24 | `result-track:a1888e8402827a2b197a662be45c8535e44edd6cc7fb3e608750ec82ed37ec70` |
| 2 | `lemma` | [tangent8_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/tangent8-le--dcfc17e5513e49ec71c4d2d8.md) | 36 | `result-track:dcfc17e5513e49ec71c4d2d8909ff8622aee3179ac13200906302ae114021569` |
| 3 | `lemma` | [variable_weight_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/variable-weight-lower--2ca56c06e7ade2eb2385768b.md) | 49 | `result-track:2ca56c06e7ade2eb2385768bb30e6ccebcc54a4b964b6d1a0ea6f49dc3bb90ea` |
| 4 | `lemma` | [defect_lower_on_subcell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/defect-lower-on-subcell--91f5a446a9f05a96616ec6f9.md) | 83 | `result-track:91f5a446a9f05a96616ec6f9743ecd4755fab3f0081a7c7300451d549f832cba` |
| 5 | `lemma` | [subcell_integral_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/subcell-integral-lower--f1d1c413dc89a757631a9972.md) | 106 | `result-track:f1d1c413dc89a757631a9972904abf0dfe2ac2e8c73210a8a17621fee72d495d` |
| 6 | `lemma` | [first_cell_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/first-cell-lower--dab399b29d9bfacaf3ebe074.md) | 127 | `result-track:dab399b29d9bfacaf3ebe074f60ece11ff9139520ec7cbbeaf8e8208bec251b8` |
| 7 | `lemma` | [full_defect_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/full-defect-lower--ffe1ad35eeaf260cc4696485.md) | 144 | `result-track:ffe1ad35eeaf260cc469648559b229b8bf32471f4763bff136fc15c08d52526e` |
| 8 | `lemma` | [normalized_saving](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/normalized-saving--bfd3d6d694275febde43a75b.md) | 171 | `result-track:bfd3d6d694275febde43a75b0f0b1df8f73c1f30abdd2736dacdf14ed8736d09` |
| 9 | `theorem` | [first_tail_improved](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTangentDefect.lean/declarations/first-tail-improved--0037705a6c0e9f82d2a873a3.md) | 178 | `result-track:0037705a6c0e9f82d2a873a3e3175a234571e8ed3f4a6b510f3709bdedf23955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
