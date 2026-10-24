# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Opposites.Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5842f2f194ecf46196eb3e851da4c4b72f498290",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5842f2f194ecf46196eb3e851da4c4b72f498290`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv--176cdcb31a7b357ae930c976.md) | 35 | `declaration-track:176cdcb31a7b357ae930c976a90a9a78c162f65bd9ad3e60652a926e4342eef2` |
| 2 | `theorem` | [opRingEquiv_op_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-op-monomial--bed8010045efdc821ae3c4f7.md) | 43 | `result-track:bed8010045efdc821ae3c4f72d906c6553c61571588fdd8a0f8714df4f1b6810` |
| 3 | `theorem` | [opRingEquiv_op_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-op-c--4f5988fc8a02dfd2bb6ed9b5.md) | 50 | `result-track:4f5988fc8a02dfd2bb6ed9b57b3f9744a51dd0e8dd4aaeab23d4dce824c3de7a` |
| 4 | `theorem` | [opRingEquiv_op_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-op-x--5338d5ec5e3389a643c72981.md) | 54 | `result-track:5338d5ec5e3389a643c7298186a14c33251415b994a410ac51481a437f54ec1d` |
| 5 | `theorem` | [opRingEquiv_op_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-op-c-mul-x-pow--40a0358fe1733019d0ccede6.md) | 57 | `result-track:40a0358fe1733019d0ccede6d4ff5288ed3579ca9cc1f2505c794c3e96932fee` |
| 6 | `theorem` | [opRingEquiv_symm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-symm-monomial--4b5dbbc0e92b7e075fc769d4.md) | 66 | `result-track:4b5dbbc0e92b7e075fc769d4d32a490069504fce1d243b87e69e81ccb0741e4e` |
| 7 | `theorem` | [opRingEquiv_symm_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-symm-c--cfd82be3d8f33dcda0c77da4.md) | 71 | `result-track:cfd82be3d8f33dcda0c77da4c4f5cd089f696a8e5e3a796932bd63616c28cc42` |
| 8 | `theorem` | [opRingEquiv_symm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-symm-x--53caebafcc72c1aac9bf089c.md) | 75 | `result-track:53caebafcc72c1aac9bf089ca41704cb1013cf0aa8802ff51986fbaabf1b1f70` |
| 9 | `theorem` | [opRingEquiv_symm_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/opringequiv-symm-c-mul-x-pow--87b6e24dcb63ff1c17ae26ae.md) | 78 | `result-track:87b6e24dcb63ff1c17ae26aea34cc5c55981e4268a552fbabbb49710cc7c1a65` |
| 10 | `theorem` | [coeff_opRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/coeff-opringequiv--b9512fd9917b7fb20982cd3c.md) | 86 | `result-track:b9512fd9917b7fb20982cd3c1bae3f60063edcb86c52ada52f8a38977abe482f` |
| 11 | `theorem` | [support_opRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/support-opringequiv--f58eba227f6164ce79bc0e7b.md) | 93 | `result-track:f58eba227f6164ce79bc0e7bfc81029db3b742b40c3ad133a88f990666418f8d` |
| 12 | `theorem` | [natDegree_opRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/natdegree-opringequiv--9ac19621199e6518f58f7885.md) | 99 | `result-track:9ac19621199e6518f58f7885051dd0ca79572877e4a6609b882f5fdf48899592` |
| 13 | `theorem` | [leadingCoeff_opRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Opposites/Varianted50b7f84bb84b8ea8805350223d12e2f4d106025a748983c6bc226a8d78fb35.lean/declarations/leadingcoeff-opringequiv--b3a65f49efced11f4b7a958b.md) | 106 | `result-track:b3a65f49efced11f4b7a958b24a2848e364991089f66ff54b182bc5e52d899c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
