# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74706ebff826b23edb6c51e9030fc7b4f88143f7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74706ebff826b23edb6c51e9030fc7b4f88143f7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/rtensoralgequiv--7693287d3cb1b2d27b65c7e4.md) | 75 | `declaration-track:7693287d3cb1b2d27b65c7e4a30408fce7232c17b4b351edd36409f1041eab87` |
| 2 | `lemma` | [coeff_rTensorAlgEquiv_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/coeff-rtensoralgequiv-tmul--0d26f9f40bc94845db7d7bdd.md) | 81 | `result-track:0d26f9f40bc94845db7d7bdd1b20ad35c4dc3059d26e3f23c23c81a9471a4480` |
| 3 | `lemma` | [coeff_rTensorAlgEquiv_monomial_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/coeff-rtensoralgequiv-monomial-tmul--9ca1a68c77ec762c97c2d87d.md) | 85 | `result-track:9ca1a68c77ec762c97c2d87d9cd5771a5fd6305c5c68a272e70d1c9aecf77508` |
| 4 | `lemma` | [rTensorAlgEquiv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/rtensoralgequiv-apply--b47ca2989c6eb273d0f9bb9a.md) | 91 | `result-track:b47ca2989c6eb273d0f9bb9a3f0cfd9a3ce68cc138028fcfbe8b40545d58e17d` |
| 5 | `def` | [scalarRTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/scalarrtensoralgequiv--6f6b7ae95bd1ff22c80d5d14.md) | 97 | `declaration-track:6f6b7ae95bd1ff22c80d5d14dfebfb88d8c9b0cafc7c7388c69d2949231edac6` |
| 6 | `def` | [algebraTensorAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv--44dfe5a176395c2b721113f5.md) | 105 | `declaration-track:44dfe5a176395c2b721113f5f9a67b3c458962afa6e01b924dd253ec7df66210` |
| 7 | `lemma` | [algebraTensorAlgEquiv_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv-tmul--4dcf2d0540b77115d77b8464.md) | 110 | `result-track:4dcf2d0540b77115d77b8464fb5815fdceb67e83a54e3a3918a117584c49803e` |
| 8 | `lemma` | [algebraTensorAlgEquiv_symm_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv-symm-x--895ddcab32933e06d6e83dc6.md) | 115 | `result-track:895ddcab32933e06d6e83dc64bd4b997869ac94173d01244d782783991f8703a` |
| 9 | `lemma` | [algebraTensorAlgEquiv_symm_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv-symm-monomial--d427faac0f91c5f346c479ed.md) | 120 | `result-track:d427faac0f91c5f346c479ed82ca0164df5a416743b962e4b0715bc43a37f575` |
| 10 | `lemma` | [algebraTensorAlgEquiv_symm_comp_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv-symm-comp-aeval--8978c9b82b874c883386cbfe.md) | 125 | `result-track:8978c9b82b874c883386cbfe087af673e333f2ac00801beb1be174066439c54c` |
| 11 | `lemma` | [algebraTensorAlgEquiv_symm_map](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/algebratensoralgequiv-symm-map--212129a2c82c198a4f840a36.md) | 132 | `result-track:212129a2c82c198a4f840a3648a90dcc395814737a4a2726ab5c3c07e1bf7da7` |
| 12 | `lemma` | [aeval_one_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/aeval-one-tmul--9c51e15f30be5859b11ae613.md) | 136 | `result-track:9c51e15f30be5859b11ae613669117a58d150e866b034bc720ccebd915ca1636` |
| 13 | `def` | [tensorEquivSum](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum--5854c736dbc3205aae13f7a3.md) | 147 | `declaration-track:5854c736dbc3205aae13f7a31f556193ac1b24be6678bb4ec28ffe047af02be2` |
| 14 | `lemma` | [tensorEquivSum_X_tmul_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-x-tmul-one--cc3ab88a034dcd525ed61a0d.md) | 156 | `result-track:cc3ab88a034dcd525ed61a0d35a747a98356be1cb8c6c7a39580f1e953a0676e` |
| 15 | `lemma` | [tensorEquivSum_C_tmul_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-c-tmul-one--67b22f538d8803ef9084d7bb.md) | 160 | `result-track:67b22f538d8803ef9084d7bb9b36c9e46c274a39b764fb870fc328782c2b80f0` |
| 16 | `lemma` | [tensorEquivSum_one_tmul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-one-tmul-x--8d07782112e4cf18f91cf76e.md) | 164 | `result-track:8d07782112e4cf18f91cf76e7416c98f5d5ca72c2f989b00e7707d44df9b051d` |
| 17 | `lemma` | [tensorEquivSum_one_tmul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-one-tmul-c--f64ddf85e1012f0bb523756d.md) | 168 | `result-track:f64ddf85e1012f0bb523756df68b771660e5eaf61f02a11ba39646930da88dc2` |
| 18 | `lemma` | [tensorEquivSum_C_tmul_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-c-tmul-c--c8148af1bcc31ab061849d82.md) | 172 | `result-track:c8148af1bcc31ab061849d8211e8a4c40b8115f47dc0de0b70d3f625ca55fc38` |
| 19 | `lemma` | [tensorEquivSum_X_tmul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/tensorequivsum-x-tmul-x--0f6fba3a4dab9faf7cb927b5.md) | 177 | `result-track:0f6fba3a4dab9faf7cb927b5087ca461c6ab076ace8998712b0c958248a04ba2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/instance--682b458ec1ac84800dfb547d.md) | 186 | `declaration-track:682b458ec1ac84800dfb547d8e1d0858b99689e7c8cad8f576fa1831b46f0daf` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantd6a183ef2e102d675e61714280cdfdc14d6105d4707dd7b839cad372451aeaed.lean/declarations/instance--c6eba2f2f66c3fa40f46aed5.md) | 189 | `declaration-track:c6eba2f2f66c3fa40f46aed5b2ecf2cd28315709f99b6a4139a8e4e774f30033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
