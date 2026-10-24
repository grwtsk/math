# Verification target: GRWTSK.Algebra.LinearAlgebra.Quotient.Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12870239cd138485283f4215f779a049479a713e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12870239cd138485283f4215f779a049479a713e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientTensorQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorquotientequiv--787fdf1f50505172837e7772.md) | 59 | `declaration-track:787fdf1f50505172837e7772c4432e307eccf4d22555dabe76c00cb674dd65f8` |
| 2 | `lemma` | [quotientTensorQuotientEquiv_apply_tmul_mk_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorquotientequiv-apply-tmul-mk-tmul-mk--641bb210fa4d4bc6b04a8e4a.md) | 90 | `result-track:641bb210fa4d4bc6b04a8e4ae031fb58fa1729bd4675922618f1be23cbf8609f` |
| 3 | `lemma` | [quotientTensorQuotientEquiv_symm_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorquotientequiv-symm-apply-mk-tmul--80faf1e13bdc547301a5c11d.md) | 97 | `result-track:80faf1e13bdc547301a5c11d9aa224c14362b938185d46fd2fb997db6df9ff39` |
| 4 | `def` | [quotientTensorEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorequiv--44b16f1af015d73d19d22850.md) | 108 | `declaration-track:44b16f1af015d73d19d22850fae19e97fac9442f2da6dad5478d0c06cba7c84d` |
| 5 | `lemma` | [quotientTensorEquiv_apply_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorequiv-apply-tmul-mk--bab7e6551cec9ca95c6fcc40.md) | 121 | `result-track:bab7e6551cec9ca95c6fcc4089fdda8a8678dc0ed9a46444bfdb6abcd1d5b047` |
| 6 | `lemma` | [quotientTensorEquiv_symm_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quotienttensorequiv-symm-apply-mk-tmul--6370beb4b73ea6f679393945.md) | 127 | `result-track:6370beb4b73ea6f679393945d11172d76dfbc441fa3ddebba03ea3e02cf85ec0` |
| 7 | `def` | [tensorQuotientEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotientequiv--f6c2355af558bda10006cf9b.md) | 138 | `declaration-track:f6c2355af558bda10006cf9b3c091d655f9fb9ce1dd8e8e1f668b35685f96403` |
| 8 | `lemma` | [tensorQuotientEquiv_apply_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotientequiv-apply-mk-tmul--8c3b84556333e57bced0af22.md) | 151 | `result-track:8c3b84556333e57bced0af22bd09c9ffc465d6ea58a7b0669c6c7462dd79bf3e` |
| 9 | `lemma` | [tensorQuotientEquiv_symm_apply_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotientequiv-symm-apply-tmul-mk--d2d1b6686b1d5a5137afb9a8.md) | 157 | `result-track:d2d1b6686b1d5a5137afb9a8de1e2a756877903188103ec1554fa088e3079dfe` |
| 10 | `def` | [quotTensorEquivQuotSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul--f88769033342cf07346c1cb9.md) | 165 | `declaration-track:f88769033342cf07346c1cb97064a90d4ab38bcd7457ddd1de08fef3efffc31e` |
| 11 | `def` | [tensorQuotEquivQuotSMul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul--4da11287746a3150f8cb4de8.md) | 177 | `declaration-track:4da11287746a3150f8cb4de87a88d51caacaa546636d91a395711fe7dd719d4d` |
| 12 | `lemma` | [quotTensorEquivQuotSMul_mk_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul-mk-tmul--c24200d998bd14c31a291bdd.md) | 182 | `result-track:c24200d998bd14c31a291bdd825c456447749bb71860590adf0103cec4bbead3` |
| 13 | `lemma` | [quotTensorEquivQuotSMul_comp_mkQ_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul-comp-mkq-rtensor--4c156457ed6cfc82066e1087.md) | 192 | `result-track:4c156457ed6cfc82066e1087e664d01cd4be84df45dbbc1c0d6f2b11c03d6cfe` |
| 14 | `lemma` | [quotTensorEquivQuotSMul_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul-symm-mk--ed0104de69a6374cc6d2ff74.md) | 198 | `result-track:ed0104de69a6374cc6d2ff748a88881b37651313744c8b34d3e5b43d978710eb` |
| 15 | `lemma` | [quotTensorEquivQuotSMul_symm_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul-symm-comp-mkq--6515ffc1ef83480738f63155.md) | 202 | `result-track:6515ffc1ef83480738f63155db3c2616e2a2f3a173c7820b520639a19f5cebeb` |
| 16 | `lemma` | [quotTensorEquivQuotSMul_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/quottensorequivquotsmul-comp-mk--3dedfe9be5fe047af2f92472.md) | 207 | `result-track:3dedfe9be5fe047af2f92472e9279fe7494fd79e0a334a646f4b7a106a825a32` |
| 17 | `lemma` | [tensorQuotEquivQuotSMul_tmul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul-tmul-mk--9a791238d2c611f9f1b1501c.md) | 214 | `result-track:9a791238d2c611f9f1b1501c81f30ace1e96947c0e6f53f9ac3715c64c79388c` |
| 18 | `lemma` | [tensorQuotEquivQuotSMul_comp_mkQ_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul-comp-mkq-ltensor--da8780aef0eacc73f55248b9.md) | 219 | `result-track:da8780aef0eacc73f55248b9768249b5d564e483d1f76b25de44bd5773007eec` |
| 19 | `lemma` | [tensorQuotEquivQuotSMul_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul-symm-mk--76c92fe73b7dc5141ea4e4f1.md) | 225 | `result-track:76c92fe73b7dc5141ea4e4f1eea186af977b07db7cd1b4467d2456f165407fca` |
| 20 | `lemma` | [tensorQuotEquivQuotSMul_symm_comp_mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul-symm-comp-mkq--6d62f7a9789f5e202bf348e1.md) | 229 | `result-track:6d62f7a9789f5e202bf348e10bfcc4e69f852a81d70466ce01cb43e46ef89787` |
| 21 | `lemma` | [tensorQuotEquivQuotSMul_comp_mk](../../../../../mathematics/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/declarations/tensorquotequivquotsmul-comp-mk--5e0aef893b68b470851add75.md) | 234 | `result-track:5e0aef893b68b470851add755ef4311941430e84df119b270c8353ea271f5ea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
