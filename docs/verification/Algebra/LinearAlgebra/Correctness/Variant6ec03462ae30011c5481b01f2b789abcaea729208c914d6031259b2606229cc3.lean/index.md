# Verification target: GRWTSK.Algebra.LinearAlgebra.Correctness.Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f98f76ca23c341bb414c078924844019b84c61",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f98f76ca23c341bb414c078924844019b84c61`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sumFrom_eq_sum_Ico](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/sumfrom-eq-sum-ico--d220f078e4aab6ac06251d49.md) | 49 | `result-track:d220f078e4aab6ac06251d4996a5c80b75607be009fdcb4810ccc2bcf160d640` |
| 2 | `theorem` | [sumFrom_fin_tail](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/sumfrom-fin-tail--df2b3291c77989c59287213a.md) | 55 | `result-track:df2b3291c77989c59287213aaee6a69a27090df87d488e43e3a62d062aa476ec` |
| 3 | `theorem` | [iterate_stepEntry_get_eq_spec](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/iterate-stepentry-get-eq-spec--ffcbca0f04bd01848097c45b.md) | 65 | `result-track:ffcbca0f04bd01848097c45b508a4fd8ce85ea17baec88c3597bc5a522b8e7bd` |
| 4 | `theorem` | [birdDet_eq_birdDetSpec](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/birddet-eq-birddetspec--b444ad9e2517535e2df8eb86.md) | 77 | `result-track:b444ad9e2517535e2df8eb86e1e464e590459206962de72503431dba94589e35` |
| 5 | `abbrev` | [bminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/bminor--415e39bf2a39aa928bd90496.md) | 86 | `declaration-track:415e39bf2a39aa928bd90496974279b0c57ff94a406e2ada58daf4581fa0ca7c` |
| 6 | `abbrev` | [pminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/pminor--3aee4f9ad58d739d29c9763f.md) | 90 | `declaration-track:3aee4f9ad58d739d29c9763fbe4e1cf2a4b0587ca51310ad44ab178dea53889e` |
| 7 | `lemma` | [det_submatrix_removeNth_eq_sign_mul_bminor](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/det-submatrix-removenth-eq-sign-mul-bminor--23663e50f8131e5ebfd591bf.md) | 93 | `result-track:23663e50f8131e5ebfd591bf9a177b639af1275b31f40dfd5e66122bb9f5da59` |
| 8 | `theorem` | [det_bordered_expand](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/det-bordered-expand--4d7a78afeba46bedff52c350.md) | 107 | `result-track:4d7a78afeba46bedff52c350ee3076aadf6c332bb1ad4f47f8ff2cfd8db2b294` |
| 9 | `theorem` | [bminor_eq_zero_of_mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/bminor-eq-zero-of-mem-range--02e0f8f5c1be79f167c2030a.md) | 127 | `result-track:02e0f8f5c1be79f167c2030a42759ee0dbbcd60fb2a1038ba84b8ed3e5d9ed5a` |
| 10 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/s--acfed0e485660911ee00da90.md) | 135 | `declaration-track:acfed0e485660911ee00da905e6babb628879d56ffb1c3476a9c0a2a1189b8ea` |
| 11 | `theorem` | [mem_S_iff](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/mem-s-iff--5ded1d4696f4145db4d14e2e.md) | 139 | `result-track:5ded1d4696f4145db4d14e2e5d76e433bce5b2872ba3a245ee10b7876e9f707e` |
| 12 | `theorem` | [S_zero](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/s-zero--b845dfe7e46deb747564f866.md) | 145 | `result-track:b845dfe7e46deb747564f86634a2100c1a1a3ba4758be9b5e7b9a358d285c1fb` |
| 13 | `lemma` | [S_zero_eq_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/s-zero-eq-singleton--b214350713e48bbd795c9f76.md) | 149 | `result-track:b214350713e48bbd795c9f76e4aebbf98bebff37b5be5c090b38645d2c289dd3` |
| 14 | `theorem` | [S_succ_eq_biUnion](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/s-succ-eq-biunion--fb50eea11b5b86b828901f43.md) | 155 | `result-track:fb50eea11b5b86b828901f4374aa1455d68e171a8b4ecaaf724c457db8a122d4` |
| 15 | `lemma` | [exists_insertNth_mem_S](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/exists-insertnth-mem-s--9cf173ef2ff04bfe42d7bf77.md) | 167 | `result-track:9cf173ef2ff04bfe42d7bf77c34ab208c92643c50527df09b6a8e9c56e1f9bf0` |
| 16 | `abbrev` | [Eq1](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/eq1--8ed503160bf3715a217da112.md) | 188 | `declaration-track:8ed503160bf3715a217da1126d65ac7270aa8d99b02dc166c17068c77d883f1b` |
| 17 | `theorem` | [paper_eq2](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/paper-eq2--e4673c36e25d6204ac160c46.md) | 194 | `result-track:e4673c36e25d6204ac160c4607d789918c0122d7116445797db6fb5f49df4fc9` |
| 18 | `theorem` | [paper_eq3](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/paper-eq3--ffce42b8b7f9c5852b9b136b.md) | 210 | `result-track:ffce42b8b7f9c5852b9b136bb5b3f2a6ad77cca5ddd1690aeeeb61a068a4b94f` |
| 19 | `theorem` | [paper_eq5](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/paper-eq5--97a3d834e4e26b102b9e2808.md) | 221 | `result-track:97a3d834e4e26b102b9e28085bfd8587a841421136faf29898897e56ddc24e89` |
| 20 | `theorem` | [paper_eq3_eq5_off_diag](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/paper-eq3-eq5-off-diag--09e9fc235bbb5d638a533126.md) | 235 | `result-track:09e9fc235bbb5d638a53312698c921bfdcdd5da432e48a26e9f6c43a57c79672` |
| 21 | `theorem` | [paper_eq1](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/paper-eq1--6a128fedbf4143b000f2e077.md) | 279 | `result-track:6a128fedbf4143b000f2e077f2a44f1f33a7b17303e8588d0671aa111c3256f1` |
| 22 | `theorem` | [birdDetSpec_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/birddetspec-eq-det--ba346098b42bec8b86ce25d8.md) | 291 | `result-track:ba346098b42bec8b86ce25d80ab5d85107574d4ff72326dc005964c1f270fe42` |
| 23 | `theorem` | [det_eq_birdDet](../../../../../mathematics/Algebra/LinearAlgebra/Correctness/Variant6ec03462ae30011c5481b01f2b789abcaea729208c914d6031259b2606229cc3.lean/declarations/det-eq-birddet--3c17f0de5767bff82202f78c.md) | 301 | `result-track:3c17f0de5767bff82202f78c012d0d5cfcc76efde5b9e1b710e5d5f62b6e0f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
