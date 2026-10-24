# Verification target: GRWTSK.Algebra.LinearAlgebra.Isomorphisms.Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728341bbd928dbbf9702a8a2dbbdb0e89c4357a8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728341bbd928dbbf9702a8a2dbbdb0e89c4357a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotkerequivrange--1857640af4a5ccd6fc28afbe.md) | 42 | `declaration-track:1857640af4a5ccd6fc28afbec00446bfc8dee4052b666ffd24716b72d8e86fe6` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotkerequivofsurjective--2a84eab326657f15bcac8ef2.md) | 48 | `declaration-track:2a84eab326657f15bcac8ef2e87a2b5f6703e3d88dfa485110ee206547a3aec5` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotkerequivrange-apply-mk--28b41e43c1b64869aebf1e0e.md) | 53 | `result-track:28b41e43c1b64869aebf1e0e6248d2043f099ad9bff3bb8f9b0dba5c6a952353` |
| 4 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotkerequivrange-symm-apply-image--75bac5aa53c4f3cc92d3a9aa.md) | 58 | `result-track:75bac5aa53c4f3cc92d3a9aa5bb2c0edb59557cbb8825df807685360c272daac` |
| 5 | `abbrev` | [subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/subtosupquotient--184416aced333157138c1362.md) | 63 | `declaration-track:184416aced333157138c1362ba1917e4249f966837feaca3ea02e4f31196e380` |
| 6 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/comap-leq-ker-subtosupquotient--73fed71daef0ae67920ac1de.md) | 67 | `result-track:73fed71daef0ae67920ac1dec9eb839003e36256006496dca1de1c072f49dabe` |
| 7 | `def` | [quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinftosupquotient--d5914f5351c47e93bbcdcc99.md) | 80 | `declaration-track:d5914f5351c47e93bbcdcc9914a33eb395afcbea018c11a2e2e5c6d42b94427e` |
| 8 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-injective--9e749ef7ab22928fca559249.md) | 85 | `result-track:9e749ef7ab22928fca5592496443e53d6ed6deead106060e98260496486e51a8` |
| 9 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-surjective--272d149dc1d9231fc2988c1c.md) | 91 | `result-track:272d149dc1d9231fc2988c1c86931ea1199bcf63a6a79400e76ec3169072af21` |
| 10 | `def` | [quotientInfEquivSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient--8e28bf0c64608792ec8cf101.md) | 106 | `declaration-track:8e28bf0c64608792ec8cf1017e22511a0e00c133e1639cd4814532d648342d7f` |
| 11 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/coe-quotientinftosupquotient--4f1d485c6a3db8ce83e28eb3.md) | 112 | `result-track:4f1d485c6a3db8ce83e28eb32b78a5e1d725235b3603c2ce2831037fe4270b2b` |
| 12 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-apply-mk--f849e8714cadefe908488c34.md) | 116 | `result-track:f849e8714cadefe908488c346284bdc62e980e5d6492310930cda0dba8421ae8` |
| 13 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-symm-apply-left--a23530c530916ab4d439f01a.md) | 122 | `result-track:a23530c530916ab4d439f01aa29358403014d871200a73f39e7b0b1433a6196f` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff--0697176fd252a02a0bdbed95.md) | 130 | `result-track:0697176fd252a02a0bdbed95c860ff4aca62ccd833fe339c4d4a03cf69502208` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientinfequivsupquotient-symm-apply-right--f8638e3684a0c047841e9dfd.md) | 134 | `result-track:f8638e3684a0c047841e9dfd534657cc9302f35867f372b230e44a8b2bf5e87f` |
| 16 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientquotientequivquotientaux--9dd71ee67c54b024c5684948.md) | 150 | `declaration-track:9dd71ee67c54b024c568494871977969e0ec4ad76170d06a572589987af466f1` |
| 17 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientquotientequivquotientaux-mk--f7045d985cd01ab525de92cb.md) | 158 | `result-track:f7045d985cd01ab525de92cb30cfe5e2a0974ebd549f6c07a56da7bb6688aae5` |
| 18 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientquotientequivquotientaux-mk-mk--98f2dc146c34fc057ddc776d.md) | 163 | `result-track:98f2dc146c34fc057ddc776d604501dc18da6ddf58bd466925ee3e7b1d277c5a` |
| 19 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientquotientequivquotient--98c238b6bfd78200ab3aff8f.md) | 167 | `declaration-track:98c238b6bfd78200ab3aff8f89feabe92547f07819931d5863e35e25e09390dc` |
| 20 | `def` | [quotientQuotientEquivQuotientSup](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/quotientquotientequivquotientsup--9e9ac7c67c1f7317febcc375.md) | 179 | `declaration-track:9e9ac7c67c1f7317febcc37532e584d2e7d89538f5f6e99db0eae8c28f4cf2a4` |
| 21 | `theorem` | [card_quotient_mul_card_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variantbecb2fe1ec3595d9a72d63bb3caa0dac6269bf81163b0e2ee86e55894169aa52.lean/declarations/card-quotient-mul-card-quotient--9bde854a6f85a83fdcf9cc07.md) | 184 | `result-track:9bde854a6f85a83fdcf9cc0737e3a4e58681622486f4c9b7116d966e5957a7e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
