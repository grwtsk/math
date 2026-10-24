# Verification target: GRWTSK.Algebra.LinearAlgebra.Isomorphisms.Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d25cae708421e6f80e10c9306fa22ded434831d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d25cae708421e6f80e10c9306fa22ded434831d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotkerequivrange--5e3e77cb673e1084ba098a92.md) | 34 | `declaration-track:5e3e77cb673e1084ba098a92aeaa1d69663c6ec1367d8576a6eae6b2f0cede8f` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotkerequivofsurjective--d2f44e923e56de538dd52fc5.md) | 40 | `declaration-track:d2f44e923e56de538dd52fc5dccdcf0915e62379f71dad46fbc4536c5f86a26f` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotkerequivrange-apply-mk--4d4e14165bba2b4f11ecaa4b.md) | 45 | `result-track:4d4e14165bba2b4f11ecaa4b30e8e267919fe189fd199248228d6497383a098c` |
| 4 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotkerequivrange-symm-apply-image--4578cc63d90e929ff6ced0cc.md) | 50 | `result-track:4578cc63d90e929ff6ced0ccfe2b099dcecb646fc416a75cc402f95f9801777c` |
| 5 | `abbrev` | [subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/subtosupquotient--9ea420d28152954c44c9c424.md) | 55 | `declaration-track:9ea420d28152954c44c9c424c06234de3185674c2a2b666bbf858e32aa85231b` |
| 6 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/comap-leq-ker-subtosupquotient--276d8c90af4e606f9330b04d.md) | 59 | `result-track:276d8c90af4e606f9330b04d4a2ab5381188eaa86de4284131aa39a1576de20a` |
| 7 | `def` | [quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinftosupquotient--d51f3e6509f237fbf11ee7ea.md) | 72 | `declaration-track:d51f3e6509f237fbf11ee7eab5ad2d2953215fe796e6f94b05e1506e262e0266` |
| 8 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-injective--f8f78292d7f4b81a00d2896f.md) | 77 | `result-track:f8f78292d7f4b81a00d2896f2178093ac65227f939d670cf7acc74204150b1fe` |
| 9 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-surjective--8f84226ceb983fe939d5dac0.md) | 83 | `result-track:8f84226ceb983fe939d5dac0f6beb291e8521b1640ca82b15bfbd20ee9083bce` |
| 10 | `def` | [quotientInfEquivSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient--866550c31a98f1c02bd0fc06.md) | 98 | `declaration-track:866550c31a98f1c02bd0fc06abb8c5b56ca617d336ff84057a7e38322147a531` |
| 11 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/coe-quotientinftosupquotient--11a9bb8cade676e956d0106a.md) | 104 | `result-track:11a9bb8cade676e956d0106a07ac27b9d0d2abea1855c68de9d08c90c5e24a58` |
| 12 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-apply-mk--351e189c10dfea1452f70c61.md) | 108 | `result-track:351e189c10dfea1452f70c61c2e72614cc25979c125b238ba0ad2667b32fb2c2` |
| 13 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-symm-apply-left--32a0b7ef3ed683b175ec9429.md) | 114 | `result-track:32a0b7ef3ed683b175ec9429f17bd851c4077aa6ec65d5e2e2a985ded07f1f6e` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff--c0476fbc4acecc60b2de0cef.md) | 122 | `result-track:c0476fbc4acecc60b2de0cef8f5c40e6e328cd33ac9ff057460eabbb3282b9c4` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientinfequivsupquotient-symm-apply-right--f1b963c4f554ca2fe39b2f3c.md) | 126 | `result-track:f1b963c4f554ca2fe39b2f3c6c84e8c39bdac844c6ae5e161c4d44c6673b0a9e` |
| 16 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientquotientequivquotientaux--636907cc7fe67784f1ba0a33.md) | 142 | `declaration-track:636907cc7fe67784f1ba0a33adde08f47d4e114047b25ad1545812f8d04e0a9d` |
| 17 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientquotientequivquotientaux-mk--080df6e8c1560cb986b13087.md) | 150 | `result-track:080df6e8c1560cb986b130871cdb882b2dcb4436bb1dfda7dc0bc9ac6d0a7b24` |
| 18 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientquotientequivquotientaux-mk-mk--7744edb006fd8b9f0811b702.md) | 155 | `result-track:7744edb006fd8b9f0811b70297afe9cb67ee701fc8aabc4ba84ff19400f1e2a9` |
| 19 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientquotientequivquotient--a6c67e3d4d99e958d014a3ac.md) | 159 | `declaration-track:a6c67e3d4d99e958d014a3ac945b34519759dc798b3e1a652308c03e78c1ec00` |
| 20 | `def` | [quotientQuotientEquivQuotientSup](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/quotientquotientequivquotientsup--cf3ec5c9af69f23a9b48efd9.md) | 171 | `declaration-track:cf3ec5c9af69f23a9b48efd95140ef53d1cf98c77b4efd86232588f604ef119d` |
| 21 | `theorem` | [card_quotient_mul_card_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant214938f4f8dabf8aadd8e6389515d71fcc75c6325437de5ef95db4382a1fd9cc.lean/declarations/card-quotient-mul-card-quotient--b2b92fd21bc504e8335747d5.md) | 176 | `result-track:b2b92fd21bc504e8335747d53443cae5fa06cc68d586530d444e7ddd716cd3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
