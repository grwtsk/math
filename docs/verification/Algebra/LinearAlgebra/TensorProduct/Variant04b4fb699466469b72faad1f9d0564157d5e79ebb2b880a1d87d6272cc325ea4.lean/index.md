# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7eac63ea1cc085bad1233319cccaadb07beaeb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7eac63ea1cc085bad1233319cccaadb07beaeb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/instcoalgebrastruct--d18e611b23642cd1ad017f41.md) | 32 | `declaration-track:d18e611b23642cd1ad017f410fe5ce3bd88d644b3d4c3e80565157cbeb2842b2` |
| 2 | `lemma` | [comul_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/comul-def--f2d2fda975d4d1493a96b739.md) | 38 | `result-track:f2d2fda975d4d1493a96b739adc3a6fd74b4acc1a1d400eb6951c6367b3862e5` |
| 3 | `lemma` | [counit_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/counit-def--121402d090b534aa54cbca0e.md) | 46 | `result-track:121402d090b534aa54cbca0ea573d51caf3372d89fb0039afe1d8357d549ddea` |
| 4 | `lemma` | [comul_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/comul-tmul--f00b79650b6a9d3cd4764c5b.md) | 54 | `result-track:f00b79650b6a9d3cd4764c5b801421ca528e0ed7de71ee3cbb2d3fc678117419` |
| 5 | `lemma` | [counit_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/counit-tmul--068c7ffbf3176128a7c0554a.md) | 59 | `result-track:068c7ffbf3176128a7c0554aea69fd0e03d813b95797260b6da9a4a1eac64986` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/macro--cd82e570040352a7f78b89aa.md) | 66 | `declaration-track:cd82e570040352a7f78b89aa9277a7d1d70848449a82101746a8652d96844cba` |
| 7 | `lemma` | [coassoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/coassoc--f19dabbfc9b8d70c775f3db9.md) | 77 | `result-track:f19dabbfc9b8d70c775f3db9e3aa97adf5f4ccaf473aef6d25320f04d218949b` |
| 8 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/instcoalgebra--dd054c67aeab51c8208c82d0.md) | 110 | `declaration-track:dd054c67aeab51c8208c82d08289769efb5ba9a90cefd64f446a6e783559815c` |
| 9 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/map--c2e1890a17415dabbdd69c26.md) | 152 | `declaration-track:c2e1890a17415dabbdd69c26485685c180807480b95c3dd7f04f67d0d3757ede` |
| 10 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/map-tmul--42e2065a395926e55fecbd83.md) | 165 | `result-track:42e2065a395926e55fecbd8366618dab54db48dd94225c27695a468b2faddfc1` |
| 11 | `theorem` | [map_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/map-tolinearmap--4fb89a025e3eacbfcf24dccb.md) | 170 | `result-track:4fb89a025e3eacbfcf24dccbfc2b0e974b51f2dbe915f8c936f1471b359a8440` |
| 12 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/assoc--852ba86ed843ef32fa9a5cae.md) | 176 | `declaration-track:852ba86ed843ef32fa9a5cae05f380619bfd2208a021ab18f6d66be0fd3e50a3` |
| 13 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/assoc-tmul--d49f6f248eab641e5e247bb1.md) | 191 | `result-track:d49f6f248eab641e5e247bb1cc73aac2e268ec571e10affdbe9647eaf097cbf4` |
| 14 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/assoc-symm-tmul--6204fb284e6398689bb66796.md) | 196 | `result-track:6204fb284e6398689bb66796b44ca49fd0ed82d3b84a928d4e299b7c365faa31` |
| 15 | `theorem` | [assoc_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/assoc-tolinearequiv--28854be036685eda7e879f85.md) | 201 | `result-track:28854be036685eda7e879f8580e772a2047af0e92b39788df3c0d973bb505a6b` |
| 16 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/lid--0200f9d61c123d3e8e51e586.md) | 208 | `declaration-track:0200f9d61c123d3e8e51e5861f21a9c6faff8add38d172ec5c9a6532b4bf1f2b` |
| 17 | `theorem` | [lid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/lid-tolinearequiv--fae81a751e771b0ba55cfe66.md) | 221 | `result-track:fae81a751e771b0ba55cfe66ed40f7817816571c286cd9747065b57f341b1046` |
| 18 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/lid-tmul--faa9536b1d11c5e69f20845f.md) | 225 | `result-track:faa9536b1d11c5e69f20845f90b3264b6cd8d8580bb5cc992e4649dfa9bbfdd2` |
| 19 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/lid-symm-apply--a2d4e4ed62d2b854b5ad8e83.md) | 228 | `result-track:a2d4e4ed62d2b854b5ad8e83f96426b6aa58be45c8c72ac5e137c78028db4d79` |
| 20 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/rid--e03f52edc2ceb20bf8a2af13.md) | 234 | `declaration-track:e03f52edc2ceb20bf8a2af13d2952afbd60ba60131e3252c93a606ec3ebcfeac` |
| 21 | `theorem` | [rid_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/rid-tolinearequiv--81bf6ec75e338380b5d50a19.md) | 247 | `result-track:81bf6ec75e338380b5d50a190a2763af9098b367d2793f10f48e519c71f8b286` |
| 22 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/rid-tmul--50290b9df46459c4f17313ed.md) | 251 | `result-track:50290b9df46459c4f17313ed6afccae0aba8a48b55b7aff9cf96b9728c1f109e` |
| 23 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/rid-symm-apply--de04f93474ab6dd1ce13e5c3.md) | 254 | `result-track:de04f93474ab6dd1ce13e5c367aa43199cbed61dc07c66fd4d1d95d876cffbb2` |
| 24 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/ltensor--fa5c6a83c636d732fdce7ba1.md) | 269 | `declaration-track:fa5c6a83c636d732fdce7ba1400763983ea362e3adce310e20dfaf1de2cbc73a` |
| 25 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/declarations/rtensor--bb81f57e41f9c1d57464fe78.md) | 273 | `declaration-track:bb81f57e41f9c1d57464fe789a73cdb6eee72ecbf14e9a9a3aa32d17a759193c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
