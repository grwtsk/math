# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt05.Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e903af79a6e80ea1d08f9cad9eadaa99ba916af",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e903af79a6e80ea1d08f9cad9eadaa99ba916af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/coefficientmap--8f603fc425940e93b56ef075.md) | 14 | `declaration-track:8f603fc425940e93b56ef07534a738e5d0447253bbb190f76345ec17313243b2` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/coefficient-eq-expect--7e22c94bfd9d5e1ff6fe05da.md) | 20 | `result-track:7e22c94bfd9d5e1ff6fe05da0011a9940b182c9fe2ad5f4ecc678d4fc567f357` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/trivial-coefficient-eq-mean--70548fe5523c86bce01940c2.md) | 25 | `result-track:70548fe5523c86bce01940c2a158a8037aa8cdc575122e57d5f6fa0a2ef530f8` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/coefficient-character--b76d2bbc81c831d25b4779c2.md) | 30 | `result-track:b76d2bbc81c831d25b4779c2fa049fdf26ff5b5321242ac135c01a8cfface034` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/coefficient-eq-basis-repr--2f27f4623da4c48759d941d3.md) | 35 | `result-track:2f27f4623da4c48759d941d3251fda1633091252efbdc7b5a3f6094306799792` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/complete-reconstruction--11961fcbcaab791d8b339c3c.md) | 43 | `result-track:11961fcbcaab791d8b339c3c7aeca3643759b0cf160690170b61ce6ea59aae99` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/incompletereconstruction--0eb74d98eeda51f1d2713b76.md) | 49 | `declaration-track:0eb74d98eeda51f1d2713b76a8dd3de949e56ec1a8d8e0229526a4ee4db27937` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/reconstruction-split--da422bfbd92e0319efead2fd.md) | 54 | `result-track:da422bfbd92e0319efead2fd6722bdbb25b5b9529eaf02219aa08afa75fa9063` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/incomplete-eq-self-iff--feba174e06ab13a2b1c9e0c3.md) | 68 | `result-track:feba174e06ab13a2b1c9e0c377de86596c435c6c8d6237e0f38e11278af25642` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialspan--1f8ee1d31128ac85a2e26fc7.md) | 80 | `declaration-track:1f8ee1d31128ac85a2e26fc790550c972b17f1a9bbf3cc5cc4339cee9626688e` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialspan-le-trivial-kernel--4fbe2668471846c9730ba957.md) | 83 | `result-track:4fbe2668471846c9730ba95784bf67ed34357631ed8c72fa9989486ff5391279` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/trivial-not-mem-nontrivialspan--86faafb9879dbf279e949f3e.md) | 92 | `result-track:86faafb9879dbf279e949f3eed4cc86d0585dd551594cdc09c7e52d233229ca6` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/mem-nontrivialspan-iff--b9b0ad331dda10efa192478f.md) | 104 | `result-track:b9b0ad331dda10efa192478f42517302db59e7b48fd9191778bf2e075dccae7d` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialspan-eq-trivial-kernel--a07edff49092f17715f9a971.md) | 119 | `result-track:a07edff49092f17715f9a971b98898aa3c819d7881a006e431ffe1a396a4f7c8` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/coefficient-constant--d0fb8f15e0aaa207f395e9b7.md) | 124 | `result-track:d0fb8f15e0aaa207f395e9b791307ba2be6f27f076e7c19f8c64e91354a743f9` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialstack--eadfa81b79186188bccbdf34.md) | 133 | `declaration-track:eadfa81b79186188bccbdf344a57efc42dea56ec28d907cd4afd1d4bf56102cc` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialstack-add-constant--c07cabe28fc0c01b37960c71.md) | 136 | `result-track:c07cabe28fc0c01b37960c71be80b78fcde598de1853c6cd352bad671cc6a2dc` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/nontrivialstack-eq-iff-constant-difference--11facd1bad98583316c74080.md) | 142 | `result-track:11facd1bad98583316c74080f17a0b2bcc10a0a8bc9f2a519758759728f69183` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/no-trivial-coefficient-decoder--f8a4d3c276861a1c4c6e9a4c.md) | 159 | `result-track:f8a4d3c276861a1c4c6e9a4cb89a8486173b49ff96abb38931ce0e619d9667a3` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/scalarfiber--b741efc9cd3469c4250f592c.md) | 172 | `declaration-track:b741efc9cd3469c4250f592ce28c753348ee991b10326c37fcdd8fc45b8f4268` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/scalarfiber-sum--c32b8a067e832266e9a7e44f.md) | 174 | `result-track:c32b8a067e832266e9a7e44f90bd138b3e6df0d59a7ea2358ee51f414257bcb0` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/scalarfiber-positive-total--c23891976baf9ba770798bf6.md) | 186 | `result-track:c23891976baf9ba770798bf6f22f4654a2222de20776979d1fcf0df5f1780912` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/scalarfiber-negative-trivial--3e79bb9016e2d4f1e83325b5.md) | 194 | `result-track:3e79bb9016e2d4f1e83325b54dcaf27aa93957d921f3635ceca8e7f97c34307b` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/scalarfiber-positive-nontrivial--70e5d6378c42aebefd2012a0.md) | 198 | `result-track:70e5d6378c42aebefd2012a0d1892bd3a44ef1f3013ba3888512824ff0a4ec48` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/declarations/positive-total-not-fiberwise--006f368e46d2ad6812321c02.md) | 203 | `result-track:006f368e46d2ad6812321c02cb46a3e2a1739e563e39f22fae8fe2de5ac0200f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
