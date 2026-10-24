# Verification target: GRWTSK.Algebra.GroupTheory.Division.Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bad6a1d83a94c26285a347d5d32928ce4f6388f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bad6a1d83a94c26285a347d5d32928ce4f6388f`.

Source path: `GRWTSK/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divof--1ae2a25d2ca18611f48af2ae.md) | 58 | `declaration-track:1ae2a25d2ca18611f48af2ae69a8c7d491ffbec93aac7a464d6eb2c2a573c8c0` |
| 2 | `theorem` | [divOf_apply](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divof-apply--a2267283cf46dc309090f7ad.md) | 69 | `result-track:a2267283cf46dc309090f7ad7e0a04a1a629a82b786c23d5cdfe4c5834041b4c` |
| 3 | `theorem` | [support_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/support-divof--7b66c965602b9f600a73a495.md) | 74 | `result-track:7b66c965602b9f600a73a495b08613b7e3d5540d260387e089f4375daba5691d` |
| 4 | `theorem` | [zero_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/zero-divof--787a13da2d3c7dd3911dec6e.md) | 81 | `result-track:787a13da2d3c7dd3911dec6e4d1897e9df7f9e615224e18e6cb371e2e41c236d` |
| 5 | `theorem` | [divOf_zero](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divof-zero--4ea5de72af71c86b70094888.md) | 86 | `result-track:4ea5de72af71c86b70094888aed26cd02eb1e877b6fa2bf41932ce3616adb689` |
| 6 | `theorem` | [add_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/add-divof--2320fd421f9fac3cf44ebe86.md) | 91 | `result-track:2320fd421f9fac3cf44ebe86a1e50970bf4fb202fbba64725a6500a4f7aa8e85` |
| 7 | `theorem` | [divOf_add](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divof-add--32f0471650aa15a127132367.md) | 95 | `result-track:32f0471650aa15a1271323678ea7f85f692ba58ae339b88564c4d44827b96886` |
| 8 | `def` | [divOfHom](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divofhom--a82a70a0f38ba87980a3af29.md) | 102 | `declaration-track:a82a70a0f38ba87980a3af29d6d8959ae1f73e432d522c034a0393feb6269570` |
| 9 | `theorem` | [of'_mul_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/of-mul-divof--d483ab8768b073d02f737d4d.md) | 114 | `result-track:d483ab8768b073d02f737d4d36fd04aa3d3b1030e11d0370cca604c87370b7cb` |
| 10 | `theorem` | [mul_of'_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/mul-of-divof--33bf74494da26279f4cd3c91.md) | 121 | `result-track:33bf74494da26279f4cd3c91aecb0bbe0d8f48654a0709f476a68be770ffc0a3` |
| 11 | `theorem` | [of'_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/of-divof--676d7ebadd98256832141ab7.md) | 129 | `result-track:676d7ebadd98256832141ab78ad0a66102ddffedacfe67945e8c501b85e1290f` |
| 12 | `def` | [modOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof--fb1c584f30b77e51e8564832.md) | 134 | `declaration-track:fb1c584f30b77e51e8564832a050932214ca232732fcc837de792885ad6d401e` |
| 13 | `theorem` | [modOf_apply_of_not_exists_add](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof-apply-of-not-exists-add--1b093d759b28083c43646ac6.md) | 141 | `result-track:1b093d759b28083c43646ac696026cb3a1f9c6e18d83e128210900d732f47ce0` |
| 14 | `theorem` | [modOf_apply_of_exists_add](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof-apply-of-exists-add--edba764a4f7df44c03cc4445.md) | 147 | `result-track:edba764a4f7df44c03cc44457124860427c253d573b10adde2fa160df5453e9f` |
| 15 | `theorem` | [modOf_apply_add_self](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof-apply-add-self--869967a4f16a4c42ba5efa76.md) | 153 | `result-track:869967a4f16a4c42ba5efa7620f7b455262672f5775e4fbb2d46907ed7958165` |
| 16 | `theorem` | [modOf_apply_self_add](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof-apply-self-add--fc2f481abe7e8d9401396c97.md) | 158 | `result-track:fc2f481abe7e8d9401396c97652c56746cd8db5dcedb858dc44efded40272c0a` |
| 17 | `theorem` | [of'_mul_modOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/of-mul-modof--52d3c0c26b5cb6582fbb5092.md) | 162 | `result-track:52d3c0c26b5cb6582fbb5092ffa443e4479914c22d3d9059605c407ac0e177a3` |
| 18 | `theorem` | [mul_of'_modOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/mul-of-modof--394b283a31db0c38342cc909.md) | 170 | `result-track:394b283a31db0c38342cc909896b37400656d7c0cc7b62f0ddb49c4f5c67438f` |
| 19 | `theorem` | [of'_modOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/of-modof--38dbc2e0adcbd9b1395bac41.md) | 179 | `result-track:38dbc2e0adcbd9b1395bac41b877800b1c53f7993fda96e5ce12903da31a7ac5` |
| 20 | `theorem` | [divOf_add_modOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/divof-add-modof--456f939bbc95fd24aa682d7e.md) | 183 | `result-track:456f939bbc95fd24aa682d7e61496f3bb062b10fdb92c3c71af0b835ffb91557` |
| 21 | `theorem` | [modOf_add_divOf](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/modof-add-divof--b20ce2b8adb4bb18066fa4bf.md) | 197 | `result-track:b20ce2b8adb4bb18066fa4bf0a0d03c14500c31f995f9b82aed2c413ae5b405a` |
| 22 | `theorem` | [of'_dvd_iff_modOf_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Division/Variant68f881d249b9dcb740a2cb3b5b3ccd2582e8c8f91ea710cac59673511a40a423.lean/declarations/of-dvd-iff-modof-eq-zero--79a55b0c55290eb069fbe696.md) | 201 | `result-track:79a55b0c55290eb069fbe6963820d74995f46632228512c8cad4b37728115e09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
