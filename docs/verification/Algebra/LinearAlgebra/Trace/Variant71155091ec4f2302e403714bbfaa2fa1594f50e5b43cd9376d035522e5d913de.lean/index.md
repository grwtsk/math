# Verification target: GRWTSK.Algebra.LinearAlgebra.Trace.Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c5ee6a95e2c234648f4da4b64a127e2455d40c1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c5ee6a95e2c234648f4da4b64a127e2455d40c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Contraction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProductBasis` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceAux](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/traceaux--7951882bb0bfc10777b0da01.md) | 63 | `declaration-track:7951882bb0bfc10777b0da0188b4e34fb774fc5b720f359fe0db429dd2dcd4b0` |
| 2 | `theorem` | [traceAux_def](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/traceaux-def--0318ba5727433dd837191ecd.md) | 68 | `result-track:0318ba5727433dd837191ecd24ed30d01d8fad7aa1b9442b588b81a795ff2c16` |
| 3 | `theorem` | [traceAux_eq](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/traceaux-eq--eca63cc1e6614fd25c3999d7.md) | 73 | `result-track:eca63cc1e6614fd25c3999d797b037529e76c6df5caf0d9197f67df286f80eef` |
| 4 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace--10e95026d3eb89c9683363a2.md) | 95 | `declaration-track:10e95026d3eb89c9683363a2caea2ba6a554c73aac72639183d2751c7cff91f8` |
| 5 | `theorem` | [trace_eq_matrix_trace_of_finset](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-matrix-trace-of-finset--5f99b62fd972ed404fed8558.md) | 102 | `result-track:5f99b62fd972ed404fed8558c11029ebd9977f0ff718a736c82a3779452e8a38` |
| 6 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-matrix-trace--7811896e162b7b8b785ca69b.md) | 110 | `result-track:7811896e162b7b8b785ca69b260ac84d65b34bace3920dbff9918f85c293e33c` |
| 7 | `theorem` | [trace_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-mul-comm--b44bc04dcfa74f0a2386a552.md) | 116 | `result-track:b44bc04dcfa74f0a2386a5522493b5310d8c82c1b8a32a53316280f1e0cd23b0` |
| 8 | `lemma` | [trace_mul_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-mul-cycle--b247bf2deec1adf19dc51bd4.md) | 124 | `result-track:b247bf2deec1adf19dc51bd4a6a7ac8a22bfa2c3f57579ec87121d927c794067` |
| 9 | `lemma` | [trace_mul_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-mul-cycle--6007885cec418b1b33455740.md) | 128 | `result-track:6007885cec418b1b33455740557ce14a60069f9454ea038af8ab3ddb16bad806` |
| 10 | `theorem` | [trace_conj](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-conj--9ec304646a4ba5236becea9d.md) | 134 | `result-track:9ec304646a4ba5236becea9d9e13ee427a8db2277bad18cedcd76e03ff6cd686` |
| 11 | `theorem` | [trace_eq_contract_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-contract-of-basis--c247399bc45a9bd1aebcec6f.md) | 152 | `result-track:c247399bc45a9bd1aebcec6f398a4df0f63020eff5a1b778f28660ae98da8a62` |
| 12 | `theorem` | [trace_eq_contract_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-contract-of-basis--585da57fec62fd6f9314f8ce.md) | 169 | `result-track:585da57fec62fd6f9314f8ce422cdb509fa59d406a5595bf9d20c24cee5ba5a5` |
| 13 | `theorem` | [trace_eq_contract](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-contract--ed28b4d78a0a37f7f0552190.md) | 182 | `result-track:ed28b4d78a0a37f7f0552190437d5f57b416bcac135fcb065c8f60b22ca058e8` |
| 14 | `theorem` | [trace_eq_contract_apply](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-contract-apply--63de42dcf1180251fa70c80f.md) | 187 | `result-track:63de42dcf1180251fa70c80ffd6bdb6b29646fd12c9d64f28ab33eef8b35689c` |
| 15 | `theorem` | [trace_eq_contract'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-eq-contract--9b526fb7ddfe7a9a2ed09fa9.md) | 194 | `result-track:9b526fb7ddfe7a9a2ed09fa901bbe89255a56122e4f9273267125b2d01723950` |
| 16 | `theorem` | [trace_one](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-one--dbaf9f36b0f98a7cefcc4449.md) | 201 | `result-track:dbaf9f36b0f98a7cefcc44492bc17d16f42ebd2a92337afd37bfaac8e42e8465` |
| 17 | `theorem` | [trace_id](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-id--7ed02ff2381188b1b8edcc5c.md) | 210 | `result-track:7ed02ff2381188b1b8edcc5cf049decb425000cab4d1134c84bb0c1375343de9` |
| 18 | `theorem` | [trace_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-transpose--2a5da59b46be852ed622f344.md) | 214 | `result-track:2a5da59b46be852ed622f344bbd2a139300bb2dcf923a8aef14dce11a2eff933` |
| 19 | `theorem` | [trace_prodMap](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-prodmap--e0eb8a5717a3188c25d59fc7.md) | 221 | `result-track:e0eb8a5717a3188c25d59fc78c09b98f5534daabe17158050f987e1dfaccc504` |
| 20 | `theorem` | [trace_prodMap'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-prodmap--abaeb31ff80d67a12dc3218f.md) | 240 | `result-track:abaeb31ff80d67a12dc3218f350abe7f0b3c5c21799d643d1088c0b81ad22246` |
| 21 | `theorem` | [trace_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-tensorproduct--d3f4b822739aec5f4a377328.md) | 252 | `result-track:d3f4b822739aec5f4a3773281de9de0c411dfabbf8e92a00fc86d7656ca171a5` |
| 22 | `theorem` | [trace_comp_comm](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-comp-comm--a7de7e23171bf12832a192ae.md) | 264 | `result-track:a7de7e23171bf12832a192ae509de061c88fefa4a0f62e0b1a821e5a1664d574` |
| 23 | `theorem` | [trace_transpose'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-transpose--9dfff59f86e2641c805d9637.md) | 278 | `result-track:9dfff59f86e2641c805d96372dede0fd1281f747a222da102d12d2a36fbc079d` |
| 24 | `theorem` | [trace_tensorProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-tensorproduct--b39ed44c32925343a7d136d9.md) | 283 | `result-track:b39ed44c32925343a7d136d97a9615fe1ad0a8a7f0b0135e7895cfb728757ca8` |
| 25 | `theorem` | [trace_comp_comm'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-comp-comm--237152a51bddb3ba1862658f.md) | 291 | `result-track:237152a51bddb3ba1862658f1c0e985e736663a1c73f4e4ad441552d306bc093` |
| 26 | `lemma` | [trace_comp_cycle](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-comp-cycle--e25908d2357ebef3b60519a5.md) | 298 | `result-track:e25908d2357ebef3b60519a5cfb950d8b38ccc8f59a63acf1a00c6639139f274` |
| 27 | `lemma` | [trace_comp_cycle'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-comp-cycle--7342e22625c2cfb750da913c.md) | 302 | `result-track:7342e22625c2cfb750da913c17b1fafd99965432c099c0158ba0eb3aa5aa554d` |
| 28 | `theorem` | [trace_conj'](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/trace-conj--4075e52a7cb5517cfbe38464.md) | 307 | `result-track:4075e52a7cb5517cfbe38464b08ecb7a9b050d9e97a9cabb6072c8b6ae30535c` |
| 29 | `theorem` | [IsProj.trace](../../../../../mathematics/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/declarations/isproj-trace--f5a87fdc41ad49a443fdaa28.md) | 312 | `result-track:f5a87fdc41ad49a443fdaa283da6c0a6448f628a417b25ab0a0e7105a4511cf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
