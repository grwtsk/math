# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQOnePoleFourierControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e250b7193b4e84d2ed349b280c472a5d035c18af",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e250b7193b4e84d2ed349b280c472a5d035c18af`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOnePoleFourier`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOnePoleFourier.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerPole_actual_integrable_product](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-actual-integrable-product--8ffd90147283798000a361cb.md) | 22 | `result-track:8ffd90147283798000a361cb3365fc4d2f382aae24877bf09cb59d3f1594c06d` |
| 2 | `theorem` | [wienerPole_exact_product_norm](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-exact-product-norm--0af877967ca406f261ccceeb.md) | 35 | `result-track:0af877967ca406f261ccceeb4396f0554add679ddb9f6a71dc07146fb303fd53` |
| 3 | `theorem` | [wienerPole_zero_frequency](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-zero-frequency--212a2bfbef73a5bd1f48fe78.md) | 44 | `result-track:212a2bfbef73a5bd1f48fe785f9d195bd1bc3bab4b68e7fbe613c49049d43398` |
| 4 | `theorem` | [wienerPole_actual_Laplace_tail](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-actual-laplace-tail--ba57d6b47037ecbf31bf0d3d.md) | 52 | `result-track:ba57d6b47037ecbf31bf0d3d289a5b158d4453ed2d50dc405db12b563098e85c` |
| 5 | `theorem` | [wienerPole_actual_secondFourier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-actual-secondfourier--0d9bdb9dc1292e6508d5e048.md) | 66 | `result-track:0d9bdb9dc1292e6508d5e048e5f3dcfff3ac5ddc86e3a87b4213cb98dc582379` |
| 6 | `theorem` | [wienerPole_at_unit_scale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-at-unit-scale--8a0b53041477c22daae5a75b.md) | 82 | `result-track:8a0b53041477c22daae5a75b7cb17f14d8b8e6e4b0c0e23a39afdc0c9ee75ad8` |
| 7 | `def` | [wienerPole_nextObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/declarations/wienerpole-nextobligations--2b6c5a097910920211f72b40.md) | 99 | `declaration-track:2b6c5a097910920211f72b40e2dfc2fc33238b5fa21b27be2118714f06a93009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
