# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Degree.Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98056af481fece91c91512c760fafa375ba266bc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98056af481fece91c91512c760fafa375ba266bc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Coeff` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-eq-sum-range--838e7fda1d61849751b05dcf.md) | 48 | `result-track:838e7fda1d61849751b05dcfa640a0dc225259da677b83eeb6361c1da8118cd6` |
| 2 | `theorem` | [eval₂_eq_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-eq-sum-range--fef22930b1bb40bb9a7137c3.md) | 53 | `result-track:fef22930b1bb40bb9a7137c39630989719d961d180a0ba19afd23e3cc1f1d8f3` |
| 3 | `theorem` | [eval_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-eq-sum-range--a0c5200f15ae5ed89b2bec15.md) | 67 | `result-track:a0c5200f15ae5ed89b2bec15e0867c6ecb687360ec56e5c666e64f1745320a2c` |
| 4 | `theorem` | [eval_eq_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-eq-sum-range--71c5308aea4de08692e749af.md) | 71 | `result-track:71c5308aea4de08692e749af9bbbd9eb3a6dc2eb15121292a3bdab455eb8ee1c` |
| 5 | `theorem` | [eval_monomial_one_add_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-monomial-one-add-sub--d082c0602a7eb44d83b8b625.md) | 78 | `result-track:d082c0602a7eb44d83b8b625bfceafaa5b68237e3c012cd6156d5f8d979b328e` |
| 6 | `theorem` | [coeff_comp_degree_mul_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/coeff-comp-degree-mul-degree--0f4ab84377b6a5dc0a6d9c27.md) | 94 | `result-track:0f4ab84377b6a5dc0a6d9c275cb6b609c82c4abee699eaaef0887174aebb0545` |
| 7 | `lemma` | [comp_C_mul_X_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/comp-c-mul-x-coeff--902308a5da7ea2bbde5bbb6f.md) | 110 | `result-track:902308a5da7ea2bbde5bbb6f57c9cf442ea9e02f6ddf54bbbfe239c2e32839f2` |
| 8 | `lemma` | [comp_C_mul_X_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/comp-c-mul-x-eq-zero-iff--fef6400d0e28dba9e036ee6e.md) | 119 | `result-track:fef6400d0e28dba9e036ee6ef540977b18691e7a81589de1ddc62bad6634ae46` |
| 9 | `def` | [mapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/mapequiv--28fa987b28990993fe569fd5.md) | 134 | `declaration-track:28fa987b28990993fe569fd5d3afd97b6e9ee82f131532a4a990010fb31fff05` |
| 10 | `theorem` | [map_monic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/map-monic-eq-zero-iff--fe947f9b0dec5a3ee2b7b4b4.md) | 138 | `result-track:fe947f9b0dec5a3ee2b7b4b43733fbc5d1063076543b348b1c803d093a9927a5` |
| 11 | `theorem` | [map_monic_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/map-monic-ne-zero--f14d0d06873b18ad25eed981.md) | 147 | `result-track:f14d0d06873b18ad25eed9813c5d21c5205205a21a484afbd5ac2bdfc1f50a1f` |
| 12 | `lemma` | [degree_map_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/degree-map-le--a410ec59b539eccc4214ed67.md) | 150 | `result-track:a410ec59b539eccc4214ed671415de5a4ff03837d7155ad1afd15d799cab72c6` |
| 13 | `lemma` | [natDegree_map_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/natdegree-map-le--537aedaba59c3e61c9fd442a.md) | 155 | `result-track:537aedaba59c3e61c9fd442abc10fc7e9dd5fbf22419cd22ffedc44d40c68380` |
| 14 | `lemma` | [degree_map_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/degree-map-lt--041d0a970186c701e8788a44.md) | 157 | `result-track:041d0a970186c701e8788a4425e179407d9ea288205a82583d3c41d524238215` |
| 15 | `lemma` | [natDegree_map_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/natdegree-map-lt--9316add9feb9dd130f239a54.md) | 163 | `result-track:9316add9feb9dd130f239a540300f70084bd73dc55402df0c914d35a10808aba` |
| 16 | `lemma` | [natDegree_map_lt'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/natdegree-map-lt--36d38fc9876fd97c38370a53.md) | 168 | `result-track:36d38fc9876fd97c38370a53fda01dfe82dcd2ec65bab52574fd7d1f0d831dd0` |
| 17 | `theorem` | [degree_map_eq_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/degree-map-eq-of-leadingcoeff-ne-zero--33ce8474b725b3b2ed37cb46.md) | 174 | `result-track:33ce8474b725b3b2ed37cb46f2b2898ab2595b041c5f59cff060f1805f84730e` |
| 18 | `theorem` | [natDegree_map_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/natdegree-map-of-leadingcoeff-ne-zero--3fedeeb792b97ebf1719b94c.md) | 184 | `result-track:3fedeeb792b97ebf1719b94cacb86937f27b8da16a57d54c2383566e600ca19c` |
| 19 | `theorem` | [leadingCoeff_map_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/leadingcoeff-map-of-leadingcoeff-ne-zero--ec85a8ec239575df77daee95.md) | 188 | `result-track:ec85a8ec239575df77daee9528385ebc410104d91b884af71a0dcbb271cd3bd6` |
| 20 | `theorem` | [eval₂_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/eval-comp--47ec7836894d4a4f84390bfe.md) | 205 | `result-track:47ec7836894d4a4f84390bfeb9502cb4c86d511855a6bfbc6087c14cb9d4078d` |
| 21 | `theorem` | [iterate_comp_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/iterate-comp-eval--0e69c046a165dd34f6a53543.md) | 209 | `result-track:0e69c046a165dd34f6a53543c5ee6c464efd8dff5c168865cd273e92f302a248` |
| 22 | `theorem` | [iterate_comp_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/iterate-comp-eval--b345987e990802f21154ff20.md) | 222 | `result-track:b345987e990802f21154ff20e66628030c6910c9f4a0105bc81be736246b1607` |
| 23 | `lemma` | [isUnit_of_isUnit_leadingCoeff_of_isUnit_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant3b9761d480ed0dc0460ef25fba090435c955e2df835985a32e304283effc4ba8.lean/declarations/isunit-of-isunit-leadingcoeff-of-isunit-map--4c3c8430ed492ef11031812b.md) | 235 | `result-track:4c3c8430ed492ef11031812b6cbc7f480a89c2e714f3d50ae8f1db93b78a07f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
