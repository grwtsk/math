# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyLocalInvariants

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e62ba9766505dca08ca77670f77fa7637cf45e2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e62ba9766505dca08ca77670f77fa7637cf45e2`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [freyWeierstrassInt_c4](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/freyweierstrassint-c4--8523a866387c623c0d31f02c.md) | 16 | `result-track:8523a866387c623c0d31f02c9f86ab744946aeb4dff1185d28dd44ab3ca0fa9c` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_c4](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyintegralmodel-c4--cf2269aa87f904f3ea1677ee.md) | 23 | `result-track:cf2269aa87f904f3ea1677ee1b98bb4980f8fe05369a5d54a3e78bbf8f802de5` |
| 3 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_delta_as_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyintegralmodel-delta-as-square--d14a534f5f661a13ee511783.md) | 30 | `result-track:d14a534f5f661a13ee51178318c3cbdc5a44f89f14e8e09d320afe76dca135aa` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_square_dvd_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyintegralmodel-square-dvd-delta--0d833bb275ada5aee053e9ef.md) | 38 | `result-track:0d833bb275ada5aee053e9ef1c01550aaaa7a7b1deac3e44e8c1428cda5d759b` |
| 5 | `lemma` | [frey_sixteen_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/frey-sixteen-ne-zero--99fa987f0164ce5483a0925f.md) | 47 | `result-track:99fa987f0164ce5483a0925f967412770b187290a6a29a480d1b7999e39cc246` |
| 6 | `theorem` | [frey_c4_ne_zero_of_product_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/frey-c4-ne-zero-of-product-zero--0f4f4fe8d94c17cc174b74b7.md) | 55 | `result-track:0f4f4fe8d94c17cc174b74b7e111498c40662fae8d61cd65498c65a4f6b4e1f8` |
| 7 | `def` | [PrimitiveAdditiveTriple.freyResidueModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel--f5ebf97bb95664366a071c34.md) | 74 | `declaration-track:f5ebf97bb95664366a071c34431098832e3578fbccdf1279dae093e920c259b5` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_delta_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-delta-cast--6e81e9eb7f3c09edd03aafc7.md) | 79 | `result-track:6e81e9eb7f3c09edd03aafc7dfb8ac2c424dec0730e18c4ae0cad6f0e57c2ae4` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_c4_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-c4-cast--0014f72be2d42c9db6c8f0ed.md) | 85 | `result-track:0014f72be2d42c9db6c8f0ed2954f553db2ace34198e5d5ea72cab575fedc2ee` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-delta--0896bf07a74953c37a9cc741.md) | 91 | `result-track:0896bf07a74953c37a9cc7417f2c224c7327eb14d32c949db39f882c4417e7fd` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_c4](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-c4--ad5e8114ae6c986d5579dc57.md) | 99 | `result-track:ad5e8114ae6c986d5579dc570419abb0a11b9230ba91160da8fe4ba758f61a81` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyResidueParameters_nonzero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresidueparameters-nonzero--4524f5aa1bcd29ed2f5a285a.md) | 109 | `result-track:4524f5aa1bcd29ed2f5a285a26fc4d5ce171f8a80b85e7a0847ab34416bdfd44` |
| 13 | `lemma` | [frey_two_ne_zero_mod](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/frey-two-ne-zero-mod--8bd6f602d78906f8c0afdc0a.md) | 120 | `result-track:8bd6f602d78906f8c0afdc0a4b9f95b111825cd76a282ab99fdfd1fbdb9954c5` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_delta_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-delta-zero-iff--dd84a7a8ea00ac75d4e8d370.md) | 128 | `result-track:dd84a7a8ea00ac75d4e8d3702b36a60fa2e718cceeb3f641860aecc3ad2febd0` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_prime_dvd_delta_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyintegralmodel-prime-dvd-delta-iff--b73c8c0947aa1f2328eecfd0.md) | 141 | `result-track:b73c8c0947aa1f2328eecfd066bd88c25207352b3bb3bad05c519fe6d1068e0b` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_isElliptic_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-iselliptic-iff--2dbd20db8e6752f273122807.md) | 150 | `result-track:2dbd20db8e6752f27312280768d2b6e7816e2e64e6a0b782969dd4c8c5b105b4` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyResidueModel_c4_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyresiduemodel-c4-ne-zero--5514393b66eb1d7aa1c916f4.md) | 161 | `result-track:5514393b66eb1d7aa1c916f49c7b37cc1e48759a5b9b6d9dc886d04be147bc9b` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_prime_not_dvd_c4](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/declarations/primitiveadditivetriple-freyintegralmodel-prime-not-dvd-c4--697d49b841377cc569ad5862.md) | 177 | `result-track:697d49b841377cc569ad586227d1b62747aa21719ae6ba4a6bf5d80e30d9f924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
