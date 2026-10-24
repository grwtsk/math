# Verification target: GRWTSK.Algebra.LinearAlgebra.Isomorphisms.Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffd4f3fabb0eabe06bdc324835b48abed22c2dc2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffd4f3fabb0eabe06bdc324835b48abed22c2dc2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotKerEquivRange](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotkerequivrange--da47bc1a285d4d7d7ff1ca30.md) | 39 | `declaration-track:da47bc1a285d4d7d7ff1ca303a0d794516289824329203a144c082b39cfba88f` |
| 2 | `def` | [quotKerEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotkerequivofsurjective--1f26950bdacc1497d2d4b6b0.md) | 46 | `declaration-track:1f26950bdacc1497d2d4b6b0dea14f1084bd21cad87fb152cfd8f2a8e612f7d9` |
| 3 | `theorem` | [quotKerEquivRange_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotkerequivrange-apply-mk--0c56860f26a3acf85d3197f7.md) | 52 | `result-track:0c56860f26a3acf85d3197f77c6e3ded151796057db3ad7b0788cd3fdcbb895e` |
| 4 | `theorem` | [quotKerEquivRange_symm_apply_image](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotkerequivrange-symm-apply-image--495edc9527d37f96eb55ebbb.md) | 58 | `result-track:495edc9527d37f96eb55ebbbac6c690b93124dbd50c2004afc1e6c6d741d686e` |
| 5 | `def` | [subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/subtosupquotient--79f9b97ff72ac0982b959267.md) | 66 | `declaration-track:79f9b97ff72ac0982b959267f280004fe26ecbbfe4e95346fa30d71add3716fd` |
| 6 | `theorem` | [comap_leq_ker_subToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/comap-leq-ker-subtosupquotient--081d4e7ee1c1a49cd84e4f8d.md) | 71 | `result-track:081d4e7ee1c1a49cd84e4f8d33569560f8d930ffba846f18049a4a365bc53d4c` |
| 7 | `def` | [quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinftosupquotient--947941488d684aca067ee13b.md) | 79 | `declaration-track:947941488d684aca067ee13b08bd800829127d4d034267dbd2a079350bedd976` |
| 8 | `theorem` | [quotientInfEquivSupQuotient_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-injective--ef471bc77a9cdb5135dfb274.md) | 85 | `result-track:ef471bc77a9cdb5135dfb274c79b8424780e30882504f6e23f0f8ddbbfcd2953` |
| 9 | `theorem` | [quotientInfEquivSupQuotient_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-surjective--f5b3677ff01600c37446c8ca.md) | 92 | `result-track:f5b3677ff01600c37446c8ca7fdd57250faf4b6335c12a7ba3d43e38ac4b6513` |
| 10 | `def` | [quotientInfEquivSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient--30de85ce89279177c4a09bfe.md) | 102 | `declaration-track:30de85ce89279177c4a09bfeb4f12a9107f5c801bd280b4cecdc1c4d5e44aefd` |
| 11 | `theorem` | [coe_quotientInfToSupQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/coe-quotientinftosupquotient--ce2fd9418c91bbc6dfd07c2e.md) | 111 | `result-track:ce2fd9418c91bbc6dfd07c2ed3dcd419cd2809cf8debb1c6ae0721d16917ee95` |
| 12 | `theorem` | [quotientInfEquivSupQuotient_apply_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-apply-mk--653f47f36f070112f0a0cffc.md) | 117 | `result-track:653f47f36f070112f0a0cffc695b17f40c267c85bb8f3705899e5cbb070e6116` |
| 13 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-symm-apply-left--4fd99a74d59142b57d56ed09.md) | 124 | `result-track:4fd99a74d59142b57d56ed0991bb0315cb50292c7301231ef6b0bd548a28ff69` |
| 14 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-symm-apply-eq-zero-iff--ad8ea4d356b803d2566cdc5f.md) | 135 | `result-track:ad8ea4d356b803d2566cdc5f2cc727d00b72ccd8db3ee3ac7c5fcab15b8f17a3` |
| 15 | `theorem` | [quotientInfEquivSupQuotient_symm_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientinfequivsupquotient-symm-apply-right--b378386f7e53b4414e77910c.md) | 142 | `result-track:b378386f7e53b4414e77910c6a57e58dd0d4e813843b3709a3efdfc7f716c759` |
| 16 | `def` | [quotientQuotientEquivQuotientAux](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientquotientequivquotientaux--20ed9b875d890f8ab80bc8c2.md) | 159 | `declaration-track:20ed9b875d890f8ab80bc8c26f4a2a2b8980daf4114b6477626eda1d6b5ca697` |
| 17 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientquotientequivquotientaux-mk--03a75ab00e176b527fdc4587.md) | 168 | `result-track:03a75ab00e176b527fdc458723068d039c17f05e75e420a636d2ae14aa81120a` |
| 18 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientquotientequivquotientaux-mk-mk--ed38e57620b8436c38f8e36a.md) | 174 | `result-track:ed38e57620b8436c38f8e36aa27ddd3df448fdb6a84d8f5734763b164aa536a8` |
| 19 | `def` | [quotientQuotientEquivQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/quotientquotientequivquotient--7203fed85bc25d70038eab19.md) | 179 | `declaration-track:7203fed85bc25d70038eab1977cf5c6905f9c1f4eb660c5a4b3adbf99eca2a40` |
| 20 | `theorem` | [card_quotient_mul_card_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Isomorphisms/Variant184646388a199e08fe2c9fbd2f0f7af1227c0995c17bb51c9c2fc2761d2f699b.lean/declarations/card-quotient-mul-card-quotient--8589779af769322c9b21d9f3.md) | 188 | `result-track:8589779af769322c9b21d9f3a7a406b644e4f1f1314ba149385142bbc178cb6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
