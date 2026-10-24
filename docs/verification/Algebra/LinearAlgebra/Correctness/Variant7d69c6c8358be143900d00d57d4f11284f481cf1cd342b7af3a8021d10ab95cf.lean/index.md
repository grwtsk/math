# Verification target: GRWTSK.Algebra.LinearAlgebra.Correctness.Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "369e038c276f1f9c93b827fb10e121845c466086",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `369e038c276f1f9c93b827fb10e121845c466086`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sumFrom_eq_sum_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/sumfrom-eq-sum-ico--5ba22580c71142d48b05744e.md) | 57 | `result-track:5ba22580c71142d48b05744e42035b98fb280a39adfafb20f96042da45fd03bf` |
| 2 | `theorem` | [sumFrom_fin_tail](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/sumfrom-fin-tail--be6a046673bf9835e8dc81fa.md) | 63 | `result-track:be6a046673bf9835e8dc81faee701073eae8aea489be95d59246689a4d6da51f` |
| 3 | `theorem` | [iterate_stepEntry_get_eq_spec](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/iterate-stepentry-get-eq-spec--aba68f27dfdc926d309fa322.md) | 73 | `result-track:aba68f27dfdc926d309fa32235bbe8b0310667a902fd056b90d9015f34fcf506` |
| 4 | `theorem` | [birdDet_eq_birdDetSpec](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/birddet-eq-birddetspec--9a210b521f7e0fb2f970e0b8.md) | 85 | `result-track:9a210b521f7e0fb2f970e0b82c65da80b0b0ac770b3ecd65c4ad99fb28e99ec6` |
| 5 | `abbrev` | [bminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/bminor--7383626427925af5f4f941a6.md) | 94 | `declaration-track:7383626427925af5f4f941a67a15bd6f6d987281a08c20a4911b63f327b43fce` |
| 6 | `abbrev` | [pminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/pminor--5581008685f6543b6b50fad1.md) | 98 | `declaration-track:5581008685f6543b6b50fad17cc0c8aa4865c7fa94a168ea8d3e83bd00d31f4e` |
| 7 | `lemma` | [det_submatrix_removeNth_eq_sign_mul_bminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/det-submatrix-removenth-eq-sign-mul-bminor--90f97c5cf937fb295270e47f.md) | 101 | `result-track:90f97c5cf937fb295270e47f0ca6367d34cc32cdd45a206ce0da452f776b98ab` |
| 8 | `theorem` | [det_bordered_expand](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/det-bordered-expand--5865102b6cb4b720d14f1e06.md) | 115 | `result-track:5865102b6cb4b720d14f1e068663416c22b15df83bfb0402525fd5e66ddb9a48` |
| 9 | `theorem` | [bminor_eq_zero_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/bminor-eq-zero-of-mem-range--5ff320891a3a182cbbf8c4c5.md) | 135 | `result-track:5ff320891a3a182cbbf8c4c5efca7678dcdb801e9195ad7e9c8de5f650b775b2` |
| 10 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/s--d1a5817f58ac76c736639c0f.md) | 143 | `declaration-track:d1a5817f58ac76c736639c0f6eb080410ba2127159df6b9d3a9b68cac5086926` |
| 11 | `theorem` | [mem_S_iff](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/mem-s-iff--b3948126cc3782a935fe8da8.md) | 147 | `result-track:b3948126cc3782a935fe8da824024f7f72d1292c0d53931b6b1fb6b62e3c853e` |
| 12 | `theorem` | [S_zero](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/s-zero--7de43d589ecf762c78f0fdc4.md) | 153 | `result-track:7de43d589ecf762c78f0fdc4cd07b89329320f8de4849c70126e3bd94661caec` |
| 13 | `lemma` | [S_zero_eq_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/s-zero-eq-singleton--a1f0b9164db18379a0315052.md) | 157 | `result-track:a1f0b9164db18379a0315052e18997b522fcc3d47d6d3888c48e4f08109cdc53` |
| 14 | `theorem` | [S_succ_eq_biUnion](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/s-succ-eq-biunion--c57161aedda424043e779c57.md) | 163 | `result-track:c57161aedda424043e779c57bf84ffce22be525a554283ef017f3d484e940491` |
| 15 | `lemma` | [exists_insertNth_mem_S](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/exists-insertnth-mem-s--12355126eda842f2c55ee50f.md) | 175 | `result-track:12355126eda842f2c55ee50f5b7a514b5675ab4eaf7d1a7505f2f4c181c941e2` |
| 16 | `abbrev` | [Eq1](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/eq1--6770c4c0703480f71dde8625.md) | 196 | `declaration-track:6770c4c0703480f71dde8625dfe34280003ef3eb2a81fc6a10f412dab2966493` |
| 17 | `theorem` | [paper_eq2](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/paper-eq2--9bbd814be98704a4bb48a255.md) | 202 | `result-track:9bbd814be98704a4bb48a2556638f42396694410c6f0b5253318dc237989dab2` |
| 18 | `theorem` | [paper_eq3](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/paper-eq3--9fa4f0103c8e162bd89910e8.md) | 218 | `result-track:9fa4f0103c8e162bd89910e8fe90238867ee4cde1731d290da20eb40cf7f3def` |
| 19 | `theorem` | [paper_eq5](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/paper-eq5--ef23a742d48e5a261fd773b2.md) | 229 | `result-track:ef23a742d48e5a261fd773b21fd4e6f9f53b6566f07c86a24bd655ef3a64f4d7` |
| 20 | `theorem` | [paper_eq3_eq5_off_diag](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/paper-eq3-eq5-off-diag--35aa97df6da2235c36908388.md) | 243 | `result-track:35aa97df6da2235c369083889189cbbc145392270db6a6a1a0a2ea27db63d884` |
| 21 | `theorem` | [paper_eq1](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/paper-eq1--25de1d1c5874dd9db1322599.md) | 287 | `result-track:25de1d1c5874dd9db13225994aaaa61f4b9a44adc00f0546fd208f43fe9fe435` |
| 22 | `theorem` | [birdDetSpec_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/birddetspec-eq-det--897709c829348b79397b7751.md) | 299 | `result-track:897709c829348b79397b7751c1e069c99131abf6b7c818ed9af237f90c8119d6` |
| 23 | `theorem` | [det_eq_birdDet](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant7d69c6c8358be143900d00d57d4f11284f481cf1cd342b7af3a8021d10ab95cf.lean/declarations/det-eq-birddet--7d81575e8ad95133c6785a5a.md) | 309 | `result-track:7d81575e8ad95133c6785a5a28dbaaaef1064a6d6f3430680e8275605b1daa2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
