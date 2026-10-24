# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efbc43aff494e2d0d265c2146aa87d36e903e037",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efbc43aff494e2d0d265c2146aa87d36e903e037`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Contraction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProductBasis` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/traceaux--061c12d3d8765861f1d8bcc7.md) | 55 | `declaration-track:061c12d3d8765861f1d8bcc715cfac1038687bb0d58abeb6fac71c705fd69886` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/traceaux-def--913933df4445cb07cbfe77af.md) | 60 | `result-track:913933df4445cb07cbfe77af8c3c98c900ba779ab930e575f8a620aded1032c4` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/traceaux-eq--bfe5e9087c31e5a944624d9b.md) | 65 | `result-track:bfe5e9087c31e5a944624d9b1bef12ac408845e6496dd481dc2e5c2edf7d5fd3` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace--4b1d264b9833c459be3aedfb.md) | 87 | `declaration-track:4b1d264b9833c459be3aedfb7be850d722b41fd748771e8f5c2299c7be86d57f` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-matrix-trace-of-finset--24a2faa2d3d85cc8a55406a1.md) | 94 | `result-track:24a2faa2d3d85cc8a55406a1167e2a44bd85c5a2d2601cbfd23e3228d9605a76` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-matrix-trace--a486c5144932e03ab8373f81.md) | 102 | `result-track:a486c5144932e03ab8373f818613aa1b20d8677f85c64e5672982a9d7962a17c` |
| 7 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-mul-comm--a3f7b1e38c1eea8126f67fc7.md) | 108 | `result-track:a3f7b1e38c1eea8126f67fc7d537a4e8b9acdeff79e7537de9aef155eb7dbe11` |
| 8 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-mul-cycle--2d2fc9d2ef8cbdaa800902f7.md) | 116 | `result-track:2d2fc9d2ef8cbdaa800902f7a9cb36de009944b438c20bd899c823e97e6c24d0` |
| 9 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-mul-cycle--73a940179d0e00bbb6069691.md) | 120 | `result-track:73a940179d0e00bbb60696914afd449f7352b4d2acd17deb14bb6f2a55bc0079` |
| 10 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-conj--09dc156ced046590ceb8af56.md) | 126 | `result-track:09dc156ced046590ceb8af567605b88c21c615488c9b4633d173defeb7d677e3` |
| 11 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-contract-of-basis--f5ca4cc1c6641db35f3710c6.md) | 144 | `result-track:f5ca4cc1c6641db35f3710c6bebc5321d6138530924e0cdf547c6c112bac0a57` |
| 12 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-contract-of-basis--a0a83ba8af72abd299bd99fb.md) | 161 | `result-track:a0a83ba8af72abd299bd99fb8fca1942c90d81af12aadc26029ba1358f4bb35d` |
| 13 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-contract--3c8b536f5b137ab7403d3bb8.md) | 174 | `result-track:3c8b536f5b137ab7403d3bb80a4df3d5c13dac2011c1387b89c8e8614dbf44f4` |
| 14 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-contract-apply--f7adbfb79c02c21efc3643cb.md) | 179 | `result-track:f7adbfb79c02c21efc3643cb79039d93d4019c1ce55e5b81f3ff6aeee755bc7c` |
| 15 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-eq-contract--bdb46b5ef2d4d0603a07bca0.md) | 186 | `result-track:bdb46b5ef2d4d0603a07bca01829fa9a74cfe8ffc571cef62bda2e0b230105bc` |
| 16 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-one--a7a9fd944a71e5e9e7f63661.md) | 193 | `result-track:a7a9fd944a71e5e9e7f63661440e555cbdabb46f4429dede6b4571a8198e7c7e` |
| 17 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-id--7f48d9a8583cd8871804dfff.md) | 202 | `result-track:7f48d9a8583cd8871804dfffecce0fc5e884b428368d195f5a512d53d465edd3` |
| 18 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-transpose--e60328c59cccb2de869e1fd9.md) | 206 | `result-track:e60328c59cccb2de869e1fd93db368dc8846eddee82be750951010412068c201` |
| 19 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-prodmap--97d57914fb392d567536ed10.md) | 213 | `result-track:97d57914fb392d567536ed10b31fcf1270c6631bf217cbfebbeee7e5ccec3684` |
| 20 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-prodmap--18559cb11b494fd81e907be6.md) | 232 | `result-track:18559cb11b494fd81e907be6835157014f1fcac7340c2b04400d6e81a615dd00` |
| 21 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-tensorproduct--035ed631768f396fe847a00a.md) | 244 | `result-track:035ed631768f396fe847a00a1fa92d0b6b1cda4f18a1ef3baa0fa7d532cc5a57` |
| 22 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-comp-comm--08d749656976bd6a693625a3.md) | 256 | `result-track:08d749656976bd6a693625a34341f02b61d5ae1b2afc122416a5db13282f7556` |
| 23 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-transpose--289fb0bfe399967782313850.md) | 270 | `result-track:289fb0bfe399967782313850d544a04dbc4465cd4ece40668966042dd55cb0c2` |
| 24 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-tensorproduct--c9fb56b21d0147765eede0ea.md) | 275 | `result-track:c9fb56b21d0147765eede0ea57736863670916b9e45a326a1ecd597c446521fb` |
| 25 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-comp-comm--f6608ee8d81d889cbd2fbd47.md) | 283 | `result-track:f6608ee8d81d889cbd2fbd47bf3835b4a05247c1d14271140a09f3f12f4bd6a3` |
| 26 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-comp-cycle--bfc9a7f7801163c304d85a5c.md) | 290 | `result-track:bfc9a7f7801163c304d85a5c2025cb6018b6acd9a98c1df9809891ac9e2f0d12` |
| 27 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-comp-cycle--6f03280f38926efa52e62415.md) | 294 | `result-track:6f03280f38926efa52e6241581ed357015407306a72dcb25e9a6a2ff7ddcbbb0` |
| 28 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/trace-conj--0cd8876d545522111459396f.md) | 299 | `result-track:0cd8876d545522111459396f3235be3e2aa4b5fd97defeca035d59484edff469` |
| 29 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant33198c9e795f235a9a92a2e828691f06036e82da4feb83b836241b04252c9def.lean/declarations/isproj-trace--07c4c5a02909b23e70594b78.md) | 304 | `result-track:07c4c5a02909b23e70594b7883ac89fe0c5313085a69dfa5c81213ea276fe1e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
